// HL7 Concept Map_ CommentType - Sheet1.csv
Instance: TableHL70364ToV20364
InstanceOf: ConceptMap
Title: "Table HL70364 to V2 0364 Map"
Usage: #definition
* title = "Table HL70364 to V2 0364 Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70364 to the FHIR V2 0364 Value Set."
* id = "table-hl70364-to-v2-0364"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/table-hl70364-to-v2-0364"
* name = "TableHL70364ToV20364"
* sourceUri = "http://terminology.hl7.org/ValueSet/v2-0364"
* targetUri = "null"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70364 to V2 0364.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1kpfJ4WKuc_Gc6sSIUgnTMTpjiAvDRrtP_V4_ylfHxDQ/edit#gid=0"
* group.element[0].code = #PI
* group.element[0].display = "Patient Instructions"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #PI
* group.element[0].target.display = "Patient Instructions"
* group.element[1].code = #AI
* group.element[1].display = "Ancillary Instructions"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #AI
* group.element[1].target.display = "Ancillary Instructions"
* group.element[2].code = #GI
* group.element[2].display = "General Instructions"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #GI
* group.element[2].target.display = "General Instructions"
* group.element[3].code = #1R
* group.element[3].display = "Primary Reason"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #1R
* group.element[3].target.display = "Primary Reason"
* group.element[4].code = #2R
* group.element[4].display = "Secondary Reason"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #2R
* group.element[4].target.display = "Secondary Reason"
* group.element[5].code = #GR
* group.element[5].display = "General Reason"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #GR
* group.element[5].target.display = "General Reason"
* group.element[6].code = #RE
* group.element[6].display = "Remark"
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #RE
* group.element[6].target.display = "Remark"
* group.element[7].code = #DR
* group.element[7].display = "Duplicate/Interaction Reason"
* group.element[7].target.equivalence = #equivalent
* group.element[7].target.code = #DR
* group.element[7].target.display = "Duplicate/Interaction Reason"
