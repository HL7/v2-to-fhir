// HL7 Concept Map_ AllergenType[AllergyIntoleranceCategory] - Sheet1.csv
Instance: TableHL70127ToAllergyIntoleranceCategory
InstanceOf: ConceptMap
Title: "Table HL70127 to Allergy Intolerance Category Map"
Usage: #definition
* title = "Table HL70127 to Allergy Intolerance Category Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70127 to the FHIR Allergy Intolerance Category Value Set."
* id = "table-hl70127-to-allergy-intolerance-category"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/table-hl70127-to-allergy-intolerance-category"
* name = "TableHL70127ToAllergyIntoleranceCategory"
* sourceUri = "http://terminology.hl7.org/ValueSet/v2-0127"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70127 to Allergy Intolerance Category.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1kRIGg82psj97HFzQx5-t34LbHBzhAQzFqM1BT2uNVSI/edit?gid=0#gid=0"
* group[0].source = "http://terminology.hl7.org/CodeSystem/v2-0127"
* group[0].target = "http://hl7.org/fhir/allergy-intolerance-category"
* group[0].element[0].code = #DA
* group[0].element[0].display = "Drug allergy"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #medication
* group[0].element[0].target.display = "Medication"
* group[0].element[1].code = #FA
* group[0].element[1].display = "Food allergy"
* group[0].element[1].target.equivalence = #equivalent
* group[0].element[1].target.code = #food
* group[0].element[1].target.display = "Food"
* group[0].element[2].code = #EA
* group[0].element[2].display = "Environmental allergy"
* group[0].element[2].target.equivalence = #equivalent
* group[0].element[2].target.code = #environment
* group[0].element[2].target.display = "Environment"
* group[0].element[3].code = #AA
* group[0].element[3].display = "Animal allergy"
* group[0].element[3].target.equivalence = #equivalent
* group[0].element[3].target.code = #biologic
* group[0].element[3].target.display = "Environment"
* group[0].element[4].code = #PA
* group[0].element[4].display = "Plant allergy"
* group[0].element[4].target.equivalence = #equivalent
* group[0].element[4].target.code = #environment
* group[0].element[4].target.display = "Environment"
* group[0].element[5].code = #LA
* group[0].element[5].display = "Pollen allergy"
* group[0].element[5].target.equivalence = #equivalent
* group[0].element[5].target.code = #environment
* group[0].element[5].target.display = "Environment"
* group[1].source = "http://terminology.hl7.org/CodeSystem/v2-0127"
* group[1].element[0].code = #MA
* group[1].element[0].display = "Miscellaneous allergy"
* group[1].element[0].target.equivalence = #unmatched
* group[1].element[1].code = #MC
* group[1].element[1].display = "Miscellaneous contraindication"
* group[1].element[1].target.equivalence = #unmatched
