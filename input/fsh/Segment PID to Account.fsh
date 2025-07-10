// HL7 Segment - FHIR R4_ PID[Account] - Sheet1.csv
Instance: SegmentPIDToAccount
InstanceOf: ConceptMap
Title: "Segment PID to Account Map"
Usage: #definition
* title = "Segment PID to Account Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Segment PID to the FHIR Account Resource."
* id = "segment-pid-to-account"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/segment-pid-to-account"
* name = "SegmentPIDToAccount"
* insert PublicationData
* group[0].element[0].code = #PID
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #status
* group[0].element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].target.extension[0].extension[0].url = "assignment"
* group[0].element[0].target.extension[0].extension[0].valueString = "\"active\""
* group[0].element[0].target.display = "status"
* group[0].element[1].code = #PID-18
* group[0].element[1].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[1].extension[0].extension[0].url = "type"
* group[0].element[1].extension[0].extension[0].valueCode = #"CX"
* group[0].element[1].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[1].extension[0].extension[1].valueInteger = 1
* group[0].element[1].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[1].extension[0].extension[2].valueInteger = 1
* group[0].element[1].display = "Patient Account Number"
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
