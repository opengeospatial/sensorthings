#!/bin/sh
rm 23-019.doc 23-019.html 23-019.err.html 23-019.xml 23-019.xml.abort 23-019.presentation.xml
metanorma compile --agree-to-terms -t ogc -x xml,html,doc 23-019.adoc
chown -R 1000:1000 /metanorma
