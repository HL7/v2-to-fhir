// HL7 Data Type - FHIR R4_ IS[CodeableConcept] - Sheet1.csv
Instance: DatatypeISToCodeableConcept
InstanceOf: ConceptMap
Title: "Datatype IS to CodeableConcept Map"
* title = "Datatype IS to CodeableConcept Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Datatype IS to the FHIR CodeableConcept Data Type."
* id = "datatype-is-to-codeableconcept"
* url = "http://hl7.org/fhir/uv/v2mappings/datatype-is-to-codeableconcept"
* version = "1.0"
* name = "DatatypeISToCodeableConcept"
* status = #active
* experimental = true
* date = "2024-12-06"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "IS"
* targetUri = "CodeableConcept"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Datatype IS to CodeableConcept.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1fBH2ZjXa4pzEl8am0-MuY8NOibIh7nn2TkwimzilGaU/edit#gid=0"
* group.element[0].code = #IS.1
* group.element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].extension[0].extension[0].url = "type"
* group.element[0].extension[0].extension[0].valueCode = #"ST"
* group.element[0].extension[0].extension[1].url = "cardinalityMin"
* group.element[0].extension[0].extension[1].valueInteger = 0
* group.element[0].extension[0].extension[2].url = "cardinalityMax"
* group.element[0].extension[0].extension[2].valueInteger = 1
* group.element[0].display = "Identifier"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #coding.code
* group.element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].target.extension[0].extension[0].url = "type"
* group.element[0].target.extension[0].extension[0].valueCode = #"code"
* group.element[0].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[0].target.extension[0].extension[1].valueInteger = 1
* group.element[0].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[0].target.extension[0].extension[2].valueInteger = 1
* group.element[0].target.display = "coding.code"
