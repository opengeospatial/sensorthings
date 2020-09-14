#!/bin/sh
#
SCRIPT=$(readlink -f "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
DOCUMENT_ID='18-088'
DOCUMENT_PATH=$DOCUMENT_ID
DOCUMENT_SRC="OGC_${DOCUMENT_ID}.adoc"
DOCUMENT_TOF="pre_0_tof.adoc"
DOCUMENT_HTML="${DOCUMENT_ID}.html"
DOCUMENT_PDF="${DOCUMENT_ID}.pdf"
DIST_DIR="../../dist"

echo $SCRIPTPATH/${DOCUMENT_PATH}
cd $SCRIPTPATH/${DOCUMENT_PATH}
echo "Working on ${DOCUMENT_ID}..."

mkdir "${DIST_DIR}"

echo "Genering Table of Figures..."
../generate_tof.rb $DOCUMENT_SRC > $DOCUMENT_TOF

echo "Genering HTML..."
asciidoctor --safe -o $DOCUMENT_HTML $DOCUMENT_SRC
cp "${DOCUMENT_HTML}" "${DIST_DIR}/${DOCUMENT_HTML}"

echo "Genering PDF..."
asciidoctor-pdf --safe -o $DOCUMENT_PDF $DOCUMENT_SRC
cp "${DOCUMENT_PDF}" "${DIST_DIR}/${DOCUMENT_PDF}"

echo "copying images..."
cp -Rv "images" "${DIST_DIR}/images"

echo "Done."
