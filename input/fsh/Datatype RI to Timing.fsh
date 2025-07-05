// HL7 Data Type - FHIR R4_ RI[Timing] - Sheet1.csv
Instance: DatatypeRIToTiming
InstanceOf: ConceptMap
Title: "Datatype RI to Timing Map"
Usage: #definition
* title = "Datatype RI to Timing Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Datatype RI to the FHIR Timing Data Type."
* id = "datatype-ri-to-timing"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/datatype-ri-to-timing"
* name = "DatatypeRIToTiming"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Datatype RI to Timing.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1CzyaN_QGJDg6RMgwDyhMgwIsEUOek0IKJmt7e_aPCDE/edit#gid=0"
* group[0].element[0].code = #RI-1
* group[0].element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].extension[0].extension[0].url = "type"
* group[0].element[0].extension[0].extension[0].valueCode = #"IS"
* group[0].element[0].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[0].extension[0].extension[1].valueInteger = 0
* group[0].element[0].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[0].extension[0].extension[2].valueInteger = 1
* group[0].element[0].display = "Repeat Pattern"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #code
* group[0].element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].target.extension[0].extension[0].url = "type"
* group[0].element[0].target.extension[0].extension[0].valueCode = #"CodeableConcept"
* group[0].element[0].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[0].target.extension[0].extension[1].valueInteger = 1
* group[0].element[0].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[0].target.extension[0].extension[2].valueInteger = 1
* group[0].element[0].target.extension[0].extension[3].url = "mappedVia"
* group[0].element[0].target.extension[0].extension[3].valueUrl = "ConceptMap/table-hl70335-to-v2-0335"
* group[0].element[0].target.display = "code"
* group[0].element[1].code = #RI-2
* group[0].element[1].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[1].extension[0].extension[0].url = "type"
* group[0].element[1].extension[0].extension[0].valueCode = #"ST"
* group[0].element[1].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[1].extension[0].extension[1].valueInteger = 0
* group[0].element[1].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[1].extension[0].extension[2].valueInteger = 1
* group[0].element[1].display = "Explicit Time Interval"
* group[0].element[1].target.equivalence = #equivalent
* group[0].element[1].target.code = #repeat.timeOfDay
* group[0].element[1].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[1].target.extension[0].extension[0].url = "type"
* group[0].element[1].target.extension[0].extension[0].valueCode = #"time"
* group[0].element[1].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[1].target.extension[0].extension[1].valueInteger = -1
* group[0].element[1].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[1].target.extension[0].extension[2].valueInteger = -1
* group[0].element[1].target.display = "repeat.timeOfDay"
* group[0].element[1].target.comment = "The format of this field in the v2 data type is HHMM,HHMM,HHMM,.… and thus functionally contains repeats even though the element is technically not allowed to repeat"
