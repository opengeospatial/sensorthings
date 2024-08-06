#!/bin/sh
rm 24-046.doc 23-019.html 24-046.err.html 24-046.xml 24-046.xml.abort 24-046.presentation.xml
metanorma compile --agree-to-terms -t ogc -x xml,html,doc 24-046.adoc
chown -R 1000:1000 /metanorma
