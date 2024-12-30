// HL7 Segment - FHIR R4_ MRG[Account] - Sheet1.csv
Instance: SegmentMRGToAccount
InstanceOf: ConceptMap
Title: "Segment MRG to Account Map"
* title = "Segment MRG to Account Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Segment MRG to the FHIR Account Resource."
* id = "segment-mrg-to-account"
* url = "http://hl7.org/fhir/uv/v2mappings/segment-mrg-to-account"
* version = "1.0"
* name = "SegmentMRGToAccount"
* status = #active
* experimental = true
* date = "2024-12-29"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "MRG"
* targetUri = "Account"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Segment MRG to Account.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1WY6xTT0gdBZqqlwz59QcRpyE9MFUKzWoHm7lG84VABg/edit#gid=0"
* group.element[0].code = #MRG
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #status
* group.element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].target.extension[0].extension[0].url = "type"
* group.element[0].target.extension[0].extension[0].valueCode = #"code"
* group.element[0].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[0].target.extension[0].extension[1].valueInteger = 1
* group.element[0].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[0].target.extension[0].extension[2].valueInteger = 1
* group.element[0].target.display = "status"
* group.element[0].target.comment = "The MRG segment does not include a status.  Since the prior account may still be active or already inactive, the implementer may have better awareness of which status to use."
* group.element[1].code = #MRG-3
* group.element[1].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[1].extension[0].extension[0].url = "type"
* group.element[1].extension[0].extension[0].valueCode = #"CX"
* group.element[1].extension[0].extension[1].url = "cardinalityMin"
* group.element[1].extension[0].extension[1].valueInteger = 1
* group.element[1].extension[0].extension[2].url = "cardinalityMax"
* group.element[1].extension[0].extension[2].valueInteger = 1
* group.element[1].display = "Prior Patient Account Number"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #identifier
* group.element[1].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[1].target.extension[0].extension[0].url = "type"
* group.element[1].target.extension[0].extension[0].valueCode = #"Identifier"
* group.element[1].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[1].target.extension[0].extension[1].valueInteger = 0
* group.element[1].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[1].target.extension[0].extension[2].valueInteger = -1
* group.element[1].target.display = "identifier"
