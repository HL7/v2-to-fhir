// HL7 Segment - FHIR R4_ PV1[Coverage] - PV1.csv
Instance: SegmentPV1ToCoverage
InstanceOf: ConceptMap
Title: "Segment PV1 to Coverage Map"
* title = "Segment PV1 to Coverage Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Segment PV1 to the FHIR Coverage Resource."
* id = "segment-pv1-to-coverage"
* url = "http://hl7.org/fhir/uv/v2mappings/segment-pv1-to-coverage"
* version = "1.0"
* name = "SegmentPV1ToCoverage"
* status = #active
* experimental = true
* date = "2024-12-26"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "PV1"
* targetUri = "Coverage"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Segment PV1 to Coverage.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1uzaJsXU7lwZk6b6ClDgyx0SpXK_NFakZ7xSsAdfpzP0/edit?gid=0#gid=0"
* group.element[0].code = #PV1-20
* group.element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].extension[0].extension[0].url = "type"
* group.element[0].extension[0].extension[0].valueCode = #"FC"
* group.element[0].extension[0].extension[1].url = "cardinalityMin"
* group.element[0].extension[0].extension[1].valueInteger = -1
* group.element[0].extension[0].extension[2].url = "cardinalityMax"
* group.element[0].extension[0].extension[2].valueInteger = -1
* group.element[0].display = "Financial Class"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #type
* group.element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].target.extension[0].extension[0].url = "type"
* group.element[0].target.extension[0].extension[0].valueCode = #"CodeableConcept"
* group.element[0].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[0].target.extension[0].extension[1].valueInteger = 0
* group.element[0].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[0].target.extension[0].extension[2].valueInteger = -1
* group.element[0].target.display = "type"
