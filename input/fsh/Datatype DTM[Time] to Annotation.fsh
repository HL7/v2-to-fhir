// HL7 Data Type - FHIR R4_ DTM[Annotation-Time] - Sheet1.csv
Instance: DatatypeDTMTimeToAnnotation
InstanceOf: ConceptMap
Title: "Datatype DTM [Time] to Annotation Map"
Usage: #definition
* title = "Datatype DTM [Time] to Annotation Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Datatype DTM to the FHIR Annotation Data Type."
* id = "datatype-dtm-time-to-annotation"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/datatype-dtm-time-to-annotation"
* name = "DatatypeDTMTimeToAnnotation"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Datatype DTM[Time] to Annotation.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1F5jpv1JbXEGHMvGjxy3ji_zOQBJ69x_8sBoaLDIgF1g/edit#gid=0"
* group.element[0].code = #DTM.1
* group.element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].extension[0].extension[0].url = "cardinalityMin"
* group.element[0].extension[0].extension[0].valueInteger = 1
* group.element[0].extension[0].extension[1].url = "cardinalityMax"
* group.element[0].extension[0].extension[1].valueInteger = 1
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #time
* group.element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].target.extension[0].extension[0].url = "type"
* group.element[0].target.extension[0].extension[0].valueCode = #"dateTime"
* group.element[0].target.extension[0].extension[1].url = "fixedValue"
* group.element[0].target.extension[0].extension[1].valueString = "/must convert v2 date time format to FHIR date time format before populating according to FHIR date/time format https://build.fhir.org/datatypes.html#dateTime /"
* group.element[0].target.display = "time"
