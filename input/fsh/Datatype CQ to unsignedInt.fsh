// HL7 Data Type - FHIR R4_ CQ[unsignedInt] - Sheet1.csv
Instance: DatatypeCQToUnsignedInt
InstanceOf: ConceptMap
Title: "Datatype CQ to unsignedInt Map"
Usage: #definition
* title = "Datatype CQ to unsignedInt Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Datatype CQ to the FHIR unsignedInt Data Type."
* id = "datatype-cq-to-unsignedint"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/datatype-cq-to-unsignedint"
* name = "DatatypeCQToUnsignedInt"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Datatype CQ to unsignedInt.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1vztiQ1Egc2E91ZVonjtUtB-aBsNq4jYOIFqqK6RnyHw/edit#gid=0"
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
* group[0].element[0].target.extension[0].extension[0].valueCode = #"unsignedInt"
* group[0].element[0].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[0].target.extension[0].extension[1].valueInteger = 1
* group[0].element[0].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[0].target.extension[0].extension[2].valueInteger = 1
* group[0].element[0].target.extension[0].extension[3].url = "assignment"
* group[0].element[0].target.extension[0].extension[3].valueString = "/convert to minutes based on CQ.2/"
* group[0].element[0].target.display = "$value"
