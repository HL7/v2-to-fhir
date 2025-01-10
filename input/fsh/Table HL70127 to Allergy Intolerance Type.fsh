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
* targetUri = "http://hl7.org/fhir/ValueSet/allergy-intolerance-type"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70127 to Allergy Intolerance Type.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1UpQTB_IaM7hHAqz6gpmenkcPt2_BWSymicKQMtmZKN0/edit#gid=0"
* group.element[0].code = #DA
* group.element[0].display = "Drug allergy"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #allergy
* group.element[0].target.display = "Allergy"
* group.element[1].code = #FA
* group.element[1].display = "Food allergy"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #allergy
* group.element[1].target.display = "Allergy"
* group.element[2].code = #MA
* group.element[2].display = "Miscellaneous allergy"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #allergy
* group.element[2].target.display = "Allergy"
* group.element[3].code = #MC
* group.element[3].display = "Miscellaneous contraindication"
* group.element[3].target.equivalence = #unmatched
* group.element[4].code = #EA
* group.element[4].display = "Environmental allergy"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #allergy
* group.element[4].target.display = "Allergy"
* group.element[5].code = #AA
* group.element[5].display = "Animal allergy"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #allergy
* group.element[5].target.display = "Allergy"
* group.element[6].code = #PA
* group.element[6].display = "Plant allergy"
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #allergy
* group.element[6].target.display = "Allergy"
* group.element[7].code = #LA
* group.element[7].display = "Pollen allergy"
* group.element[7].target.equivalence = #equivalent
* group.element[7].target.code = #allergy
* group.element[7].target.display = "Allergy"
