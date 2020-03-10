Instance: DatatypeCXtoIdentifier
InstanceOf: ConceptMap
Title: "Datatype CX to Identifier Map"
* description = "This ConceptMap represents the mapping from the HL7 V2 null to the FHIR null."
* id = "datatype-cx-to-identifier"
* url = "http://hl7.org/fhir/v2-tofhir/datatype-cx-to-identifier"
* version = "1.0"
* name = "Datatype_CX_Map"
* status = #active
* experimental = true
* date = "2020-03-10"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "CX"
* targetUri = "Identifier"
* group.element[0].code = #CX.1
* group.element[0].display = "ID Number"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #Identifier.value
* group.element[0].target.display = "Identifier.value"
* group.element[1].code = #CX.5
* group.element[1].display = "Identifier Type Code"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #Identifier.type.coding.code
* group.element[1].target.display = "Identifier.type.coding.code"
* group.element[2].code = #CX.7
* group.element[2].display = "Effective Date"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #Identifier.period.start
* group.element[2].target.display = "Identifier.period.start"
* group.element[3].code = #CX.8
* group.element[3].display = "Expiration Date"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #Identifier.period.end
* group.element[3].target.display = "Identifier.period.end"
