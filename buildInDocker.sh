#!/bin/sh
rm 23-019.doc 23-019.html 23-019.err.html 23-019.pdf 23-019.pdf.err 23-019.xml 23-019.xml.abort 23-019.presentation.xml _plantuml_images/*.png
metanorma compile --type ogc -x html 23-019.adoc
chown -R 1000:1000 /metanorma
