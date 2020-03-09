Instance: SegmentROLtoPatient
InstanceOf: ConceptMap
Title: "Segment ROL to Patient Map"
* description = "This ConceptMap represents the mapping from the HL7 V2 ROL Segment to the FHIR Patient Resource."
* id = "segment-rol-to-patient"
* url = "http://hl7.org/fhir/v2-tofhir/segment-rol-to-patient"
* version = "1.0"
* name = "Segment_ROL_Map"
* status = #active
* experimental = true
* date = "2020-03-09"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "ROL"
* targetUri = "Patient"
* group.element[0].code = #ROL-1
* group.element[0].display = "Role Instance ID"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #Patient.generalPractioner(PractitionerRole.identifier)
* group.element[0].target.display = "Patient.generalPractioner(PractitionerRole.identifier)"
* group.element[1].code = #ROL-2
* group.element[1].display = "Action Code"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #Operation
* group.element[1].target.display = "Operation"
* group.element[1].target.dependsOn[0].property = "value"
* group.element[1].target.dependsOn[0].value = "if mapped to a restful service to progress the message."
* group.element[2].code = #ROL-3
* group.element[2].display = "Role-ROL"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #Patient.generalPractioner(PractitionerRole.code)
* group.element[2].target.display = "Patient.generalPractioner(PractitionerRole.code)"
* group.element[3].code = #ROL-4
* group.element[3].display = "Role Person"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #Patient.generalPractitioner(PractitionerRole.practitioner)
* group.element[3].target.display = "Patient.generalPractitioner(PractitionerRole.practitioner)"
* group.element[4].code = #ROL-5
* group.element[4].display = "Role Begin Date/Time"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #Patient.generalPractioner(PractitionerRole.period.start)
* group.element[4].target.display = "Patient.generalPractioner(PractitionerRole.period.start)"
* group.element[5].code = #ROL-6
* group.element[5].display = "Role End Date/Time"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #Patient.generalPractioner(PractitionerRole.period.end)
* group.element[5].target.display = "Patient.generalPractioner(PractitionerRole.period.end)"
* group.element[6].code = #ROL-11
* group.element[6].display = "Office/Home Address/Birthplace"
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #Patient.generalPractioner(PractitionerRole.Practioner(Practitioner.address))
* group.element[6].target.display = "Patient.generalPractioner(PractitionerRole.Practioner(Practitioner.address))"
* group.element[6].target.dependsOn[0].property = "value"
* group.element[6].target.dependsOn[0].value = """
# IF XAD.7 IN ("N","BDL","F","H","P","BR","V")\
"""
* group.element[7].code = #ROL-11
* group.element[7].display = "Office/Home Address/Birthplace"
* group.element[7].target.equivalence = #equivalent
* group.element[7].target.code = #Patient.generalPractioner(PractitionerRole.location(Location.address))
* group.element[7].target.display = "Patient.generalPractioner(PractitionerRole.location(Location.address))"
* group.element[7].target.dependsOn[0].property = "value"
* group.element[7].target.dependsOn[0].value = """
# IF XAD.7 IN ("M","O","S","SH","TM")\
"""
* group.element[8].code = #ROL-11
* group.element[8].display = "Office/Home Address/Birthplace"
* group.element[8].target.equivalence = #equivalent
* group.element[8].target.code = #Patient.generalPractioner(PractitionerRole.organization.(Organization.address))
* group.element[8].target.display = "Patient.generalPractioner(PractitionerRole.organization.(Organization.address))"
* group.element[8].target.dependsOn[0].property = "value"
* group.element[8].target.dependsOn[0].value = """
# IF XAD.7 IN ("B","BI","L")\
"""
* group.element[9].code = #ROL-12
* group.element[9].display = "Phone"
* group.element[9].target.equivalence = #equivalent
* group.element[9].target.code = #Patient.generalPractioner(PractitionerRole.telecom)
* group.element[9].target.display = "Patient.generalPractioner(PractitionerRole.telecom)"
* group.element[10].code = #ROL-13
* group.element[10].display = "Person's Location"
* group.element[10].target.equivalence = #equivalent
* group.element[10].target.code = #Patient.generalPractioner(PractitionerRole.location(Location))
* group.element[10].target.display = "Patient.generalPractioner(PractitionerRole.location(Location))"
* group.element[11].code = #ROL-14
* group.element[11].display = "Organization"
* group.element[11].target.equivalence = #equivalent
* group.element[11].target.code = #Patient.generalPractioner(PractitionerRole.organization.(Organization))
* group.element[11].target.display = "Patient.generalPractioner(PractitionerRole.organization.(Organization))"
