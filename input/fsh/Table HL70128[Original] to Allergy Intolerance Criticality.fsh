// HL7 Concept Map_ AllergySeverity[AllergyIntolerance.criticality-Original] - Sheet1.csv
Instance: TableHL70128OriginalToAllergyIntoleranceCriticality
InstanceOf: ConceptMap
Title: "Table HL70128[Original] to Allergy Intolerance Criticality Map"
* title = "Table HL70128[Original] to Allergy Intolerance Criticality Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70128 to the FHIR Allergy Intolerance Criticality Value Set."
* id = "table-hl70128-original-to-allergy-intolerance-criticality"
* url = "http://hl7.org/fhir/uv/v2mappings/table-hl70128-original-to-allergy-intolerance-criticality"
* version = "1.0"
* name = "TableHL70128OriginalToAllergyIntoleranceCriticality"
* status = #active
* experimental = true
* date = "2024-04-24"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "HL70128"
* targetUri = "http://hl7.org/fhir/allergy-intolerance-criticality"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70128[Original] to Allergy Intolerance Criticality.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1au42G-4z1OKLQp9hQkGVtauaiyYl6rHaGjLswnCgPjo/edit#gid=0"
* group.element[0].code = #SV
* group.element[0].display = "Severe"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #high
* group.element[0].target.display = "High Risk"
* group.element[1].code = #MO
* group.element[1].display = "Moderate"
* group.element[1].target.equivalence = #unmatched
* group.element[2].code = #MI
* group.element[2].display = "Mild"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #low
* group.element[2].target.display = "Low Risk"
* group.element[3].code = #U
* group.element[3].display = "Unknown"
* group.element[3].target.equivalence = #unmatched
* group.element[4].code = #399166001
* group.element[4].display = "Fatal (qualifier value)"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #high
* group.element[4].target.display = "High Risk"
* group.element[5].code = #442452003
* group.element[5].display = "Life threatening severity (qualifier value)"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #high
* group.element[5].target.display = "High Risk"
* group.element[6].code = #255604002
* group.element[6].display = "Mild (qualifier value)"
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #low
* group.element[6].target.display = "Low Risk"
* group.element[7].code = #371923003
* group.element[7].display = "Mild to moderate (qualifier value)"
* group.element[7].target.equivalence = #equivalent
* group.element[7].target.code = #low
* group.element[7].target.display = "Low Risk"
* group.element[8].code = #6736007
* group.element[8].display = "Moderate (severity modifier) (qualifier value)"
* group.element[8].target.equivalence = #unmatched
* group.element[9].code = #371924009
* group.element[9].display = "Moderate to severe (qualifier value)"
* group.element[9].target.equivalence = #equivalent
* group.element[9].target.code = #high
* group.element[9].target.display = "High Risk"
* group.element[10].code = #451771000124108
* group.element[10].display = "Not severe"
* group.element[10].target.equivalence = #unmatched
* group.element[11].code = #24484000
* group.element[11].display = "Severe (severity modifier) (qualifier value)"
* group.element[11].target.equivalence = #equivalent
* group.element[11].target.code = #high
* group.element[11].target.display = "High Risk"
