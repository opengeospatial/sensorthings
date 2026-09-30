# 26-057: OGC SensorThings API extension: DGGS 1.0

This branch tracks the document 26-057 OGC SensorThings API extension: DGGS 1.0 (SWG draft). Nightly build is available [here](https://docs.ogc.org/DRAFTS/26-057.html)

Further details about the SensorThings API can be obtained in the [OGC SensorThings API Part 1: Sensing Version 1.1](https://docs.ogc.org/is/18-088/18-088.html).

## Summary

26-057 is a backwards-compatible extension of SensorThings API Part 1: Sensing 1.1 (OGC 18-088). It adds the `Cell` entity so that observations can be spatially grouped into Discrete Global Grid System zones (for example H3 or Geohash). An `Observation`, a `Datastream`, and a `MultiDatastream` may each be linked to one `Cell`. The Standard also defines how a service advertises the deployed grid and the area in which a cell may be created, how a cell is created by reference, and how aggregate values are calculated from observations linked to a cell. It can be used together with STAplus 1.0.1 (OGC 22-022r2), optionally extended by STAplus Party Context 1.0 (OGC 26-040).

## Build

Run the command from this directory. [Metanorma](https://www.metanorma.org/) with the OGC flavor writes HTML and PDF.

```sh
metanorma compile -t ogc -x html,pdf 26-057.adoc
```

Outputs are `26-057.html` and `26-057.pdf`.
