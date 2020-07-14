Instance: DatatypeDRtodateTime
InstanceOf: ConceptMap
Title: "Datatype DR to dateTime Map"
* description = "This ConceptMap represents the mapping from the HL7 V2 null to the FHIR null."
* id = "datatype-drdatetime-to-datetime"
* url = "http://hl7.org/fhir/v2-tofhir/datatype-drdatetime-to-datetime"
* version = "1.0"
* name = "Datatype_DR_Map"
* status = #active
* experimental = true
* date = "2020-07-14"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "DR"
* targetUri = "dateTime"
* extension[0].url = "http://hl7.org/fhir/v2-tofhir/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Datatype DR[DateTime] to dateTime.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1tE6xgT7ns7kFg0aBWUgKociuXfuKrdnm01Gy6nHWcOU/edit#gid=0"
* group.element[0].code = #DR.1
* group.element[0].extension[0].url = "http://hl7.org/fhir/v2-tofhir/StructureDefinition/TypeInfo"
* group.element[0].extension[0].extension[0].url = "type"
* group.element[0].extension[0].extension[0].valueCode = #"DTM"
* group.element[0].extension[0].extension[1].url = "cardinalityMin"
* group.element[0].extension[0].extension[1].valueInteger = 0
* group.element[0].extension[0].extension[2].url = "cardinalityMax"
* group.element[0].extension[0].extension[2].valueInteger = 1
* group.element[0].display = "Range Start Date/Time"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #dateTime
* group.element[0].target.extension[0].url = "http://hl7.org/fhir/v2-tofhir/StructureDefinition/TypeInfo"
* group.element[0].target.extension[0].extension[0].url = "type"
* group.element[0].target.extension[0].extension[0].valueCode = #"dateTime"
* group.element[0].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[0].target.extension[0].extension[1].valueInteger = 1
* group.element[0].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[0].target.extension[0].extension[2].valueInteger = 1
* group.element[0].target.display = "dateTime"
* group.element[0].target.dependsOn[0].property = "data-type-map"
* group.element[0].target.dependsOn[0].value = "https://docs.google.com/spreadsheets/d/17uu9lTeyxn8IG_OXCQK6sZZmVXLgncFZUkfB7OUZ2_M/edit#gid=0"
