// HL7 Segment - FHIR R4_ MSH[Bundle] - Sheet1.csv
Instance: SegmentMSHToBundle
InstanceOf: ConceptMap
Title: "Segment MSH to Bundle Map"
Usage: #definition
* title = "Segment MSH to Bundle Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Segment MSH to the FHIR Bundle Resource."
* id = "segment-msh-to-bundle"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/segment-msh-to-bundle"
* name = "SegmentMSHToBundle"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Segment MSH to Bundle.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1oOy6JW4Mv5VL8DsoA05bYZCUa1JqP4GCYNPF5GJTLxQ/edit#gid=0"
* group.element[0].code = #MSH
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #type
* group.element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].target.extension[0].extension[0].url = "type"
* group.element[0].target.extension[0].extension[0].valueCode = #"code"
* group.element[0].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[0].target.extension[0].extension[1].valueInteger = 1
* group.element[0].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[0].target.extension[0].extension[2].valueInteger = 1
* group.element[0].target.display = "type"
* group.element[0].target.comment = "Note that the assignment is according to the mapping principles for mapping definitions only.  There is no expectation that this is the actual Bundle.type being mapped to based on local implementation considerations.  Unless the progression actually is a FHIR Message."
* group.element[1].code = #MSH-7
* group.element[1].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[1].extension[0].extension[0].url = "type"
* group.element[1].extension[0].extension[0].valueCode = #"DTM"
* group.element[1].extension[0].extension[1].url = "cardinalityMin"
* group.element[1].extension[0].extension[1].valueInteger = 1
* group.element[1].extension[0].extension[2].url = "cardinalityMax"
* group.element[1].extension[0].extension[2].valueInteger = 1
* group.element[1].display = "Date/Time of Message"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #timestamp
* group.element[1].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[1].target.extension[0].extension[0].url = "type"
* group.element[1].target.extension[0].extension[0].valueCode = #"instant"
* group.element[1].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[1].target.extension[0].extension[1].valueInteger = 0
* group.element[1].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[1].target.extension[0].extension[2].valueInteger = 1
* group.element[1].target.display = "timestamp"
* group.element[1].target.comment = "Note that MSH-7 does not require a time offset while Bundle.timestamp does.  Implementers should configure the actual mapping according to local context of the transaction."
* group.element[2].code = #MSH-10
* group.element[2].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[2].extension[0].extension[0].url = "type"
* group.element[2].extension[0].extension[0].valueCode = #"ST"
* group.element[2].extension[0].extension[1].url = "cardinalityMin"
* group.element[2].extension[0].extension[1].valueInteger = 1
* group.element[2].extension[0].extension[2].url = "cardinalityMax"
* group.element[2].extension[0].extension[2].valueInteger = 1
* group.element[2].display = "Message Control ID"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #identifier.value
* group.element[2].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[2].target.extension[0].extension[0].url = "type"
* group.element[2].target.extension[0].extension[0].valueCode = #"string"
* group.element[2].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[2].target.extension[0].extension[1].valueInteger = 0
* group.element[2].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[2].target.extension[0].extension[2].valueInteger = 1
* group.element[2].target.display = "identifier.value"
* group.element[3].code = #MSH-10
* group.element[3].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[3].extension[0].extension[0].url = "type"
* group.element[3].extension[0].extension[0].valueCode = #"ST"
* group.element[3].extension[0].extension[1].url = "cardinalityMin"
* group.element[3].extension[0].extension[1].valueInteger = 1
* group.element[3].extension[0].extension[2].url = "cardinalityMax"
* group.element[3].extension[0].extension[2].valueInteger = 1
* group.element[3].display = "Message Control ID"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #identifier.system
* group.element[3].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[3].target.extension[0].extension[0].url = "type"
* group.element[3].target.extension[0].extension[0].valueCode = #"uri"
* group.element[3].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[3].target.extension[0].extension[1].valueInteger = 0
* group.element[3].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[3].target.extension[0].extension[2].valueInteger = 1
* group.element[3].target.display = "identifier.system"
