// HL7 Concept Map_ StudentStatus - Sheet1.csv
Instance: TableHL70231ToV20231
InstanceOf: ConceptMap
Title: "Table HL70231 to V2 0231 Map"
* title = "Table HL70231 to V2 0231 Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70231 to the FHIR V2 0231 Value Set."
* id = "table-hl70231-to-v2-0231"
* url = "http://hl7.org/fhir/uv/v2mappings/table-hl70231-to-v2-0231"
* version = "1.0"
* name = "TableHL70231ToV20231"
* status = #active
* experimental = true
* date = "2023-07-26"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "HL70231"
* targetUri = "http://terminology.hl7.org/CodeSystem/v2-0231"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70231 to V2 0231.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1SWVX0Uknacu8ZEJwasB7lLD9LtCALX2C01lR5XzRktU/edit#gid=0"
* group.element[0].code = #F
* group.element[0].display = "Full-time student"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #F
* group.element[0].target.display = "Full-time student"
* group.element[1].code = #P
* group.element[1].display = "Part-time student"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #P
* group.element[1].target.display = "Part-time student"
* group.element[2].code = #N
* group.element[2].display = "Not a student"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #N
* group.element[2].target.display = "Not a student"
