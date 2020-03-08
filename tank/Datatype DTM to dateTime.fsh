Instance: DatatypeDTMtodateTime
InstanceOf: ConceptMap
Title: "Datatype DTM to dateTime Map"
* description = "This ConceptMap represents the mapping from the HL7 V2 null to the FHIR null."
* id = "datatype-dtm-to-datetime"
* url = "http://hl7.org/fhir/v2-tofhir/datatype-dtm-to-datetime"
* version = "1.0"
* name = "Datatype_DTM_Map"
* status = #active
* experimental = true
* date = "2020-03-08"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "DTM"
* targetUri = "dateTime"
* group.element[0].code = #DTM.(p1)(1-4)
* group.element[0].display = "YYYY"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #dateTime.(p1)(1-4)
* group.element[0].target.display = "dateTime.(p1)(1-4)"
* group.element[0].target.comment = "The FHIR instant/dateTime format is YYYY-MM-DDThh:mm:ss.sss+zz:zz"
* group.element[1].code = #DTM.(p1)(5-6)
* group.element[1].display = "MM"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #dateTime.(p1)(5)
* group.element[1].target.display = "= \"-\""
* group.element[2].code = #(p1)(5-6)
* group.element[2].display = "MM"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #(p1)(6-7)
* group.element[2].target.display = "(p1)(6-7)"
* group.element[3].code = #(p1)(7-8)
* group.element[3].display = "DD"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #(p1)(8)
* group.element[3].target.display = "= \"-\""
* group.element[4].code = #(p1)(7-8)
* group.element[4].display = "DD"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #(p1)(9-10)
* group.element[4].target.display = "(p1)(9-10)"
