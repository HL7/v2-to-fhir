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
* group[0].element[0].code = #MSH-9
* group[0].element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].extension[0].extension[0].url = "type"
* group[0].element[0].extension[0].extension[0].valueCode = #"MSG"
* group[0].element[0].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[0].extension[0].extension[1].valueInteger = 1
* group[0].element[0].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[0].extension[0].extension[2].valueInteger = 1
* group[0].element[0].display = "Message Type"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #status
* group[0].element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].target.extension[0].extension[0].url = "type"
* group[0].element[0].target.extension[0].extension[0].valueCode = #"code"
* group[0].element[0].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[0].target.extension[0].extension[1].valueInteger = 1
* group[0].element[0].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[0].target.extension[0].extension[2].valueInteger = 1
* group[0].element[0].target.extension[0].extension[3].url = "mappedVia"
* group[0].element[0].target.extension[0].extension[3].valueUrl = "ConceptMap/table-hl70003-to-encounter-status"
* group[0].element[0].target.display = "status"
