// HL7 Concept Map_ PatientClass[EncounterStatus] - Sheet1.csv
Instance: TableHL70004ToEncounterStatus
InstanceOf: ConceptMap
Title: "Table HL70004 to Encounter Status Map"
Usage: #definition
* title = "Table HL70004 to Encounter Status Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70004 to the FHIR Encounter Status Value Set."
* id = "table-hl70004-to-encounter-status"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/table-hl70004-to-encounter-status"
* name = "TableHL70004ToEncounterStatus"
* sourceUri = "http://terminology.hl7.org/ValueSet/v2-0004"
* targetUri = "http://hl7.org/fhir/ValueSet/encounter-status"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70004 to Encounter Status.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1-g6mrN1Q_Y_foJjlOXY32UAtMWwPi245mh3kRc8FBQ4/edit#gid=0"
* group[0].source = "http://terminology.hl7.org/CodeSystem/v2-0004"
* group[0].target = "http://hl7.org/fhir/encounter-status"
* group[0].element[0].code = #E
* group[0].element[0].display = "Emergency"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #in-progress
* group[0].element[1].code = #I
* group[0].element[1].display = "Inpatient"
* group[0].element[1].target.equivalence = #equivalent
* group[0].element[1].target.code = #in-progress
* group[0].element[2].code = #O
* group[0].element[2].display = "Outpatient"
* group[0].element[2].target.equivalence = #equivalent
* group[0].element[2].target.code = #in-progress
* group[0].element[3].code = #P
* group[0].element[3].display = "Preadmit"
* group[0].element[3].target.equivalence = #equivalent
* group[0].element[3].target.code = #planned
* group[0].element[4].code = #R
* group[0].element[4].display = "Recurring patient"
* group[0].element[4].target.equivalence = #equivalent
* group[0].element[4].target.code = #in-progress
* group[0].element[5].code = #B
* group[0].element[5].display = "Obstetrics"
* group[0].element[5].target.equivalence = #equivalent
* group[0].element[5].target.code = #in-progress
* group[0].element[6].code = #C
* group[0].element[6].display = "Commercial Account"
* group[0].element[6].target.equivalence = #equivalent
* group[0].element[6].target.code = #in-progress
* group[0].element[7].code = #N
* group[0].element[7].display = "Not Applicable"
* group[0].element[7].target.equivalence = #equivalent
* group[0].element[7].target.code = #in-progress
* group[0].element[8].code = #U
* group[0].element[8].display = "Unknown"
* group[0].element[8].target.equivalence = #equivalent
* group[0].element[8].target.code = #unknown
