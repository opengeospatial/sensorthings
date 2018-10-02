#!/bin/sh
#
SCRIPT=$(readlink -f "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
DOCUMENT_ID='15-078'
DOCUMENT_PATH=$DOCUMENT_ID
DOCUMENT_SRC="OGC_${DOCUMENT_ID}.adoc"
DOCUMENT_TOF="pre_0_tof.adoc"
DOCUMENT_HTML="../../dist/${DOCUMENT_ID}/${DOCUMENT_ID}.html"
DOCUMENT_PDF="../../dist/${DOCUMENT_ID}/${DOCUMENT_ID}.pdf"

echo $SCRIPTPATH/${DOCUMENT_PATH}
cd $SCRIPTPATH/${DOCUMENT_PATH}
echo "Working on ${DOCUMENT_ID}..."

echo "Genering Table of Figures..."
../generate_tof.rb $DOCUMENT_SRC > $DOCUMENT_TOF

echo "Genering HTML..."
asciidoctor -a allow-uri-read -o $DOCUMENT_HTML $DOCUMENT_SRC

echo "Genering PDF..."
asciidoctor-pdf -a allow-uri-read -o $DOCUMENT_PDF $DOCUMENT_SRC

echo "copying images..."
cp -Rv "images" "../../dist/${DOCUMENT_ID}/"

echo "Done."
