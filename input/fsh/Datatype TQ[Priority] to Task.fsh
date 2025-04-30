// HL7 Data Type - FHIR R4_ TQ[Task-Priority] - Sheet1.csv
Instance: DatatypeTQPriorityToTask
InstanceOf: ConceptMap
Title: "Datatype TQ [Priority] to Task Map"
Usage: #definition
* title = "Datatype TQ [Priority] to Task Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Datatype TQ to the FHIR Task Resource."
* id = "datatype-tq-priority-to-task"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/datatype-tq-priority-to-task"
* name = "DatatypeTQPriorityToTask"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Datatype TQ[Priority] to Task.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1B_WY_ONY5EEt1t9X-1VZtWokiOOYTL2sgnXy7k8i9Js/edit#gid=0"
* group.element[0].code = #TQ.6
* group.element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].extension[0].extension[0].url = "type"
* group.element[0].extension[0].extension[0].valueCode = #"ST"
* group.element[0].extension[0].extension[1].url = "cardinalityMin"
* group.element[0].extension[0].extension[1].valueInteger = 0
* group.element[0].extension[0].extension[2].url = "cardinalityMax"
* group.element[0].extension[0].extension[2].valueInteger = 1
* group.element[0].display = "Priority"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #priority
* group.element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].target.extension[0].extension[0].url = "type"
* group.element[0].target.extension[0].extension[0].valueCode = #"code"
* group.element[0].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[0].target.extension[0].extension[1].valueInteger = 1
* group.element[0].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[0].target.extension[0].extension[2].valueInteger = 1
* group.element[0].target.extension[0].extension[3].url = "mappedVia"
* group.element[0].target.extension[0].extension[3].valueUrl = "ConceptMap/table-hl70485-to-request-priority"
* group.element[0].target.display = "priority"
* group.element[0].target.comment = "A translation from the text priority in the v2 message to a coded value in the request-priority value set will be required."
