Instance: SegmentORCtoServiceRequest
InstanceOf: ConceptMap
Title: "Segment ORC to ServiceRequest Map"
* description = "This ConceptMap represents the mapping from the HL7 V2 ORC Segment to the FHIR ServiceRequest Resource."
* id = "segment-orc-to-servicerequest"
* url = "http://hl7.org/fhir/v2-tofhir/segment-orc-to-servicerequest"
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
* targetUri = "ServiceRequest"
* group.element[0].code = #ORC-1
* group.element[0].display = "Order Control"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #ServiceRequest.status
* group.element[0].target.display = "ServiceRequest.status"
* group.element[0].target.comment = "This is a complicated mapping where .status, .intent, and Task get involved that may have various localized interpretation."
* group.element[0].target.dependsOn[0].property = "value"
* group.element[0].target.dependsOn[0].value = """
ORC.element("5").empty()
# IF ORC-5 NOT VALUED\
"""
* group.element[1].code = #ORC-1
* group.element[1].display = "Order Control"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #ServiceRequest.intent
* group.element[1].target.display = "= \"order\""
* group.element[2].code = #ORC-2
* group.element[2].display = "Placer Order Number"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #ServiceRequest.identifier[1]
* group.element[2].target.display = "ServiceRequest.identifier[1]"
* group.element[2].target.dependsOn[0].property = "value"
* group.element[2].target.dependsOn[0].value = """
OBR.element("2").empty()
# IF OBR-2 NOT VALUED\
"""
* group.element[3].code = #ORC-2
* group.element[3].display = "Placer Order Number"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #ServiceRequest.identifier[1].type.coding.code
* group.element[3].target.display = "= \"PLAC\""
* group.element[3].target.dependsOn[0].property = "value"
* group.element[3].target.dependsOn[0].value = """
OBR.element("2").empty()
# IF OBR-2 NOT VALUED\
"""
* group.element[4].code = #ORC-2
* group.element[4].display = "Placer Order Number"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #ServiceRequest.identifier[1].type.coding.system
* group.element[4].target.display = "= \"http://terminology.hl7.org/CodeSystem/v2-0203\""
* group.element[4].target.dependsOn[0].property = "value"
* group.element[4].target.dependsOn[0].value = """
OBR.element("2").empty()
# IF OBR-2 NOT VALUED\
"""
* group.element[5].code = #ORC-3
* group.element[5].display = "Filler Order Number"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #ServiceRequest.identifier[2]
* group.element[5].target.display = "ServiceRequest.identifier[2]"
* group.element[5].target.dependsOn[0].property = "value"
* group.element[5].target.dependsOn[0].value = """
OBR.element("3").empty()
# IF OBR-3 NOT VALUED\
"""
* group.element[6].code = #ORC-3
* group.element[6].display = "Filler Order Number"
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #ServiceRequest.identifier[2].type.coding.code
* group.element[6].target.display = "= \"FILL\""
* group.element[6].target.dependsOn[0].property = "value"
* group.element[6].target.dependsOn[0].value = """
OBR.element("3").empty()
# IF OBR-3 NOT VALUED\
"""
* group.element[7].code = #ORC-3
* group.element[7].display = "Filler Order Number"
* group.element[7].target.equivalence = #equivalent
* group.element[7].target.code = #ServiceRequest.identifier[2].type.coding.system
* group.element[7].target.display = "= \"http://terminology.hl7.org/CodeSystem/v2-0203\""
* group.element[7].target.dependsOn[0].property = "value"
* group.element[7].target.dependsOn[0].value = """
OBR.element("3").empty()
# IF OBR-3 NOT VALUED\
"""
* group.element[8].code = #ORC-4
* group.element[8].display = "Placer Group Number"
* group.element[8].target.equivalence = #equivalent
* group.element[8].target.code = #ServiceRequest.identifier[3]
* group.element[8].target.display = "ServiceRequest.identifier[3]"
* group.element[9].code = #ORC-4
* group.element[9].display = "Placer Group Number"
* group.element[9].target.equivalence = #equivalent
* group.element[9].target.code = #ServiceRequest.identifier[3].type.coding.code
* group.element[9].target.display = "= \"PGN\""
* group.element[10].code = #ORC-4
* group.element[10].display = "Placer Group Number"
* group.element[10].target.equivalence = #equivalent
* group.element[10].target.code = #ServiceRequest.identifier[3].type.coding.system
* group.element[10].target.display = "= \"http://terminology.hl7.org/CodeSystem/v2-0203\""
* group.element[11].code = #ORC-5
* group.element[11].display = "Order Status"
* group.element[11].target.equivalence = #equivalent
* group.element[11].target.code = #ServiceRequest.status
* group.element[11].target.display = "ServiceRequest.status"
* group.element[12].code = #ORC-7
* group.element[12].display = "Quantity/Timing"
* group.element[12].target.equivalence = #equivalent
* group.element[12].target.code = #ServiceRequest.quantity
* group.element[12].target.display = "ServiceRequest.quantity"
* group.element[13].code = #ORC-9
* group.element[13].display = "Date/Time of Transaction"
* group.element[13].target.equivalence = #equivalent
* group.element[13].target.code = #ServiceRequest.authoredOn
* group.element[13].target.display = "ServiceRequest.authoredOn"
* group.element[13].target.dependsOn[0].property = "value"
* group.element[13].target.dependsOn[0].value = """
ORC.element("1")="NW"
# IF ORC.1 IS "NW"\
"""
* group.element[14].code = #ORC-12
* group.element[14].display = "Ordering Provider"
* group.element[14].target.equivalence = #equivalent
* group.element[14].target.code = #ServiceRequest.requester(PractitionerRole)
* group.element[14].target.display = "ServiceRequest.requester(PractitionerRole)"
* group.element[15].code = #ORC-16
* group.element[15].display = "Order Control Code Reason"
* group.element[15].target.equivalence = #equivalent
* group.element[15].target.code = #ServiceRequest.extension-request-statusReason
* group.element[15].target.display = "ServiceRequest.extension-request-statusReason"
* group.element[15].target.dependsOn[0].property = "value"
* group.element[15].target.dependsOn[0].value = """
# IF ORC-5 NOT VALUED\
"""
* group.element[16].code = #ORC-21
* group.element[16].display = "Ordering Facility Name"
* group.element[16].target.equivalence = #equivalent
* group.element[16].target.code = #ServiceRequest.requester(PractitionerRole.organization(Organization))
* group.element[16].target.display = "ServiceRequest.requester(PractitionerRole.organization(Organization))"
* group.element[16].target.comment = "PractitionerRole.location is an alternative mapping, we invite ballot comments on which element in PractitionerRole is best."
* group.element[17].code = #ORC-22
* group.element[17].display = "Ordering Facility Address"
* group.element[17].target.equivalence = #equivalent
* group.element[17].target.code = #ServiceRequest.requester(PractitionerRole.organization(Organization.address))
* group.element[17].target.display = "ServiceRequest.requester(PractitionerRole.organization(Organization.address))"
* group.element[18].code = #ORC-23
* group.element[18].display = "Ordering Facility Phone Number"
* group.element[18].target.equivalence = #equivalent
* group.element[18].target.code = #ServiceRequest.requester(PractitionerRole.organization(Organization.telecom))
* group.element[18].target.display = "ServiceRequest.requester(PractitionerRole.organization(Organization.telecom))"
* group.element[19].code = #ORC-24
* group.element[19].display = "Ordering Provider Address"
* group.element[19].target.equivalence = #equivalent
* group.element[19].target.code = #ServiceRequest.requester(PractitionerRole.practitioner(Practititoner.address))
* group.element[19].target.display = "ServiceRequest.requester(PractitionerRole.practitioner(Practititoner.address))"
* group.element[19].target.comment = "We request feedback on whether this address is more directly related to the Practitioner rather than the PractitionerRole"
* group.element[20].code = #ORC-29
* group.element[20].display = "Order Type"
* group.element[20].target.equivalence = #equivalent
* group.element[20].target.code = #ServiceRequest.locationCode
* group.element[20].target.display = "ServiceRequest.locationCode"
