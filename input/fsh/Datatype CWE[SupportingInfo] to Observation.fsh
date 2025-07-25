// HL7 Data Type - FHIR R4_ CWE[Observation-SupportingInfo] - Sheet1.csv
Instance: DatatypeCWESupportingInfoToObservation
InstanceOf: ConceptMap
Title: "Datatype CWE [SupportingInfo] to Observation Map"
Usage: #definition
* title = "Datatype CWE [SupportingInfo] to Observation Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Datatype CWE to the FHIR Observation Resource."
* id = "datatype-cwe-supportinginfo-to-observation"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/datatype-cwe-supportinginfo-to-observation"
* name = "DatatypeCWESupportingInfoToObservation"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Datatype CWE[SupportingInfo] to Observation.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1vSwxT_mkiwYr4ueODQhxrOM7Q79Y14SXcF3oHejKmE4/edit#gid=0"
* group[0].element[0].code = #CWE
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #code
* group[0].element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].target.extension[0].extension[0].url = "type"
* group[0].element[0].target.extension[0].extension[0].valueCode = #"CodeableConcept"
* group[0].element[0].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[0].target.extension[0].extension[1].valueInteger = 1
* group[0].element[0].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[0].target.extension[0].extension[2].valueInteger = 1
* group[0].element[0].target.extension[0].extension[3].url = "assignment"
* group[0].element[0].target.extension[0].extension[3].valueString = "/to be determined by implementer based on use of OBR-13/"
* group[0].element[0].target.display = "code"
* group[0].element[1].code = #CWE
* group[0].element[1].target.equivalence = #equivalent
* group[0].element[1].target.code = #status
* group[0].element[1].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[1].target.extension[0].extension[0].url = "type"
* group[0].element[1].target.extension[0].extension[0].valueCode = #"code"
* group[0].element[1].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[1].target.extension[0].extension[1].valueInteger = 1
* group[0].element[1].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[1].target.extension[0].extension[2].valueInteger = 1
* group[0].element[1].target.extension[0].extension[3].url = "assignment"
* group[0].element[1].target.extension[0].extension[3].valueString = "\"final\""
* group[0].element[1].target.display = "status"
* group[0].element[2].code = #CWE.1
* group[0].element[2].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[2].extension[0].extension[0].url = "type"
* group[0].element[2].extension[0].extension[0].valueCode = #"ST"
* group[0].element[2].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[2].extension[0].extension[1].valueInteger = 0
* group[0].element[2].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[2].extension[0].extension[2].valueInteger = 1
* group[0].element[2].display = "Identifier"
* group[0].element[2].target.equivalence = #equivalent
* group[0].element[2].target.code = #value.CodeableConcept.coding[1].code
* group[0].element[2].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[2].target.extension[0].extension[0].url = "type"
* group[0].element[2].target.extension[0].extension[0].valueCode = #"code"
* group[0].element[2].target.display = "value.CodeableConcept.coding[1].code"
* group[0].element[3].code = #CWE.2
* group[0].element[3].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[3].extension[0].extension[0].url = "type"
* group[0].element[3].extension[0].extension[0].valueCode = #"ST"
* group[0].element[3].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[3].extension[0].extension[1].valueInteger = 0
* group[0].element[3].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[3].extension[0].extension[2].valueInteger = 1
* group[0].element[3].display = "Text"
* group[0].element[3].target.equivalence = #equivalent
* group[0].element[3].target.code = #value.CodeableConcept.coding[1].display
* group[0].element[3].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[3].target.extension[0].extension[0].url = "type"
* group[0].element[3].target.extension[0].extension[0].valueCode = #"string"
* group[0].element[3].target.display = "value.CodeableConcept.coding[1].display"
* group[0].element[4].code = #CWE.3
* group[0].element[4].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[4].extension[0].extension[0].url = "type"
* group[0].element[4].extension[0].extension[0].valueCode = #"ID"
* group[0].element[4].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[4].extension[0].extension[1].valueInteger = 0
* group[0].element[4].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[4].extension[0].extension[2].valueInteger = 1
* group[0].element[4].display = "Name of Coding System"
* group[0].element[4].target.equivalence = #equivalent
* group[0].element[4].target.code = #value.CodeableConcept.coding[1].system
* group[0].element[4].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[4].target.extension[0].extension[0].url = "type"
* group[0].element[4].target.extension[0].extension[0].valueCode = #"uri"
* group[0].element[4].target.display = "value.CodeableConcept.coding[1].system"
* group[0].element[5].code = #CWE.4
* group[0].element[5].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[5].extension[0].extension[0].url = "type"
* group[0].element[5].extension[0].extension[0].valueCode = #"ST"
* group[0].element[5].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[5].extension[0].extension[1].valueInteger = 0
* group[0].element[5].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[5].extension[0].extension[2].valueInteger = 1
* group[0].element[5].display = "Alternate Identifier"
* group[0].element[5].target.equivalence = #equivalent
* group[0].element[5].target.code = #value.CodeableConcept.coding[2].code
* group[0].element[5].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[5].target.extension[0].extension[0].url = "type"
* group[0].element[5].target.extension[0].extension[0].valueCode = #"code"
* group[0].element[5].target.display = "value.CodeableConcept.coding[2].code"
* group[0].element[6].code = #CWE.5
* group[0].element[6].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[6].extension[0].extension[0].url = "type"
* group[0].element[6].extension[0].extension[0].valueCode = #"ST"
* group[0].element[6].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[6].extension[0].extension[1].valueInteger = 0
* group[0].element[6].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[6].extension[0].extension[2].valueInteger = 1
* group[0].element[6].display = "Alternate Text"
* group[0].element[6].target.equivalence = #equivalent
* group[0].element[6].target.code = #value.CodeableConcept.coding[2].display
* group[0].element[6].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[6].target.extension[0].extension[0].url = "type"
* group[0].element[6].target.extension[0].extension[0].valueCode = #"string"
* group[0].element[6].target.display = "value.CodeableConcept.coding[2].display"
* group[0].element[7].code = #CWE.6
* group[0].element[7].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[7].extension[0].extension[0].url = "type"
* group[0].element[7].extension[0].extension[0].valueCode = #"ID"
* group[0].element[7].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[7].extension[0].extension[1].valueInteger = 0
* group[0].element[7].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[7].extension[0].extension[2].valueInteger = 1
* group[0].element[7].display = "Name of Alternate Coding System"
* group[0].element[7].target.equivalence = #equivalent
* group[0].element[7].target.code = #value.CodeableConcept.coding[2].system
* group[0].element[7].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[7].target.extension[0].extension[0].url = "type"
* group[0].element[7].target.extension[0].extension[0].valueCode = #"uri"
* group[0].element[7].target.display = "value.CodeableConcept.coding[2].system"
* group[0].element[8].code = #CWE.10
* group[0].element[8].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[8].extension[0].extension[0].url = "type"
* group[0].element[8].extension[0].extension[0].valueCode = #"ST"
* group[0].element[8].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[8].extension[0].extension[1].valueInteger = 0
* group[0].element[8].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[8].extension[0].extension[2].valueInteger = 1
* group[0].element[8].display = "Second Alternate Identifier"
* group[0].element[8].target.equivalence = #equivalent
* group[0].element[8].target.code = #value.CodeableConcept.coding[3].code
* group[0].element[8].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[8].target.extension[0].extension[0].url = "type"
* group[0].element[8].target.extension[0].extension[0].valueCode = #"code"
* group[0].element[8].target.display = "value.CodeableConcept.coding[3].code"
* group[0].element[9].code = #CWE.11
* group[0].element[9].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[9].extension[0].extension[0].url = "type"
* group[0].element[9].extension[0].extension[0].valueCode = #"ST"
* group[0].element[9].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[9].extension[0].extension[1].valueInteger = 0
* group[0].element[9].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[9].extension[0].extension[2].valueInteger = 1
* group[0].element[9].display = "Second Alternate Text"
* group[0].element[9].target.equivalence = #equivalent
* group[0].element[9].target.code = #value.CodeableConcept.coding[3].display
* group[0].element[9].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[9].target.extension[0].extension[0].url = "type"
* group[0].element[9].target.extension[0].extension[0].valueCode = #"string"
* group[0].element[9].target.display = "value.CodeableConcept.coding[3].display"
* group[0].element[10].code = #CWE.13
* group[0].element[10].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[10].extension[0].extension[0].url = "type"
* group[0].element[10].extension[0].extension[0].valueCode = #"ST"
* group[0].element[10].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[10].extension[0].extension[1].valueInteger = 0
* group[0].element[10].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[10].extension[0].extension[2].valueInteger = 1
* group[0].element[10].display = "Second Alternate Coding System Version ID"
* group[0].element[10].target.equivalence = #equivalent
* group[0].element[10].target.code = #value.CodeableConcept.coding[3].system
* group[0].element[10].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[10].target.extension[0].extension[0].url = "type"
* group[0].element[10].target.extension[0].extension[0].valueCode = #"uri"
* group[0].element[10].target.display = "value.CodeableConcept.coding[3].system"
