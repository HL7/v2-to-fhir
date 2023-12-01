// HL7 Concept Map_ AppointmentReason - Sheet1.csv
Instance: TableHL70276ToEncounterReason
InstanceOf: ConceptMap
Title: "Table HL70276 to Encounter Reason Map"
* title = "Table HL70276 to Encounter Reason Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70276 to the FHIR Encounter Reason Value Set."
* id = "table-hl70276-to-encounter-reason"
* url = "http://hl7.org/fhir/uv/v2mappings/table-hl70276-to-encounter-reason"
* version = "1.0"
* name = "TableHL70276ToEncounterReason"
* status = #active
* experimental = true
* date = "2023-12-01"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "HL70276"
* targetUri = "http://hl7.org/fhir/ValueSet/encounter-reason"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70276 to Encounter Reason.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/13B4B6YFRgukI2tipC7QOJ1J8i4iNJ2aYzQRuirCyFBg/edit#gid=0"
* group.element[0].code = #ROUTINE
* group.element[0].display = "Routine appointment - default if not valued"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #3780001
* group.element[0].target.display = "Routine patient disposition, no follow-up planned"
* group.element[1].code = #WALKIN
* group.element[1].display = "A previously unscheduled walk-in visit"
* group.element[1].target.equivalence = #unmatched
* group.element[2].code = #CHECKUP
* group.element[2].display = "A routine check-up, such as an annual physical"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #866149003
* group.element[2].target.display = "Annual visit (procedure)"
* group.element[3].code = #FOLLOWUP
* group.element[3].display = "A follow up visit from a previous appointment"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #185389009
* group.element[3].target.display = "Follow-up visit (procedure)"
* group.element[4].code = #EMERGENCY
* group.element[4].display = "Emergency appointment"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #373110003
* group.element[4].target.display = "Emergency procedure (procedure)"
