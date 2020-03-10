Instance: DatatypeIStoCodeableConcept
InstanceOf: ConceptMap
Title: "Datatype IS to CodeableConcept Map"
* description = "This ConceptMap represents the mapping from the HL7 V2 null to the FHIR null."
* id = "datatype-iscodeableconcept-to-codeableconcept"
* url = "http://hl7.org/fhir/v2-tofhir/datatype-iscodeableconcept-to-codeableconcept"
* version = "1.0"
* name = "Datatype_IS_Map"
* status = #active
* experimental = true
* date = "2020-03-10"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "IS"
* targetUri = "CodeableConcept"
* group.element[0].code = #IS.1
* group.element[0].display = "Identifier"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #CodeableConcept.coding[1].code
* group.element[0].target.display = "CodeableConcept.coding[1].code"
