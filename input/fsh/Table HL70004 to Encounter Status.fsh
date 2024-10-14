// HL7 Concept Map_ PatientClass[EncounterStatus] - Sheet1.csv
Instance: TableHL70004ToEncounterStatus
InstanceOf: ConceptMap
Title: "Table HL70004null to Encounter Status Map"
* title = "Table HL70004null to Encounter Status Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70004 to the FHIR Encounter Status Value Set."
* id = "table-hl70004-to-encounter-status"
* url = "http://hl7.org/fhir/uv/v2mappings/table-hl70004-to-encounter-status"
* version = "1.0"
* name = "TableHL70004ToEncounterStatus"
* status = #active
* experimental = true
* date = "2024-10-14"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "HL70004"
* targetUri = "http://hl7.org/fhir/encounter-status"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70004 to Encounter Status.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1-g6mrN1Q_Y_foJjlOXY32UAtMWwPi245mh3kRc8FBQ4/edit#gid=0"
* group.element[0].code = #E
* group.element[0].display = "Emergency"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #in-progress
* group.element[1].code = #I
* group.element[1].display = "Inpatient"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #in-progress
* group.element[2].code = #O
* group.element[2].display = "Outpatient"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #in-progress
* group.element[3].code = #P
* group.element[3].display = "Preadmit"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #planned
* group.element[4].code = #R
* group.element[4].display = "Recurring patient"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #in-progress
* group.element[5].code = #B
* group.element[5].display = "Obstetrics"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #in-progress
* group.element[6].code = #C
* group.element[6].display = "Commercial Account"
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #in-progress
* group.element[7].code = #N
* group.element[7].display = "Not Applicable"
* group.element[7].target.equivalence = #equivalent
* group.element[7].target.code = #in-progress
* group.element[8].code = #U
* group.element[8].display = "Unknown"
* group.element[8].target.equivalence = #equivalent
* group.element[8].target.code = #unknown
