// HL7 Data Type - FHIR R4_ FT[Annotation-Comment] - Sheet1.csv
Instance: DatatypeFTCommentToAnnotation
InstanceOf: ConceptMap
Title: "Datatype FT [Comment] to Annotation Map"
Usage: #definition
* title = "Datatype FT [Comment] to Annotation Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Datatype FT to the FHIR Annotation Data Type."
* id = "datatype-ft-comment-to-annotation"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/datatype-ft-comment-to-annotation"
* name = "DatatypeFTCommentToAnnotation"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Datatype FT[Comment] to Annotation.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1dHH3qkL9xxzPYl4gMeyjI2IZgTK9OaR1ssIVZyxsAEg/edit?gid=0#gid=0"
* group.element[0].code = #FT-1
* group.element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].extension[0].extension[0].url = "type"
* group.element[0].extension[0].extension[0].valueCode = #"FT"
* group.element[0].extension[0].extension[1].url = "cardinalityMin"
* group.element[0].extension[0].extension[1].valueInteger = 1
* group.element[0].extension[0].extension[2].url = "cardinalityMax"
* group.element[0].extension[0].extension[2].valueInteger = 1
* group.element[0].display = "Formatted Text"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #text
* group.element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].target.extension[0].extension[0].url = "type"
* group.element[0].target.extension[0].extension[0].valueCode = #"markdown"
* group.element[0].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[0].target.extension[0].extension[1].valueInteger = 1
* group.element[0].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[0].target.extension[0].extension[2].valueInteger = 1
* group.element[0].target.display = "text"
