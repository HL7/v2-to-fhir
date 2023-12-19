// HL7 Concept Map_ ConsentRelationship - Sheet1.csv
Instance: TableHL70549ToV3RoleCode
InstanceOf: ConceptMap
Title: "Table HL70549 to V3 RoleCode Map"
* title = "Table HL70549 to V3 RoleCode Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70549 to the FHIR V3 RoleCode Value Set."
* id = "table-hl70549-to-v3-rolecode"
* url = "http://hl7.org/fhir/uv/v2mappings/table-hl70549-to-v3-rolecode"
* version = "1.0"
* name = "TableHL70549ToV3RoleCode"
* status = #active
* experimental = true
* date = "2023-12-19"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "HL70549"
* targetUri = "http://terminology.hl7.org/CodeSystem/v3-RoleCode"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70549 to V3 RoleCode.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1pIhWEg7CyIUwK_swo6wL8rTze8bAoeBDbucIofdiwMM/edit#gid=0"
* group.element[0].code = #2
* group.element[0].display = "Parent"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #PRN
* group.element[0].target.display = "Parent"
* group.element[1].code = #3
* group.element[1].display = "Next of Kin"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #N
* group.element[1].target.display = "Next-of-Kin"
* group.element[2].code = #4
* group.element[2].display = "Durable Power of Attorney in Healthcare Affairs"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #O
* group.element[2].target.display = "Other"
* group.element[3].code = #5
* group.element[3].display = "Conservator"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #O
* group.element[3].target.display = "Other"
