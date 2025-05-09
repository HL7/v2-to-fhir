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
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Segment PV1 to Patient.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1SeTn6m72yUh4hho7jqN-YmuHbnO6LlGlZur7BVrpfrI/edit#gid=0"
* group.element[0].code = #PV1-16
* group.element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].extension[0].extension[0].url = "type"
* group.element[0].extension[0].extension[0].valueCode = #"CWE"
* group.element[0].extension[0].extension[1].url = "cardinalityMin"
* group.element[0].extension[0].extension[1].valueInteger = 1
* group.element[0].extension[0].extension[2].url = "cardinalityMax"
* group.element[0].extension[0].extension[2].valueInteger = 1
* group.element[0].display = "VIP Indicator"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #extension[1].url
* group.element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].target.extension[0].extension[0].url = "type"
* group.element[0].target.extension[0].extension[0].valueCode = #"uri"
* group.element[0].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[0].target.extension[0].extension[1].valueInteger = 1
* group.element[0].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[0].target.extension[0].extension[2].valueInteger = 1
* group.element[0].target.extension[0].extension[3].url = "fixedValue"
* group.element[0].target.extension[0].extension[3].valueString = "\"http://hl7.org/fhir/StructureDefinition/patient-importance\""
* group.element[0].target.display = "extension[1].url"
* group.element[1].code = #PV1-16
* group.element[1].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[1].extension[0].extension[0].url = "type"
* group.element[1].extension[0].extension[0].valueCode = #"CWE"
* group.element[1].extension[0].extension[1].url = "cardinalityMin"
* group.element[1].extension[0].extension[1].valueInteger = 1
* group.element[1].extension[0].extension[2].url = "cardinalityMax"
* group.element[1].extension[0].extension[2].valueInteger = 1
* group.element[1].display = "VIP Indicator"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #extension[1].valueCodeableConcept
* group.element[1].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[1].target.extension[0].extension[0].url = "type"
* group.element[1].target.extension[0].extension[0].valueCode = #"CodeableConcept"
* group.element[1].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[1].target.extension[0].extension[1].valueInteger = 1
* group.element[1].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[1].target.extension[0].extension[2].valueInteger = 1
* group.element[1].target.extension[0].extension[3].url = "mappedVia"
* group.element[1].target.extension[0].extension[3].valueUrl = "unspecified_mapping"
* group.element[1].target.display = "extension[1].valueCodeableConcept"
