// HL7 Data Type - FHIR R4_ NM[PositiveInt] - Sheet1.csv
Instance: DatatypeNMToPositiveInt
InstanceOf: ConceptMap
Title: "Datatype NM to PositiveInt Map"
* title = "Datatype NM to PositiveInt Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Datatype NM to the FHIR PositiveInt Data Type."
* id = "datatype-nm-to-positiveint"
* url = "http://hl7.org/fhir/uv/v2mappings/datatype-nm-to-positiveint"
* version = "1.0"
* name = "DatatypeNMToPositiveInt"
* status = #active
* experimental = true
* date = "2023-11-21"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "NM"
* targetUri = "PositiveInt"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Datatype NM to PositiveInt.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1I1IbZW4etDX-TRXqeYr3mmLJZq55pILgoOOBx4gwBJU/edit#gid=0"
* group.element[0].code = #NM.1
* group.element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].extension[0].extension[0].url = "type"
* group.element[0].extension[0].extension[0].valueCode = #"ST"
* group.element[0].display = "Numeric"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #$value
* group.element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].target.extension[0].extension[0].url = "type"
* group.element[0].target.extension[0].extension[0].valueCode = #"integer"
* group.element[0].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[0].target.extension[0].extension[1].valueInteger = 1
* group.element[0].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[0].target.extension[0].extension[2].valueInteger = 1
* group.element[0].target.display = "$value"
* group.element[0].target.product[0].property = "narrative"
* group.element[0].target.product[0].value = "If positive"
