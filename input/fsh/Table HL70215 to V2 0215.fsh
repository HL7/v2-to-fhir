// HL7 Concept Map_ PublicityCode - Sheet1.csv
Instance: TableHL70215ToV20215
InstanceOf: ConceptMap
Title: "Table HL70215 to V2 0215 Map"
Usage: #definition
* title = "Table HL70215 to V2 0215 Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70215 to the FHIR V2 0215 Value Set."
* id = "table-hl70215-to-v2-0215"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/table-hl70215-to-v2-0215"
* name = "TableHL70215ToV20215"
* sourceUri = "http://terminology.hl7.org/ValueSet/v2-0215"
* targetUri = "http://terminology.hl7.org/ValueSet/v2-0215"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70215 to V2 0215.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1Ny3NtsgyW7xToVtjTMO_Zzng9ZZLghgPZdn7dYvcu2g/edit#gid=0"
* group[0].source = "http://terminology.hl7.org/CodeSystem/v2-0215"
* group[0].target = "http://terminology.hl7.org/CodeSystem/v2-0215"
* group[0].element[0].code = #F
* group[0].element[0].display = "Family only"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #F
* group[0].element[0].target.display = "Family only"
* group[0].element[1].code = #N
* group[0].element[1].display = "No Publicity"
* group[0].element[1].target.equivalence = #equivalent
* group[0].element[1].target.code = #N
* group[0].element[1].target.display = "No Publicity"
* group[0].element[2].code = #O
* group[0].element[2].display = "Other"
* group[0].element[2].target.equivalence = #equivalent
* group[0].element[2].target.code = #O
* group[0].element[2].target.display = "Other"
* group[0].element[3].code = #U
* group[0].element[3].display = "Unknown"
* group[0].element[3].target.equivalence = #equivalent
* group[0].element[3].target.code = #U
* group[0].element[3].target.display = "Unknown"
