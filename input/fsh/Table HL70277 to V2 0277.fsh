// HL7 Concept Map_ AppointmentTypeCodes - Sheet1.csv
Instance: TableHL70277ToV20277
InstanceOf: ConceptMap
Title: "Table HL70277 to V2 0277 Map"
Usage: #definition
* title = "Table HL70277 to V2 0277 Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70277 to the FHIR V2 0277 Value Set."
* id = "table-hl70277-to-v2-0277"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/table-hl70277-to-v2-0277"
* name = "TableHL70277ToV20277"
* sourceUri = "http://terminology.hl7.org/ValueSet/v2-0277"
* targetUri = "http://terminology.hl7.org/ValueSet/v2-0277"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70277 to V2 0277.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1LctuGxG7IDDNuMCS_L4usmZhP49YpqTl6Lx59FmeIcA/edit#gid=0"
* group[0].source = "http://terminology.hl7.org/CodeSystem/v2-0277"
* group[0].target = "http://terminology.hl7.org/CodeSystem/v2-0277"
* group[0].element[0].code = #Normal
* group[0].element[0].display = "Routine schedule request type – default if not valued"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #Normal
* group[0].element[0].target.display = "Routine schedule request type – default if not valued"
* group[0].element[1].code = #Tentative
* group[0].element[1].display = "A request for a tentative (e.g., “penciled in”) appointment"
* group[0].element[1].target.equivalence = #equivalent
* group[0].element[1].target.code = #Tentative
* group[0].element[1].target.display = "A request for a tentative (e.g., “penciled in”) appointment"
* group[0].element[2].code = #Complete
* group[0].element[2].display = "A request to add a completed appointment, used to maintain records of completed appointments that did not appear in the schedule (e.g., STAT, walk-in, etc.)"
* group[0].element[2].target.equivalence = #equivalent
* group[0].element[2].target.code = #Complete
* group[0].element[2].target.display = "A request to add a completed appointment, used to maintain records of completed appointments that did not appear in the schedule (e.g., STAT, walk-in, etc.)"
