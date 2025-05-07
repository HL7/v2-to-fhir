// HL7 Segment - FHIR R4_ PRT[Patient-GeneralPractitioner-Practitioner] - Sheet1.csv
Instance: SegmentPRTGeneralPractitionerPractitionerToPatient
InstanceOf: ConceptMap
Title: "Segment PRT [GeneralPractitioner-Practitioner] to Patient Map"
Usage: #definition
* title = "Segment PRT [GeneralPractitioner-Practitioner] to Patient Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Segment PRT to the FHIR Patient Resource."
* id = "segment-prt-generalpractitioner-practitioner-to-patient"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/segment-prt-generalpractitioner-practitioner-to-patient"
* name = "SegmentPRTGeneralPractitionerPractitionerToPatient"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Segment PRT[GeneralPractitioner-Practitioner] to Patient.fsh"
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
