// HL7 Segment - FHIR R4_ MSH[Provenance-Operator] - Sheet1.csv
Instance: SegmentMSHOperatorToProvenance
InstanceOf: ConceptMap
Title: "Segment MSH [Operator] to Provenance Map"
Usage: #definition
* title = "Segment MSH [Operator] to Provenance Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Segment MSH to the FHIR Provenance Resource."
* id = "segment-msh-operator-to-provenance"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/segment-msh-operator-to-provenance"
* name = "SegmentMSHOperatorToProvenance"
* insert PublicationData
* group[0].element[0].code = #MSH-4
* group[0].element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].extension[0].extension[0].url = "type"
* group[0].element[0].extension[0].extension[0].valueCode = #"HD"
* group[0].element[0].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[0].extension[0].extension[1].valueInteger = 1
* group[0].element[0].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[0].extension[0].extension[2].valueInteger = 1
* group[0].element[0].display = "Sending Facility"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #agent.who(Organization)
* group[0].element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].target.extension[0].extension[0].url = "type"
* group[0].element[0].target.extension[0].extension[0].valueCode = #"Reference(Organization)"
* group[0].element[0].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[0].target.extension[0].extension[1].valueInteger = 1
* group[0].element[0].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[0].target.extension[0].extension[2].valueInteger = -1
* group[0].element[0].target.display = "agent.who(Organization)"
* group[0].element[0].target.dependsOn[0].property = "Computable-ANTLR"
* group[0].element[0].target.dependsOn[0].value = "IF MSH-22 NOT VALUED"
* group[0].element[1].code = #MSH-22
* group[0].element[1].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[1].extension[0].extension[0].url = "type"
* group[0].element[1].extension[0].extension[0].valueCode = #"XON"
* group[0].element[1].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[1].extension[0].extension[1].valueInteger = 1
* group[0].element[1].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[1].extension[0].extension[2].valueInteger = 1
* group[0].element[1].display = "Sending Responsible Organization"
* group[0].element[1].target.equivalence = #equivalent
* group[0].element[1].target.code = #agent.who(Organization)
* group[0].element[1].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[1].target.extension[0].extension[0].url = "type"
* group[0].element[1].target.extension[0].extension[0].valueCode = #"Reference(Organization)"
* group[0].element[1].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[1].target.extension[0].extension[1].valueInteger = 1
* group[0].element[1].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[1].target.extension[0].extension[2].valueInteger = -1
* group[0].element[1].target.display = "agent.who(Organization)"
