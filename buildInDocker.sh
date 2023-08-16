#!/bin/sh
metanorma compile --agree-to-terms -t ogc -x xml,html,doc 23-019.adoc
chown -R 1000:1000 /metanorma
