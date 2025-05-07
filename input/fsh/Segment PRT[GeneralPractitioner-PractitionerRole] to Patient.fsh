// HL7 Segment - FHIR R4_ PRT[Patient-GeneralPractitioner-PractitionerRole] - Sheet1.csv
Instance: SegmentPRTGeneralPractitionerPractitionerRoleToPatient
InstanceOf: ConceptMap
Title: "Segment PRT [GeneralPractitioner-PractitionerRole] to Patient Map"
Usage: #definition
* title = "Segment PRT [GeneralPractitioner-PractitionerRole] to Patient Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Segment PRT to the FHIR Patient Resource."
* id = "segment-prt-generalpractitioner-practitionerrole-to-patient"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/segment-prt-generalpractitioner-practitionerrole-to-patient"
* name = "SegmentPRTGeneralPractitionerPractitionerRoleToPatient"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Segment PRT[GeneralPractitioner-PractitionerRole] to Patient.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1ocu6pRDaCna8ops1pZ8G2tpTeJ0OWm1llujXitrBJPU/edit#gid=0"
* group.element[0].code = #PRT-23
* group.element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].extension[0].extension[0].url = "type"
* group.element[0].extension[0].extension[0].valueCode = #"CWE"
* group.element[0].display = "Preferred Method of Contact"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #generalPractitioner(PractitionerRole.extension??-preferredMethodOfContact)
* group.element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].target.extension[0].extension[0].url = "type"
* group.element[0].target.extension[0].extension[0].valueCode = #"0..1"
* group.element[0].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[0].target.extension[0].extension[1].valueInteger = CWE[CodeableConcept]
* group.element[0].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[0].target.extension[0].extension[2].valueInteger = PreferredMethodOfContact
* group.element[0].target.display = "generalPractitioner(PractitionerRole.extension??-preferredMethodOfContact)"
