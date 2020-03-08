Instance: DatatypeCWEtoCoding
InstanceOf: ConceptMap
Title: "Datatype CWE to Coding Map"
* description = "This ConceptMap represents the mapping from the HL7 V2 null to the FHIR null."
* id = "datatype-cwe-to-coding"
* url = "http://hl7.org/fhir/v2-tofhir/datatype-cwe-to-coding"
* version = "1.0"
* name = "Datatype_CWE_Map"
* status = #active
* experimental = true
* date = "2020-03-08"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "CWE"
* targetUri = "Coding"
* group.element[0].code = #CWE.1
* group.element[0].display = "Identifier"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #Coding.code
* group.element[0].target.display = "Coding.code"
* group.element[1].code = #CWE.2
* group.element[1].display = "Text"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #Coding.display
* group.element[1].target.display = "Coding.display"
* group.element[2].code = #CWE.3
* group.element[2].display = "Name of Coding System"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #Coding.system
* group.element[2].target.display = "Coding.system"
* group.element[3].code = #CWE.7
* group.element[3].display = "Coding System Version ID"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #Coding.version
* group.element[3].target.display = "Coding.version"
