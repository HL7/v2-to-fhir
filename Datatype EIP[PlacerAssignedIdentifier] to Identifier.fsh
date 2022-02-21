// HL7 Data Type - FHIR R4_ EIP[Identifier-PlacerAssignedIdentifier] - Sheet1.csv
Instance: DatatypeEIPPlacerAssignedIdentifiertoIdentifier
InstanceOf: ConceptMap
Title: "Datatype EIP to Identifier Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Datatype EIP to the FHIR Identifier Data Type."
* id = "datatype-eipplacerassignedidentifier-to-identifier"
* url = "http://hl7.org/fhir/uv/v2mappings/datatype-eipplacerassignedidentifier-to-identifier"
* version = "1.0"
* name = "DatatypeEIPPlacerAssignedIdentifiertoIdentifier"
* status = #active
* experimental = true
* date = "2022-02-21"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "EIP"
* targetUri = "Identifier"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Datatype EIP[PlacerAssignedIdentifier] to Identifier.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1Ez3350XkVw7cS5ufWsFVpVXV884WOtutsWFfEAZUUvo/edit#gid=0"
* group.element[0].code = #EIP.1
* group.element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].extension[0].extension[0].url = "type"
* group.element[0].extension[0].extension[0].valueCode = #"EI"
* group.element[0].extension[0].extension[1].url = "cardinalityMin"
* group.element[0].extension[0].extension[1].valueInteger = 0
* group.element[0].extension[0].extension[2].url = "cardinalityMax"
* group.element[0].extension[0].extension[2].valueInteger = 1
* group.element[0].display = "Placer Assigned Identifier"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #$this
* group.element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].target.extension[0].extension[0].url = "type"
* group.element[0].target.extension[0].extension[0].valueCode = #"Identifier"
* group.element[0].target.display = "$this"
* group.element[0].target.dependsOn[0].property = "data-type-map"
* group.element[0].target.dependsOn[0].value = "EI[Identifier-Extension]"
