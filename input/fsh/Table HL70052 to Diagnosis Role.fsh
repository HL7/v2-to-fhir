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
* targetUri = "null"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70052 to Diagnosis Role.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1MWVgzweS_o7Hy9ftUGElhuobSdxsZ0vb2O8hKzh-RDU/edit#gid=0"
* group.element[0].code = #A
* group.element[0].display = "Admitting"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #AD
* group.element[0].target.display = "Admission Diagnosis"
* group.element[1].code = #W
* group.element[1].display = "Working"
* group.element[1].target.equivalence = #unmatched
* group.element[2].code = #F
* group.element[2].display = "Final"
* group.element[2].target.equivalence = #unmatched
