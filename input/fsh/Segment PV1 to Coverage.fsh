// HL7 Segment - FHIR R4_ PV1[Coverage] - PV1.csv
Instance: SegmentPV1ToCoverage
InstanceOf: ConceptMap
Title: "Segment PV1 to Coverage Map"
Usage: #definition
* title = "Segment PV1 to Coverage Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Segment PV1 to the FHIR Coverage Resource."
* id = "segment-pv1-to-coverage"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/segment-pv1-to-coverage"
* name = "SegmentPV1ToCoverage"
* insert PublicationData
* group[0].element[0].code = #PV1-20
* group[0].element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].extension[0].extension[0].url = "type"
* group[0].element[0].extension[0].extension[0].valueCode = #"FC"
* group[0].element[0].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[0].extension[0].extension[1].valueInteger = -1
* group[0].element[0].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[0].extension[0].extension[2].valueInteger = -1
* group[0].element[0].display = "Financial Class"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #type
* group[0].element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].target.extension[0].extension[0].url = "type"
* group[0].element[0].target.extension[0].extension[0].valueCode = #"CodeableConcept"
* group[0].element[0].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[0].target.extension[0].extension[1].valueInteger = 0
* group[0].element[0].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[0].target.extension[0].extension[2].valueInteger = -1
* group[0].element[0].target.extension[0].extension[3].url = "mappedVia"
* group[0].element[0].target.extension[0].extension[3].valueUrl = "unspecified_mapping"
* group[0].element[0].target.display = "type"
