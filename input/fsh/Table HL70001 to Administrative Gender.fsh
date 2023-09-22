// HL7 Concept Map_ Gender - Sheet1.csv
Instance: TableHL70001ToAdministrativeGender
InstanceOf: ConceptMap
Title: "Table HL70001 to Administrative Gender Map"
* title = "Table HL70001 to Administrative Gender Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70001 to the FHIR Administrative Gender Value Set."
* id = "table-hl70001-to-administrative-gender"
* url = "http://hl7.org/fhir/uv/v2mappings/table-hl70001-to-administrative-gender"
* version = "1.0"
* name = "TableHL70001ToAdministrativeGender"
* status = #active
* experimental = true
* date = "2023-09-22"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "HL70001"
* targetUri = "http://hl7.org/fhir/administrative-gender"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70001 to Administrative Gender.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1VxG2IpKlMJE_aC4hDB-PXKM6q2vC_E950WO2Nbctr5U/edit#gid=0"
* group.element[0].code = #F
* group.element[0].display = "Female"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #female
* group.element[0].target.display = "Female"
* group.element[1].code = #M
* group.element[1].display = "Male"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #male
* group.element[1].target.display = "Male"
* group.element[2].code = #O
* group.element[2].display = "Other"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #other
* group.element[2].target.display = "Other"
* group.element[3].code = #U
* group.element[3].display = "Unknown"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #unknown
* group.element[3].target.display = "Unknown"
* group.element[4].code = #A
* group.element[4].display = "Ambiguous"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #other
* group.element[4].target.display = "Other"
* group.element[5].code = #N
* group.element[5].display = "Not applicable"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #other
* group.element[5].target.display = "Other"
