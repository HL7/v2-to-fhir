Instance: DatatypePLNtoIdentifier
InstanceOf: ConceptMap
Title: "Datatype PLN to Identifier Map"
* description = "This ConceptMap represents the mapping from the HL7 V2 null to the FHIR null."
* id = "datatype-pln-to-identifier"
* url = "http://hl7.org/fhir/v2-tofhir/datatype-pln-to-identifier"
* version = "1.0"
* name = "Datatype_PLN_Map"
* status = #active
* experimental = true
* date = "2020-03-16"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "PLN"
* targetUri = "Identifier"
* group.element[0].code = #PLN.1
* group.element[0].display = "ID Number"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #Identifier.value
* group.element[0].target.display = "Identifier.value"
* group.element[1].code = #PLN.2
* group.element[1].display = "Type of ID Number"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #Identifier.type
* group.element[1].target.display = "Identifier.type"
* group.element[2].code = #PLN.3
* group.element[2].display = "State/other Qualifying Information"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #Identifier.#ext-comment#
* group.element[2].target.display = "Identifier.#ext-comment#"
* group.element[3].code = #PLN.4
* group.element[3].display = "Expiration Date"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #Identifier.period.end
* group.element[3].target.display = "Identifier.period.end"
