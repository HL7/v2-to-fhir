// HL7 Concept Map_ DiagnosisType - Sheet1.csv
Instance: TableHL70052ToDiagnosisRole
InstanceOf: ConceptMap
Title: "Table HL70052 to Diagnosis Role Map"
Usage: #definition
* title = "Table HL70052 to Diagnosis Role Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70052 to the FHIR Diagnosis Role Value Set."
* id = "table-hl70052-to-diagnosis-role"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/table-hl70052-to-diagnosis-role"
* name = "TableHL70052ToDiagnosisRole"
* sourceUri = "http://terminology.hl7.org/ValueSet/v2-0052"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70052 to Diagnosis Role.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1MWVgzweS_o7Hy9ftUGElhuobSdxsZ0vb2O8hKzh-RDU/edit#gid=0"
* group[0].source = "http://terminology.hl7.org/CodeSystem/v2-0052"
* group[0].target = "http://terminology.hl7.org/CodeSystem/diagnosis-role"
* group[0].element[0].code = #A
* group[0].element[0].display = "Admitting"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #AD
* group[0].element[0].target.display = "Admission Diagnosis"
* group[1].source = "http://terminology.hl7.org/CodeSystem/v2-0052"
* group[1].element[0].code = #W
* group[1].element[0].display = "Working"
* group[1].element[0].target.equivalence = #unmatched
* group[1].element[1].code = #F
* group[1].element[1].display = "Final"
* group[1].element[1].target.equivalence = #unmatched
