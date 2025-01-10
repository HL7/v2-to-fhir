// HL7 Concept Map_ YesNoIndicator[AvailabilityStatus] - Sheet1.csv
Instance: TableHL70136ToSpecimenStatus
InstanceOf: ConceptMap
Title: "Table HL70136 to Specimen Status Map"
Usage: #definition
* title = "Table HL70136 to Specimen Status Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70136 to the FHIR Specimen Status Value Set."
* id = "table-hl70136-to-specimen-status"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/table-hl70136-to-specimen-status"
* name = "TableHL70136ToSpecimenStatus"
* sourceUri = "http://terminology.hl7.org/ValueSet/v2-0136"
* targetUri = "http://hl7.org/fhir/ValueSet/specimen-status"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70136 to Specimen Status.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1A0BO7VVM63LqFDBt0sD_4jqI_tZJcFsng3O-fcCnHz8/edit?gid=0#gid=0"
* group.element[0].code = #Y
* group.element[0].display = "Yes"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #available
* group.element[0].target.display = "Available"
* group.element[1].code = #N
* group.element[1].display = "No"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #unavailable
* group.element[1].target.display = "Unavailable"
