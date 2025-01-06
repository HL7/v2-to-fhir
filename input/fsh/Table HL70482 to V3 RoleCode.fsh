// HL7 Concept Map_ OrderType - Sheet1.csv
Instance: TableHL70482ToV3RoleCode
InstanceOf: ConceptMap
Title: "Table HL70482  to V3 RoleCode Map"
* title = "Table HL70482  to V3 RoleCode Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70482 to the FHIR V3 RoleCode Value Set."
* id = "table-hl70482-to-v3-rolecode"
* url = "http://hl7.org/fhir/uv/v2mappings/table-hl70482-to-v3-rolecode"
* version = "1.0"
* name = "TableHL70482ToV3RoleCode"
* status = #active
* experimental = true
* date = "2025-01-06"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "HL70482"
* targetUri = "http://terminology.hl7.org/CodeSystem/v3-RoleCode"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70482 to V3 RoleCode.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1uTlF1ZBSs6GIksOREp3pcBLGNphcpxOrn5NBBEiRTd4/edit#gid=0"
* group.element[0].code = #I
* group.element[0].display = "Inpatient Order"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #HOSP
* group.element[0].target.display = "Hospital"
* group.element[1].code = #O
* group.element[1].display = "Outpatient Order"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #OF
* group.element[1].target.display = "Outpatient facility"
