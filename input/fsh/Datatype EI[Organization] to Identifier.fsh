// HL7 Data Type - FHIR R4_ EI[Identifier-Organization] - Sheet1.csv
Instance: DatatypeEIOrganizationToIdentifier
InstanceOf: ConceptMap
Title: "Datatype EI [Organization] to Identifier Map"
Usage: #definition
* title = "Datatype EI [Organization] to Identifier Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Datatype EI to the FHIR Identifier Data Type."
* id = "datatype-ei-organization-to-identifier"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/datatype-ei-organization-to-identifier"
* name = "DatatypeEIOrganizationToIdentifier"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Datatype EI[Organization] to Identifier.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/13TeEW85bdgVNB9RZPaKKI9Q1xBCoMGppd5gNBbhH9qc/edit#gid=0"
* group.element[0].code = #EI.1
* group.element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].extension[0].extension[0].url = "type"
* group.element[0].extension[0].extension[0].valueCode = #"ST"
* group.element[0].extension[0].extension[1].url = "cardinalityMin"
* group.element[0].extension[0].extension[1].valueInteger = 0
* group.element[0].extension[0].extension[2].url = "cardinalityMax"
* group.element[0].extension[0].extension[2].valueInteger = 1
* group.element[0].display = "Entity Identifier"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #value
* group.element[0].target.display = "value"
* group.element[1].code = #EI.2
* group.element[1].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[1].extension[0].extension[0].url = "type"
* group.element[1].extension[0].extension[0].valueCode = #"IS"
* group.element[1].extension[0].extension[1].url = "cardinalityMin"
* group.element[1].extension[0].extension[1].valueInteger = 0
* group.element[1].extension[0].extension[2].url = "cardinalityMax"
* group.element[1].extension[0].extension[2].valueInteger = 1
* group.element[1].display = "Namespace ID"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #assigner(Organization[1].identifier[1].value)
* group.element[1].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[1].target.extension[0].extension[0].url = "type"
* group.element[1].target.extension[0].extension[0].valueCode = #"string"
* group.element[1].target.display = "assigner(Organization[1].identifier[1].value)"
* group.element[1].target.comment = "Note that, even though the HL7 v2 component sounds like a type or category of organization (using IS), the intent is to point to the specific oranization that assigned the identifier value in EI.1"
* group.element[2].code = #EI.3
* group.element[2].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[2].extension[0].extension[0].url = "type"
* group.element[2].extension[0].extension[0].valueCode = #"ST"
* group.element[2].extension[0].extension[1].url = "cardinalityMin"
* group.element[2].extension[0].extension[1].valueInteger = 0
* group.element[2].extension[0].extension[2].url = "cardinalityMax"
* group.element[2].extension[0].extension[2].valueInteger = 1
* group.element[2].display = "Universal ID"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #assigner(Organization[1].identifier[2].value)
* group.element[2].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[2].target.extension[0].extension[0].url = "type"
* group.element[2].target.extension[0].extension[0].valueCode = #"uri"
* group.element[2].target.display = "assigner(Organization[1].identifier[2].value)"
* group.element[3].code = #EI.4
* group.element[3].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[3].extension[0].extension[0].url = "type"
* group.element[3].extension[0].extension[0].valueCode = #"ID"
* group.element[3].extension[0].extension[1].url = "cardinalityMin"
* group.element[3].extension[0].extension[1].valueInteger = 0
* group.element[3].extension[0].extension[2].url = "cardinalityMax"
* group.element[3].extension[0].extension[2].valueInteger = 1
* group.element[3].display = "Universal ID Type"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #assigner(Organization[1].identifier[2].type)
* group.element[3].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[3].target.extension[0].extension[0].url = "type"
* group.element[3].target.extension[0].extension[0].valueCode = #"CodeableConcept"
* group.element[3].target.display = "assigner(Organization[1].identifier[2].type)"
