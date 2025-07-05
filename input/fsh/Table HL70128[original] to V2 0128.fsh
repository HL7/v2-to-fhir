// HL7 Concept Map_ AllergySeverity[AllergyIntolerance.criticality-original] - Sheet1.csv
Instance: TableHL70128OriginalToV20128
InstanceOf: ConceptMap
Title: "Table HL70128 [original] to V2 0128 Map"
Usage: #definition
* title = "Table HL70128 [original] to V2 0128 Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70128 to the FHIR V2 0128 Value Set."
* id = "table-hl70128-original-to-v2-0128"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/table-hl70128-original-to-v2-0128"
* name = "TableHL70128OriginalToV20128"
* sourceUri = "http://terminology.hl7.org/ValueSet/v2-0128"
* targetUri = "http://terminology.hl7.org/ValueSet/v2-0128"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70128[original] to V2 0128.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1F3YGZuimTTxay5ngXQKu2Gvy5VvEom5xLvtWvHWJbkk/edit#gid=0"
* group[0].source = "http://terminology.hl7.org/CodeSystem/v2-0128"
* group[0].target = "http://terminology.hl7.org/CodeSystem/v2-0128"
* group[0].element[0].code = #SV
* group[0].element[0].display = "Severe"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #SV
* group[0].element[0].target.display = "Severe"
* group[0].element[1].code = #MO
* group[0].element[1].display = "Moderate"
* group[0].element[1].target.equivalence = #equivalent
* group[0].element[1].target.code = #MO
* group[0].element[1].target.display = "Moderate"
* group[0].element[2].code = #MI
* group[0].element[2].display = "Mild"
* group[0].element[2].target.equivalence = #equivalent
* group[0].element[2].target.code = #MI
* group[0].element[2].target.display = "Mild"
* group[0].element[3].code = #U
* group[0].element[3].display = "Unknown"
* group[0].element[3].target.equivalence = #equivalent
* group[0].element[3].target.code = #U
* group[0].element[3].target.display = "Unknown"
