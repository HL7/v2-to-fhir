// HL7 Segment - FHIR R4_ NTE[DocumentReference] - Sheet1.csv
Instance: SegmentNTEToDocumentReference
InstanceOf: ConceptMap
Title: "Segment NTE to DocumentReference Map"
Usage: #definition
* title = "Segment NTE to DocumentReference Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Segment NTE to the FHIR DocumentReference Resource."
* id = "segment-nte-to-documentreference"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/segment-nte-to-documentreference"
* name = "SegmentNTEToDocumentReference"
* insert PublicationData
* group[0].element[0].code = #NTE-3
* group[0].element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].extension[0].extension[0].url = "type"
* group[0].element[0].extension[0].extension[0].valueCode = #"FT"
* group[0].element[0].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[0].extension[0].extension[1].valueInteger = -1
* group[0].element[0].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[0].extension[0].extension[2].valueInteger = -1
* group[0].element[0].display = "Comment"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #content[1].attachment.data
* group[0].element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].target.extension[0].extension[0].url = "type"
* group[0].element[0].target.extension[0].extension[0].valueCode = #"base64Binary"
* group[0].element[0].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[0].target.extension[0].extension[1].valueInteger = 0
* group[0].element[0].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[0].target.extension[0].extension[2].valueInteger = 1
* group[0].element[0].target.display = "content[1].attachment.data"
* group[0].element[1].code = #NTE-3
* group[0].element[1].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[1].extension[0].extension[0].url = "type"
* group[0].element[1].extension[0].extension[0].valueCode = #"FT"
* group[0].element[1].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[1].extension[0].extension[1].valueInteger = -1
* group[0].element[1].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[1].extension[0].extension[2].valueInteger = -1
* group[0].element[1].display = "Comment"
* group[0].element[1].target.equivalence = #equivalent
* group[0].element[1].target.code = #content[2].contentType
* group[0].element[1].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[1].target.extension[0].extension[0].url = "type"
* group[0].element[1].target.extension[0].extension[0].valueCode = #"code"
* group[0].element[1].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[1].target.extension[0].extension[1].valueInteger = 0
* group[0].element[1].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[1].target.extension[0].extension[2].valueInteger = 1
* group[0].element[1].target.extension[0].extension[3].url = "assignment"
* group[0].element[1].target.extension[0].extension[3].valueString = "\"text/hl7v2\""
* group[0].element[1].target.display = "content[2].contentType"
* group[0].element[2].code = #NTE-9
* group[0].element[2].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[2].extension[0].extension[0].url = "type"
* group[0].element[2].extension[0].extension[0].valueCode = #"CWE"
* group[0].element[2].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[2].extension[0].extension[1].valueInteger = -1
* group[0].element[2].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[2].extension[0].extension[2].valueInteger = -1
* group[0].element[2].display = "Coded Comment"
* group[0].element[2].target.equivalence = #equivalent
* group[0].element[2].target.code = #content[2].attachment.data
* group[0].element[2].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[2].target.extension[0].extension[0].url = "type"
* group[0].element[2].target.extension[0].extension[0].valueCode = #"base64Binary"
* group[0].element[2].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[2].target.extension[0].extension[1].valueInteger = 0
* group[0].element[2].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[2].target.extension[0].extension[2].valueInteger = 1
* group[0].element[2].target.extension[0].extension[3].url = "assignment"
* group[0].element[2].target.extension[0].extension[3].valueString = """
NTE-9.9 [line feed] 
NTE-9.1 "-" NTE-9.2 "-" NTE-9.3\
"""
* group[0].element[2].target.display = "content[2].attachment.data"
* group[0].element[2].target.comment = "If more values triplets are included, suggest to put in line feeds.  Additionally, if other components are of interest they can be included with the triplet it applies to."
