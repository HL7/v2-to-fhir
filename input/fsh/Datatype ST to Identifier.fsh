// HL7 Data Type - FHIR R4_ ST[Identifier] - Sheet1.csv
Instance: DatatypeSTToIdentifier
InstanceOf: ConceptMap
Title: "Datatype ST to Identifier Map"
Usage: #definition
* title = "Datatype ST to Identifier Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Datatype ST to the FHIR Identifier Data Type."
* id = "datatype-st-to-identifier"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/datatype-st-to-identifier"
* name = "DatatypeSTToIdentifier"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Datatype ST to Identifier.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1mtqV8SQ9eqsVe9kvrkTjWLEj9Adpnc5-iIb2B2oiqfM/edit#gid=0"
* group[0].element[0].code = #ST.1
* group[0].element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].extension[0].extension[0].url = "type"
* group[0].element[0].extension[0].extension[0].valueCode = #"String"
* group[0].element[0].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[0].extension[0].extension[1].valueInteger = 0
* group[0].element[0].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[0].extension[0].extension[2].valueInteger = 1
* group[0].element[0].display = "String"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #$value
* group[0].element[0].target.display = "$value"
