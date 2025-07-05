// HL7 Concept Map_ AllergySeverity[AllergyIntolerance.criticality] - Sheet1.csv
Instance: TableHL70128ToAllergyIntoleranceCriticality
InstanceOf: ConceptMap
Title: "Table HL70128 to Allergy Intolerance Criticality Map"
Usage: #definition
* title = "Table HL70128 to Allergy Intolerance Criticality Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70128 to the FHIR Allergy Intolerance Criticality Value Set."
* id = "table-hl70128-to-allergy-intolerance-criticality"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/table-hl70128-to-allergy-intolerance-criticality"
* name = "TableHL70128ToAllergyIntoleranceCriticality"
* sourceUri = "http://terminology.hl7.org/ValueSet/v2-0128"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70128 to Allergy Intolerance Criticality.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1au42G-4z1OKLQp9hQkGVtauaiyYl6rHaGjLswnCgPjo/edit#gid=0"
* group[0].source = "http://terminology.hl7.org/CodeSystem/v2-0128"
* group[0].target = "http://hl7.org/fhir/allergy-intolerance-criticality"
* group[0].element[0].code = #SV
* group[0].element[0].display = "Severe"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #high
* group[0].element[0].target.display = "High Risk"
* group[0].element[1].code = #MI
* group[0].element[1].display = "Mild"
* group[0].element[1].target.equivalence = #equivalent
* group[0].element[1].target.code = #low
* group[0].element[1].target.display = "Low Risk"
* group[1].source = "http://terminology.hl7.org/CodeSystem/v2-0128"
* group[1].element[0].code = #MO
* group[1].element[0].display = "Moderate"
* group[1].element[0].target.equivalence = #unmatched
* group[1].element[1].code = #U
* group[1].element[1].display = "Unknown"
* group[1].element[1].target.equivalence = #unmatched
