# frozen_string_literal: true

def accept_changes(src)
  out = +""
  i = 0
  n = src.length
  while i < n
    escaped = i.positive? && src[i - 1] == "\\"
    if !escaped && src[i, 4] == "del:" && src[i + 4] == "["
      _inner, i = take_macro(src, i + 5)
      if src[i..].match?(/\A[ \t]*add:\[/)
        i += src[i..].match(/\A[ \t]*/)[0].length
      end
    elsif !escaped && src[i, 4] == "add:" && src[i + 4] == "["
      inner, i = take_macro(src, i + 5)
      out << accept_changes(inner).gsub("\\]", "]")
    else
      out << src[i]
      i += 1
    end
  end
  out
end

def take_macro(src, i)
  depth = 1
  start = i
  while i < src.length && depth.positive?
    depth += 1 if src[i] == "["
    depth -= 1 if src[i] == "]"
    i += 1
  end
  [src[start..(i - 2)] || "", i]
end

Asciidoctor::Extensions.register do
  preprocessor do
    process do |_doc, reader|
      Asciidoctor::Reader.new(accept_changes(reader.lines.join("\n")).split("\n", -1))
    end
  end

  include_processor do
    handles? { |target| !target.include?("*") }

    process do |doc, reader, target, attributes|
      path = File.expand_path(target, reader.dir || doc.base_dir)
      content = accept_changes(File.read(path, encoding: "UTF-8"))
      reader.push_include(content, path, path, 1, attributes)
      reader
    end
  end
end