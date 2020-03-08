Instance: DatatypeDRtoPeriod
InstanceOf: ConceptMap
Title: "Datatype DR to Period Map"
* description = "This ConceptMap represents the mapping from the HL7 V2 null to the FHIR null."
* id = "datatype-dr-to-period"
* url = "http://hl7.org/fhir/v2-tofhir/datatype-dr-to-period"
* version = "1.0"
* name = "Datatype_DR_Map"
* status = #active
* experimental = true
* date = "2020-03-08"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "DR"
* targetUri = "Period"
* group.element[0].code = #DR.1
* group.element[0].display = "Range Start Date/Time"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #Period.start
* group.element[0].target.display = "Period.start"
* group.element[1].code = #DR.2
* group.element[1].display = "Range End Date/Time"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #Period.end
* group.element[1].target.display = "Period.end"
