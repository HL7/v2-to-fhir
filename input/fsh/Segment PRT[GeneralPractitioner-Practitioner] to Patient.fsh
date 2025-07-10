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
* group[0].element[0].code = #PRT-5
* group[0].element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].extension[0].extension[0].url = "type"
* group[0].element[0].extension[0].extension[0].valueCode = #"XCN"
* group[0].element[0].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[0].extension[0].extension[1].valueInteger = -1
* group[0].element[0].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[0].extension[0].extension[2].valueInteger = -1
* group[0].element[0].display = "Person"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #generalPractitioner(Practitioner)
* group[0].element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].target.extension[0].extension[0].url = "type"
* group[0].element[0].target.extension[0].extension[0].valueCode = #"Reference"
* group[0].element[0].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[0].target.extension[0].extension[1].valueInteger = 0
* group[0].element[0].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[0].target.extension[0].extension[2].valueInteger = -1
* group[0].element[0].target.display = "generalPractitioner(Practitioner)"
