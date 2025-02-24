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
* targetUri = "null"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70272 to V2 0272.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1LEipBvIrNoy3egcbV1zpqj3-OH2-eZoOnAfUGrootIY/edit?gid=0#gid=0"
* group.element[0].code = #V
* group.element[0].display = "Very restricted"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #V
* group.element[0].target.display = "Very restricted"
* group.element[1].code = #R
* group.element[1].display = "Restricted"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #R
* group.element[1].target.display = "restricted"
* group.element[2].code = #U
* group.element[2].display = "Usual control"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #U
* group.element[2].target.display = "Usual control"
