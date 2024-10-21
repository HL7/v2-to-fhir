// HL7 Segment - FHIR R4_ NTE[DocumentReference] - Sheet1.csv
Instance: SegmentNTEToDocumentReference
InstanceOf: ConceptMap
Title: "Segment NTEnull to DocumentReference Map"
* title = "Segment NTEnull to DocumentReference Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Segment NTE to the FHIR DocumentReference Resource."
* id = "segment-nte-to-documentreference"
* url = "http://hl7.org/fhir/uv/v2mappings/segment-nte-to-documentreference"
* version = "1.0"
* name = "SegmentNTEToDocumentReference"
* status = #active
* experimental = true
* date = "2024-10-21"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "NTE"
* targetUri = "DocumentReference"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Segment NTE to DocumentReference.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1MUqrAxKoauqgjVAtbRIFrKY3gCMALy7sTe0_LdX7JH4/edit#gid=0"
* group.element[0].code = #NTE-3
* group.element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].extension[0].extension[0].url = "type"
* group.element[0].extension[0].extension[0].valueCode = #"FT"
* group.element[0].extension[0].extension[1].url = "cardinalityMin"
* group.element[0].extension[0].extension[1].valueInteger = -1
* group.element[0].extension[0].extension[2].url = "cardinalityMax"
* group.element[0].extension[0].extension[2].valueInteger = -1
* group.element[0].display = "Comment"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #content[1].attachment.data
* group.element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].target.extension[0].extension[0].url = "type"
* group.element[0].target.extension[0].extension[0].valueCode = #"base64Binary"
* group.element[0].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[0].target.extension[0].extension[1].valueInteger = 0
* group.element[0].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[0].target.extension[0].extension[2].valueInteger = 1
* group.element[0].target.display = "content[1].attachment.data"
* group.element[1].code = #NTE-3
* group.element[1].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[1].extension[0].extension[0].url = "type"
* group.element[1].extension[0].extension[0].valueCode = #"FT"
* group.element[1].extension[0].extension[1].url = "cardinalityMin"
* group.element[1].extension[0].extension[1].valueInteger = -1
* group.element[1].extension[0].extension[2].url = "cardinalityMax"
* group.element[1].extension[0].extension[2].valueInteger = -1
* group.element[1].display = "Comment"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #content[2].contentType
* group.element[1].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[1].target.extension[0].extension[0].url = "type"
* group.element[1].target.extension[0].extension[0].valueCode = #"code"
* group.element[1].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[1].target.extension[0].extension[1].valueInteger = 0
* group.element[1].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[1].target.extension[0].extension[2].valueInteger = 1
* group.element[1].target.display = "content[2].contentType"
* group.element[1].target.dependsOn[0].property = "value"
* group.element[1].target.dependsOn[0].value = "\"text/hl7v2\""
* group.element[2].code = #NTE-9
* group.element[2].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[2].extension[0].extension[0].url = "type"
* group.element[2].extension[0].extension[0].valueCode = #"CWE"
* group.element[2].extension[0].extension[1].url = "cardinalityMin"
* group.element[2].extension[0].extension[1].valueInteger = -1
* group.element[2].extension[0].extension[2].url = "cardinalityMax"
* group.element[2].extension[0].extension[2].valueInteger = -1
* group.element[2].display = "Coded Comment"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #content[2].attachment.data
* group.element[2].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[2].target.extension[0].extension[0].url = "type"
* group.element[2].target.extension[0].extension[0].valueCode = #"base64Binary"
* group.element[2].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[2].target.extension[0].extension[1].valueInteger = 0
* group.element[2].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[2].target.extension[0].extension[2].valueInteger = 1
* group.element[2].target.display = "content[2].attachment.data"
* group.element[2].target.comment = "If more values triplets are included, suggest to put in line feeds.  Additionally, if other components are of interest they can be included with the triplet it applies to."
* group.element[2].target.dependsOn[0].property = "value"
* group.element[2].target.dependsOn[0].value = """
NTE-9.9 [line feed] 
NTE-9.1 "-" NTE-9.2 "-" NTE-9.3\
"""
