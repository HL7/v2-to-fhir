Instance: ConceptMapv2-0549toConsentRelationship
InstanceOf: ConceptMap
Title: "ConceptMap v2-0549 to Consent Relationship Map"
* description = "This ConceptMap represents the mapping from the HL7 V2 Table v2-0549 to the FHIR Consent Relationship Value Set."
* id = "conceptmap-v2-0549-to-consent-relationship"
* url = "http://hl7.org/fhir/v2-tofhir"
* version = "1.0"
* name = "ConceptMap_v2-0549_Map"
* status = #active
* experimental = true
* date = "2020-03-01"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "http://terminology.hl7.org/CodeSystem/v2-0549"
* targetUri = "http://terminology.hl7.org/CodeSystem/v3-RoleCode"
* group.element[0].code = #2
* group.element[0].display = "Parent"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #PRN
* group.element[0].target.display = "Parent"
* group.element[1].code = #3
* group.element[1].display = "Next of Kin"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #N
* group.element[1].target.display = "Next-of-Kin"
* group.element[2].code = #4
* group.element[2].display = "Durable Power of Attorney in Healthcare Affairs"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #O
* group.element[2].target.display = "Other"
* group.element[3].code = #5
* group.element[3].display = "Conservator"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #O
* group.element[3].target.display = "Other"
