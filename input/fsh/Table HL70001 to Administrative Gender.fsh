// HL7 Concept Map_ AdministrativeSex - Sheet1.csv
Instance: TableHL70001ToAdministrativeGender
InstanceOf: ConceptMap
Title: "Table HL70001 to Administrative Gender Map"
Usage: #definition
* title = "Table HL70001 to Administrative Gender Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70001 to the FHIR Administrative Gender Value Set."
* id = "table-hl70001-to-administrative-gender"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/table-hl70001-to-administrative-gender"
* name = "TableHL70001ToAdministrativeGender"
* sourceUri = "http://terminology.hl7.org/ValueSet/v2-0001"
* targetUri = "http://hl7.org/fhir/ValueSet/administrative-gender"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70001 to Administrative Gender.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1VxG2IpKlMJE_aC4hDB-PXKM6q2vC_E950WO2Nbctr5U/edit#gid=0"
* group[0].source = "http://terminology.hl7.org/CodeSystem/v2-0001"
* group[0].target = "http://hl7.org/fhir/administrative-gender"
* group[0].element[0].code = #F
* group[0].element[0].display = "Female"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #female
* group[0].element[0].target.display = "Female"
* group[0].element[1].code = #M
* group[0].element[1].display = "Male"
* group[0].element[1].target.equivalence = #equivalent
* group[0].element[1].target.code = #male
* group[0].element[1].target.display = "Male"
* group[0].element[2].code = #O
* group[0].element[2].display = "Other"
* group[0].element[2].target.equivalence = #equivalent
* group[0].element[2].target.code = #other
* group[0].element[2].target.display = "Other"
* group[0].element[3].code = #U
* group[0].element[3].display = "Unknown"
* group[0].element[3].target.equivalence = #equivalent
* group[0].element[3].target.code = #unknown
* group[0].element[3].target.display = "Unknown"
* group[0].element[4].code = #A
* group[0].element[4].display = "Ambiguous"
* group[0].element[4].target.equivalence = #equivalent
* group[0].element[4].target.code = #other
* group[0].element[4].target.display = "Other"
* group[0].element[5].code = #N
* group[0].element[5].display = "Not applicable"
* group[0].element[5].target.equivalence = #equivalent
* group[0].element[5].target.code = #other
* group[0].element[5].target.display = "Other"
