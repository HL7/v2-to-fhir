Instance: SegmentORCtoProvenance
InstanceOf: ConceptMap
Title: "Segment ORC to Provenance Map"
* description = "This ConceptMap represents the mapping from the HL7 V2 ORC Segment to the FHIR Provenance Resource."
* id = "segment-orc-to-provenance"
* url = "http://hl7.org/fhir/v2-tofhir/segment-orc-to-provenance"
* version = "1.0"
* name = "Segment_ORC_Map"
* status = #active
* experimental = true
* date = "2020-03-09"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "ORC"
* targetUri = "Provenance"
* group.element[0].code = #ORC-1
* group.element[0].display = "Order Control"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #Provenance.activity.coding.code
* group.element[0].target.display = "= \"CREATE\""
* group.element[0].target.dependsOn[0].property = "value"
* group.element[0].target.dependsOn[0].value = """
# IF ORC-1 EQUALS "NW"\
"""
* group.element[1].code = #ORC-1
* group.element[1].display = "Order Control"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #Provenance.activity.coding.system
* group.element[1].target.display = "= \"http://terminology.hl7.org/CodeSystem/v3-DataOperation\""
* group.element[1].target.dependsOn[0].property = "value"
* group.element[1].target.dependsOn[0].value = """
# IF ORC-1 EQUALS "NW"\
"""
* group.element[2].code = #ORC-1
* group.element[2].display = "Order Control"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #Provenance.activity.coding.code
* group.element[2].target.display = "= \"UPDATE\""
* group.element[2].target.dependsOn[0].property = "value"
* group.element[2].target.dependsOn[0].value = """
# IF ORC-1 EQUALS "SC"\
"""
* group.element[3].code = #ORC-1
* group.element[3].display = "Order Control"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #Provenance.activity.coding.system
* group.element[3].target.display = "= \"http://terminology.hl7.org/CodeSystem/v3-DataOperation\""
* group.element[3].target.dependsOn[0].property = "value"
* group.element[3].target.dependsOn[0].value = """
# IF ORC-1 EQUALS "SC"\
"""
* group.element[4].code = #ORC-1
* group.element[4].display = "Order Control"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #Provenance.activity.coding.code
* group.element[4].target.display = "= \"DELETE\""
* group.element[4].target.dependsOn[0].property = "value"
* group.element[4].target.dependsOn[0].value = """
# IF ORC-1 IN ("OC", "CA")\
"""
* group.element[5].code = #ORC-1
* group.element[5].display = "Order Control"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #Provenance.activity.coding.system
* group.element[5].target.display = "= \"http://terminology.hl7.org/CodeSystem/v3-DataOperation\""
* group.element[5].target.dependsOn[0].property = "value"
* group.element[5].target.dependsOn[0].value = """
# IF ORC-1 IN ("OC", "CA")\
"""
* group.element[6].code = #ORC-9
* group.element[6].display = "Date/Time of Transaction"
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #Provenance.recorded
* group.element[6].target.display = "Provenance.recorded"
* group.element[7].code = #ORC-9
* group.element[7].display = "Date/Time of Transaction"
* group.element[7].target.equivalence = #equivalent
* group.element[7].target.code = #Provenance.occurredDateTime
* group.element[7].target.display = "Provenance.occurredDateTime"
* group.element[8].code = #ORC-10
* group.element[8].display = "Entered By"
* group.element[8].target.equivalence = #equivalent
* group.element[8].target.code = #Provenance.agent[1].who(Practitioner)
* group.element[8].target.display = "Provenance.agent[1].who(Practitioner)"
* group.element[9].code = #ORC-10
* group.element[9].display = "Entered By"
* group.element[9].target.equivalence = #equivalent
* group.element[9].target.code = #Provenance.agent[1].type.coding.code
* group.element[9].target.display = "= \"enterer\""
* group.element[10].code = #ORC-10
* group.element[10].display = "Entered By"
* group.element[10].target.equivalence = #equivalent
* group.element[10].target.code = #Provenance.agent[1].type.coding.system
* group.element[10].target.display = "= \"http://terminology.hl7.org/CodeSystem/provenance-participant-type\""
* group.element[11].code = #ORC-11
* group.element[11].display = "Verified By"
* group.element[11].target.equivalence = #equivalent
* group.element[11].target.code = #Provenance.agent[2].who(Practitioner)
* group.element[11].target.display = "Provenance.agent[2].who(Practitioner)"
* group.element[12].code = #ORC-11
* group.element[12].display = "Verified By"
* group.element[12].target.equivalence = #equivalent
* group.element[12].target.code = #Provenance.agent[2].type.coding.code
* group.element[12].target.display = "= \"verifier\""
* group.element[13].code = #ORC-11
* group.element[13].display = "Verified By"
* group.element[13].target.equivalence = #equivalent
* group.element[13].target.code = #Provenance.agent[2].type.coding.system
* group.element[13].target.display = "= \"http://terminology.hl7.org/CodeSystem/provenance-participant-type\""
* group.element[14].code = #ORC-12
* group.element[14].display = "Ordering Provider"
* group.element[14].target.equivalence = #equivalent
* group.element[14].target.code = #Provenance.agent[3].who(Practitioner)
* group.element[14].target.display = "Provenance.agent[3].who(Practitioner)"
* group.element[15].code = #ORC-12
* group.element[15].display = "Ordering Provider"
* group.element[15].target.equivalence = #equivalent
* group.element[15].target.code = #Provenance.agent[3].type.coding.code
* group.element[15].target.display = "= \"author\""
* group.element[16].code = #ORC-12
* group.element[16].display = "Ordering Provider"
* group.element[16].target.equivalence = #equivalent
* group.element[16].target.code = #Provenance.agent[3].type.coding.system
* group.element[16].target.display = "= \"http://terminology.hl7.org/CodeSystem/provenance-participant-type\""
* group.element[17].code = #ORC-17
* group.element[17].display = "Entering Organization"
* group.element[17].target.equivalence = #equivalent
* group.element[17].target.code = #Provenance.agent[1].onBehalfOf(Organization)
* group.element[17].target.display = "Provenance.agent[1].onBehalfOf(Organization)"
* group.element[18].code = #ORC-21
* group.element[18].display = "Ordering Facility Name"
* group.element[18].target.equivalence = #equivalent
* group.element[18].target.code = #Provenance.location(Location[1])
* group.element[18].target.display = "Provenance.location(Location[1])"
* group.element[19].code = #ORC-22
* group.element[19].display = "Ordering Facility Address"
* group.element[19].target.equivalence = #equivalent
* group.element[19].target.code = #Provenance.location(Location[1].address)
* group.element[19].target.display = "Provenance.location(Location[1].address)"
* group.element[20].code = #ORC-23
* group.element[20].display = "Ordering Facility Phone Number"
* group.element[20].target.equivalence = #equivalent
* group.element[20].target.code = #Provenance.location(Location[1].telecom)
* group.element[20].target.display = "Provenance.location(Location[1].telecom)"
* group.element[21].code = #ORC-24
* group.element[21].display = "Ordering Provider Address"
* group.element[21].target.equivalence = #equivalent
* group.element[21].target.code = #Provenance.agent[3].who(Practitioner.address)
* group.element[21].target.display = "Provenance.agent[3].who(Practitioner.address)"
