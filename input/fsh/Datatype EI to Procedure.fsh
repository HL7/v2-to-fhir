// HL7 Data Type - FHIR R4_ EI[Procedure] - Sheet1.csv
Instance: DatatypeEIToProcedure
InstanceOf: ConceptMap
Title: "Datatype EI to Procedure Map"
* title = "Datatype EI to Procedure Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Datatype EI to the FHIR Procedure Resource."
* id = "datatype-ei-to-procedure"
* url = "http://hl7.org/fhir/uv/v2mappings/datatype-ei-to-procedure"
* version = "1.0"
* name = "DatatypeEIToProcedure"
* status = #active
* experimental = true
* date = "2023-12-04"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "EI"
* targetUri = "Procedure"
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
