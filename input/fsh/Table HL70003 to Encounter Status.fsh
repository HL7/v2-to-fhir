// HL7 Concept Map_ Event[EncounterStatus] - Sheet1.csv
Instance: TableHL70003ToEncounterStatus
InstanceOf: ConceptMap
Title: "Table HL70003 to Encounter Status Map"
* title = "Table HL70003 to Encounter Status Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70003 to the FHIR Encounter Status Value Set."
* id = "table-hl70003-to-encounter-status"
* url = "http://hl7.org/fhir/uv/v2mappings/table-hl70003-to-encounter-status"
* version = "1.0"
* name = "TableHL70003ToEncounterStatus"
* status = #active
* experimental = true
* date = "2024-11-25"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "HL70003"
* targetUri = "http://hl7.org/fhir/encounter-status"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70003 to Encounter Status.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1WbXyGSjeff_jxywyFy2WQwbwb_Q308ywdcnHQmbZRGY/edit#gid=0"
* group.element[0].code = #A01
* group.element[0].display = "Admit/Visit Notification"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #in-progress
* group.element[0].target.display = "In Progress"
* group.element[1].code = #A02
* group.element[1].display = "Transfer A Patient"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #in-progress
* group.element[1].target.display = "In Progress"
* group.element[2].code = #A03
* group.element[2].display = "Discharge/End Visit"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #finished
* group.element[2].target.display = "Finished"
* group.element[3].code = #A04
* group.element[3].display = "Register Visit"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #planned
* group.element[3].target.display = "Planned"
* group.element[4].code = #A05
* group.element[4].display = "Pre-Admit"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #planned
* group.element[4].target.display = "Planned"
* group.element[5].code = #A08
* group.element[5].display = "Update Patient Information"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #unknown
* group.element[5].target.display = "Unknown"
* group.element[6].code = #A11
* group.element[6].display = "Cancel admit/visit notification"
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #cancelled
* group.element[6].target.display = "Cancelled"
* group.element[7].code = #A13
* group.element[7].display = "Cancel discharge/end visit"
* group.element[7].target.equivalence = #equivalent
* group.element[7].target.code = #in-progress
* group.element[7].target.display = "In Progress"
