// HL7 Data Type - FHIR R4_ TS[DateTime] - Sheet1.csv
Instance: DatatypeTSToDateTime
InstanceOf: ConceptMap
Title: "Datatype TS to DateTime Map"
* title = "Datatype TS to DateTime Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Datatype TS to the FHIR DateTime Data Type."
* id = "datatype-ts-to-datetime"
* url = "http://hl7.org/fhir/uv/v2mappings/datatype-ts-to-datetime"
* version = "1.0"
* name = "DatatypeTSToDateTime"
* status = #active
* experimental = true
* date = "2024-04-24"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "TS"
* targetUri = "DateTime"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Datatype TS to DateTime.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1s6RZieg7HZDSxcXYnaXaDlaCEKzt-ph6mm0eFdyOUwY/edit#gid=0"
* group.element[0].code = #TS.1
* group.element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].extension[0].extension[0].url = "type"
* group.element[0].extension[0].extension[0].valueCode = #"DTM"
* group.element[0].extension[0].extension[1].url = "cardinalityMin"
* group.element[0].extension[0].extension[1].valueInteger = 1
* group.element[0].extension[0].extension[2].url = "cardinalityMax"
* group.element[0].extension[0].extension[2].valueInteger = 1
* group.element[0].display = "Time"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #$value
* group.element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].target.extension[0].extension[0].url = "type"
* group.element[0].target.extension[0].extension[0].valueCode = #"dateTime"
* group.element[0].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[0].target.extension[0].extension[1].valueInteger = 1
* group.element[0].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[0].target.extension[0].extension[2].valueInteger = 1
* group.element[0].target.display = "$value"
* group.element[0].target.dependsOn[0].property = "value"
* group.element[0].target.dependsOn[0].value = "/must convert v2 date time format to FHIR date time format before populating according to FHIR date/time format https://build.fhir.org/datatypes.html#dateTime /"
* group.element[0].target.dependsOn[1].property = "data-type-map"
* group.element[0].target.dependsOn[1].value = "DTM[DateTime]"
