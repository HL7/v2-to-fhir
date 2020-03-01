Instance: ConceptMapv2-0231toStudentStatus
InstanceOf: ConceptMap
Title: "ConceptMap v2-0231 to Student Status Map"
* description = "This ConceptMap represents the mapping from the HL7 V2 Table v2-0231 to the FHIR Student Status Value Set."
* id = "conceptmap-v2-0231-to-student-status"
* url = "http://hl7.org/fhir/v2-tofhir"
* version = "1.0"
* name = "ConceptMap_v2-0231_Map"
* status = #active
* experimental = true
* date = "2020-03-01"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "http://terminology.hl7.org/CodeSystem/v2-0231"
* targetUri = "http://terminology.hl7.org/CodeSystem/v2-0231"
* group.element[0].code = #F
* group.element[0].display = "Full-time student"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #F
* group.element[0].target.display = "Full-time student"
* group.element[1].code = #P
* group.element[1].display = "Part-time student"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #P
* group.element[1].target.display = "Part-time student"
* group.element[2].code = #N
* group.element[2].display = "Not a student"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #N
* group.element[2].target.display = "Not a student"
