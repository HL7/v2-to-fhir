Instance: DatatypePTtoMessageHeader
InstanceOf: ConceptMap
Title: "Datatype PT to MessageHeader Map"
* description = "This ConceptMap represents the mapping from the HL7 V2 null to the FHIR null."
* id = "datatype-pt-to-messageheader"
* url = "http://hl7.org/fhir/v2-tofhir/datatype-pt-to-messageheader"
* version = "1.0"
* name = "Datatype_PT_Map"
* status = #active
* experimental = true
* date = "2020-03-16"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "PT"
* targetUri = "MessageHeader"
* group.element[0].code = #PT.1
* group.element[0].display = "Processing ID"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #MessageHeader.meta.tag[1].code
* group.element[0].target.display = "MessageHeader.meta.tag[1].code"
* group.element[1].code = #PT.1
* group.element[1].display = "Processing ID"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #MessageHeader.meta.tag[1].system
* group.element[1].target.display = "= \"http://terminology.hl7.org/CodeSystem/v2-0103\""
* group.element[2].code = #PT.2
* group.element[2].display = "Processing Mode"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #MessageHeader.meta.tag[2].code
* group.element[2].target.display = "MessageHeader.meta.tag[2].code"
* group.element[3].code = #PT.2
* group.element[3].display = "Processing Mode"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #MessageHeader.meta.tag[2].system
* group.element[3].target.display = "= \"http://terminology.hl7.org/CodeSystem/v2-0207\""
