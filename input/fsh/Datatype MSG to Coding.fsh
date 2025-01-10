// HL7 Data Type - FHIR R4_ MSG[Coding] - Sheet1.csv
Instance: DatatypeMSGToCoding
InstanceOf: ConceptMap
Title: "Datatype MSG to Coding Map"
Usage: #definition
* title = "Datatype MSG to Coding Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Datatype MSG to the FHIR Coding Data Type."
* id = "datatype-msg-to-coding"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/datatype-msg-to-coding"
* name = "DatatypeMSGToCoding"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Datatype MSG to Coding.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1_JTzM3A-qTbPJfspjEO-VB0Bmx3zoxQz_E2mKUAB4lM/edit#gid=0"
* group.element[0].code = #MSG
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #display
* group.element[0].target.display = "display"
* group.element[1].code = #MSG.2
* group.element[1].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[1].extension[0].extension[0].url = "type"
* group.element[1].extension[0].extension[0].valueCode = #"ID"
* group.element[1].extension[0].extension[1].url = "cardinalityMin"
* group.element[1].extension[0].extension[1].valueInteger = 1
* group.element[1].extension[0].extension[2].url = "cardinalityMax"
* group.element[1].extension[0].extension[2].valueInteger = 1
* group.element[1].display = "Trigger Event"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #code
* group.element[1].target.display = "code"
* group.element[2].code = #MSG.2
* group.element[2].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[2].extension[0].extension[0].url = "type"
* group.element[2].extension[0].extension[0].valueCode = #"ID"
* group.element[2].extension[0].extension[1].url = "cardinalityMin"
* group.element[2].extension[0].extension[1].valueInteger = 1
* group.element[2].extension[0].extension[2].url = "cardinalityMax"
* group.element[2].extension[0].extension[2].valueInteger = 1
* group.element[2].display = "Trigger Event"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #system
* group.element[2].target.display = "system"
