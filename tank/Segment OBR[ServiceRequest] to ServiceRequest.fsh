Instance: SegmentOBRtoServiceRequest
InstanceOf: ConceptMap
Title: "Segment OBR to ServiceRequest Map"
* description = "This ConceptMap represents the mapping from the HL7 V2 OBR Segment to the FHIR ServiceRequest Resource."
* id = "segment-obrservicerequest-to-servicerequest"
* url = "http://hl7.org/fhir/v2-tofhir/segment-obrservicerequest-to-servicerequest"
* version = "1.0"
* name = "Segment_OBR_Map"
* status = #active
* experimental = true
* date = "2020-03-16"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "OBR"
* targetUri = "ServiceRequest"
* group.element[0].code = #OBR-2
* group.element[0].display = "Placer Order Number"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #ServiceRequest.identifier
* group.element[0].target.display = "ServiceRequest.identifier"
* group.element[0].target.dependsOn[0].property = "value"
* group.element[0].target.dependsOn[0].value = """
# IF ORC-2 NOT VALUED\
"""
* group.element[1].code = #OBR-2
* group.element[1].display = "Placer Order Number"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #ServiceRequest.identifier.type.coding.code
* group.element[1].target.display = "= \"PLAC\""
* group.element[1].target.dependsOn[0].property = "value"
* group.element[1].target.dependsOn[0].value = """
# IF ORC-2 NOT VALUED\
"""
* group.element[2].code = #OBR-2
* group.element[2].display = "Placer Order Number"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #ServiceRequest.identifier.type.coding.system
* group.element[2].target.display = "= \"http://terminology.hl7.org/CodeSystem/v2-0203\""
* group.element[2].target.dependsOn[0].property = "value"
* group.element[2].target.dependsOn[0].value = """
# IF ORC-2 NOT VALUED\
"""
* group.element[3].code = #OBR-3
* group.element[3].display = "Filler Order Number"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #ServiceRequest.identifier
* group.element[3].target.display = "ServiceRequest.identifier"
* group.element[3].target.dependsOn[0].property = "value"
* group.element[3].target.dependsOn[0].value = """
# IF ORC-3 NOT VALUED\
"""
* group.element[4].code = #OBR-3
* group.element[4].display = "Filler Order Number"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #ServiceRequest.identifier.type.coding.code
* group.element[4].target.display = "= \"FILL\""
* group.element[4].target.dependsOn[0].property = "value"
* group.element[4].target.dependsOn[0].value = """
# IF ORC-3 NOT VALUED\
"""
* group.element[5].code = #OBR-3
* group.element[5].display = "Filler Order Number"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #ServiceRequest.identifier.type.coding.system
* group.element[5].target.display = "= \"http://terminology.hl7.org/CodeSystem/v2-0203\""
* group.element[5].target.dependsOn[0].property = "value"
* group.element[5].target.dependsOn[0].value = """
# IF ORC-3 NOT VALUED\
"""
* group.element[6].code = #OBR-4
* group.element[6].display = "Universal Service Identifier"
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #ServiceRequest.code
* group.element[6].target.display = "ServiceRequest.code"
* group.element[7].code = #OBR-5
* group.element[7].display = "Priority"
* group.element[7].target.equivalence = #equivalent
* group.element[7].target.code = #ServiceRequest.priority
* group.element[7].target.display = "ServiceRequest.priority"
* group.element[8].code = #OBR-6
* group.element[8].display = "Requested Date/Time"
* group.element[8].target.equivalence = #equivalent
* group.element[8].target.code = #ServiceRequest.occurrenceDateTime
* group.element[8].target.display = "ServiceRequest.occurrenceDateTime"
* group.element[9].code = #OBR-9
* group.element[9].display = "Collection Volume"
* group.element[9].target.equivalence = #equivalent
* group.element[9].target.code = #ServiceRequest.specimen[1](Specimen.collection.quantity)
* group.element[9].target.display = "ServiceRequest.specimen[1](Specimen.collection.quantity)"
* group.element[10].code = #OBR-10
* group.element[10].display = "Collector Identifier"
* group.element[10].target.equivalence = #equivalent
* group.element[10].target.code = #ServiceRequest.specimen[1](Specimen.collection.collector(Practitioner))
* group.element[10].target.display = "ServiceRequest.specimen[1](Specimen.collection.collector(Practitioner))"
* group.element[11].code = #OBR-11
* group.element[11].display = "Specimen Action Code"
* group.element[11].target.equivalence = #equivalent
* group.element[11].target.code = #ServiceRequest.intent
* group.element[11].target.display = "= \"reflex-order\""
* group.element[11].target.dependsOn[0].property = "value"
* group.element[11].target.dependsOn[0].value = """
element("11")="G"
# IF OBR-11 EQUALS "G"\
"""
* group.element[12].code = #OBR-11
* group.element[12].display = "Specimen Action Code"
* group.element[12].target.equivalence = #equivalent
* group.element[12].target.code = #ServiceRequest.intent
* group.element[12].target.display = "= \"order\""
* group.element[12].target.dependsOn[0].property = "value"
* group.element[12].target.dependsOn[0].value = """
element("11")! ??IN?? ("G","A")
# IF OBR-11 NOT IN ("G","A")\
"""
* group.element[13].code = #OBR-14
* group.element[13].display = "Specimen Received Date/Time *"
* group.element[13].target.equivalence = #equivalent
* group.element[13].target.code = #ServiceRequest.specimen[1](Specimen.receivedTime)
* group.element[13].target.display = "ServiceRequest.specimen[1](Specimen.receivedTime)"
* group.element[14].code = #OBR-15
* group.element[14].display = "Specimen Source"
* group.element[14].target.equivalence = #equivalent
* group.element[14].target.code = #ServiceRequest.specimen[1](Specimen)
* group.element[14].target.display = "ServiceRequest.specimen[1](Specimen)"
* group.element[15].code = #OBR-16
* group.element[15].display = "Ordering Provider"
* group.element[15].target.equivalence = #equivalent
* group.element[15].target.code = #ServiceRequest.requester(Practitioner)
* group.element[15].target.display = "ServiceRequest.requester(Practitioner)"
* group.element[15].target.dependsOn[0].property = "value"
* group.element[15].target.dependsOn[0].value = """
# IF ORC-12 NOT VALUED\
"""
* group.element[16].code = #OBR-27
* group.element[16].display = "Quantity/Timing"
* group.element[16].target.equivalence = #equivalent
* group.element[16].target.code = #ServiceRequest.quantity
* group.element[16].target.display = "ServiceRequest.quantity"
* group.element[17].code = #OBR-29
* group.element[17].display = "ParentResults Observation Identifier"
* group.element[17].target.equivalence = #equivalent
* group.element[17].target.code = #ServiceRequest.basedOn.identifier
* group.element[17].target.display = "ServiceRequest.basedOn.identifier"
* group.element[17].target.dependsOn[0].property = "value"
* group.element[17].target.dependsOn[0].value = """
# IF OBR-29.1 VALUED AND OBR-50 NOT VALUED\
"""
* group.element[17].target.dependsOn[0].value = "If OBR-29.2 is also valued, implementation needs to decide which one to use."
* group.element[18].code = #OBR-29
* group.element[18].display = "ParentResults Observation Identifier"
* group.element[18].target.equivalence = #equivalent
* group.element[18].target.code = #ServiceRequest.basedOn.type
* group.element[18].target.display = "= \"ServiceRequest\""
* group.element[18].target.dependsOn[0].property = "value"
* group.element[18].target.dependsOn[0].value = """
# IF OBR-29.1 VALUED AND OBR-50 NOT VALUED\
"""
* group.element[18].target.dependsOn[0].value = "If OBR-29.2 is also valued, implementation needs to decide which one to use."
* group.element[19].code = #OBR-29
* group.element[19].display = "ParentResults Observation Identifier"
* group.element[19].target.equivalence = #equivalent
* group.element[19].target.code = #ServiceRequest.basedOn.identifier
* group.element[19].target.display = "ServiceRequest.basedOn.identifier"
* group.element[19].target.dependsOn[0].property = "value"
* group.element[19].target.dependsOn[0].value = """
# IF OBR-29.2 VALUED AND OBR-50 NOT VALUED\
"""
* group.element[19].target.dependsOn[0].value = "If OBR-29.1 is also valued, implementation needs to decide which one to use."
* group.element[20].code = #OBR-29
* group.element[20].display = "ParentResults Observation Identifier"
* group.element[20].target.equivalence = #equivalent
* group.element[20].target.code = #ServiceRequest.basedOn.type
* group.element[20].target.display = "= \"ServiceRequest\""
* group.element[20].target.dependsOn[0].property = "value"
* group.element[20].target.dependsOn[0].value = """
# IF OBR-29.2 VALUED AND OBR-50 NOT VALUED\
"""
* group.element[20].target.dependsOn[0].value = "If OBR-29.1 is also valued, implementation needs to decide which one to use."
* group.element[21].code = #OBR-31
* group.element[21].display = "Reason for Study"
* group.element[21].target.equivalence = #equivalent
* group.element[21].target.code = #ServiceRequest.reasonCode
* group.element[21].target.display = "ServiceRequest.reasonCode"
* group.element[22].code = #OBR-39
* group.element[22].display = "Collector's Comment *"
* group.element[22].target.equivalence = #equivalent
* group.element[22].target.code = #SpecimenRequest.specimen[1](Specimen.note)
* group.element[22].target.display = "SpecimenRequest.specimen[1](Specimen.note)"
* group.element[23].code = #OBR-46
* group.element[23].display = "Placer Supplemental Service Information"
* group.element[23].target.equivalence = #equivalent
* group.element[23].target.code = #ServiceRequest.orderDetail[1]??
* group.element[23].target.display = "ServiceRequest.orderDetail[1]??"
* group.element[24].code = #OBR-47
* group.element[24].display = "Filler Supplemental Service Information"
* group.element[24].target.equivalence = #equivalent
* group.element[24].target.code = #ServiceRequest.orderDetail[2]??
* group.element[24].target.display = "ServiceRequest.orderDetail[2]??"
* group.element[25].code = #OBR-53
* group.element[25].display = "Alternate Placer Order Number"
* group.element[25].target.equivalence = #equivalent
* group.element[25].target.code = #ServiceRequest.identifier
* group.element[25].target.display = "ServiceRequest.identifier"
* group.element[26].code = #OBR-53
* group.element[26].display = "Alternate Placer Order Number"
* group.element[26].target.equivalence = #equivalent
* group.element[26].target.code = #ServiceRequest.identifier.type.coding.code
* group.element[26].target.display = "= \"PLAC\""
* group.element[27].code = #OBR-53
* group.element[27].display = "Alternate Placer Order Number"
* group.element[27].target.equivalence = #equivalent
* group.element[27].target.code = #ServiceRequest.identifier.type.coding.system
* group.element[27].target.display = "= \"http://terminology.hl7.org/CodeSystem/v2-0203\""
