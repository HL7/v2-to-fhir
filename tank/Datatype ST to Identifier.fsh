Instance: DatatypeSTtoIdentifier
InstanceOf: ConceptMap
Title: "Datatype ST to Identifier Map"
* description = "This ConceptMap represents the mapping from the HL7 V2 null to the FHIR null."
* id = "datatype-st-to-identifier"
* url = "http://hl7.org/fhir/v2-tofhir/datatype-st-to-identifier"
* version = "1.0"
* name = "Datatype_ST_Map"
* status = #active
* experimental = true
* date = "2020-03-09"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "ST"
* targetUri = "Identifier"
* group.element[0].code = #ST.1
* group.element[0].display = "String"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #Identifier.value
* group.element[0].target.display = "Identifier.value"
