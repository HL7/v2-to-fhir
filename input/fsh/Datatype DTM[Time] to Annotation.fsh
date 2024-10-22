// HL7 Data Type - FHIR R4_ DTM[Annotation-Time] - Sheet1.csv
Instance: DatatypeDTMTimeToAnnotation
InstanceOf: ConceptMap
Title: "Datatype DTMnull to Annotation Map"
* title = "Datatype DTMnull to Annotation Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Datatype DTM to the FHIR Annotation Data Type."
* id = "datatype-dtm-time-to-annotation"
* url = "http://hl7.org/fhir/uv/v2mappings/datatype-dtm-time-to-annotation"
* version = "1.0"
* name = "DatatypeDTMTimeToAnnotation"
* status = #active
* experimental = true
* date = "2024-10-21"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "DTM"
* targetUri = "Annotation"
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
* group.element[0].target.display = "time"
* group.element[0].target.dependsOn[0].property = "value"
* group.element[0].target.dependsOn[0].value = "/must convert v2 date time format to FHIR date time format before populating according to FHIR date/time format https://build.fhir.org/datatypes.html#dateTime /"
