Instance: DatatypeEItoProcedure
InstanceOf: ConceptMap
Title: "Datatype EI to Procedure Map"
* description = "This ConceptMap represents the mapping from the HL7 V2 null to the FHIR null."
* id = "datatype-eiprocedure-to-procedure"
* url = "http://hl7.org/fhir/v2-tofhir/datatype-eiprocedure-to-procedure"
* version = "1.0"
* name = "Datatype_EI_Map"
* status = #active
* experimental = true
* date = "2020-03-16"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "EI"
* targetUri = "Procedure"
* group.element[0].code = #EI.1
* group.element[0].display = "Entity Identifier"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #Procedure.partOf.reference.identifier
* group.element[0].target.display = "Procedure.partOf.reference.identifier"
