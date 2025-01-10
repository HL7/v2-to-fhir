// HL7 Segment - FHIR R4_ MSH[Encounter] - Sheet1.csv
Instance: SegmentMSHToEncounter
InstanceOf: ConceptMap
Title: "Segment MSH to Encounter Map"
Usage: #definition
* title = "Segment MSH to Encounter Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Segment MSH to the FHIR Encounter Resource."
* id = "segment-msh-to-encounter"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/segment-msh-to-encounter"
* name = "SegmentMSHToEncounter"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Segment MSH to Encounter.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1fXNLyF4mpBOtnmC2Y3ZvuBPf9UwL3pXWsH9mPADqn4g/edit#gid=0"
* group.element[0].code = #MSH-9
* group.element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].extension[0].extension[0].url = "type"
* group.element[0].extension[0].extension[0].valueCode = #"MSG"
* group.element[0].extension[0].extension[1].url = "cardinalityMin"
* group.element[0].extension[0].extension[1].valueInteger = 1
* group.element[0].extension[0].extension[2].url = "cardinalityMax"
* group.element[0].extension[0].extension[2].valueInteger = 1
* group.element[0].display = "Message Type"
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
