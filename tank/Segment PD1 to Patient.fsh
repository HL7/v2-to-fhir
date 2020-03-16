Instance: SegmentPD1toPatient
InstanceOf: ConceptMap
Title: "Segment PD1 to Patient Map"
* description = "This ConceptMap represents the mapping from the HL7 V2 PD1 Segment to the FHIR Patient Resource."
* id = "segment-pd1-to-patient"
* url = "http://hl7.org/fhir/v2-tofhir/segment-pd1-to-patient"
* version = "1.0"
* name = "Segment_PD1_Map"
* status = #active
* experimental = true
* date = "2020-03-16"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "PD1"
* targetUri = "Patient"
* group.element[0].code = #PD1-3
* group.element[0].display = "Patient Primary Facility"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #Patient.generalPractitioner(Organization)
* group.element[0].target.display = "Patient.generalPractitioner(Organization)"
* group.element[0].target.comment = "Is Patient.managingOrganization better?"
* group.element[1].code = #PD1-4
* group.element[1].display = "Patient Primary Care Provider Name & ID No."
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #Patient.generalPractitioner(PractitionerRole)
* group.element[1].target.display = "Patient.generalPractitioner(PractitionerRole)"
* group.element[2].code = #PD1-6
* group.element[2].display = "Handicap"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #Patient.extension-patient-disability
* group.element[2].target.display = "Patient.extension-patient-disability"
* group.element[2].target.comment = "The FHIR extension does not include a value set"
* group.element[3].code = #PD1-14
* group.element[3].display = "Place of Worship"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #Patient.extension-patient-congregation
* group.element[3].target.display = "Patient.extension-patient-congregation"
* group.element[4].code = #PD1-16
* group.element[4].display = "Immunization Registry Status"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #Patient.active
* group.element[4].target.display = "Patient.active"
