// HL7 Data Type - FHIR R4_ MSG[code] - Sheet1.csv
Instance: DatatypeMSGToCode
InstanceOf: ConceptMap
Title: "Datatype MSG to code Map"
Usage: #definition
* title = "Datatype MSG to code Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Datatype MSG to the FHIR code Data Type."
* id = "datatype-msg-to-code"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/datatype-msg-to-code"
* name = "DatatypeMSGToCode"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Datatype MSG to code.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1MUSwqOQpaBrr_sqAVpsszpYTmy2EuhTTRFLLT-FKL7A/edit#gid=0"
* group[0].element[0].code = #MSG.2
* group[0].element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].extension[0].extension[0].url = "type"
* group[0].element[0].extension[0].extension[0].valueCode = #"ID"
* group[0].element[0].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[0].extension[0].extension[1].valueInteger = 1
* group[0].element[0].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[0].extension[0].extension[2].valueInteger = 1
* group[0].element[0].display = "Trigger Event"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #$this
* group[0].element[0].target.display = "$this"
