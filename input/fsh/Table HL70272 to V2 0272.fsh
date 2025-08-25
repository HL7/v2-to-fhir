// HL7 Concept Map_ DocumentConfidentialityStatus - Sheet1.csv
Instance: TableHL70272ToV20272
InstanceOf: ConceptMap
Title: "Table HL70272 to V2 0272 Map"
Usage: #definition
* title = "Table HL70272 to V2 0272 Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70272 to the FHIR V2 0272 Value Set."
* id = "table-hl70272-to-v2-0272"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/table-hl70272-to-v2-0272"
* name = "TableHL70272ToV20272"
* sourceUri = "http://terminology.hl7.org/ValueSet/v2-0272"
* targetUri = "http://terminology.hl7.org/ValueSet/v2-0272"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70272 to V2 0272.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1LEipBvIrNoy3egcbV1zpqj3-OH2-eZoOnAfUGrootIY/edit?gid=0#gid=0"
* group[0].source = "http://terminology.hl7.org/CodeSystem/v2-0272"
* group[0].target = "http://terminology.hl7.org/CodeSystem/v2-0272"
* group[0].element[0].code = #V
* group[0].element[0].display = "Very restricted"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #V
* group[0].element[0].target.display = "Very restricted"
* group[0].element[1].code = #R
* group[0].element[1].display = "Restricted"
* group[0].element[1].target.equivalence = #equivalent
* group[0].element[1].target.code = #R
* group[0].element[1].target.display = "Restricted"
* group[0].element[2].code = #U
* group[0].element[2].display = "Usual control"
* group[0].element[2].target.equivalence = #equivalent
* group[0].element[2].target.code = #U
* group[0].element[2].target.display = "Usual control"
