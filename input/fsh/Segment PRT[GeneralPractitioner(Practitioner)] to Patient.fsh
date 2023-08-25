// HL7 Segment - FHIR R4_ PRT[Patient-GeneralPractitioner(Practitioner)] - Sheet1.csv
Instance: SegmentPRTGeneralPractitioner(Practitioner)ToPatient
InstanceOf: ConceptMap
Title: "Segment PRT[GeneralPractitioner(Practitioner)] to Patient Map"
* title = "Segment PRT[GeneralPractitioner(Practitioner)] to Patient Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Segment PRT to the FHIR Patient Resource."
* id = "segment-prt-generalpractitioner(practitioner)-to-patient"
* url = "http://hl7.org/fhir/uv/v2mappings/segment-prt-generalpractitioner(practitioner)-to-patient"
* version = "1.0"
* name = "SegmentPRTGeneralPractitioner(Practitioner)ToPatient"
* status = #active
* experimental = true
* date = "2023-08-25"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "PRT"
* targetUri = "Patient"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Segment PRT[GeneralPractitioner(Practitioner)] to Patient.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1bdaAckuDNz3OVL9VjJn79gk0BlxzpsA7zpTrcd8eBTs/edit#gid=0"
* group.element[0].code = #PRT-5
* group.element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].extension[0].extension[0].url = "type"
* group.element[0].extension[0].extension[0].valueCode = #"XCN"
* group.element[0].extension[0].extension[1].url = "cardinalityMin"
* group.element[0].extension[0].extension[1].valueInteger = -1
* group.element[0].extension[0].extension[2].url = "cardinalityMax"
* group.element[0].extension[0].extension[2].valueInteger = -1
* group.element[0].display = "Person"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #generalPractitioner(Practitioner)
* group.element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].target.extension[0].extension[0].url = "type"
* group.element[0].target.extension[0].extension[0].valueCode = #"Reference"
* group.element[0].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[0].target.extension[0].extension[1].valueInteger = 0
* group.element[0].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[0].target.extension[0].extension[2].valueInteger = -1
* group.element[0].target.display = "generalPractitioner(Practitioner)"
* group.element[0].target.dependsOn[0].property = "data-type-map"
* group.element[0].target.dependsOn[0].value = "XCN[Practitioner]"
