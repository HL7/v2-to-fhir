### Profiles

v2-to-FHIR will use FHIR components and profiles to maintain mapping documentation.  Additionally, when v2 messages are 
converted to FHIR messages a minmum set of data must be available through the FHIR Bundle.  To this end, the following profiles are used.


1. ConceptMap - The ConceptMap is used as the source of truth for the mappings.  A profile is defined for each of the mapped elements that 
defines the data captured for each type of mapping:

    * [Message ConceptMap Profile]
    * [Segment ConceptMap Profile]
    * [Data Type ConceptMap Profile]
    * [Code Sysetm ConceptMap Profile]
  
2. [Bundle] - The profile that must be used to include the minimum data that should be in a FHIR message bundle that represents a converted
v2 message.

3. Future - We are considering how to use MessageDefinition and GraphDefinition and will provide at a future time relevant profiles of these for 
the FHIR messages that represent the converted v2 messages.
