// HL7 Data Type - FHIR R4_ CWE[Observation-SupportingInfo] - Sheet1.csv
Instance: DatatypeCWESupportingInfoToObservation
InstanceOf: ConceptMap
Title: "Datatype CWE to Observation Map"
* title = "Datatype CWE to Observation Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Datatype CWE to the FHIR Observation Resource."
* id = "datatype-cwe-supportinginfo-to-observation"
* url = "http://hl7.org/fhir/uv/v2mappings/datatype-cwe-supportinginfo-to-observation"
* version = "1.0"
* name = "DatatypeCWESupportingInfoToObservation"
* status = #active
* experimental = true
* date = "2024-12-26"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "CWE"
* targetUri = "Observation"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Datatype CWE[SupportingInfo] to Observation.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1vSwxT_mkiwYr4ueODQhxrOM7Q79Y14SXcF3oHejKmE4/edit#gid=0"
* group.element[0].code = #CWE
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #code
* group.element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].target.extension[0].extension[0].url = "type"
* group.element[0].target.extension[0].extension[0].valueCode = #"CodeableConcept"
* group.element[0].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[0].target.extension[0].extension[1].valueInteger = 1
* group.element[0].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[0].target.extension[0].extension[2].valueInteger = 1
* group.element[0].target.display = "code"
* group.element[1].code = #CWE
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #status
* group.element[1].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[1].target.extension[0].extension[0].url = "type"
* group.element[1].target.extension[0].extension[0].valueCode = #"code"
* group.element[1].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[1].target.extension[0].extension[1].valueInteger = 1
* group.element[1].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[1].target.extension[0].extension[2].valueInteger = 1
* group.element[1].target.display = "status"
* group.element[2].code = #CWE.1
* group.element[2].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[2].extension[0].extension[0].url = "type"
* group.element[2].extension[0].extension[0].valueCode = #"ST"
* group.element[2].extension[0].extension[1].url = "cardinalityMin"
* group.element[2].extension[0].extension[1].valueInteger = 0
* group.element[2].extension[0].extension[2].url = "cardinalityMax"
* group.element[2].extension[0].extension[2].valueInteger = 1
* group.element[2].display = "Identifier"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #value.CodeableConcept.coding[1].code
* group.element[2].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[2].target.extension[0].extension[0].url = "type"
* group.element[2].target.extension[0].extension[0].valueCode = #"code"
* group.element[2].target.display = "value.CodeableConcept.coding[1].code"
* group.element[3].code = #CWE.2
* group.element[3].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[3].extension[0].extension[0].url = "type"
* group.element[3].extension[0].extension[0].valueCode = #"ST"
* group.element[3].extension[0].extension[1].url = "cardinalityMin"
* group.element[3].extension[0].extension[1].valueInteger = 0
* group.element[3].extension[0].extension[2].url = "cardinalityMax"
* group.element[3].extension[0].extension[2].valueInteger = 1
* group.element[3].display = "Text"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #value.CodeableConcept.coding[1].display
* group.element[3].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[3].target.extension[0].extension[0].url = "type"
* group.element[3].target.extension[0].extension[0].valueCode = #"string"
* group.element[3].target.display = "value.CodeableConcept.coding[1].display"
* group.element[4].code = #CWE.3
* group.element[4].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[4].extension[0].extension[0].url = "type"
* group.element[4].extension[0].extension[0].valueCode = #"ID"
* group.element[4].extension[0].extension[1].url = "cardinalityMin"
* group.element[4].extension[0].extension[1].valueInteger = 0
* group.element[4].extension[0].extension[2].url = "cardinalityMax"
* group.element[4].extension[0].extension[2].valueInteger = 1
* group.element[4].display = "Name of Coding System"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #value.CodeableConcept.coding[1].system
* group.element[4].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[4].target.extension[0].extension[0].url = "type"
* group.element[4].target.extension[0].extension[0].valueCode = #"uri"
* group.element[4].target.display = "value.CodeableConcept.coding[1].system"
* group.element[5].code = #CWE.4
* group.element[5].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[5].extension[0].extension[0].url = "type"
* group.element[5].extension[0].extension[0].valueCode = #"ST"
* group.element[5].extension[0].extension[1].url = "cardinalityMin"
* group.element[5].extension[0].extension[1].valueInteger = 0
* group.element[5].extension[0].extension[2].url = "cardinalityMax"
* group.element[5].extension[0].extension[2].valueInteger = 1
* group.element[5].display = "Alternate Identifier"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #value.CodeableConcept.coding[2].code
* group.element[5].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[5].target.extension[0].extension[0].url = "type"
* group.element[5].target.extension[0].extension[0].valueCode = #"code"
* group.element[5].target.display = "value.CodeableConcept.coding[2].code"
* group.element[6].code = #CWE.5
* group.element[6].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[6].extension[0].extension[0].url = "type"
* group.element[6].extension[0].extension[0].valueCode = #"ST"
* group.element[6].extension[0].extension[1].url = "cardinalityMin"
* group.element[6].extension[0].extension[1].valueInteger = 0
* group.element[6].extension[0].extension[2].url = "cardinalityMax"
* group.element[6].extension[0].extension[2].valueInteger = 1
* group.element[6].display = "Alternate Text"
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #value.CodeableConcept.coding[2].display
* group.element[6].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[6].target.extension[0].extension[0].url = "type"
* group.element[6].target.extension[0].extension[0].valueCode = #"string"
* group.element[6].target.display = "value.CodeableConcept.coding[2].display"
* group.element[7].code = #CWE.6
* group.element[7].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[7].extension[0].extension[0].url = "type"
* group.element[7].extension[0].extension[0].valueCode = #"ID"
* group.element[7].extension[0].extension[1].url = "cardinalityMin"
* group.element[7].extension[0].extension[1].valueInteger = 0
* group.element[7].extension[0].extension[2].url = "cardinalityMax"
* group.element[7].extension[0].extension[2].valueInteger = 1
* group.element[7].display = "Name of Alternate Coding System"
* group.element[7].target.equivalence = #equivalent
* group.element[7].target.code = #value.CodeableConcept.coding[2].system
* group.element[7].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[7].target.extension[0].extension[0].url = "type"
* group.element[7].target.extension[0].extension[0].valueCode = #"uri"
* group.element[7].target.display = "value.CodeableConcept.coding[2].system"
* group.element[8].code = #CWE.10
* group.element[8].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[8].extension[0].extension[0].url = "type"
* group.element[8].extension[0].extension[0].valueCode = #"ST"
* group.element[8].extension[0].extension[1].url = "cardinalityMin"
* group.element[8].extension[0].extension[1].valueInteger = 0
* group.element[8].extension[0].extension[2].url = "cardinalityMax"
* group.element[8].extension[0].extension[2].valueInteger = 1
* group.element[8].display = "Second Alternate Identifier"
* group.element[8].target.equivalence = #equivalent
* group.element[8].target.code = #value.CodeableConcept.coding[3].code
* group.element[8].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[8].target.extension[0].extension[0].url = "type"
* group.element[8].target.extension[0].extension[0].valueCode = #"code"
* group.element[8].target.display = "value.CodeableConcept.coding[3].code"
* group.element[9].code = #CWE.11
* group.element[9].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[9].extension[0].extension[0].url = "type"
* group.element[9].extension[0].extension[0].valueCode = #"ST"
* group.element[9].extension[0].extension[1].url = "cardinalityMin"
* group.element[9].extension[0].extension[1].valueInteger = 0
* group.element[9].extension[0].extension[2].url = "cardinalityMax"
* group.element[9].extension[0].extension[2].valueInteger = 1
* group.element[9].display = "Second Alternate Text"
* group.element[9].target.equivalence = #equivalent
* group.element[9].target.code = #value.CodeableConcept.coding[3].display
* group.element[9].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[9].target.extension[0].extension[0].url = "type"
* group.element[9].target.extension[0].extension[0].valueCode = #"string"
* group.element[9].target.display = "value.CodeableConcept.coding[3].display"
* group.element[10].code = #CWE.13
* group.element[10].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[10].extension[0].extension[0].url = "type"
* group.element[10].extension[0].extension[0].valueCode = #"ST"
* group.element[10].extension[0].extension[1].url = "cardinalityMin"
* group.element[10].extension[0].extension[1].valueInteger = 0
* group.element[10].extension[0].extension[2].url = "cardinalityMax"
* group.element[10].extension[0].extension[2].valueInteger = 1
* group.element[10].display = "Second Alternate Coding System Version ID"
* group.element[10].target.equivalence = #equivalent
* group.element[10].target.code = #value.CodeableConcept.coding[3].system
* group.element[10].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[10].target.extension[0].extension[0].url = "type"
* group.element[10].target.extension[0].extension[0].valueCode = #"uri"
* group.element[10].target.display = "value.CodeableConcept.coding[3].system"
