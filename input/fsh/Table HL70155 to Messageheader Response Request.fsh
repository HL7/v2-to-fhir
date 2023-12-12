// HL7 Concept Map_ Acknowledgements - Sheet1.csv
Instance: TableHL70155ToMessageheaderResponseRequest
InstanceOf: ConceptMap
Title: "Table HL70155 to Messageheader Response Request Map"
* title = "Table HL70155 to Messageheader Response Request Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70155 to the FHIR Messageheader Response Request Value Set."
* id = "table-hl70155-to-messageheader-response-request"
* url = "http://hl7.org/fhir/uv/v2mappings/table-hl70155-to-messageheader-response-request"
* version = "1.0"
* name = "TableHL70155ToMessageheaderResponseRequest"
* status = #active
* experimental = true
* date = "2023-12-12"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "HL70155"
* targetUri = "http://hl7.org/fhir/messageheader-response-request"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70155 to Messageheader Response Request.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/12TJrysXA2lpcnYd-2TRljHmjYxn8nzPUh1AYbM4IFxw/edit#gid=0"
* group.element[0].code = #AL
* group.element[0].display = "Always"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #always
* group.element[0].target.display = "Always"
* group.element[1].code = #NE
* group.element[1].display = "Never"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #never
* group.element[1].target.display = "Never"
* group.element[2].code = #ER
* group.element[2].display = "Error/reject conditions only"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #on-error
* group.element[2].target.display = "Error/reject conditions only"
* group.element[3].code = #SU
* group.element[3].display = "Successful completion only"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #on-success
* group.element[3].target.display = "Successful completion only"
