Instance: DatatypeSADtoAddress
InstanceOf: ConceptMap
Title: "Datatype SAD to Address Map"
* description = "This ConceptMap represents the mapping from the HL7 V2 null to the FHIR null."
* id = "datatype-sad-to-address"
* url = "http://hl7.org/fhir/v2-tofhir/datatype-sad-to-address"
* version = "1.0"
* name = "Datatype_SAD_Map"
* status = #active
* experimental = true
* date = "2020-03-16"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "SAD"
* targetUri = "Address"
* group.element[0].code = #SAD.1
* group.element[0].display = "Street or Mailing Address"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #Address.line[1]
* group.element[0].target.display = "Address.line[1]"
* group.element[1].code = #SAD.2
* group.element[1].display = "Street Name"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #Address.line[2]
* group.element[1].target.display = "Address.line[2]"
* group.element[2].code = #SAD.3
* group.element[2].display = "Dwelling Number"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #Address.line[3]
* group.element[2].target.display = "Address.line[3]"
