// HL7 Concept Map_ AppointmentTypeCodes - Sheet1.csv
Instance: TableHL70277ToV20277
InstanceOf: ConceptMap
Title: "Table HL70277 to V2 0277 Map"
* title = "Table HL70277 to V2 0277 Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70277 to the FHIR V2 0277 Value Set."
* id = "table-hl70277-to-v2-0277"
* url = "http://hl7.org/fhir/uv/v2mappings/table-hl70277-to-v2-0277"
* version = "1.0"
* name = "TableHL70277ToV20277"
* status = #active
* experimental = true
* date = "2024-12-29"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "HL70277"
* targetUri = "http://terminology.hl7.org/CodeSystem/v2-0277"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70277 to V2 0277.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1LctuGxG7IDDNuMCS_L4usmZhP49YpqTl6Lx59FmeIcA/edit#gid=0"
* group.element[0].code = #Normal
* group.element[0].display = "Routine schedule request type – default if not valued"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #Normal
* group.element[0].target.display = "Routine schedule request type – default if not valued"
* group.element[1].code = #Tentative
* group.element[1].display = "A request for a tentative (e.g., “penciled in”) appointment"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #Tentative
* group.element[1].target.display = "A request for a tentative (e.g., “penciled in”) appointment"
* group.element[2].code = #Complete
* group.element[2].display = "A request to add a completed appointment, used to maintain records of completed appointments that did not appear in the schedule (e.g., STAT, walk-in, etc.)"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #Complete
* group.element[2].target.display = "A request to add a completed appointment, used to maintain records of completed appointments that did not appear in the schedule (e.g., STAT, walk-in, etc.)"
