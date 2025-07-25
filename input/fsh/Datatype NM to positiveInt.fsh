// HL7 Data Type - FHIR R4_ NM[positiveInt] - Sheet1.csv
Instance: DatatypeNMToPositiveInt
InstanceOf: ConceptMap
Title: "Datatype NM to positiveInt Map"
Usage: #definition
* title = "Datatype NM to positiveInt Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Datatype NM to the FHIR positiveInt Data Type."
* id = "datatype-nm-to-positiveint"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/datatype-nm-to-positiveint"
* name = "DatatypeNMToPositiveInt"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Datatype NM to positiveInt.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1I1IbZW4etDX-TRXqeYr3mmLJZq55pILgoOOBx4gwBJU/edit#gid=0"
* group[0].element[0].code = #NM.1
* group[0].element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].extension[0].extension[0].url = "type"
* group[0].element[0].extension[0].extension[0].valueCode = #"ST"
* group[0].element[0].display = "Numeric"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #$value
* group[0].element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].target.extension[0].extension[0].url = "type"
* group[0].element[0].target.extension[0].extension[0].valueCode = #"integer"
* group[0].element[0].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[0].target.extension[0].extension[1].valueInteger = 1
* group[0].element[0].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[0].target.extension[0].extension[2].valueInteger = 1
* group[0].element[0].target.display = "$value"
* group[0].element[0].target.dependsOn[0].property = "Narrative-Condition"
* group[0].element[0].target.dependsOn[0].value = "If positive"
