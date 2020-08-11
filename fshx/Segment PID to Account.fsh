// HL7 Segment - FHIR R4_ PID[Account] - Sheet1.csv
Instance: SegmentPIDtoAccount
InstanceOf: ConceptMap
Title: "Segment PID to Account Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Segment PID to the FHIR Account Resource."
* id = "segment-pid-to-account"
* url = "http://hl7.org/fhir/v2-tofhir/segment-pid-to-account"
* version = "1.0"
* name = "SegmentPIDtoAccount"
* status = #active
* experimental = true
* date = "2020-08-10"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "PID"
* targetUri = "Account"
* extension[0].url = "http://hl7.org/fhir/v2-tofhir/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Segment PID to Account.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1i1A5E-IkTnWarRsHoz-ii_0m2tYyhRjCe1TEodq18fA/edit#gid=0"
* group.element[0].code = #PID
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #subject.reference
* group.element[0].target.display = "subject.reference"
* group.element[0].target.dependsOn[0].property = "value"
* group.element[0].target.dependsOn[0].value = "Patient.id"
* group.element[1].code = #PID
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #status
* group.element[1].target.display = "status"
* group.element[1].target.dependsOn[0].property = "value"
* group.element[1].target.dependsOn[0].value = "\"active\""
* group.element[2].code = #PID-18
* group.element[2].extension[0].url = "http://hl7.org/fhir/v2-tofhir/StructureDefinition/TypeInfo"
* group.element[2].extension[0].extension[0].url = "type"
* group.element[2].extension[0].extension[0].valueCode = #"CX"
* group.element[2].extension[0].extension[1].url = "cardinalityMin"
* group.element[2].extension[0].extension[1].valueInteger = 1
* group.element[2].extension[0].extension[2].url = "cardinalityMax"
* group.element[2].extension[0].extension[2].valueInteger = 1
* group.element[2].display = "Patient Account Number"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #Account[1].identifier
* group.element[2].target.extension[0].url = "http://hl7.org/fhir/v2-tofhir/StructureDefinition/TypeInfo"
* group.element[2].target.extension[0].extension[0].url = "type"
* group.element[2].target.extension[0].extension[0].valueCode = #"Identifier"
* group.element[2].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[2].target.extension[0].extension[1].valueInteger = 0
* group.element[2].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[2].target.extension[0].extension[2].valueInteger = -1
* group.element[2].target.display = "Account[1].identifier"
* group.element[2].target.dependsOn[0].property = "data-type-map"
* group.element[2].target.dependsOn[0].value = "CX"
