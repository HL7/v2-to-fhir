// HL7 Segment - FHIR R4_ PID[Observation-Race] - Sheet1.csv
Instance: SegmentPIDRacetoObservation
InstanceOf: ConceptMap
Title: "Segment PID to Observation Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Segment PID to the FHIR Observation Resource."
* id = "segment-pidrace-to-observation"
* url = "http://hl7.org/fhir/uv/v2mappings/segment-pidrace-to-observation"
* version = "1.0"
* name = "SegmentPIDRacetoObservation"
* status = #active
* experimental = true
* date = "2022-02-21"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "PID"
* targetUri = "Observation"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Segment PID[Race] to Observation.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1sYh9IqPN2_KBsQIjgMe83CZGUkdfWBu4Exo1C11VhLI/edit#gid=0"
* group.element[0].code = #PID
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #subject.reference
* group.element[0].target.display = "subject.reference"
* group.element[0].target.dependsOn[0].property = "value"
* group.element[0].target.dependsOn[0].value = "Patient.id"
* group.element[1].code = #PID
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #status
* group.element[1].target.display = "status"
* group.element[1].target.dependsOn[0].property = "value"
* group.element[1].target.dependsOn[0].value = "\"final\""
* group.element[2].code = #PID-10
* group.element[2].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[2].extension[0].extension[0].url = "type"
* group.element[2].extension[0].extension[0].valueCode = #"CWE"
* group.element[2].extension[0].extension[1].url = "cardinalityMin"
* group.element[2].extension[0].extension[1].valueInteger = -1
* group.element[2].extension[0].extension[2].url = "cardinalityMax"
* group.element[2].extension[0].extension[2].valueInteger = -1
* group.element[2].display = "Race"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #valueCodeableConcept
* group.element[2].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[2].target.extension[0].extension[0].url = "cardinalityMin"
* group.element[2].target.extension[0].extension[0].valueInteger = 0
* group.element[2].target.extension[0].extension[1].url = "cardinalityMax"
* group.element[2].target.extension[0].extension[1].valueInteger = -1
* group.element[2].target.display = "valueCodeableConcept"
* group.element[2].target.dependsOn[0].property = "data-type-map"
* group.element[2].target.dependsOn[0].value = "CWE[CodeableConcept]"
