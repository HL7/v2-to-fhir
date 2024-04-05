// HL7 Data Type - FHIR R4_ ID[code] - Sheet1.csv
Instance: DatatypeIDToCode
InstanceOf: ConceptMap
Title: "Datatype ID to code Map"
* title = "Datatype ID to code Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Datatype ID to the FHIR code Data Type."
* id = "datatype-id-to-code"
* url = "http://hl7.org/fhir/uv/v2mappings/datatype-id-to-code"
* version = "1.0"
* name = "DatatypeIDToCode"
* status = #active
* experimental = true
* date = "2024-03-22"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "ID"
* targetUri = "code"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Datatype ID to code.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1ymA-PgLgEKGCJjE8wi11exeKKhersWoHt96YGxUkrlU/edit#gid=0"
* group.element[0].code = #ID.1
* group.element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].extension[0].extension[0].url = "cardinalityMin"
* group.element[0].extension[0].extension[0].valueInteger = 1
* group.element[0].extension[0].extension[1].url = "cardinalityMax"
* group.element[0].extension[0].extension[1].valueInteger = 1
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #$value
* group.element[0].target.display = "$value"
