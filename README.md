# OGC SensorThings API Extension: WebSub WebSub Asynchronous Messaging Standard

The STA-WebSub - SensorThings API extension WebSub - Standard defines an additional SensorThings API capability that supports the distribution of updates via HTTP(S) as defined in the W3C WebSub Recommendation (see [W3C WebSub](https://www.w3.org/TR/websub/)). 

A subscriber can fetch base data from a SensorThings API service and then use the same identical URL to subscribe for updates. This avoids the need for any subscriber to poll a SensorThings API service. This is because any updates - according to the URL used - get submitted to the subscriber's Webhook when the update event is triggered. The use of this WebSub extension is also easy to integrate into existing systems. This is because producers only need to set up a W3C WebSub compliant Hub that listens for subscription updates via MQTT. Consumers only need to setup a WebSub Subscriber to receive updates via WebHook. The SensorThings API MQTT protocol does not need to be exposed to the subscriber. The MQTT protocol can remain internal (hidden) between the SensorThings API service and the associated STA-WebSub Hub(s). Any SensorThings API service that extends the MQTT topic pattern to include filter and expand capabilities via ODATA query parameters will allow to subscribe for updates by defining actual triggering conditions using `$filter`. Using the ODATA query parameter `$select` and `$expand` also supports the ability of the subscriber to get exactly the data and structure as it is fit for purpose. 

The use of STA-WebSub improves the flexible use of SensorThings API services for building asynchronous workflows. The ability to define trigger conditions and to specify the event data structure that is pushed over HTTP(S) POST enables a fit-for-purpose processing of events using workflows. Access control can be implemented in the discovery functionality which controls the subscription based on business or access control policies.
