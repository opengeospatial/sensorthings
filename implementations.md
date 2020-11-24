# Implementations

## Overview

This page points to servers implementing of SensorThingsAPI.

## Implementations:

Servers:

* [GOST](#GOST)
* [FROST-Server](#FROST-Server)

Clients:
* [FROST-Client](#FROST-Client)

## GOST

GOST is an open source implementation of the SensorThings API in the Go programming language initiated by Geodan. It contains easily deployable server software and a JavaScript client. Currently (June 2016) it is in development but a first version can already be downloaded and deployed. The software can be installed on any device supporting Docker or Go (e.g. Windows, Linux, Mac OS and Raspberry Pi). By default sensor data is stored in a PostgreSQL database. 

Repository - https://github.com/gost/server 

## FROST

FROST-Server is an Open Source server implementation of the OGC SensorThings API. FROST-Server implements the entire specification, including all extensions. It is written in Java and can run in Tomcat or Wildfly and is available as a Docker image. Among its many features is the ability to use String or UUID based entity IDs. 

Repository - https://github.com/FraunhoferIOSB/FROST-Server

## Frost-Client

FROST-Client is a Java client library for communicating with a SensorThings API compatible server. 

Repository - https://github.com/FraunhoferIOSB/FROST-Client
