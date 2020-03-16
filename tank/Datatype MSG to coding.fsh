Instance: DatatypeMSGtocoding
InstanceOf: ConceptMap
Title: "Datatype MSG to coding Map"
* description = "This ConceptMap represents the mapping from the HL7 V2 null to the FHIR null."
* id = "datatype-msg-to-coding"
* url = "http://hl7.org/fhir/v2-tofhir/datatype-msg-to-coding"
* version = "1.0"
* name = "Datatype_MSG_Map"
* status = #active
* experimental = true
* date = "2020-03-16"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "MSG"
* targetUri = "coding"
* group.element[0].code = #MSG.2
* group.element[0].display = "Trigger Event"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #coding.code
* group.element[0].target.display = "coding.code"
* group.element[1].code = #MSG.2
* group.element[1].display = "Trigger Event"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #coding.system
* group.element[1].target.display = "= \"http://terminology.hl7.org/CodeSystem/v2-0003\""
* group.element[2].code = #MSG.3
* group.element[2].display = "Message Structure"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #MessageHeader.definition(MessageDefinition.identifier)
* group.element[2].target.display = "MessageHeader.definition(MessageDefinition.identifier)"
