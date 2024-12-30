// HL7 Concept Map_ HospitalService - Sheet1.csv
Instance: TableHL70069ToServiceType
InstanceOf: ConceptMap
Title: "Table HL70069 to Service Type Map"
* title = "Table HL70069 to Service Type Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70069 to the FHIR Service Type Value Set."
* id = "table-hl70069-to-service-type"
* url = "http://hl7.org/fhir/uv/v2mappings/table-hl70069-to-service-type"
* version = "1.0"
* name = "TableHL70069ToServiceType"
* status = #active
* experimental = true
* date = "2024-12-29"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "HL70069"
* targetUri = "http://terminology.hl7.org/CodeSystem/service-type"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70069 to Service Type.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1fSIQqfva5y93Y_3UAE6SnSodQevLGUuumI2WFiedc8k/edit?gid=0#gid=0"
* group.element[0].code = #MED
* group.element[0].display = "Medical Service"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #382
* group.element[0].target.display = "Medical Services"
* group.element[1].code = #SUR
* group.element[1].display = "Surgical Service"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #SUR
* group.element[1].target.display = "Surgical Service"
* group.element[2].code = #URO
* group.element[2].display = "Urology Service"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #222
* group.element[2].target.display = "Urology"
* group.element[3].code = #PUL
* group.element[3].display = "Pulmonary Service"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #PUL
* group.element[3].target.display = "Pulmonary Service"
* group.element[4].code = #CAR
* group.element[4].display = "Cardiac Service"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #CAR
* group.element[4].target.display = "Cardiac Service"
