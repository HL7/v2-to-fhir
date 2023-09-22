// HL7 Concept Map_ EncounterPriority - Sheet1.csv
Instance: TableHL70217ToV3ActPriority
InstanceOf: ConceptMap
Title: "Table HL70217 to V3 ActPriority Map"
* title = "Table HL70217 to V3 ActPriority Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70217 to the FHIR V3 ActPriority Value Set."
* id = "table-hl70217-to-v3-actpriority"
* url = "http://hl7.org/fhir/uv/v2mappings/table-hl70217-to-v3-actpriority"
* version = "1.0"
* name = "TableHL70217ToV3ActPriority"
* status = #active
* experimental = true
* date = "2023-09-22"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "HL70217"
* targetUri = "http://terminology.hl7.org/CodeSystem/v3-ActPriority"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70217 to V3 ActPriority.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/12v60aOPnLth4NipsjZyT9ibz5E7JSLgSsPMop2U1JgA/edit#gid=0"
* group.element[0].code = #1
* group.element[0].display = "Emergency"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #EM
* group.element[0].target.display = "emergency"
* group.element[1].code = #2
* group.element[1].display = "Urgent"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #UR
* group.element[1].target.display = "urgent"
* group.element[2].code = #3
* group.element[2].display = "Elective"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #EL
* group.element[2].target.display = "elective"
