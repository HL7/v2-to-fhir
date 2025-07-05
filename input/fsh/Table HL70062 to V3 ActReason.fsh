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
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70062 to V3 ActReason.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/15frIhGeIKMZUXJ2DEsM7clJCSFWrYjCug5M5p_z4qOo/edit#gid=0"
* group[0].source = "http://terminology.hl7.org/CodeSystem/v2-0062"
* group[0].target = "http://terminology.hl7.org/CodeSystem/v3-ActReason"
* group[0].element[0].code = #01
* group[0].element[0].display = "Patient request"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #PATRQT
* group[0].element[0].target.display = "patient requested"
* group[0].element[1].code = #02
* group[0].element[1].display = "Physician/health practitioner order"
* group[0].element[1].target.equivalence = #equivalent
* group[0].element[1].target.code = #TREAT
* group[0].element[1].target.display = "treatment"
* group[0].element[2].code = #03
* group[0].element[2].display = "Census management"
* group[0].element[2].target.equivalence = #equivalent
* group[0].element[2].target.code = #HOPERAT
* group[0].element[2].target.display = "healthcare operations"
* group[1].source = "http://terminology.hl7.org/CodeSystem/v2-0062"
* group[1].target = "http://terminology.hl7.org/CodeSystem/v2-0062"
* group[1].element[0].code = #O
* group[1].element[0].display = "Other"
* group[1].element[0].target.equivalence = #equivalent
* group[1].element[0].target.code = #O
* group[1].element[0].target.display = "Other"
* group[1].element[1].code = #U
* group[1].element[1].display = "Unknown"
* group[1].element[1].target.equivalence = #equivalent
* group[1].element[1].target.code = #U
* group[1].element[1].target.display = "Unknown"
