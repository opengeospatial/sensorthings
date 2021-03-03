<img src="http://www.opengeospatial.org/pub/www/files/OGC_Logo_2D_Blue_x_0_0.png" width="400">

# OGC SensorThings API
The OGC SensorThings API is an OGC standard specification for providing an open and unified way to interconnect IoT devices, data, and applications over the Web. The SensorThings API is an open standard, builds on Web protocols and the OGC Sensor Web Enablement standards, and applies an easy-to-use REST-like style. The result is to provide a uniform way to expose the full potential of the Internet of Things.

## Standard Specification


## 

The standard is on [OGC SensorThings API page](https://www.ogc.org/standards/sensorthings):

* [SensorThings API Part 1: Sensing 1.0](http://docs.opengeospatial.org/is/15-078r6/15-078r6.html) ([PDF version](https://portal.opengeospatial.org/files/15-078r6))
* [SensorThings API Part 2: Tasking Core 1.0](http://docs.opengeospatial.org/is/17-079r1/17-079r1.html) ([PDF version](https://portal.opengeospatial.org/files/17-079r1))

Implementating and certified servers are also listed on OGC website:

* [OGC SensorThings API Part 1: Sensing 1.0](https://www.ogc.org/resource/products/byspec/?specid=772)
** [OGC SensorThings API Sensing Core 1.0](https://www.ogc.org/resource/products/byspec/?specid=773)
** [OGC SensorThings API Filtering Extension 1.0](https://www.ogc.org/resource/products/byspec/?specid=774)
** [OGC SensorThings API Create-Update-Delete 1.0](https://www.ogc.org/resource/products/byspec/?specid=775)
* [OGC SensorThings API Part 2 – Tasking Core 1.0](https://www.ogc.org/resource/products/byspec/?specid=971)

Some client implementations exist:
* [FROST-Client](https://github.com/FraunhoferIOSB/FROST-Client) is a Java client library for communicating with a SensorThings API compatible server.
* [Geodan SensorThings .NET SDK](https://github.com/gost/sensorthings-net-sdk)  makes it easy to add OGC SensorThings support to your .NET application.

## How to Cite OGC SensorThings API
Liang, Steve H.L., Chih-Yuan Huang, and Tania Khalafbeigi. "OGC SensorThings API Part I:Sensing" OGC® Implementation Standard (2016)

## About
* Editor: Dr. [Steve Liang](http://www.sensorup.com)
* Co-editors: [Tania Khalafbeigi](http://www.sensorup.com), Dr. [Chih-Yuan Huang](http://www1.csrsr.ncu.edu.tw/Ver13_J30/index.php/about-us/personal/faculty)

## Contributions

## OGC Blog Posts
* [Amazon IoT and the candidate OGC SensorThings API Standard - http://www.opengeospatial.org/blog/2315](http://www.opengeospatial.org/blog/2315) by Steve Liang

## Compliance
No standard is complete without compliance test. The SensorThings test suite is available on the [OGC Compliance and Interoperability Testing and Evaluation(CITE) website](http://cite.opengeospatial.org/teamengine/about/sta10/1.0/site/).  You can test your service against SensorThings API [after registering on CITE website](http://cite.opengeospatial.org/te2/register.jsp).

## Frequent Asked Questions
### Is SensorThings API part of the OGC Sensor Web Enablement standards?
The answer is YES. This might be the #1 question get asked. SensorThings API is part of the OGC Sensor Web Enablement standards. Hey, SensorThings API was called SWE for IoT! For example, SensorThings API's data model is based on OGC/ISO Observations and Measurements (OGC/ISO 19156:2011), so that it can easily interoperate with OGC Sensor Observation Services (SOS). The main difference is that SensorThings is RESTful, uses the efficient JSON encoding, adopts the OASIS OData URL pattern and query options, and supports the ISO MQTT messaging protocol.

### What is the OGC SensorThings API?
The OGC SensorThings API is an OGC standard providing an open and unified framework to interconnect IoT devices, data, and applications over the Web. It is non-proprietary, platform-independent, and perpetual royalty-free. The OGC SensorThings API significantly simplifies and accelerates the development of IoT applications. Application developers can connect to various IoT devices and create innovative applications without worrying the daunting heterogeneous protocols of the different IoT devices. The OGC SensorThings API can also be embedded within various IoT hardware and software platforms, so that the various IoT devices can effortlessly connect with the OGC standard-compliant servers around the world. In summary, the OGC SensorThings API is transforming the numerous disjointed IoT systems into a fully connected platform where complex tasks can be synchronized and performed.

### Why do we develop the OGC SensorThings API?
In today's world, most sensors have proprietary software interfaces defined by their manufacturers and used selectively. New APIs are requested and developed on an as needed basis. This situation causes significant burden not only on developers who develop applications with new sensors, but also on providers of gateways, portals or services where observations are used. The OGC SensorThings API defines standardized interfaces for sensors in the Web of Things (WoT) and Internet of Things (IoT), two terms that are frequently used interchangeably. These standardized interfaces will permit the proliferation of new high value services with lower overhead of development and wider reach, and will also lower the cost for sensor and gateway providers.

### What is the status of the OGC SensorThings API?
OGC SensorThings API is an official OGC standard specification. The OGC SensorThings API was approved by OGC Techncial Committee in February 2016. 

### Is the OGC SensorThings API a new standard?
Yes and No. The answer can be yes, because it is a new standard designed specifically for IoT devices and applications. The answer can also be no, because the OGC SensorThings API is developed based on the existing [OGC Sensor Web Enablement (SWE) standards](http://www.opengeospatial.org/ogc/markets-technologies/swe). The OGC SWE standards enable all types of sensors and actuators discoverable, accessible and re-usable via the Web. These standards have been widely implemented around the world. SWE standards, however, are as complex as necessary to support tasks such as controlling Earth imaging satellites and archiving national libraries of geological observation data, and thus are, too "heavyweight" for the resource-constrained IoT applications. The OGC SensorThings API can be considered as a lightweight SWE profile suited particularly for IoT applications. As a result, the OGC SensorThings API is a new and efficient API based on the proven and widely implemented SWE standard framework.






