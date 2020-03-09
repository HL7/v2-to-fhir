Instance: DatatypeEDtoAttachment
InstanceOf: ConceptMap
Title: "Datatype ED to Attachment Map"
* description = "This ConceptMap represents the mapping from the HL7 V2 null to the FHIR null."
* id = "datatype-ed-to-attachment"
* url = "http://hl7.org/fhir/v2-tofhir/datatype-ed-to-attachment"
* version = "1.0"
* name = "Datatype_ED_Map"
* status = #active
* experimental = true
* date = "2020-03-09"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "ED"
* targetUri = "Attachment"
* group.element[0].code = #ED.2
* group.element[0].display = "Type of Data"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #Attachment.contentType
* group.element[0].target.display = "Attachment.contentType"
* group.element[1].code = #ED.5
* group.element[1].display = "Data"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #Attachment.data
* group.element[1].target.display = "Attachment.data"
