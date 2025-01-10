// HL7 Concept Map_ AllergenType[AllergyIntoleranceOriginalCategory] - Sheet1.csv
Instance: TableHL70127ToV20127
InstanceOf: ConceptMap
Title: "Table HL70127 to V2 0127 Map"
Usage: #definition
* title = "Table HL70127 to V2 0127 Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70127 to the FHIR V2 0127 Value Set."
* id = "table-hl70127-to-v2-0127"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/table-hl70127-to-v2-0127"
* name = "TableHL70127ToV20127"
* sourceUri = "http://terminology.hl7.org/ValueSet/v2-0127"
* targetUri = "null"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70127 to V2 0127.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1MnZzLYKreOvD41o_OaOfZIhUFF3B-93cAmEcNs_Q9BY/edit#gid=0"
* group.element[0].code = #DA
* group.element[0].display = "Drug allergy"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #DA
* group.element[0].target.display = "Drug allergy"
* group.element[1].code = #FA
* group.element[1].display = "Food allergy"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #FA
* group.element[1].target.display = "Food allergy"
* group.element[2].code = #MA
* group.element[2].display = "Miscellaneous allergy"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #MA
* group.element[2].target.display = "Miscellaneous allergy"
* group.element[3].code = #MC
* group.element[3].display = "Miscellaneous contraindication"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #MC
* group.element[3].target.display = "Miscellaneous contraindication"
* group.element[4].code = #EA
* group.element[4].display = "Environmental allergy"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #EA
* group.element[4].target.display = "Environmental allergy"
* group.element[5].code = #AA
* group.element[5].display = "Animal allergy"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #AA
* group.element[5].target.display = "Animal allergy"
* group.element[6].code = #PA
* group.element[6].display = "Plant allergy"
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #PA
* group.element[6].target.display = "Plant allergy"
* group.element[7].code = #LA
* group.element[7].display = "Pollen allergy"
* group.element[7].target.equivalence = #equivalent
* group.element[7].target.code = #LA
* group.element[7].target.display = "Pollen allergy"
