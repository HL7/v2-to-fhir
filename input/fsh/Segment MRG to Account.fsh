// HL7 Segment - FHIR R4_ MRG[Account] - Sheet1.csv
Instance: SegmentMRGToAccount
InstanceOf: ConceptMap
Title: "Segment MRG to Account Map"
Usage: #definition
* title = "Segment MRG to Account Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Segment MRG to the FHIR Account Resource."
* id = "segment-mrg-to-account"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/segment-mrg-to-account"
* name = "SegmentMRGToAccount"
* insert PublicationData
* group[0].element[0].code = #MRG
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #status
* group[0].element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].target.extension[0].extension[0].url = "type"
* group[0].element[0].target.extension[0].extension[0].valueCode = #"code"
* group[0].element[0].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[0].target.extension[0].extension[1].valueInteger = 1
* group[0].element[0].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[0].target.extension[0].extension[2].valueInteger = 1
* group[0].element[0].target.extension[0].extension[3].url = "assignment"
* group[0].element[0].target.extension[0].extension[3].valueString = "\"unknown\""
* group[0].element[0].target.display = "status"
* group[0].element[0].target.comment = "The MRG segment does not include a status.  Since the prior account may still be active or already inactive, the implementer may have better awareness of which status to use."
* group[0].element[1].code = #MRG-3
* group[0].element[1].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[1].extension[0].extension[0].url = "type"
* group[0].element[1].extension[0].extension[0].valueCode = #"CX"
* group[0].element[1].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[1].extension[0].extension[1].valueInteger = 1
* group[0].element[1].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[1].extension[0].extension[2].valueInteger = 1
* group[0].element[1].display = "Prior Patient Account Number"
* group[0].element[1].target.equivalence = #equivalent
* group[0].element[1].target.code = #identifier
* group[0].element[1].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[1].target.extension[0].extension[0].url = "type"
* group[0].element[1].target.extension[0].extension[0].valueCode = #"Identifier"
* group[0].element[1].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[1].target.extension[0].extension[1].valueInteger = 0
* group[0].element[1].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[1].target.extension[0].extension[2].valueInteger = -1
* group[0].element[1].target.display = "identifier"
