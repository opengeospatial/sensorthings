# 26-040: OGC SensorThings API Extension: STAplus Party Context 1.0

This branch tracks the document 26-040 OGC SensorThings API Extension: STAplus Party Context 1.0 (working draft). Up to draft 0.16 this document was titled *STAplus 1.1*. Nightly build is available [here](https://docs.ogc.org/DRAFTS/26-040.html).

STAplus Party Context 1.0 extends STAplus 1.0.1 ([OGC 22-022r2](https://docs.ogc.org/DRAFTS/22-022r2.html)) with the `PartyLocation` and `PartyActivity` entity types. Personal-data rules for these entities, including disclosure to named recipients, are specified by the STAplus GDPR Profile (OGC 26-055).

## Build

Changes relative to the circulated draft 0.16 are marked in the AsciiDoc source with `add:[]` and `del:[]`. `26-040-diff.adoc` is a link to `26-040.adoc`; the two builds differ only in whether those marks are kept.

Change-marked document (additions and deletions visible):

```sh
metanorma compile -t ogc -x html,pdf 26-040-diff.adoc
```

Absolute document (changes accepted; `del:[]` is dropped and `add:[]` is kept):

```sh
metanorma compile -t ogc -x html,pdf -r ./accept_changes.rb 26-040.adoc
```
