// HL7 Segment - FHIR R4_ PV1[Patient] - Sheet1.csv
Instance: SegmentPV1ToPatient
InstanceOf: ConceptMap
Title: "Segment PV1 to Patient Map"
Usage: #definition
* title = "Segment PV1 to Patient Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Segment PV1 to the FHIR Patient Resource."
* id = "segment-pv1-to-patient"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/segment-pv1-to-patient"
* name = "SegmentPV1ToPatient"
* insert PublicationData
* group[0].element[0].code = #PV1-16
* group[0].element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].extension[0].extension[0].url = "type"
* group[0].element[0].extension[0].extension[0].valueCode = #"CWE"
* group[0].element[0].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[0].extension[0].extension[1].valueInteger = 1
* group[0].element[0].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[0].extension[0].extension[2].valueInteger = 1
* group[0].element[0].display = "VIP Indicator"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #extension[1].url
* group[0].element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].target.extension[0].extension[0].url = "type"
* group[0].element[0].target.extension[0].extension[0].valueCode = #"uri"
* group[0].element[0].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[0].target.extension[0].extension[1].valueInteger = 1
* group[0].element[0].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[0].target.extension[0].extension[2].valueInteger = 1
* group[0].element[0].target.extension[0].extension[3].url = "assignment"
* group[0].element[0].target.extension[0].extension[3].valueString = "\"http://hl7.org/fhir/StructureDefinition/patient-importance\""
* group[0].element[0].target.display = "extension[1].url"
* group[0].element[0].target.dependsOn[0].property = "Narrative-Condition"
* group[0].element[0].target.dependsOn[0].value = "If person level VIP"
* group[0].element[1].code = #PV1-16
* group[0].element[1].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[1].extension[0].extension[0].url = "type"
* group[0].element[1].extension[0].extension[0].valueCode = #"CWE"
* group[0].element[1].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[1].extension[0].extension[1].valueInteger = 1
* group[0].element[1].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[1].extension[0].extension[2].valueInteger = 1
* group[0].element[1].display = "VIP Indicator"
* group[0].element[1].target.equivalence = #equivalent
* group[0].element[1].target.code = #extension[1].valueCodeableConcept
* group[0].element[1].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[1].target.extension[0].extension[0].url = "type"
* group[0].element[1].target.extension[0].extension[0].valueCode = #"CodeableConcept"
* group[0].element[1].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[1].target.extension[0].extension[1].valueInteger = 1
* group[0].element[1].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[1].target.extension[0].extension[2].valueInteger = 1
* group[0].element[1].target.extension[0].extension[3].url = "mappedVia"
* group[0].element[1].target.extension[0].extension[3].valueUrl = "unspecified_mapping"
* group[0].element[1].target.display = "extension[1].valueCodeableConcept"
* group[0].element[1].target.dependsOn[0].property = "Narrative-Condition"
* group[0].element[1].target.dependsOn[0].value = "If person level VIP"
