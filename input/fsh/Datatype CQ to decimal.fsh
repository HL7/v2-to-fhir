// HL7 Data Type - FHIR R4_ CQ[decimal] - Sheet1.csv
Instance: DatatypeCQToDecimal
InstanceOf: ConceptMap
Title: "Datatype CQ to decimal Map"
Usage: #definition
* title = "Datatype CQ to decimal Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Datatype CQ to the FHIR decimal Data Type."
* id = "datatype-cq-to-decimal"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/datatype-cq-to-decimal"
* name = "DatatypeCQToDecimal"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Datatype CQ to decimal.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/12vu2fD4SxfM1d8T-ifKbbbsCy-SMyWCyAcb0PRxBICU/edit#gid=0"
* group[0].element[0].code = #CQ.1
* group[0].element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].extension[0].extension[0].url = "type"
* group[0].element[0].extension[0].extension[0].valueCode = #"NM"
* group[0].element[0].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[0].extension[0].extension[1].valueInteger = 0
* group[0].element[0].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[0].extension[0].extension[2].valueInteger = 1
* group[0].element[0].display = "Quantity"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #$value
* group[0].element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].target.extension[0].extension[0].url = "type"
* group[0].element[0].target.extension[0].extension[0].valueCode = #"decimal"
* group[0].element[0].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[0].target.extension[0].extension[1].valueInteger = 1
* group[0].element[0].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[0].target.extension[0].extension[2].valueInteger = 1
* group[0].element[0].target.display = "$value"
