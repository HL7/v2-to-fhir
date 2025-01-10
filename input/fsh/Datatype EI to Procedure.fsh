// HL7 Data Type - FHIR R4_ EI[Procedure] - Sheet1.csv
Instance: DatatypeEIToProcedure
InstanceOf: ConceptMap
Title: "Datatype EI to Procedure Map"
Usage: #definition
* title = "Datatype EI to Procedure Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Datatype EI to the FHIR Procedure Resource."
* id = "datatype-ei-to-procedure"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/datatype-ei-to-procedure"
* name = "DatatypeEIToProcedure"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Datatype EI to Procedure.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1F9EQJuromm8LqDjGALP2ueidGKmIHJQOQmg2SGZKG64/edit#gid=0"
* group.element[0].code = #EI.1
* group.element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].extension[0].extension[0].url = "type"
* group.element[0].extension[0].extension[0].valueCode = #"ST"
* group.element[0].extension[0].extension[1].url = "cardinalityMin"
* group.element[0].extension[0].extension[1].valueInteger = 0
* group.element[0].extension[0].extension[2].url = "cardinalityMax"
* group.element[0].extension[0].extension[2].valueInteger = 1
* group.element[0].display = "Entity Identifier"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #identifier.value
* group.element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].target.extension[0].extension[0].url = "cardinalityMin"
* group.element[0].target.extension[0].extension[0].valueInteger = -1
* group.element[0].target.extension[0].extension[1].url = "cardinalityMax"
* group.element[0].target.extension[0].extension[1].valueInteger = -1
* group.element[0].target.display = "identifier.value"
