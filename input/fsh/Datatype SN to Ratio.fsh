// HL7 Data Type - FHIR R4_ SN[Ratio] - Sheet1.csv
Instance: DatatypeSNToRatio
InstanceOf: ConceptMap
Title: "Datatype SN to Ratio Map"
Usage: #definition
* title = "Datatype SN to Ratio Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Datatype SN to the FHIR Ratio Data Type."
* id = "datatype-sn-to-ratio"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/datatype-sn-to-ratio"
* name = "DatatypeSNToRatio"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Datatype SN to Ratio.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/19t5jrwRcmXNXjXcAXW0SEHlRGnBpMdm014C7CtIZ2XE/edit#gid=0"
* group.element[0].code = #SN.1
* group.element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].extension[0].extension[0].url = "type"
* group.element[0].extension[0].extension[0].valueCode = #"ST"
* group.element[0].extension[0].extension[1].url = "cardinalityMin"
* group.element[0].extension[0].extension[1].valueInteger = 0
* group.element[0].extension[0].extension[2].url = "cardinalityMax"
* group.element[0].extension[0].extension[2].valueInteger = 1
* group.element[0].display = "Comparator"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #numerator.comparator
* group.element[0].target.display = "numerator.comparator"
* group.element[0].target.dependsOn[0].property = "Computable-ANTLR"
* group.element[0].target.dependsOn[0].system = "http://hl7.org/fhir/uv/v2mappings/antlr_condition_syntax.html"
* group.element[0].target.dependsOn[0].value = "IF NOT EQUAL TO \"=\""
* group.element[0].target.dependsOn[0].display = "IF NOT EQUAL TO \"=\""
* group.element[1].code = #SN.2
* group.element[1].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[1].extension[0].extension[0].url = "type"
* group.element[1].extension[0].extension[0].valueCode = #"NM"
* group.element[1].extension[0].extension[1].url = "cardinalityMin"
* group.element[1].extension[0].extension[1].valueInteger = 0
* group.element[1].extension[0].extension[2].url = "cardinalityMax"
* group.element[1].extension[0].extension[2].valueInteger = 1
* group.element[1].display = "Num1"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #numerator.value
* group.element[1].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[1].target.extension[0].extension[0].url = "type"
* group.element[1].target.extension[0].extension[0].valueCode = #"decimal"
* group.element[1].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[1].target.extension[0].extension[1].valueInteger = 1
* group.element[1].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[1].target.extension[0].extension[2].valueInteger = 1
* group.element[1].target.display = "numerator.value"
* group.element[2].code = #SN.4
* group.element[2].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[2].extension[0].extension[0].url = "type"
* group.element[2].extension[0].extension[0].valueCode = #"NM"
* group.element[2].extension[0].extension[1].url = "cardinalityMin"
* group.element[2].extension[0].extension[1].valueInteger = 0
* group.element[2].extension[0].extension[2].url = "cardinalityMax"
* group.element[2].extension[0].extension[2].valueInteger = 1
* group.element[2].display = "Num2"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #denominator.value
* group.element[2].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[2].target.extension[0].extension[0].url = "type"
* group.element[2].target.extension[0].extension[0].valueCode = #"decimal"
* group.element[2].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[2].target.extension[0].extension[1].valueInteger = 1
* group.element[2].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[2].target.extension[0].extension[2].valueInteger = 1
* group.element[2].target.display = "denominator.value"
