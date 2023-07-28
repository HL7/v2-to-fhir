// HL7 Data Type - FHIR R4_ IS[code] - Sheet1.csv
Instance: DatatypeISToCode
InstanceOf: ConceptMap
Title: "Datatype IS to code Map"
* title = "Datatype IS to code Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Datatype IS to the FHIR code Data Type."
* id = "datatype-is-to-code"
* url = "http://hl7.org/fhir/uv/v2mappings/datatype-is-to-code"
* version = "1.0"
* name = "DatatypeISToCode"
* status = #active
* experimental = true
* date = "2023-07-28"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "IS"
* targetUri = "code"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Datatype IS to code.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/110zIdufyvcKXndEAuYtFE5Ky9RgPFRA8wyy5z_T7eZE/edit#gid=0"
* group.element[0].code = #IS.1
* group.element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].extension[0].extension[0].url = "cardinalityMin"
* group.element[0].extension[0].extension[0].valueInteger = 1
* group.element[0].extension[0].extension[1].url = "cardinalityMax"
* group.element[0].extension[0].extension[1].valueInteger = 1
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #$value
* group.element[0].target.display = "$value"
