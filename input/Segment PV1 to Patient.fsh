// HL7 Segment - FHIR R4_ PV1[Patient] - Sheet1.csv
Instance: SegmentPV1toPatient
InstanceOf: ConceptMap
Title: "Segment PV1 to Patient Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Segment PV1 to the FHIR Patient Resource."
* id = "segment-pv1-to-patient"
* url = "http://hl7.org/fhir/uv/v2mappings/segment-pv1-to-patient"
* version = "1.0"
* name = "SegmentPV1toPatient"
* status = #active
* experimental = true
* date = "2020-08-12"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "PV1"
* targetUri = "Patient"
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
* group.element[0].target.code = #extension-patient-importance
* group.element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].target.extension[0].extension[0].url = "type"
* group.element[0].target.extension[0].extension[0].valueCode = #"CodeableConcept"
* group.element[0].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[0].target.extension[0].extension[1].valueInteger = 0
* group.element[0].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[0].target.extension[0].extension[2].valueInteger = 1
* group.element[0].target.display = "extension-patient-importance"
* group.element[0].target.dependsOn[0].property = "data-type-map"
* group.element[0].target.dependsOn[0].value = "CWE[CodeableConcept]"
