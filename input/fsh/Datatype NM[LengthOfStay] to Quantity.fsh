// HL7 Data Type - FHIR R4_ NM[Quantity-LengthOfStay] - Sheet1.csv
Instance: DatatypeNMLengthOfStayToQuantity
InstanceOf: ConceptMap
Title: "Datatype NM [LengthOfStay] to Quantity Map"
Usage: #definition
* title = "Datatype NM [LengthOfStay] to Quantity Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Datatype NM to the FHIR Quantity Data Type."
* id = "datatype-nm-lengthofstay-to-quantity"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/datatype-nm-lengthofstay-to-quantity"
* name = "DatatypeNMLengthOfStayToQuantity"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Datatype NM[LengthOfStay] to Quantity.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/10xbEUhs5LEydlRYgH_Ok_9y8Vn_b3peUxFfHJLtNMmI/edit#gid=0"
* group.element[0].code = #NM.1
* group.element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].extension[0].extension[0].url = "type"
* group.element[0].extension[0].extension[0].valueCode = #"ST"
* group.element[0].display = "Numeric"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #value
* group.element[0].target.display = "value"
* group.element[1].code = #NM.1
* group.element[1].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[1].extension[0].extension[0].url = "type"
* group.element[1].extension[0].extension[0].valueCode = #"ST"
* group.element[1].display = "Numeric"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #unit
* group.element[1].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[1].target.extension[0].extension[0].url = "fixedValue"
* group.element[1].target.extension[0].extension[0].valueString = "\"days\""
* group.element[1].target.display = "unit"
* group.element[2].code = #NM.1
* group.element[2].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[2].extension[0].extension[0].url = "type"
* group.element[2].extension[0].extension[0].valueCode = #"ST"
* group.element[2].display = "Numeric"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #system
* group.element[2].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[2].target.extension[0].extension[0].url = "fixedValue"
* group.element[2].target.extension[0].extension[0].valueString = "\"http://unitsofmeasure.org/\""
* group.element[2].target.display = "system"
* group.element[3].code = #NM.1
* group.element[3].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[3].extension[0].extension[0].url = "type"
* group.element[3].extension[0].extension[0].valueCode = #"ST"
* group.element[3].display = "Numeric"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #code
* group.element[3].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[3].target.extension[0].extension[0].url = "fixedValue"
* group.element[3].target.extension[0].extension[0].valueString = "\"d\""
* group.element[3].target.display = "code"
