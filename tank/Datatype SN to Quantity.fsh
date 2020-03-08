Instance: DatatypeSNtoQuantity
InstanceOf: ConceptMap
Title: "Datatype SN to Quantity Map"
* description = "This ConceptMap represents the mapping from the HL7 V2 null to the FHIR null."
* id = "datatype-sn-to-quantity"
* url = "http://hl7.org/fhir/v2-tofhir/datatype-sn-to-quantity"
* version = "1.0"
* name = "Datatype_SN_Map"
* status = #active
* experimental = true
* date = "2020-03-08"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "SN"
* targetUri = "Quantity"
* group.element[0].code = #SN.1
* group.element[0].display = "Comparator"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #Quantity.comparator
* group.element[0].target.display = "Quantity.comparator"
* group.element[1].code = #SN.2
* group.element[1].display = "Num1"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #Quanitty.value
* group.element[1].target.display = "Quanitty.value"
