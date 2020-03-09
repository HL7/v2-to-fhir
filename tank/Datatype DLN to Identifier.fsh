Instance: DatatypeDLNtoIdentifier
InstanceOf: ConceptMap
Title: "Datatype DLN to Identifier Map"
* description = "This ConceptMap represents the mapping from the HL7 V2 null to the FHIR null."
* id = "datatype-dln-to-identifier"
* url = "http://hl7.org/fhir/v2-tofhir/datatype-dln-to-identifier"
* version = "1.0"
* name = "Datatype_DLN_Map"
* status = #active
* experimental = true
* date = "2020-03-09"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "DLN"
* targetUri = "Identifier"
* group.element[0].code = #DLN.1
* group.element[0].display = "License Number"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #Identifier.value
* group.element[0].target.display = "Identifier.value"
* group.element[1].code = #DLN.1
* group.element[1].display = "License Number"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #Identifier.type.coding.code
* group.element[1].target.display = "= \"DL\""
* group.element[2].code = #DLN.2
* group.element[2].display = "Issuing State, Province, Country"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #Identifier.system
* group.element[2].target.display = "Identifier.system"
* group.element[3].code = #DLN.3
* group.element[3].display = "Expiration Date"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #Identifier.period.end
* group.element[3].target.display = "Identifier.period.end"
