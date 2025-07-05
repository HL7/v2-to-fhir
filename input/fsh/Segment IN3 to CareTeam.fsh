// HL7 Segment - FHIR R4_ IN3[CareTeam] - Sheet1.csv
Instance: SegmentIN3ToCareTeam
InstanceOf: ConceptMap
Title: "Segment IN3 to CareTeam Map"
Usage: #definition
* title = "Segment IN3 to CareTeam Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Segment IN3 to the FHIR CareTeam Resource."
* id = "segment-in3-to-careteam"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/segment-in3-to-careteam"
* name = "SegmentIN3ToCareTeam"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Segment IN3 to CareTeam.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1kWvcYxTaofNaqq5k5qjsqBEQRsjGGKiwAyCoTc8ADhY/edit#gid=0"
* group[0].element[0].code = #IN3-21
* group[0].element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].extension[0].extension[0].url = "type"
* group[0].element[0].extension[0].extension[0].valueCode = #"ST"
* group[0].element[0].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[0].extension[0].extension[1].valueInteger = 1
* group[0].element[0].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[0].extension[0].extension[2].valueInteger = 1
* group[0].element[0].display = "Case Manager"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #participant.role.coding.value
* group[0].element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].target.extension[0].extension[0].url = "type"
* group[0].element[0].target.extension[0].extension[0].valueCode = #"string"
* group[0].element[0].target.extension[0].extension[1].url = "assignment"
* group[0].element[0].target.extension[0].extension[1].valueString = "\"768832004\""
* group[0].element[0].target.display = "participant.role.coding.value"
* group[0].element[1].code = #IN3-21
* group[0].element[1].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[1].extension[0].extension[0].url = "type"
* group[0].element[1].extension[0].extension[0].valueCode = #"ST"
* group[0].element[1].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[1].extension[0].extension[1].valueInteger = 1
* group[0].element[1].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[1].extension[0].extension[2].valueInteger = 1
* group[0].element[1].display = "Case Manager"
* group[0].element[1].target.equivalence = #equivalent
* group[0].element[1].target.code = #participant.role.coding.system
* group[0].element[1].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[1].target.extension[0].extension[0].url = "type"
* group[0].element[1].target.extension[0].extension[0].valueCode = #"uri"
* group[0].element[1].target.extension[0].extension[1].url = "assignment"
* group[0].element[1].target.extension[0].extension[1].valueString = "\"http://snomed.info/sct\""
* group[0].element[1].target.display = "participant.role.coding.system"
* group[0].element[2].code = #IN3-21
* group[0].element[2].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[2].extension[0].extension[0].url = "type"
* group[0].element[2].extension[0].extension[0].valueCode = #"ST"
* group[0].element[2].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[2].extension[0].extension[1].valueInteger = 1
* group[0].element[2].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[2].extension[0].extension[2].valueInteger = 1
* group[0].element[2].display = "Case Manager"
* group[0].element[2].target.equivalence = #equivalent
* group[0].element[2].target.code = #participant.role.text
* group[0].element[2].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[2].target.extension[0].extension[0].url = "assignment"
* group[0].element[2].target.extension[0].extension[0].valueString = "\"case manager\""
* group[0].element[2].target.display = "participant.role.text"
