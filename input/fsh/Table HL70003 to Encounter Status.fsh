// HL7 Concept Map_ Event[EncounterStatus] - Sheet1.csv
Instance: TableHL70003ToEncounterStatus
InstanceOf: ConceptMap
Title: "Table HL70003 to Encounter Status Map"
Usage: #definition
* title = "Table HL70003 to Encounter Status Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70003 to the FHIR Encounter Status Value Set."
* id = "table-hl70003-to-encounter-status"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/table-hl70003-to-encounter-status"
* name = "TableHL70003ToEncounterStatus"
* sourceUri = "http://terminology.hl7.org/ValueSet/v2-0003"
* targetUri = "http://hl7.org/fhir/ValueSet/encounter-status"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70003 to Encounter Status.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1WbXyGSjeff_jxywyFy2WQwbwb_Q308ywdcnHQmbZRGY/edit#gid=0"
* group[0].source = "http://terminology.hl7.org/CodeSystem/v2-0003"
* group[0].target = "http://hl7.org/fhir/encounter-status"
* group[0].element[0].code = #A01
* group[0].element[0].display = "ADT/ACK - Admit/visit notification"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #in-progress
* group[0].element[0].target.display = "In Progress"
* group[0].element[1].code = #A02
* group[0].element[1].display = "ADT/ACK - Transfer a patient"
* group[0].element[1].target.equivalence = #equivalent
* group[0].element[1].target.code = #in-progress
* group[0].element[1].target.display = "In Progress"
* group[0].element[2].code = #A03
* group[0].element[2].display = "ADT/ACK -  Discharge/end visit"
* group[0].element[2].target.equivalence = #equivalent
* group[0].element[2].target.code = #finished
* group[0].element[2].target.display = "Finished"
* group[0].element[3].code = #A04
* group[0].element[3].display = "ADT/ACK -  Register a patient"
* group[0].element[3].target.equivalence = #equivalent
* group[0].element[3].target.code = #planned
* group[0].element[3].target.display = "Planned"
* group[0].element[4].code = #A05
* group[0].element[4].display = "ADT/ACK -  Pre-admit a patient"
* group[0].element[4].target.equivalence = #equivalent
* group[0].element[4].target.code = #planned
* group[0].element[4].target.display = "Planned"
* group[0].element[5].code = #A08
* group[0].element[5].display = "ADT/ACK -  Update patient information"
* group[0].element[5].target.equivalence = #equivalent
* group[0].element[5].target.code = #unknown
* group[0].element[5].target.display = "Unknown"
* group[0].element[6].code = #A11
* group[0].element[6].display = "ADT/ACK -  Cancel admit/visit notification"
* group[0].element[6].target.equivalence = #equivalent
* group[0].element[6].target.code = #cancelled
* group[0].element[6].target.display = "Cancelled"
* group[0].element[7].code = #A13
* group[0].element[7].display = "ADT/ACK -  Cancel discharge/end visit"
* group[0].element[7].target.equivalence = #equivalent
* group[0].element[7].target.code = #in-progress
* group[0].element[7].target.display = "In Progress"
