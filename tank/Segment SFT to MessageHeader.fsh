Instance: SegmentSFTtoMessageHeader
InstanceOf: ConceptMap
Title: "Segment SFT to MessageHeader Map"
* description = "This ConceptMap represents the mapping from the HL7 V2 SFT Segment to the FHIR MessageHeader Resource."
* id = "segment-sft-to-messageheader"
* url = "http://hl7.org/fhir/v2-tofhir/segment-sft-to-messageheader"
* version = "1.0"
* name = "Segment_SFT_Map"
* status = #active
* experimental = true
* date = "2020-03-09"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "SFT"
* targetUri = "MessageHeader"
* group.element[0].code = #SFT-2
* group.element[0].display = "Software Certified Version or Release Number"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #MessageHeader.source.version
* group.element[0].target.display = "MessageHeader.source.version"
* group.element[1].code = #SFT-3
* group.element[1].display = "Software Product Name"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #MessageHeader.source.software
* group.element[1].target.display = "MessageHeader.source.software"
