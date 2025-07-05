// HL7 Data Type - FHIR R4_ DR[dateTime] - Sheet1.csv
Instance: DatatypeDRToDateTime
InstanceOf: ConceptMap
Title: "Datatype DR to dateTime Map"
Usage: #definition
* title = "Datatype DR to dateTime Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Datatype DR to the FHIR dateTime Data Type."
* id = "datatype-dr-to-datetime"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/datatype-dr-to-datetime"
* name = "DatatypeDRToDateTime"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Datatype DR to dateTime.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1tE6xgT7ns7kFg0aBWUgKociuXfuKrdnm01Gy6nHWcOU/edit#gid=0"
* group[0].element[0].code = #DR.1
* group[0].element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].extension[0].extension[0].url = "type"
* group[0].element[0].extension[0].extension[0].valueCode = #"DTM"
* group[0].element[0].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[0].extension[0].extension[1].valueInteger = 0
* group[0].element[0].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[0].extension[0].extension[2].valueInteger = 1
* group[0].element[0].display = "Range Start Date/Time"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #$value
* group[0].element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].target.extension[0].extension[0].url = "type"
* group[0].element[0].target.extension[0].extension[0].valueCode = #"dateTime"
* group[0].element[0].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[0].target.extension[0].extension[1].valueInteger = 1
* group[0].element[0].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[0].target.extension[0].extension[2].valueInteger = 1
* group[0].element[0].target.extension[0].extension[3].url = "assignment"
* group[0].element[0].target.extension[0].extension[3].valueString = "/must convert v2 date time format to FHIR date time format before populating/"
* group[0].element[0].target.display = "$value"
