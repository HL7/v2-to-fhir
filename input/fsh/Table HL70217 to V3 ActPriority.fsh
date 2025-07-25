// HL7 Concept Map_ EncounterPriority - Sheet1.csv
Instance: TableHL70217ToV3ActPriority
InstanceOf: ConceptMap
Title: "Table HL70217 to V3 ActPriority Map"
Usage: #definition
* title = "Table HL70217 to V3 ActPriority Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70217 to the FHIR V3 ActPriority Value Set."
* id = "table-hl70217-to-v3-actpriority"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/table-hl70217-to-v3-actpriority"
* name = "TableHL70217ToV3ActPriority"
* sourceUri = "http://terminology.hl7.org/ValueSet/v2-0217"
* targetUri = "http://terminology.hl7.org/ValueSet/v3-ActPriority"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70217 to V3 ActPriority.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/12v60aOPnLth4NipsjZyT9ibz5E7JSLgSsPMop2U1JgA/edit#gid=0"
* group[0].source = "http://terminology.hl7.org/CodeSystem/v2-0217"
* group[0].target = "http://terminology.hl7.org/CodeSystem/v3-ActPriority"
* group[0].element[0].code = #1
* group[0].element[0].display = "Emergency"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #EM
* group[0].element[0].target.display = "emergency"
* group[0].element[1].code = #2
* group[0].element[1].display = "Urgent"
* group[0].element[1].target.equivalence = #equivalent
* group[0].element[1].target.code = #UR
* group[0].element[1].target.display = "urgent"
* group[0].element[2].code = #3
* group[0].element[2].display = "Elective"
* group[0].element[2].target.equivalence = #equivalent
* group[0].element[2].target.code = #EL
* group[0].element[2].target.display = "elective"
