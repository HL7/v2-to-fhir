// HL7 Data Type - FHIR R4_ TQ[Task-ExecutionPeriod] - Sheet1.csv
Instance: DatatypeTQExecutionPeriodToTask
InstanceOf: ConceptMap
Title: "Datatype TQ [ExecutionPeriod] to Task Map"
Usage: #definition
* title = "Datatype TQ [ExecutionPeriod] to Task Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Datatype TQ to the FHIR Task Resource."
* id = "datatype-tq-executionperiod-to-task"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/datatype-tq-executionperiod-to-task"
* name = "DatatypeTQExecutionPeriodToTask"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Datatype TQ[ExecutionPeriod] to Task.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1f4PcY0fzBbcg7ewW67TpNGPKDZHMtA8AKRHuRVLrzqc/edit#gid=0"
* group[0].element[0].code = #TQ.4
* group[0].element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].extension[0].extension[0].url = "type"
* group[0].element[0].extension[0].extension[0].valueCode = #"TS"
* group[0].element[0].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[0].extension[0].extension[1].valueInteger = 0
* group[0].element[0].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[0].extension[0].extension[2].valueInteger = 1
* group[0].element[0].display = "Start Date/Time"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #executionPeriod.start
* group[0].element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].target.extension[0].extension[0].url = "type"
* group[0].element[0].target.extension[0].extension[0].valueCode = #"dateTime"
* group[0].element[0].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[0].target.extension[0].extension[1].valueInteger = 1
* group[0].element[0].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[0].target.extension[0].extension[2].valueInteger = 1
* group[0].element[0].target.display = "executionPeriod.start"
* group[0].element[1].code = #TQ.5
* group[0].element[1].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[1].extension[0].extension[0].url = "type"
* group[0].element[1].extension[0].extension[0].valueCode = #"TS"
* group[0].element[1].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[1].extension[0].extension[1].valueInteger = 0
* group[0].element[1].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[1].extension[0].extension[2].valueInteger = 1
* group[0].element[1].display = "End Date/Time"
* group[0].element[1].target.equivalence = #equivalent
* group[0].element[1].target.code = #executionPeriod.end
* group[0].element[1].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[1].target.extension[0].extension[0].url = "type"
* group[0].element[1].target.extension[0].extension[0].valueCode = #"dateTime"
* group[0].element[1].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[1].target.extension[0].extension[1].valueInteger = 1
* group[0].element[1].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[1].target.extension[0].extension[2].valueInteger = 1
* group[0].element[1].target.display = "executionPeriod.end"
