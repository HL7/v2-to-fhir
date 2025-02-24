// HL7 Concept Map_ SpecimenRejectReason - Sheet1.csv
Instance: TableHL70490ToV20490
InstanceOf: ConceptMap
Title: "Table HL70490 to V2 0490 Map"
Usage: #definition
* title = "Table HL70490 to V2 0490 Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70490 to the FHIR V2 0490 Value Set."
* id = "table-hl70490-to-v2-0490"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/table-hl70490-to-v2-0490"
* name = "TableHL70490ToV20490"
* sourceUri = "http://terminology.hl7.org/ValueSet/v2-0490"
* targetUri = "null"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70490 to V2 0490.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1r1-CV9pi_ravlxzhSjB97bDs4Jp0HSOa8r_2-0UuMGg/edit#gid=0"
* group.element[0].code = #EX
* group.element[0].display = "Expired"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #EX
* group.element[0].target.display = "Expired"
* group.element[1].code = #QS
* group.element[1].display = "Quantity not sufficient"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #QS
* group.element[1].target.display = "Quantity not sufficient"
* group.element[2].code = #RB
* group.element[2].display = "Broken container"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #RB
* group.element[2].target.display = "Broken container"
* group.element[3].code = #RC
* group.element[3].display = "Clotting"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #RC
* group.element[3].target.display = "Clotting"
* group.element[4].code = #RD
* group.element[4].display = "Missing collection date"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #RD
* group.element[4].target.display = "Missing collection date"
* group.element[5].code = #RA
* group.element[5].display = "Missing patient ID number"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #RA
* group.element[5].target.display = "Missing patient ID number"
* group.element[6].code = #RE
* group.element[6].display = "Missing patient name"
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #RE
* group.element[6].target.display = "Missing patient name"
* group.element[7].code = #RH
* group.element[7].display = "Hemolysis"
* group.element[7].target.equivalence = #equivalent
* group.element[7].target.code = #RH
* group.element[7].target.display = "Hemolysis"
* group.element[8].code = #RI
* group.element[8].display = "Identification problem"
* group.element[8].target.equivalence = #equivalent
* group.element[8].target.code = #RI
* group.element[8].target.display = "Identification problem"
* group.element[9].code = #RM
* group.element[9].display = "Labeling"
* group.element[9].target.equivalence = #equivalent
* group.element[9].target.code = #RM
* group.element[9].target.display = "Labeling"
* group.element[10].code = #RN
* group.element[10].display = "Contamination"
* group.element[10].target.equivalence = #equivalent
* group.element[10].target.code = #RN
* group.element[10].target.display = "Contamination"
* group.element[11].code = #RP
* group.element[11].display = "Missing phlebotomist ID"
* group.element[11].target.equivalence = #equivalent
* group.element[11].target.code = #RP
* group.element[11].target.display = "Missing phlebotomist ID"
* group.element[12].code = #RR
* group.element[12].display = "Improper storage"
* group.element[12].target.equivalence = #equivalent
* group.element[12].target.code = #RR
* group.element[12].target.display = "Improper storage"
* group.element[13].code = #RS
* group.element[13].display = "Name misspelling"
* group.element[13].target.equivalence = #equivalent
* group.element[13].target.code = #RS
* group.element[13].target.display = "Name misspelling"
