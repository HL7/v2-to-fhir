// HL7 Concept Map_ VisitUserCode - Sheet1.csv
Instance: TableHL70130ToV20130
InstanceOf: ConceptMap
Title: "Table HL70130 to V2 0130 Map"
Usage: #definition
* title = "Table HL70130 to V2 0130 Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70130 to the FHIR V2 0130 Value Set."
* id = "table-hl70130-to-v2-0130"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/table-hl70130-to-v2-0130"
* name = "TableHL70130ToV20130"
* sourceUri = "http://terminology.hl7.org/ValueSet/v2-0130"
* targetUri = "http://terminology.hl7.org/ValueSet/v2-0130"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70130 to V2 0130.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/11sSjJv_FutvNhkDs-S81ARyRj5_D1J2kPGEJATjhQWk/edit#gid=0"
* group[0].source = "http://terminology.hl7.org/CodeSystem/v2-0130"
* group[0].target = "http://terminology.hl7.org/CodeSystem/v2-0130"
* group[0].element[0].code = #TE
* group[0].element[0].display = "Teaching"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #TE
* group[0].element[0].target.display = "Teaching"
* group[0].element[1].code = #HO
* group[0].element[1].display = "Home"
* group[0].element[1].target.equivalence = #equivalent
* group[0].element[1].target.code = #HO
* group[0].element[1].target.display = "Home"
* group[0].element[2].code = #MO
* group[0].element[2].display = "Mobile Unit"
* group[0].element[2].target.equivalence = #equivalent
* group[0].element[2].target.code = #MO
* group[0].element[2].target.display = "Mobile Unit"
* group[0].element[3].code = #PH
* group[0].element[3].display = "Phone"
* group[0].element[3].target.equivalence = #equivalent
* group[0].element[3].target.code = #PH
* group[0].element[3].target.display = "Phone"
