// HL7 Data Type - FHIR E2_ ST[Extension-Subidentifier] - Sheet1.csv
Instance: DatatypeSTSubidentifierToExtension
InstanceOf: ConceptMap
Title: "Datatype ST [Subidentifier] to Extension Map"
Usage: #definition
* title = "Datatype ST [Subidentifier] to Extension Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Datatype ST to the FHIR Extension Data Type."
* id = "datatype-st-subidentifier-to-extension"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/datatype-st-subidentifier-to-extension"
* name = "DatatypeSTSubidentifierToExtension"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Datatype ST[Subidentifier] to Extension.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1fSc-gM42VPvMCEmwIXS_IFVdwMF5qxVxCoNRnDxdik0/edit?gid=0#gid=0"
* group[0].element[0].code = #ST.1
* group[0].element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].extension[0].extension[0].url = "type"
* group[0].element[0].extension[0].extension[0].valueCode = #"ST"
* group[0].element[0].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[0].extension[0].extension[1].valueInteger = 0
* group[0].element[0].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[0].extension[0].extension[2].valueInteger = 1
* group[0].element[0].display = "Parent Observation Sub-identifier"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #extension[1]:orginal-sub-identiier.valueString
* group[0].element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].target.extension[0].extension[0].url = "type"
* group[0].element[0].target.extension[0].extension[0].valueCode = #"string"
* group[0].element[0].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[0].target.extension[0].extension[1].valueInteger = 1
* group[0].element[0].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[0].target.extension[0].extension[2].valueInteger = 1
* group[0].element[0].target.display = "extension[1]:orginal-sub-identiier.valueString"
