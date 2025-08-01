// HL7 Data Type - FHIR R4_ XCN[PractitionerRole] - Sheet1.csv
Instance: DatatypeXCNToPractitionerRole
InstanceOf: ConceptMap
Title: "Datatype XCN to PractitionerRole Map"
Usage: #definition
* title = "Datatype XCN to PractitionerRole Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Datatype XCN to the FHIR PractitionerRole Resource."
* id = "datatype-xcn-to-practitionerrole"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/datatype-xcn-to-practitionerrole"
* name = "DatatypeXCNToPractitionerRole"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Datatype XCN to PractitionerRole.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1IXMRcpSKosDeviTGPb-v0FJ1OAYgBzRft5H-tGcFUgk/edit#gid=0"
* group[0].element[0].code = #XCN.1
* group[0].element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].extension[0].extension[0].url = "type"
* group[0].element[0].extension[0].extension[0].valueCode = #"ST"
* group[0].element[0].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[0].extension[0].extension[1].valueInteger = 0
* group[0].element[0].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[0].extension[0].extension[2].valueInteger = 1
* group[0].element[0].display = "Person Identifier"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #practitioner(Practitioner.identifier[1].value)
* group[0].element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].target.extension[0].extension[0].url = "type"
* group[0].element[0].target.extension[0].extension[0].valueCode = #"string"
* group[0].element[0].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[0].target.extension[0].extension[1].valueInteger = 1
* group[0].element[0].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[0].target.extension[0].extension[2].valueInteger = 1
* group[0].element[0].target.display = "practitioner(Practitioner.identifier[1].value)"
* group[0].element[1].code = #XCN.2
* group[0].element[1].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[1].extension[0].extension[0].url = "type"
* group[0].element[1].extension[0].extension[0].valueCode = #"FN"
* group[0].element[1].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[1].extension[0].extension[1].valueInteger = 0
* group[0].element[1].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[1].extension[0].extension[2].valueInteger = 1
* group[0].element[1].display = "Family Name"
* group[0].element[1].target.equivalence = #equivalent
* group[0].element[1].target.code = #practitioner(Practitioner.name)
* group[0].element[1].target.display = "practitioner(Practitioner.name)"
* group[0].element[2].code = #XCN.3
* group[0].element[2].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[2].extension[0].extension[0].url = "type"
* group[0].element[2].extension[0].extension[0].valueCode = #"ST"
* group[0].element[2].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[2].extension[0].extension[1].valueInteger = 0
* group[0].element[2].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[2].extension[0].extension[2].valueInteger = 1
* group[0].element[2].display = "Given Name"
* group[0].element[2].target.equivalence = #equivalent
* group[0].element[2].target.code = #practitioner(Practitioner.name.given)
* group[0].element[2].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[2].target.extension[0].extension[0].url = "type"
* group[0].element[2].target.extension[0].extension[0].valueCode = #"string"
* group[0].element[2].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[2].target.extension[0].extension[1].valueInteger = -1
* group[0].element[2].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[2].target.extension[0].extension[2].valueInteger = -1
* group[0].element[2].target.display = "practitioner(Practitioner.name.given)"
* group[0].element[3].code = #XCN.4
* group[0].element[3].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[3].extension[0].extension[0].url = "type"
* group[0].element[3].extension[0].extension[0].valueCode = #"ST"
* group[0].element[3].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[3].extension[0].extension[1].valueInteger = 0
* group[0].element[3].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[3].extension[0].extension[2].valueInteger = 1
* group[0].element[3].display = "Second and Further Given Names or Initials Thereof"
* group[0].element[3].target.equivalence = #equivalent
* group[0].element[3].target.code = #practitioner(Practitioner.name.given)
* group[0].element[3].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[3].target.extension[0].extension[0].url = "type"
* group[0].element[3].target.extension[0].extension[0].valueCode = #"string"
* group[0].element[3].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[3].target.extension[0].extension[1].valueInteger = -1
* group[0].element[3].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[3].target.extension[0].extension[2].valueInteger = -1
* group[0].element[3].target.display = "practitioner(Practitioner.name.given)"
* group[0].element[4].code = #XCN.5
* group[0].element[4].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[4].extension[0].extension[0].url = "type"
* group[0].element[4].extension[0].extension[0].valueCode = #"ST"
* group[0].element[4].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[4].extension[0].extension[1].valueInteger = 0
* group[0].element[4].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[4].extension[0].extension[2].valueInteger = 1
* group[0].element[4].display = "Suffix (e.g., JR or III)"
* group[0].element[4].target.equivalence = #equivalent
* group[0].element[4].target.code = #practitioner(Practitioner.name.suffix)
* group[0].element[4].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[4].target.extension[0].extension[0].url = "type"
* group[0].element[4].target.extension[0].extension[0].valueCode = #"string"
* group[0].element[4].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[4].target.extension[0].extension[1].valueInteger = -1
* group[0].element[4].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[4].target.extension[0].extension[2].valueInteger = -1
* group[0].element[4].target.display = "practitioner(Practitioner.name.suffix)"
* group[0].element[5].code = #XCN.6
* group[0].element[5].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[5].extension[0].extension[0].url = "type"
* group[0].element[5].extension[0].extension[0].valueCode = #"ST"
* group[0].element[5].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[5].extension[0].extension[1].valueInteger = 0
* group[0].element[5].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[5].extension[0].extension[2].valueInteger = 1
* group[0].element[5].display = "Prefix (e.g., DR)"
* group[0].element[5].target.equivalence = #equivalent
* group[0].element[5].target.code = #practitioner(Practitioner.name.prefix)
* group[0].element[5].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[5].target.extension[0].extension[0].url = "type"
* group[0].element[5].target.extension[0].extension[0].valueCode = #"string"
* group[0].element[5].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[5].target.extension[0].extension[1].valueInteger = -1
* group[0].element[5].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[5].target.extension[0].extension[2].valueInteger = -1
* group[0].element[5].target.display = "practitioner(Practitioner.name.prefix)"
* group[0].element[6].code = #XCN.7
* group[0].element[6].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[6].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[6].extension[0].extension[0].valueInteger = 0
* group[0].element[6].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[6].extension[0].extension[1].valueInteger = 1
* group[0].element[6].display = "Degree (e.g., MD)"
* group[0].element[6].target.equivalence = #equivalent
* group[0].element[6].target.code = #practitioner(Practitioner.name.suffix)
* group[0].element[6].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[6].target.extension[0].extension[0].url = "type"
* group[0].element[6].target.extension[0].extension[0].valueCode = #"string"
* group[0].element[6].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[6].target.extension[0].extension[1].valueInteger = -1
* group[0].element[6].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[6].target.extension[0].extension[2].valueInteger = -1
* group[0].element[6].target.display = "practitioner(Practitioner.name.suffix)"
* group[0].element[7].code = #XCN.9
* group[0].element[7].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[7].extension[0].extension[0].url = "type"
* group[0].element[7].extension[0].extension[0].valueCode = #"HD"
* group[0].element[7].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[7].extension[0].extension[1].valueInteger = 0
* group[0].element[7].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[7].extension[0].extension[2].valueInteger = 1
* group[0].element[7].display = "Assigning Authority"
* group[0].element[7].target.equivalence = #equivalent
* group[0].element[7].target.code = #practitioner(Practioner.identifier[1].assigner(Organization))
* group[0].element[7].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[7].target.extension[0].extension[0].url = "type"
* group[0].element[7].target.extension[0].extension[0].valueCode = #"Reference(Organization)"
* group[0].element[7].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[7].target.extension[0].extension[1].valueInteger = 1
* group[0].element[7].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[7].target.extension[0].extension[2].valueInteger = 1
* group[0].element[7].target.display = "practitioner(Practioner.identifier[1].assigner(Organization))"
* group[0].element[7].target.dependsOn[0].property = "Narrative-Condition"
* group[0].element[7].target.dependsOn[0].value = "If organization"
* group[0].element[8].code = #XCN.9
* group[0].element[8].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[8].extension[0].extension[0].url = "type"
* group[0].element[8].extension[0].extension[0].valueCode = #"HD"
* group[0].element[8].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[8].extension[0].extension[1].valueInteger = 0
* group[0].element[8].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[8].extension[0].extension[2].valueInteger = 1
* group[0].element[8].display = "Assigning Authority"
* group[0].element[8].target.equivalence = #equivalent
* group[0].element[8].target.code = #practitioner(Practioner.identifier[1].system)
* group[0].element[8].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[8].target.extension[0].extension[0].url = "type"
* group[0].element[8].target.extension[0].extension[0].valueCode = #"uri"
* group[0].element[8].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[8].target.extension[0].extension[1].valueInteger = 1
* group[0].element[8].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[8].target.extension[0].extension[2].valueInteger = 1
* group[0].element[8].target.display = "practitioner(Practioner.identifier[1].system)"
* group[0].element[8].target.comment = "Typically the assigning authority reflects an organization, but if it is an actual system (EHR 1 vs. EHR 2, both supporting the same organization where one cannot get more specific), then XCN.9 should be mapped to .system"
* group[0].element[8].target.dependsOn[0].property = "Narrative-Condition"
* group[0].element[8].target.dependsOn[0].value = "If system"
* group[0].element[9].code = #XCN.10
* group[0].element[9].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[9].extension[0].extension[0].url = "type"
* group[0].element[9].extension[0].extension[0].valueCode = #"ID"
* group[0].element[9].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[9].extension[0].extension[1].valueInteger = 0
* group[0].element[9].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[9].extension[0].extension[2].valueInteger = 1
* group[0].element[9].display = "Name Type Code"
* group[0].element[9].target.equivalence = #equivalent
* group[0].element[9].target.code = #practitioner(Practitioner.name.use)
* group[0].element[9].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[9].target.extension[0].extension[0].url = "type"
* group[0].element[9].target.extension[0].extension[0].valueCode = #"code"
* group[0].element[9].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[9].target.extension[0].extension[1].valueInteger = 1
* group[0].element[9].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[9].target.extension[0].extension[2].valueInteger = 1
* group[0].element[9].target.extension[0].extension[3].url = "mappedVia"
* group[0].element[9].target.extension[0].extension[3].valueUrl = "ConceptMap/table-hl70200-to-name-use"
* group[0].element[9].target.display = "practitioner(Practitioner.name.use)"
* group[0].element[10].code = #XCN.11
* group[0].element[10].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[10].extension[0].extension[0].url = "type"
* group[0].element[10].extension[0].extension[0].valueCode = #"ST"
* group[0].element[10].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[10].extension[0].extension[1].valueInteger = 0
* group[0].element[10].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[10].extension[0].extension[2].valueInteger = 1
* group[0].element[10].display = "Identifier Check Digit"
* group[0].element[10].target.equivalence = #equivalent
* group[0].element[10].target.code = #practitioner(Practitioner.identifier.extension[1].url)
* group[0].element[10].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[10].target.extension[0].extension[0].url = "type"
* group[0].element[10].target.extension[0].extension[0].valueCode = #"uri"
* group[0].element[10].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[10].target.extension[0].extension[1].valueInteger = 1
* group[0].element[10].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[10].target.extension[0].extension[2].valueInteger = 1
* group[0].element[10].target.extension[0].extension[3].url = "assignment"
* group[0].element[10].target.extension[0].extension[3].valueString = "\"http://hl7.org/fhir/StructureDefinition/identifier-checkDigit\""
* group[0].element[10].target.display = "practitioner(Practitioner.identifier.extension[1].url)"
* group[0].element[11].code = #XCN.11
* group[0].element[11].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[11].extension[0].extension[0].url = "type"
* group[0].element[11].extension[0].extension[0].valueCode = #"ST"
* group[0].element[11].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[11].extension[0].extension[1].valueInteger = 0
* group[0].element[11].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[11].extension[0].extension[2].valueInteger = 1
* group[0].element[11].display = "Identifier Check Digit"
* group[0].element[11].target.equivalence = #equivalent
* group[0].element[11].target.code = #practitioner(Practitioner.identifier.extension[1].valueString)
* group[0].element[11].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[11].target.extension[0].extension[0].url = "type"
* group[0].element[11].target.extension[0].extension[0].valueCode = #"string"
* group[0].element[11].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[11].target.extension[0].extension[1].valueInteger = 1
* group[0].element[11].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[11].target.extension[0].extension[2].valueInteger = 1
* group[0].element[11].target.display = "practitioner(Practitioner.identifier.extension[1].valueString)"
* group[0].element[12].code = #XCN.12
* group[0].element[12].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[12].extension[0].extension[0].url = "type"
* group[0].element[12].extension[0].extension[0].valueCode = #"ID"
* group[0].element[12].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[12].extension[0].extension[1].valueInteger = 0
* group[0].element[12].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[12].extension[0].extension[2].valueInteger = 1
* group[0].element[12].display = "Check Digit Scheme"
* group[0].element[12].target.equivalence = #equivalent
* group[0].element[12].target.code = #practitioner(Practitioner.identifier.extension[2].url)
* group[0].element[12].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[12].target.extension[0].extension[0].url = "type"
* group[0].element[12].target.extension[0].extension[0].valueCode = #"uri"
* group[0].element[12].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[12].target.extension[0].extension[1].valueInteger = 1
* group[0].element[12].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[12].target.extension[0].extension[2].valueInteger = 1
* group[0].element[12].target.extension[0].extension[3].url = "assignment"
* group[0].element[12].target.extension[0].extension[3].valueString = "\"http://hl7.org/fhir/StructureDefinition/namingsystem-checkDigit\""
* group[0].element[12].target.display = "practitioner(Practitioner.identifier.extension[2].url)"
* group[0].element[13].code = #XCN.12
* group[0].element[13].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[13].extension[0].extension[0].url = "type"
* group[0].element[13].extension[0].extension[0].valueCode = #"ID"
* group[0].element[13].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[13].extension[0].extension[1].valueInteger = 0
* group[0].element[13].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[13].extension[0].extension[2].valueInteger = 1
* group[0].element[13].display = "Check Digit Scheme"
* group[0].element[13].target.equivalence = #equivalent
* group[0].element[13].target.code = #practitioner(Practitioner.identifier.extension[2].valueString)
* group[0].element[13].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[13].target.extension[0].extension[0].url = "type"
* group[0].element[13].target.extension[0].extension[0].valueCode = #"string"
* group[0].element[13].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[13].target.extension[0].extension[1].valueInteger = 1
* group[0].element[13].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[13].target.extension[0].extension[2].valueInteger = 1
* group[0].element[13].target.display = "practitioner(Practitioner.identifier.extension[2].valueString)"
* group[0].element[14].code = #XCN.13
* group[0].element[14].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[14].extension[0].extension[0].url = "type"
* group[0].element[14].extension[0].extension[0].valueCode = #"ID"
* group[0].element[14].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[14].extension[0].extension[1].valueInteger = 0
* group[0].element[14].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[14].extension[0].extension[2].valueInteger = 1
* group[0].element[14].display = "Identifier Type Code"
* group[0].element[14].target.equivalence = #equivalent
* group[0].element[14].target.code = #practitioner(Practitioner.identifier.type.coding.code)
* group[0].element[14].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[14].target.extension[0].extension[0].url = "type"
* group[0].element[14].target.extension[0].extension[0].valueCode = #"code"
* group[0].element[14].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[14].target.extension[0].extension[1].valueInteger = 1
* group[0].element[14].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[14].target.extension[0].extension[2].valueInteger = 1
* group[0].element[14].target.extension[0].extension[3].url = "mappedVia"
* group[0].element[14].target.extension[0].extension[3].valueUrl = "ConceptMap/table-hl70203-to-v2-0203"
* group[0].element[14].target.display = "practitioner(Practitioner.identifier.type.coding.code)"
* group[0].element[15].code = #XCN.17
* group[0].element[15].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[15].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[15].extension[0].extension[0].valueInteger = 0
* group[0].element[15].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[15].extension[0].extension[1].valueInteger = 1
* group[0].element[15].display = "Name Validity Range"
* group[0].element[15].target.equivalence = #equivalent
* group[0].element[15].target.code = #practitioner(Practitioner.name.period)
* group[0].element[15].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[15].target.extension[0].extension[0].url = "type"
* group[0].element[15].target.extension[0].extension[0].valueCode = #"Period"
* group[0].element[15].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[15].target.extension[0].extension[1].valueInteger = 1
* group[0].element[15].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[15].target.extension[0].extension[2].valueInteger = 1
* group[0].element[15].target.display = "practitioner(Practitioner.name.period)"
* group[0].element[15].target.dependsOn[0].property = "Computable-ANTLR"
* group[0].element[15].target.dependsOn[0].value = "IF XCN.19 NOT VALUED XCN.20 NOT VALUED"
* group[0].element[16].code = #XCN.18
* group[0].element[16].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[16].extension[0].extension[0].url = "type"
* group[0].element[16].extension[0].extension[0].valueCode = #"ID"
* group[0].element[16].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[16].extension[0].extension[1].valueInteger = 0
* group[0].element[16].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[16].extension[0].extension[2].valueInteger = 1
* group[0].element[16].display = "Name Assembly Order"
* group[0].element[16].target.equivalence = #equivalent
* group[0].element[16].target.code = #practitioner(Practitioner.name.family.extension.url)
* group[0].element[16].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[16].target.extension[0].extension[0].url = "type"
* group[0].element[16].target.extension[0].extension[0].valueCode = #"uri"
* group[0].element[16].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[16].target.extension[0].extension[1].valueInteger = 1
* group[0].element[16].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[16].target.extension[0].extension[2].valueInteger = 1
* group[0].element[16].target.extension[0].extension[3].url = "assignment"
* group[0].element[16].target.extension[0].extension[3].valueString = "\"http://hl7.org/fhir/R4/extension-humanname-assembly-order.html\""
* group[0].element[16].target.display = "practitioner(Practitioner.name.family.extension.url)"
* group[0].element[17].code = #XCN.18
* group[0].element[17].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[17].extension[0].extension[0].url = "type"
* group[0].element[17].extension[0].extension[0].valueCode = #"ID"
* group[0].element[17].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[17].extension[0].extension[1].valueInteger = 0
* group[0].element[17].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[17].extension[0].extension[2].valueInteger = 1
* group[0].element[17].display = "Name Assembly Order"
* group[0].element[17].target.equivalence = #equivalent
* group[0].element[17].target.code = #practitioner(Practitioner.name.family.extension.valueCode)
* group[0].element[17].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[17].target.extension[0].extension[0].url = "type"
* group[0].element[17].target.extension[0].extension[0].valueCode = #"code"
* group[0].element[17].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[17].target.extension[0].extension[1].valueInteger = 1
* group[0].element[17].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[17].target.extension[0].extension[2].valueInteger = 1
* group[0].element[17].target.extension[0].extension[3].url = "mappedVia"
* group[0].element[17].target.extension[0].extension[3].valueUrl = "ConceptMap/table-hl70444-to-v2-0444"
* group[0].element[17].target.display = "practitioner(Practitioner.name.family.extension.valueCode)"
* group[0].element[18].code = #XCN.19
* group[0].element[18].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[18].extension[0].extension[0].url = "type"
* group[0].element[18].extension[0].extension[0].valueCode = #"DTM"
* group[0].element[18].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[18].extension[0].extension[1].valueInteger = 0
* group[0].element[18].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[18].extension[0].extension[2].valueInteger = 1
* group[0].element[18].display = "Effective Date"
* group[0].element[18].target.equivalence = #equivalent
* group[0].element[18].target.code = #practitioner(Practitioner.name.period.start)
* group[0].element[18].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[18].target.extension[0].extension[0].url = "type"
* group[0].element[18].target.extension[0].extension[0].valueCode = #"dateTime"
* group[0].element[18].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[18].target.extension[0].extension[1].valueInteger = 1
* group[0].element[18].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[18].target.extension[0].extension[2].valueInteger = 1
* group[0].element[18].target.display = "practitioner(Practitioner.name.period.start)"
* group[0].element[19].code = #XCN.20
* group[0].element[19].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[19].extension[0].extension[0].url = "type"
* group[0].element[19].extension[0].extension[0].valueCode = #"DTM"
* group[0].element[19].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[19].extension[0].extension[1].valueInteger = 0
* group[0].element[19].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[19].extension[0].extension[2].valueInteger = 1
* group[0].element[19].display = "Expiration Date"
* group[0].element[19].target.equivalence = #equivalent
* group[0].element[19].target.code = #practitioner(Practitioner.name.period.end)
* group[0].element[19].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[19].target.extension[0].extension[0].url = "type"
* group[0].element[19].target.extension[0].extension[0].valueCode = #"dateTime"
* group[0].element[19].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[19].target.extension[0].extension[1].valueInteger = 1
* group[0].element[19].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[19].target.extension[0].extension[2].valueInteger = 1
* group[0].element[19].target.display = "practitioner(Practitioner.name.period.end)"
* group[0].element[20].code = #XCN.21
* group[0].element[20].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[20].extension[0].extension[0].url = "type"
* group[0].element[20].extension[0].extension[0].valueCode = #"ST"
* group[0].element[20].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[20].extension[0].extension[1].valueInteger = 0
* group[0].element[20].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[20].extension[0].extension[2].valueInteger = 1
* group[0].element[20].display = "Professional Suffix"
* group[0].element[20].target.equivalence = #equivalent
* group[0].element[20].target.code = #practitioner(Practitioner.name.suffix)
* group[0].element[20].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[20].target.extension[0].extension[0].url = "type"
* group[0].element[20].target.extension[0].extension[0].valueCode = #"string"
* group[0].element[20].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[20].target.extension[0].extension[1].valueInteger = -1
* group[0].element[20].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[20].target.extension[0].extension[2].valueInteger = -1
* group[0].element[20].target.display = "practitioner(Practitioner.name.suffix)"
