// HL7 Data Type - FHIR R4_ SN[Quantity] - Sheet1.csv
Instance: DatatypeSNToQuantity
InstanceOf: ConceptMap
Title: "Datatype SN to Quantity Map"
Usage: #definition
* title = "Datatype SN to Quantity Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Datatype SN to the FHIR Quantity Data Type."
* id = "datatype-sn-to-quantity"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/datatype-sn-to-quantity"
* name = "DatatypeSNToQuantity"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Datatype SN to Quantity.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1azu9FNtDrbtyTB9dj1doDW315ngDrPlqrLARvvVHNb8/edit#gid=0"
* group[0].element[0].code = #SN.1
* group[0].element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].extension[0].extension[0].url = "type"
* group[0].element[0].extension[0].extension[0].valueCode = #"ST"
* group[0].element[0].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[0].extension[0].extension[1].valueInteger = 0
* group[0].element[0].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[0].extension[0].extension[2].valueInteger = 1
* group[0].element[0].display = "Comparator"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #comparator
* group[0].element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].target.extension[0].extension[0].url = "type"
* group[0].element[0].target.extension[0].extension[0].valueCode = #"code"
* group[0].element[0].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[0].target.extension[0].extension[1].valueInteger = 1
* group[0].element[0].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[0].target.extension[0].extension[2].valueInteger = 1
* group[0].element[0].target.display = "comparator"
* group[0].element[1].code = #SN.2
* group[0].element[1].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[1].extension[0].extension[0].url = "type"
* group[0].element[1].extension[0].extension[0].valueCode = #"NM"
* group[0].element[1].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[1].extension[0].extension[1].valueInteger = 0
* group[0].element[1].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[1].extension[0].extension[2].valueInteger = 1
* group[0].element[1].display = "Num1"
* group[0].element[1].target.equivalence = #equivalent
* group[0].element[1].target.code = #value
* group[0].element[1].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[1].target.extension[0].extension[0].url = "type"
* group[0].element[1].target.extension[0].extension[0].valueCode = #"decimal"
* group[0].element[1].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[1].target.extension[0].extension[1].valueInteger = 1
* group[0].element[1].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[1].target.extension[0].extension[2].valueInteger = 1
* group[0].element[1].target.display = "value"
