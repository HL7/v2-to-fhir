Instance: SegmentPR1toProcedure
InstanceOf: ConceptMap
Title: "Segment PR1 to Procedure Map"
* description = "This ConceptMap represents the mapping from the HL7 V2 PR1 Segment to the FHIR Procedure Resource."
* id = "segment-pr1-to-procedure"
* url = "http://hl7.org/fhir/v2-tofhir/segment-pr1-to-procedure"
* version = "1.0"
* name = "Segment_PR1_Map"
* status = #active
* experimental = true
* date = "2020-03-10"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "PR1"
* targetUri = "Procedure"
* group.element[0].code = #PR1-3
* group.element[0].display = "Procedure Code"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #Procedure.code
* group.element[0].target.display = "Procedure.code"
* group.element[1].code = #PR1-4
* group.element[1].display = "Procedure Description"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #Procedure.code.text
* group.element[1].target.display = "Procedure.code.text"
* group.element[1].target.comment = "PR1-4 was deprecated in v2.3"
* group.element[1].target.dependsOn[0].property = "value"
* group.element[1].target.dependsOn[0].value = """
# IF PR1-3.9 NOT VALUED\
"""
* group.element[2].code = #PR1-5
* group.element[2].display = "Procedure Date/Time"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #Procedure.performedDateTime
* group.element[2].target.display = "Procedure.performedDateTime"
* group.element[2].target.dependsOn[0].property = "value"
* group.element[2].target.dependsOn[0].value = """
# IF PR1-7 NOT VALUED\
"""
* group.element[3].code = #PR1-5
* group.element[3].display = "Procedure Date/Time"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #Procedure.performedDateTime
* group.element[3].target.display = "Procedure.performedDateTime"
* group.element[3].target.comment = "The Procedure date/time must be at least to the granularity of minutes if a performedPeriod is to be created from PR1-5 and PR1-7"
* group.element[3].target.dependsOn[0].property = "value"
* group.element[3].target.dependsOn[0].value = """
# IF PR1-7 VALUED AND PR1-5.5 NOT VALUED\
"""
* group.element[4].code = #PR1-5
* group.element[4].display = "Procedure Date/Time"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #Procedure.performedPeriod.start
* group.element[4].target.display = "Procedure.performedPeriod.start"
* group.element[4].target.dependsOn[0].property = "value"
* group.element[4].target.dependsOn[0].value = """
# IF PR1-7 VALUED AND PR1-5.5 VALUED\
"""
* group.element[5].code = #PR1-6
* group.element[5].display = "Procedure Functional Type"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #Procedure.category
* group.element[5].target.display = "Procedure.category"
* group.element[6].code = #PR1-7
* group.element[6].display = "Procedure Minutes"
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #Procedure.performedPeriod.end
* group.element[6].target.display = "= Procedure.performedPeriod.start+PR1-7"
* group.element[6].target.comment = "The number of minutes in PR1-7 must be added to the time in PR1-5 to get the endpoint of the performedPeriod (note that other elements of the date/time (hours, date, etc) may also need to be changed depending on the length of the procedure)"
* group.element[6].target.dependsOn[0].property = "value"
* group.element[6].target.dependsOn[0].value = """
# IF PR1-5.5 IS VALUED\
"""
* group.element[7].code = #PR1-8
* group.element[7].display = "Anesthesiologist"
* group.element[7].target.equivalence = #equivalent
* group.element[7].target.code = #Procedure.perfomer[1].actor(Practitioner)
* group.element[7].target.display = "Procedure.perfomer[1].actor(Practitioner)"
* group.element[8].code = #PR1-8
* group.element[8].display = "Anesthesiologist"
* group.element[8].target.equivalence = #equivalent
* group.element[8].target.code = #Procedure.perfomer[1].function.coding.code
* group.element[8].target.display = "= \"88189002\""
* group.element[9].code = #PR1-8
* group.element[9].display = "Anesthesiologist"
* group.element[9].target.equivalence = #equivalent
* group.element[9].target.code = #Procedure.perfomer[1].function.coding.uri
* group.element[9].target.display = "= \"http://snomed.info/sct\""
* group.element[10].code = #PR1-11
* group.element[10].display = "Surgeon"
* group.element[10].target.equivalence = #equivalent
* group.element[10].target.code = #Procedure.perfomer[2].actor(Practitioner)
* group.element[10].target.display = "Procedure.perfomer[2].actor(Practitioner)"
* group.element[11].code = #PR1-11
* group.element[11].display = "Surgeon"
* group.element[11].target.equivalence = #equivalent
* group.element[11].target.code = #Procedure.perfomer[2].function.coding.code
* group.element[11].target.display = "= \"304292004\""
* group.element[12].code = #PR1-11
* group.element[12].display = "Surgeon"
* group.element[12].target.equivalence = #equivalent
* group.element[12].target.code = #Procedure.perfomer[2].function.coding.uri
* group.element[12].target.display = "= \"http://snomed.info/sct\""
* group.element[13].code = #PR1-12
* group.element[13].display = "Procedure Practitioner"
* group.element[13].target.equivalence = #equivalent
* group.element[13].target.code = #Procedure.perfomer[3].actor(Practitioner)
* group.element[13].target.display = "Procedure.perfomer[3].actor(Practitioner)"
* group.element[14].code = #PR1-12
* group.element[14].display = "Procedure Practitioner"
* group.element[14].target.equivalence = #equivalent
* group.element[14].target.code = #Procedure.perfomer[3].function.coding.uri
* group.element[14].target.display = "= \"http://snomed.info/sct\""
* group.element[15].code = #PR1-15
* group.element[15].display = "Associated Diagnosis Code"
* group.element[15].target.equivalence = #equivalent
* group.element[15].target.code = #Procedure.reasonCode
* group.element[15].target.display = "Procedure.reasonCode"
* group.element[16].code = #PR1-19
* group.element[16].display = "Procedure Identifier"
* group.element[16].target.equivalence = #equivalent
* group.element[16].target.code = #Procedure.identifier
* group.element[16].target.display = "Procedure.identifier"
* group.element[17].code = #PR1-23
* group.element[17].display = "Treating Organizational Unit"
* group.element[17].target.equivalence = #equivalent
* group.element[17].target.code = #Procedure.location(Location)
* group.element[17].target.display = "Procedure.location(Location)"
* group.element[17].target.comment = "We will address >=2 cardinality if somebody raises the need."
* group.element[18].code = #PR1-25
* group.element[18].display = "Parent Procedure ID"
* group.element[18].target.equivalence = #equivalent
* group.element[18].target.code = #Procedure.partOf(Procedure)
* group.element[18].target.display = "Procedure.partOf(Procedure)"
* group.element[18].target.comment = "Procedure.partOf should contain the reference to another Procedure resource where Procedure.identifier matches the value of PR1-25"
