// HL7 Data Type - FHIR R4_ IS[string] - Sheet1.csv
Instance: DatatypeISToString
InstanceOf: ConceptMap
Title: "Datatype IS to string Map"
Usage: #definition
* title = "Datatype IS to string Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Datatype IS to the FHIR string Data Type."
* id = "datatype-is-to-string"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/datatype-is-to-string"
* name = "DatatypeISToString"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Datatype IS to string.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1QGUiAHG5X-tdMrfrM9JNPYvdxKzq2NqhM7r26o0sfTE/edit#gid=0"
* group[0].element[0].code = #IS.1
* group[0].element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[0].extension[0].extension[0].valueInteger = 1
* group[0].element[0].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[0].extension[0].extension[1].valueInteger = 1
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #$value
* group[0].element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].target.extension[0].extension[0].url = "type"
* group[0].element[0].target.extension[0].extension[0].valueCode = #"string"
* group[0].element[0].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[0].target.extension[0].extension[1].valueInteger = 1
* group[0].element[0].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[0].target.extension[0].extension[2].valueInteger = 1
* group[0].element[0].target.display = "$value"
