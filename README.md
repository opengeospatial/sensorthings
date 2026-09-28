# 22-022r2: OGC SensorThings API Extension: STAplus 1.0 corrigendum

This branch tracks the document 22-022r2 OGC SensorThings API Extension: STAplus 1.0 corrigendum (approved draft). Nightly build is available [here](https://docs.ogc.org/DRAFTS/22-022r2.html)

Further details about STAplus can be obtained in the [OGC SensorThings API Extension: STAplus 1.0](https://docs.ogc.org/is/22-022r1/22-022r1.html).

## Summary

22-022r2 is a corrigendum that replaces STAplus 1.0 (OGC #22-022r1). It keeps the backwards-compatible SensorThings extension for multi-user observations, licensing, relations, and grouping, and records the 1.0.1 corrections against that text. Changes are marked in the AsciiDoc source with `add:[]` and `del:[]`. `22-022r2-diff.adoc` is a link to `22-022r2.adoc`; the two builds differ only in whether those marks are kept.

## Build

Run the commands from this directory. [Metanorma](https://www.metanorma.org/) with the OGC flavor writes HTML and PDF.

Change-marked document (additions and deletions visible):

```sh
metanorma compile -t ogc -x html,pdf 22-022r2-diff.adoc
```

Absolute document (changes accepted; `del:[]` is dropped and `add:[]` is kept):

```sh
metanorma compile -t ogc -x html,pdf -r ./accept_changes.rb 22-022r2.adoc
```

Outputs are `22-022r2-diff.html` and `22-022r2-diff.pdf`, and `22-022r2.html` and `22-022r2.pdf`.