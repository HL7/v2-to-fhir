// HL7 Concept Map_ ReadmissionIndicator - Sheet1.csv
Instance: TableHL70092ToV20092
InstanceOf: ConceptMap
Title: "Table HL70092 to V2 0092 Map"
Usage: #definition
* title = "Table HL70092 to V2 0092 Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70092 to the FHIR V2 0092 Value Set."
* id = "table-hl70092-to-v2-0092"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/table-hl70092-to-v2-0092"
* name = "TableHL70092ToV20092"
* sourceUri = "http://terminology.hl7.org/ValueSet/v2-0092"
* targetUri = "http://terminology.hl7.org/ValueSet/v2-0092"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70092 to V2 0092.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1etqlWirZVdqipXGQ_9Uq1Wl6bN4DMp-SdL6Y8MnE4WE/edit#gid=0"
* group[0].source = "http://terminology.hl7.org/CodeSystem/v2-0092"
* group[0].target = "http://terminology.hl7.org/CodeSystem/v2-0092"
* group[0].element[0].code = #R
* group[0].element[0].display = "Re-admission"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #R
* group[0].element[0].target.display = "Re-admission"
