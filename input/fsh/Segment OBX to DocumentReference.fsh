// HL7 Segment - FHIR R4_ OBX[DocumentReference] - Sheet1.csv
Instance: SegmentOBXToDocumentReference
InstanceOf: ConceptMap
Title: "Segment OBX to DocumentReference Map"
Usage: #definition
* title = "Segment OBX to DocumentReference Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Segment OBX to the FHIR DocumentReference Resource."
* id = "segment-obx-to-documentreference"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/segment-obx-to-documentreference"
* name = "SegmentOBXToDocumentReference"
* insert PublicationData
* group[0].element[0].code = #OBX-5
* group[0].element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].extension[0].extension[0].url = "type"
* group[0].element[0].extension[0].extension[0].valueCode = #"varies"
* group[0].element[0].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[0].extension[0].extension[1].valueInteger = -1
* group[0].element[0].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[0].extension[0].extension[2].valueInteger = -1
* group[0].element[0].display = "Observation Value"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #content[1].attachment
* group[0].element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].target.extension[0].extension[0].url = "type"
* group[0].element[0].target.extension[0].extension[0].valueCode = #"Attachment"
* group[0].element[0].target.display = "content[1].attachment"
* group[0].element[0].target.comment = "When OBX-5 repeats, each repeat yields a new .content instance."
* group[0].element[0].target.dependsOn[0].property = "Computable-ANTLR"
* group[0].element[0].target.dependsOn[0].value = "IF OBX-2=\"ED\""
* group[0].element[1].code = #OBX-5
* group[0].element[1].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[1].extension[0].extension[0].url = "type"
* group[0].element[1].extension[0].extension[0].valueCode = #"varies"
* group[0].element[1].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[1].extension[0].extension[1].valueInteger = -1
* group[0].element[1].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[1].extension[0].extension[2].valueInteger = -1
* group[0].element[1].display = "Observation Value"
* group[0].element[1].target.equivalence = #equivalent
* group[0].element[1].target.code = #content[2].data
* group[0].element[1].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[1].target.extension[0].extension[0].url = "type"
* group[0].element[1].target.extension[0].extension[0].valueCode = #"binary64"
* group[0].element[1].target.display = "content[2].data"
* group[0].element[1].target.comment = "When OBX-5 repeats, each repeat yields a line feed within .content[2].data"
* group[0].element[1].target.dependsOn[0].property = "Computable-ANTLR"
* group[0].element[1].target.dependsOn[0].value = "IF OBX-2=\"FT\""
* group[0].element[2].code = #OBX-5
* group[0].element[2].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[2].extension[0].extension[0].url = "type"
* group[0].element[2].extension[0].extension[0].valueCode = #"varies"
* group[0].element[2].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[2].extension[0].extension[1].valueInteger = -1
* group[0].element[2].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[2].extension[0].extension[2].valueInteger = -1
* group[0].element[2].display = "Observation Value"
* group[0].element[2].target.equivalence = #equivalent
* group[0].element[2].target.code = #content[2].contentType
* group[0].element[2].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[2].target.extension[0].extension[0].url = "type"
* group[0].element[2].target.extension[0].extension[0].valueCode = #"code"
* group[0].element[2].target.extension[0].extension[1].url = "assignment"
* group[0].element[2].target.extension[0].extension[1].valueString = "\"text/hl7v2\""
* group[0].element[2].target.display = "content[2].contentType"
* group[0].element[2].target.dependsOn[0].property = "Computable-ANTLR"
* group[0].element[2].target.dependsOn[0].value = "IF OBX-2=\"FT\""
* group[0].element[3].code = #OBX-5
* group[0].element[3].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[3].extension[0].extension[0].url = "type"
* group[0].element[3].extension[0].extension[0].valueCode = #"varies"
* group[0].element[3].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[3].extension[0].extension[1].valueInteger = -1
* group[0].element[3].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[3].extension[0].extension[2].valueInteger = -1
* group[0].element[3].display = "Observation Value"
* group[0].element[3].target.equivalence = #equivalent
* group[0].element[3].target.code = #content[3].url
* group[0].element[3].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[3].target.extension[0].extension[0].url = "type"
* group[0].element[3].target.extension[0].extension[0].valueCode = #"uri"
* group[0].element[3].target.display = "content[3].url"
* group[0].element[3].target.comment = "When OBX-5 repeats, each repeat yields a new .content instance."
* group[0].element[3].target.dependsOn[0].property = "Computable-ANTLR"
* group[0].element[3].target.dependsOn[0].value = "IF OBX-2=\"RP\""
* group[0].element[4].code = #OBX-5
* group[0].element[4].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[4].extension[0].extension[0].url = "type"
* group[0].element[4].extension[0].extension[0].valueCode = #"varies"
* group[0].element[4].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[4].extension[0].extension[1].valueInteger = -1
* group[0].element[4].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[4].extension[0].extension[2].valueInteger = -1
* group[0].element[4].display = "Observation Value"
* group[0].element[4].target.equivalence = #equivalent
* group[0].element[4].target.code = #content[4].data
* group[0].element[4].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[4].target.extension[0].extension[0].url = "type"
* group[0].element[4].target.extension[0].extension[0].valueCode = #"binary64"
* group[0].element[4].target.display = "content[4].data"
* group[0].element[4].target.comment = "When OBX-5 repeats, each repeat yields a line feed within .content[4].data"
* group[0].element[4].target.dependsOn[0].property = "Computable-ANTLR"
* group[0].element[4].target.dependsOn[0].value = "IF OBX-2=\"TX\""
* group[0].element[5].code = #OBX-5
* group[0].element[5].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[5].extension[0].extension[0].url = "type"
* group[0].element[5].extension[0].extension[0].valueCode = #"varies"
* group[0].element[5].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[5].extension[0].extension[1].valueInteger = -1
* group[0].element[5].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[5].extension[0].extension[2].valueInteger = -1
* group[0].element[5].display = "Observation Value"
* group[0].element[5].target.equivalence = #equivalent
* group[0].element[5].target.code = #content[4].contentType
* group[0].element[5].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[5].target.extension[0].extension[0].url = "type"
* group[0].element[5].target.extension[0].extension[0].valueCode = #"code"
* group[0].element[5].target.extension[0].extension[1].url = "assignment"
* group[0].element[5].target.extension[0].extension[1].valueString = "\"application/text\""
* group[0].element[5].target.display = "content[4].contentType"
* group[0].element[5].target.dependsOn[0].property = "Computable-ANTLR"
* group[0].element[5].target.dependsOn[0].value = "IF OBX-2=\"TX\""
