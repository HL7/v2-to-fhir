// HL7 Concept Map_ YesNoIndicator - Sheet1.csv
Instance: TableHL70136ToSpecialValues
InstanceOf: ConceptMap
Title: "Table HL70136 to Special Values Map"
* title = "Table HL70136 to Special Values Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70136 to the FHIR Special Values Value Set."
* id = "table-hl70136-to-special-values"
* url = "http://hl7.org/fhir/uv/v2mappings/table-hl70136-to-special-values"
* version = "1.0"
* name = "TableHL70136ToSpecialValues"
* status = #active
* experimental = true
* date = "2024-12-29"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "HL70136"
* targetUri = "http://terminology.hl7.org/CodeSystem/special-values"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70136 to Special Values.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1MyCLfcQhfwFMXIqTKkSsWrhkPj4FueY1qg0EuMW8tmU/edit#gid=0"
* group.element[0].code = #Y
* group.element[0].display = "Yes"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #true
* group.element[1].code = #N
* group.element[1].display = "No"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #false
