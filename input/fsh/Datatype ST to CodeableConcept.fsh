// HL7 Data Type - FHIR R4_ ST[CodeableConcept] - Sheet1.csv
Instance: DatatypeSTToCodeableConcept
InstanceOf: ConceptMap
Title: "Datatype ST to CodeableConcept Map"
Usage: #definition
* title = "Datatype ST to CodeableConcept Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Datatype ST to the FHIR CodeableConcept Data Type."
* id = "datatype-st-to-codeableconcept"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/datatype-st-to-codeableconcept"
* name = "DatatypeSTToCodeableConcept"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Datatype ST to CodeableConcept.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1ehMtzGDbFNE-xXBLoHSHx3C-TAIBiw9sv6EXyMkUER0/edit#gid=0"
* group.element[0].code = #ST.1
* group.element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].extension[0].extension[0].url = "type"
* group.element[0].extension[0].extension[0].valueCode = #"String"
* group.element[0].extension[0].extension[1].url = "cardinalityMin"
* group.element[0].extension[0].extension[1].valueInteger = 0
* group.element[0].extension[0].extension[2].url = "cardinalityMax"
* group.element[0].extension[0].extension[2].valueInteger = 1
* group.element[0].display = "String"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #text
* group.element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].target.extension[0].extension[0].url = "type"
* group.element[0].target.extension[0].extension[0].valueCode = #"string"
* group.element[0].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[0].target.extension[0].extension[1].valueInteger = 1
* group.element[0].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[0].target.extension[0].extension[2].valueInteger = 1
* group.element[0].target.display = "text"
