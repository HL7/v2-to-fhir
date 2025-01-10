// HL7 Segment - FHIR R4_ PID[Account] - Sheet1.csv
Instance: SegmentPIDToAccount
InstanceOf: ConceptMap
Title: "Segment PID to Account Map"
Usage: #definition
* title = "Segment PID to Account Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Segment PID to the FHIR Account Resource."
* id = "segment-pid-to-account"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/segment-pid-to-account"
* name = "SegmentPIDToAccount"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Segment PID to Account.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1i1A5E-IkTnWarRsHoz-ii_0m2tYyhRjCe1TEodq18fA/edit#gid=0"
* group.element[0].code = #PID
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #status
* group.element[0].target.display = "status"
* group.element[1].code = #PID-18
* group.element[1].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[1].extension[0].extension[0].url = "type"
* group.element[1].extension[0].extension[0].valueCode = #"CX"
* group.element[1].extension[0].extension[1].url = "cardinalityMin"
* group.element[1].extension[0].extension[1].valueInteger = 1
* group.element[1].extension[0].extension[2].url = "cardinalityMax"
* group.element[1].extension[0].extension[2].valueInteger = 1
* group.element[1].display = "Patient Account Number"
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
