// HL7 Data Type - FHIR R4_ ST[Identifier] - Sheet1.csv
Instance: DatatypeSTToIdentifier
InstanceOf: ConceptMap
Title: "Datatype ST to Identifier Map"
* title = "Datatype ST to Identifier Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Datatype ST to the FHIR Identifier Data Type."
* id = "datatype-st-to-identifier"
* url = "http://hl7.org/fhir/uv/v2mappings/datatype-st-to-identifier"
* version = "1.0"
* name = "DatatypeSTToIdentifier"
* status = #active
* experimental = true
* date = "2024-12-09"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "ST"
* targetUri = "Identifier"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Datatype ST to Identifier.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1mtqV8SQ9eqsVe9kvrkTjWLEj9Adpnc5-iIb2B2oiqfM/edit#gid=0"
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
* group.element[0].target.code = #$value
* group.element[0].target.display = "$value"
