// HL7 Data Type - FHIR R4_ DTM[dateTime] - Sheet1.csv
Instance: DatatypeDTMToDateTime
InstanceOf: ConceptMap
Title: "Datatype DTM to dateTime Map"
Usage: #definition
* title = "Datatype DTM to dateTime Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Datatype DTM to the FHIR dateTime Data Type."
* id = "datatype-dtm-to-datetime"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/datatype-dtm-to-datetime"
* name = "DatatypeDTMToDateTime"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Datatype DTM to dateTime.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1_9GXAgL9iXUNRxQ-jQoTMuyqNPNb7ZzIanNszwqHR3M/edit#gid=0"
* group[0].element[0].code = #DTM.1
* group[0].element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[0].extension[0].extension[0].valueInteger = 1
* group[0].element[0].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[0].extension[0].extension[1].valueInteger = 1
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #$value
* group[0].element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].target.extension[0].extension[0].url = "type"
* group[0].element[0].target.extension[0].extension[0].valueCode = #"DateTime"
* group[0].element[0].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[0].target.extension[0].extension[1].valueInteger = 1
* group[0].element[0].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[0].target.extension[0].extension[2].valueInteger = 1
* group[0].element[0].target.extension[0].extension[3].url = "assignment"
* group[0].element[0].target.extension[0].extension[3].valueString = "/must convert v2 date time format to FHIR date time format before populating according to FHIR date/time format https://build.fhir.org/datatypes.html#dateTime /"
* group[0].element[0].target.display = "$value"
