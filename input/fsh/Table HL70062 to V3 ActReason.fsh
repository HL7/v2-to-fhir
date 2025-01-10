// HL7 Concept Map_ EventReason - Sheet1.csv
Instance: TableHL70062ToV3ActReason
InstanceOf: ConceptMap
Title: "Table HL70062 to V3 ActReason Map"
Usage: #definition
* title = "Table HL70062 to V3 ActReason Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70062 to the FHIR V3 ActReason Value Set."
* id = "table-hl70062-to-v3-actreason"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/table-hl70062-to-v3-actreason"
* name = "TableHL70062ToV3ActReason"
* sourceUri = "http://terminology.hl7.org/ValueSet/v2-0062"
* targetUri = "null"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70062 to V3 ActReason.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/15frIhGeIKMZUXJ2DEsM7clJCSFWrYjCug5M5p_z4qOo/edit#gid=0"
* group.element[0].code = #1
* group.element[0].display = "Patient request"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #PATRQT
* group.element[0].target.display = "patient requested"
* group.element[1].code = #2
* group.element[1].display = "Physician/health practitioner order"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #TREAT
* group.element[1].target.display = "treatment"
* group.element[2].code = #3
* group.element[2].display = "Census management"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #HOPERAT
* group.element[2].target.display = "healthcare operations"
* group.element[3].code = #O
* group.element[3].display = "Other"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #O
* group.element[3].target.display = "Other"
* group.element[4].code = #U
* group.element[4].display = "Unknown"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #unknown
