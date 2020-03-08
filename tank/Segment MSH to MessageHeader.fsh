Instance: SegmentMSHtoMessageHeader
InstanceOf: ConceptMap
Title: "Segment MSH to MessageHeader Map"
* description = "This ConceptMap represents the mapping from the HL7 V2 MSH Segment to the FHIR MessageHeader Resource."
* id = "segment-msh-to-messageheader"
* url = "http://hl7.org/fhir/v2-tofhir/segment-msh-to-messageheader"
* version = "1.0"
* name = "Segment_MSH_Map"
* status = #active
* experimental = true
* date = "2020-03-08"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "MSH"
* targetUri = "MessageHeader"
* group.element[0].code = #MSH-3
* group.element[0].display = "Sending Application"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #MessageHeader.source
* group.element[0].target.display = "MessageHeader.source"
* group.element[0].target.comment = """
Example: MSH|^~%|LAB^2.16.840.1.113883.3.987.1^ISO|...
Example: MSH|^~%|LAB|…
How do we populate this if MSH-3 is not valued?\
"""
* group.element[1].code = #MSH-4
* group.element[1].display = "Sending Facility"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #MessageHeader.sender(Organization)
* group.element[1].target.display = "MessageHeader.sender(Organization)"
* group.element[1].target.comment = """
How do we populate this if MSH-4 is not valued?
How do we represent HD and identifiers? Need to work with InM.
Should consider aligning sender/receiver constructs.
Open gForge to request that\
"""
* group.element[2].code = #MSH-5
* group.element[2].display = "Receiving Application"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #MessageHeader.destination[1]
* group.element[2].target.display = "MessageHeader.destination[1]"
* group.element[2].target.comment = "Example: MSH...|RH^2.16.840.1.113883.632.3^ISO|..."
* group.element[3].code = #MSH-6
* group.element[3].display = "Receiving Facility"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #MessageHeader.destination[1].receiver(Organization)
* group.element[3].target.display = "MessageHeader.destination[1].receiver(Organization)"
* group.element[4].code = #MSH-7
* group.element[4].display = "Date/Time of Message"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #Bundle.timestamp
* group.element[4].target.display = "= MSH-7"
* group.element[5].code = #MSH-8
* group.element[5].display = "Security"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #MessageHeader.meta.security
* group.element[5].target.display = "MessageHeader.meta.security"
* group.element[6].code = #MSH-9
* group.element[6].display = "Message Type"
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #MessageHeader.event.coding
* group.element[6].target.display = "MessageHeader.event.coding"
* group.element[6].target.comment = "Set up time with InM.  Set up mapping tables for all components (message code, trigger event, structure)"
* group.element[7].code = #MSH-10
* group.element[7].display = "Message Control ID"
* group.element[7].target.equivalence = #equivalent
* group.element[7].target.code = #Bundle.identifier
* group.element[7].target.display = "Bundle.identifier"
* group.element[7].target.comment = """
Need a gForge to request a MessageHeader.identifier (https://gforge.hl7.org/gf/project/fhir/tracker/?action=TrackerItemEdit&tracker_item_id=20704&start=0)
Note that if a message is part of a batch, then the MSH goes to a "sub-bundle"..
Note that as messages switch from V2 to FHIR and the response back from FHIR to V2, the "mapping engine" needs to track the actual MSH.10.00.00 value and Bundle.identifier value to connect responses correctly.\
"""
* group.element[8].code = #MSH-10
* group.element[8].display = "Message Control ID"
* group.element[8].target.equivalence = #equivalent
* group.element[8].target.code = #Bundle.type
* group.element[8].target.display = "= \"message\""
* group.element[9].code = #MSH-11
* group.element[9].display = "Processing ID"
* group.element[9].target.equivalence = #equivalent
* group.element[9].target.code = #MessageHeader.meta.tag
* group.element[9].target.display = "MessageHeader.meta.tag"
* group.element[10].code = #MSH-17
* group.element[10].display = "Country Code"
* group.element[10].target.equivalence = #equivalent
* group.element[10].target.code = #MessageHeader.sender(Organization.address.country)
* group.element[10].target.display = "MessageHeader.sender(Organization.address.country)"
* group.element[11].code = #MSH-19
* group.element[11].display = "Principal Language Of Message"
* group.element[11].target.equivalence = #equivalent
* group.element[11].target.code = #MessageHeader.language
* group.element[11].target.display = "MessageHeader.language"
* group.element[11].target.comment = "This does only cover the MessageHeader resource. Need to have clarity that if other resources that are part of the message that do not have Resource.meta.language valued, then it is assumed to follow MessageHeader.meta.language?? Doesn't seem RESTful, so what is the default for Resource.meta.language?"
* group.element[12].code = #MSH-22
* group.element[12].display = "Sending Responsible Organization"
* group.element[12].target.equivalence = #equivalent
* group.element[12].target.code = #MessageHeader.responsible(Organization)
* group.element[12].target.display = "MessageHeader.responsible(Organization)"
* group.element[13].code = #MSH-23
* group.element[13].display = "Receiving Responsible Organization"
* group.element[13].target.equivalence = #equivalent
* group.element[13].target.code = #MessageHeader.destination[1].receiver(Organization)
* group.element[13].target.display = "MessageHeader.destination[1].receiver(Organization)"
* group.element[13].target.comment = "This is an alternate representation of MSH-6.  The local implementation needs to determine whech components of HD vs. XON to be used and whether it may even yield a separate Organization reference."
* group.element[14].code = #MSH-24
* group.element[14].display = "Sending Network Address"
* group.element[14].target.equivalence = #equivalent
* group.element[14].target.code = #Messageheader.source.endpoint
* group.element[14].target.display = "Messageheader.source.endpoint"
* group.element[15].code = #MSH-25
* group.element[15].display = "Receiving Network Address"
* group.element[15].target.equivalence = #equivalent
* group.element[15].target.code = #MessageHeader.destination[1].endpoint
* group.element[15].target.display = "MessageHeader.destination[1].endpoint"
* group.element[15].target.comment = "This is an alternate representation of MSH-5.  Need to agree on prioritization."
