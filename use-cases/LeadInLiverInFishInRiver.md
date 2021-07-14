# Use Case title

**Contributed by:** hylkevds - Fraunhofer IOSB

## Typical user scenario:

The water quality in a water body is monitored. Water samples are taken regularly and analysed.
 
- Some pollutants are measured directly in the water.
- Some pollutants are measured in the sediments after centrifugation/filtration
- Some pollutants are measured in certain organs of certain fish-spiecies living in the water body.

The tricky thing is how to model ObservedProperty, Thing and FeatureOfInterest.

Ways to model:
* A long list of complex ObservedProperties
  * Lead in Liver of Cod
  * Lead in Kidney of Cod
  * Lead in Liver of Salmon (same Salmon, where to put that?)
  * Lead in Kidney of Salmon (same Salmon, where to put that?)
  Leads to many OPs
* ObservableProperty (A model behind ObservedProperty)
  * Same number of ObservedProperties
  * Better filtering options for clients that understand the model
* Samples in O&M V3
  * Sample 1: Cod-42
    * Sub-Sample: Liver
      * Observation ObservedProperty: Lead
    * Sub-Sample: Kidney
      * Observation ObservedProperty: Lead



## Actors:
List of actors that participate in the use case
1. First Actor
2. Second Actor

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




