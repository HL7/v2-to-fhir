// HL7 Data Type - FHIR R4_ MSG[code] - Sheet1.csv
Instance: DatatypeMSGToCode
InstanceOf: ConceptMap
Title: "Datatype MSG to code Map"
* title = "Datatype MSG to code Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Datatype MSG to the FHIR code Data Type."
* id = "datatype-msg-to-code"
* url = "http://hl7.org/fhir/uv/v2mappings/datatype-msg-to-code"
* version = "1.0"
* name = "DatatypeMSGToCode"
* status = #active
* experimental = true
* date = "2024-12-20"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "MSG"
* targetUri = "code"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Datatype MSG to code.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1MUSwqOQpaBrr_sqAVpsszpYTmy2EuhTTRFLLT-FKL7A/edit#gid=0"
* group.element[0].code = #MSG.2
* group.element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].extension[0].extension[0].url = "type"
* group.element[0].extension[0].extension[0].valueCode = #"ID"
* group.element[0].extension[0].extension[1].url = "cardinalityMin"
* group.element[0].extension[0].extension[1].valueInteger = 1
* group.element[0].extension[0].extension[2].url = "cardinalityMax"
* group.element[0].extension[0].extension[2].valueInteger = 1
* group.element[0].display = "Trigger Event"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #$this
* group.element[0].target.display = "$this"
