Instance: DatatypeRPtoAttachment
InstanceOf: ConceptMap
Title: "Datatype RP to Attachment Map"
* description = "This ConceptMap represents the mapping from the HL7 V2 null to the FHIR null."
* id = "datatype-rpattachment-to-attachment"
* url = "http://hl7.org/fhir/v2-tofhir/datatype-rpattachment-to-attachment"
* version = "1.0"
* name = "Datatype_RP_Map"
* status = #active
* experimental = true
* date = "2020-03-16"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "RP"
* targetUri = "Attachment"
* group.element[0].code = #RP.1
* group.element[0].display = "Pointer"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #Attachment.url
* group.element[0].target.display = "Attachment.url"
* group.element[1].code = #RP.3
* group.element[1].display = "Type of Data"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #Attachment.contentType
* group.element[1].target.display = "Attachment.contentType"
