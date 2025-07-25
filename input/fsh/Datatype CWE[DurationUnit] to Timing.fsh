// HL7 Data Type - FHIR R4_ CWE[Timing-DurationUnit] - Sheet1.csv
Instance: DatatypeCWEDurationUnitToTiming
InstanceOf: ConceptMap
Title: "Datatype CWE [DurationUnit] to Timing Map"
Usage: #definition
* title = "Datatype CWE [DurationUnit] to Timing Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Datatype CWE to the FHIR Timing Data Type."
* id = "datatype-cwe-durationunit-to-timing"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/datatype-cwe-durationunit-to-timing"
* name = "DatatypeCWEDurationUnitToTiming"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Datatype CWE[DurationUnit] to Timing.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1peXd1bfzbP54t4Ns267PTNjDR1wX1HqF28C6o5P_-LY/edit#gid=0"
* group[0].element[0].code = #CWE.1
* group[0].element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].extension[0].extension[0].url = "type"
* group[0].element[0].extension[0].extension[0].valueCode = #"ST"
* group[0].element[0].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[0].extension[0].extension[1].valueInteger = 0
* group[0].element[0].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[0].extension[0].extension[2].valueInteger = 1
* group[0].element[0].display = "Identifier"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #repeat.durationUnit
* group[0].element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].target.extension[0].extension[0].url = "type"
* group[0].element[0].target.extension[0].extension[0].valueCode = #"code"
* group[0].element[0].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[0].target.extension[0].extension[1].valueInteger = 1
* group[0].element[0].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[0].target.extension[0].extension[2].valueInteger = 1
* group[0].element[0].target.extension[0].extension[3].url = "mappedVia"
* group[0].element[0].target.extension[0].extension[3].valueUrl = "unspecified_mapping"
* group[0].element[0].target.display = "repeat.durationUnit"
* group[0].element[0].target.comment = "The durationUnit is limited to a required set of UCUM units"
