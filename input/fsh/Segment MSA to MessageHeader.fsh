// HL7 Segment - FHIR R4_ MSA[MessageHeader] - Sheet1.csv
Instance: SegmentMSAToMessageHeader
InstanceOf: ConceptMap
Title: "Segment MSA to MessageHeader Map"
Usage: #definition
* title = "Segment MSA to MessageHeader Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Segment MSA to the FHIR MessageHeader Resource."
* id = "segment-msa-to-messageheader"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/segment-msa-to-messageheader"
* name = "SegmentMSAToMessageHeader"
* insert PublicationData
* group[0].element[0].code = #MSA-1
* group[0].element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].extension[0].extension[0].url = "type"
* group[0].element[0].extension[0].extension[0].valueCode = #"ID"
* group[0].element[0].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[0].extension[0].extension[1].valueInteger = 1
* group[0].element[0].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[0].extension[0].extension[2].valueInteger = 1
* group[0].element[0].display = "Acknowledgment Code"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #response.code
* group[0].element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].target.extension[0].extension[0].url = "cardinalityMin"
* group[0].element[0].target.extension[0].extension[0].valueInteger = 0
* group[0].element[0].target.extension[0].extension[1].url = "cardinalityMax"
* group[0].element[0].target.extension[0].extension[1].valueInteger = 1
* group[0].element[0].target.display = "response.code"
* group[0].element[1].code = #MSA-2
* group[0].element[1].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[1].extension[0].extension[0].url = "type"
* group[0].element[1].extension[0].extension[0].valueCode = #"ST"
* group[0].element[1].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[1].extension[0].extension[1].valueInteger = 1
* group[0].element[1].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[1].extension[0].extension[2].valueInteger = 1
* group[0].element[1].display = "Message Control ID"
* group[0].element[1].target.equivalence = #equivalent
* group[0].element[1].target.code = #response.identifier
* group[0].element[1].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[1].target.extension[0].extension[0].url = "cardinalityMin"
* group[0].element[1].target.extension[0].extension[0].valueInteger = 0
* group[0].element[1].target.extension[0].extension[1].url = "cardinalityMax"
* group[0].element[1].target.extension[0].extension[1].valueInteger = 1
* group[0].element[1].target.display = "response.identifier"
