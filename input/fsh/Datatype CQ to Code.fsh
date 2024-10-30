// HL7 Data Type - FHIR R4_ CQ[Code] - Sheet1.csv
Instance: DatatypeCQToCode
InstanceOf: ConceptMap
Title: "Datatype CQ to Code Map"
* title = "Datatype CQ to Code Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Datatype CQ to the FHIR Code Data Type."
* id = "datatype-cq-to-code"
* url = "http://hl7.org/fhir/uv/v2mappings/datatype-cq-to-code"
* version = "1.0"
* name = "DatatypeCQToCode"
* status = #active
* experimental = true
* date = "2024-10-30"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "CQ"
* targetUri = "Code"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Datatype CQ to Code.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1BFNRs6fNoqFyXGmzfYB1-G3SGCMuHXuLAk0vXQyittQ/edit#gid=0"
* group.element[0].code = #CQ.2
* group.element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].extension[0].extension[0].url = "type"
* group.element[0].extension[0].extension[0].valueCode = #"CWE"
* group.element[0].extension[0].extension[1].url = "cardinalityMin"
* group.element[0].extension[0].extension[1].valueInteger = 0
* group.element[0].extension[0].extension[2].url = "cardinalityMax"
* group.element[0].extension[0].extension[2].valueInteger = 1
* group.element[0].display = "Units"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #$value
* group.element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].target.extension[0].extension[0].url = "type"
* group.element[0].target.extension[0].extension[0].valueCode = #"code"
* group.element[0].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[0].target.extension[0].extension[1].valueInteger = 1
* group.element[0].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[0].target.extension[0].extension[2].valueInteger = 1
* group.element[0].target.display = "$value"
