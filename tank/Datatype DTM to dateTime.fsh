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
* date = "2020-03-16"
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
* group.element[1].code = #DTM.(p1)(5-6)
* group.element[1].display = "MM"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #dateTime.(p1)(5)
* group.element[1].target.display = "= \"-\""
* group.element[2].code = #DTM.(p1)(5-6)
* group.element[2].display = "MM"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #dateTime.(p1)(6-7)
* group.element[2].target.display = "dateTime.(p1)(6-7)"
* group.element[3].code = #DTM.(p1)(7-8)
* group.element[3].display = "DD"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #dateTime.(p1)(8)
* group.element[3].target.display = "= \"-\""
* group.element[4].code = #DTM.(p1)(7-8)
* group.element[4].display = "DD"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #dateTime.(p1)(9-10)
* group.element[4].target.display = "dateTime.(p1)(9-10)"
* group.element[5].code = #DTM.(p1)(9-10)
* group.element[5].display = "HH"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #dateTime.(p1)(11)
* group.element[5].target.display = "= \"T\""
* group.element[6].code = #DTM.(p1)(9-10)
* group.element[6].display = "HH"
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #dateTime.(p1)(12-13)
* group.element[6].target.display = "dateTime.(p1)(12-13)"
* group.element[7].code = #DTM.(p1)(11-12)
* group.element[7].display = "MM"
* group.element[7].target.equivalence = #equivalent
* group.element[7].target.code = #dateTime.(p1)(14)
* group.element[7].target.display = "= \":\""
* group.element[8].code = #DTM.(p1)(11-12)
* group.element[8].display = "MM"
* group.element[8].target.equivalence = #equivalent
* group.element[8].target.code = #dateTime.(p1)(15-16)
* group.element[8].target.display = "dateTime.(p1)(15-16)"
* group.element[9].code = #DTM.(p1)(13-14)
* group.element[9].display = "SS"
* group.element[9].target.equivalence = #equivalent
* group.element[9].target.code = #dateTime.(p1)(17)
* group.element[9].target.display = "= \":\""
* group.element[10].code = #DTM.(p1)(13-14)
* group.element[10].display = "SS"
* group.element[10].target.equivalence = #equivalent
* group.element[10].target.code = #dateTime.(p1)(18-19)
* group.element[10].target.display = "dateTime.(p1)(18-19)"
* group.element[11].code = #DTM.(p1)(16-18)
* group.element[11].display = ".SSS"
* group.element[11].target.equivalence = #equivalent
* group.element[11].target.code = #dateTime.(p1)(20)
* group.element[11].target.display = "= \".\""
* group.element[12].code = #DTM.(p1)(16-18)
* group.element[12].display = ".SSS"
* group.element[12].target.equivalence = #equivalent
* group.element[12].target.code = #dateTime.(p1)(21-23)
* group.element[12].target.display = "dateTime.(p1)(21-23)"
* group.element[13].code = #DTM.(p2)(1)
* group.element[13].display = "+/-"
* group.element[13].target.equivalence = #equivalent
* group.element[13].target.code = #dateTime.(p2)(1)
* group.element[13].target.display = "= \"+\""
* group.element[13].target.dependsOn[0].property = "value"
* group.element[13].target.dependsOn[0].value = """
# IF (p2)(1)="+"\
"""
* group.element[14].code = #DTM.(p2)(1)
* group.element[14].display = "+/-"
* group.element[14].target.equivalence = #equivalent
* group.element[14].target.code = #dateTime.(p2)(1)
* group.element[14].target.display = "= \"-\""
* group.element[14].target.dependsOn[0].property = "value"
* group.element[14].target.dependsOn[0].value = """
# IF (p2)(1)="-"\
"""
* group.element[15].code = #DTM.(p2)(2-3)
* group.element[15].display = "ZZ"
* group.element[15].target.equivalence = #equivalent
* group.element[15].target.code = #dateTime.(p2)(2-3)
* group.element[15].target.display = "dateTime.(p2)(2-3)"
* group.element[16].code = #DTM.(p2)(4-5)
* group.element[16].display = "ZZ"
* group.element[16].target.equivalence = #equivalent
* group.element[16].target.code = #dateTime.(p2)(4)
* group.element[16].target.display = "= \":\""
* group.element[17].code = #DTM.(p2)(4-5)
* group.element[17].display = "ZZ"
* group.element[17].target.equivalence = #equivalent
* group.element[17].target.code = #dateTime.(p2)(5-6)
* group.element[17].target.display = "dateTime.(p2)(5-6)"
