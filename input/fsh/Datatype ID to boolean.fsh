// HL7 Data Type - FHIR E2_ ID[boolean] - Sheet1.csv
Instance: DatatypeIDToBoolean
InstanceOf: ConceptMap
Title: "Datatype ID to boolean Map"
Usage: #definition
* title = "Datatype ID to boolean Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Datatype ID to the FHIR boolean Data Type."
* id = "datatype-id-to-boolean"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/datatype-id-to-boolean"
* name = "DatatypeIDToBoolean"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Datatype ID to boolean.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1Ym-UMcL6DxPrRBa4b8k17yqEaHswsgqANnsxv-psICU/edit?gid=0#gid=0"
* group[0].element[0].code = #ID.1
* group[0].element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[0].extension[0].extension[0].valueInteger = 1
* group[0].element[0].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[0].extension[0].extension[1].valueInteger = 1
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #$value
* group[0].element[0].target.display = "$value"
* group[0].element[0].target.comment = "Note that the vocabulary mapping is done at the segment's field level."
