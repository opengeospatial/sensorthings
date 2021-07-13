# Use Case title

**Contributed by:** @Name - Organisation

## Typical user scenario:

Building management: Battery driven sensors measure temperature in the room they are in, and the charge level of the internal battery

Imagine an old office building, and the residents have started complaining that it is too hot in summer and too cold in winter. To get some hard data on room climate, management decides to install some battery-powered sensors that communicate over LoRa to measure temperature and humidity in certain rooms. Since the budget is limited, not all rooms can be permanently equipped with sensors, and thus the sensors will occasionally be moved to a different room. Since the sensors are battery powered, the battery level is also tracked. The three main questions that arise in this use case are: “What was the temperature in Room 123 during a given period”, “What is the battery level of sensor XYZ” and “In which room is sensor XYZ?”.

The first question ist easiest answered when each room is a Thing, with a Datastream for the Temperature in this room. This Datasteam is linked to the sensor that has made the measurements. If the sensor is moved to a new room, a new Datastream is made, for the measurements in that room. Each room has a Location entity that can use the same name as the Thing entity of the room.

The second and third questions are easiest answered when the sensor is a Thing, with the Datastream for its battery status. This Thing entity has a location, which is the Location entity of the room the sensor is currently mounted in. When the sensor is moved to a different room, the Thing entity of the sensor is linked to a new Location entity, but the Datastream for the battery level does not change, since the battery level has nothing to do with the room the sensor is in.

The final data model for this use case would have Thing entities for sensors and for rooms, Location entities for rooms and Sensor entities for sensors, as shown in figure $X$. The room-related measurements, like temperature, are stored in Datastreams linked to the room-Thing entities, while the sensor-related measurements like battery level are stored in Datastreams linked to the sensor-Thing entities.

When a sensor has a new temperature measurement, it needs to add a new Observation to the temperature Datastream for the room that the sensor is currently in. If the datastream identifier or URL is hard-coded in the sensor, this would mean re-configuring the sensor itself, every time it is moved to a different room. The sensor can not just take the first Datastream that is linked to the Sensor entity that belongs to the sensor, since such a Datastream exists for each room the sensor has ever been mounted in. However, the Thing entity of the sensor is linked to the Thing entity of the room, via a shared Location entity: the current Location of the sensor is the same as the Location of the room.



## Actors:
List of actors that participate in the use case
1. User of the room
2. Manager responsible for changing batteries

## Preconditions:
List of conditions required to make the use case possible
1. First precondition
2. Second precondition
3. Third precondition

## Process:
List of steps taken in completing the use case
1. First step in process
2. Second step in process
3. Third step in process


## Required input:
List of inputs required to satisfy the use case
1.	First input
2.	Second input
3.  Third input

## Output:
The list of outputs from the use case
1.	output one
2.	output two

## Extensions: 
List of extensions of the use case
1.	First extention option
2.	Second extension option




