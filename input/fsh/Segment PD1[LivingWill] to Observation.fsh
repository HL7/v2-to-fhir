// HL7 Segment - FHIR R4_ PD1[Observation-LivingWill] - PD1.csv
Instance: SegmentPD1LivingWillToObservation
InstanceOf: ConceptMap
Title: "Segment PD1 [LivingWill] to Observation Map"
Usage: #definition
* title = "Segment PD1 [LivingWill] to Observation Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Segment PD1 to the FHIR Observation Resource."
* id = "segment-pd1-livingwill-to-observation"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/segment-pd1-livingwill-to-observation"
* name = "SegmentPD1LivingWillToObservation"
* insert PublicationData
* group[0].element[0].code = #PD1-7
* group[0].element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].extension[0].extension[0].url = "type"
* group[0].element[0].extension[0].extension[0].valueCode = #"CWE"
* group[0].element[0].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[0].extension[0].extension[1].valueInteger = 1
* group[0].element[0].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[0].extension[0].extension[2].valueInteger = 1
* group[0].element[0].display = "Living Will Code"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #valueCodeableConcept
* group[0].element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].target.extension[0].extension[0].url = "type"
* group[0].element[0].target.extension[0].extension[0].valueCode = #"CodeableConcept"
* group[0].element[0].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[0].target.extension[0].extension[1].valueInteger = 0
* group[0].element[0].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[0].target.extension[0].extension[2].valueInteger = 1
* group[0].element[0].target.extension[0].extension[3].url = "mappedVia"
* group[0].element[0].target.extension[0].extension[3].valueUrl = "ConceptMap/table-hl70315-to-v2-0315"
* group[0].element[0].target.display = "valueCodeableConcept"
