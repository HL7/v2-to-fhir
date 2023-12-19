// HL7 Data Type - FHIR R4_ TQ[Task-Priority] - Sheet1.csv
Instance: DatatypeTQPriorityToTask
InstanceOf: ConceptMap
Title: "Datatype TQ[Priority] to Task Map"
* title = "Datatype TQ[Priority] to Task Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Datatype TQ to the FHIR Task Resource."
* id = "datatype-tq-priority-to-task"
* url = "http://hl7.org/fhir/uv/v2mappings/datatype-tq-priority-to-task"
* version = "1.0"
* name = "DatatypeTQPriorityToTask"
* status = #active
* experimental = true
* date = "2023-12-19"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "TQ"
* targetUri = "Task"
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
* group.element[0].target.display = "priority"
* group.element[0].target.dependsOn[0].property = "vocabulary-map"
* group.element[0].target.dependsOn[0].value = "Priority"
