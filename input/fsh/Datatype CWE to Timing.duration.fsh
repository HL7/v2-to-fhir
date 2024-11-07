// HL7 Data Type - FHIR R4_ CWE[Timing.duration] - Sheet1.csv
Instance: DatatypeCWEToTimingDuration
InstanceOf: ConceptMap
Title: "Datatype CWE to Timing.duration Map"
* title = "Datatype CWE to Timing.duration Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Datatype CWE to the FHIR Timing.duration Data Type."
* id = "datatype-cwe-to-timing-duration"
* url = "http://hl7.org/fhir/uv/v2mappings/datatype-cwe-to-timing-duration"
* version = "1.0"
* name = "DatatypeCWEToTimingDuration"
* status = #active
* experimental = true
* date = "2024-11-01"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "CWE"
* targetUri = "Timing.duration"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Datatype CWE to Timing.duration.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1peXd1bfzbP54t4Ns267PTNjDR1wX1HqF28C6o5P_-LY/edit#gid=0"
* group.element[0].code = #CWE.1
* group.element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].extension[0].extension[0].url = "type"
* group.element[0].extension[0].extension[0].valueCode = #"ST"
* group.element[0].extension[0].extension[1].url = "cardinalityMin"
* group.element[0].extension[0].extension[1].valueInteger = 0
* group.element[0].extension[0].extension[2].url = "cardinalityMax"
* group.element[0].extension[0].extension[2].valueInteger = 1
* group.element[0].display = "Identifier"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #Timing.repeat.durationUnit
* group.element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].target.extension[0].extension[0].url = "type"
* group.element[0].target.extension[0].extension[0].valueCode = #"code"
* group.element[0].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[0].target.extension[0].extension[1].valueInteger = 1
* group.element[0].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[0].target.extension[0].extension[2].valueInteger = 1
* group.element[0].target.display = "Timing.repeat.durationUnit"
* group.element[0].target.comment = "The durationUnit is limited to a required set of UCUM units"
