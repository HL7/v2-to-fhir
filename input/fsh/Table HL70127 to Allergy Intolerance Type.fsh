// HL7 Concept Map_ AllergyType - Sheet1.csv
Instance: TableHL70127ToAllergyIntoleranceType
InstanceOf: ConceptMap
Title: "Table HL70127 to Allergy Intolerance Type Map"
Usage: #definition
* title = "Table HL70127 to Allergy Intolerance Type Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70127 to the FHIR Allergy Intolerance Type Value Set."
* id = "table-hl70127-to-allergy-intolerance-type"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/table-hl70127-to-allergy-intolerance-type"
* name = "TableHL70127ToAllergyIntoleranceType"
* sourceUri = "http://terminology.hl7.org/ValueSet/v2-0127"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70127 to Allergy Intolerance Type.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1UpQTB_IaM7hHAqz6gpmenkcPt2_BWSymicKQMtmZKN0/edit#gid=0"
* group[0].source = "http://terminology.hl7.org/CodeSystem/v2-0127"
* group[0].target = "http://hl7.org/fhir/allergy-intolerance-type"
* group[0].element[0].code = #DA
* group[0].element[0].display = "Drug allergy"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #allergy
* group[0].element[0].target.display = "Allergy"
* group[0].element[1].code = #FA
* group[0].element[1].display = "Food allergy"
* group[0].element[1].target.equivalence = #equivalent
* group[0].element[1].target.code = #allergy
* group[0].element[1].target.display = "Allergy"
* group[0].element[2].code = #MA
* group[0].element[2].display = "Miscellaneous allergy"
* group[0].element[2].target.equivalence = #equivalent
* group[0].element[2].target.code = #allergy
* group[0].element[2].target.display = "Allergy"
* group[0].element[3].code = #EA
* group[0].element[3].display = "Environmental allergy"
* group[0].element[3].target.equivalence = #equivalent
* group[0].element[3].target.code = #allergy
* group[0].element[3].target.display = "Allergy"
* group[0].element[4].code = #AA
* group[0].element[4].display = "Animal allergy"
* group[0].element[4].target.equivalence = #equivalent
* group[0].element[4].target.code = #allergy
* group[0].element[4].target.display = "Allergy"
* group[0].element[5].code = #PA
* group[0].element[5].display = "Plant allergy"
* group[0].element[5].target.equivalence = #equivalent
* group[0].element[5].target.code = #allergy
* group[0].element[5].target.display = "Allergy"
* group[0].element[6].code = #LA
* group[0].element[6].display = "Pollen allergy"
* group[0].element[6].target.equivalence = #equivalent
* group[0].element[6].target.code = #allergy
* group[0].element[6].target.display = "Allergy"
* group[1].source = "http://terminology.hl7.org/CodeSystem/v2-0127"
* group[1].element[0].code = #MC
* group[1].element[0].display = "Miscellaneous contraindication"
* group[1].element[0].target.equivalence = #unmatched
