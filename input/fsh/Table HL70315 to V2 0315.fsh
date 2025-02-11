// HL7 Concept Map_ LivingWillCode - Sheet1.csv
Instance: TableHL70315ToV20315
InstanceOf: ConceptMap
Title: "Table HL70315 to V2 0315 Map"
Usage: #definition
* title = "Table HL70315 to V2 0315 Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70315 to the FHIR V2 0315 Value Set."
* id = "table-hl70315-to-v2-0315"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/table-hl70315-to-v2-0315"
* name = "TableHL70315ToV20315"
* sourceUri = "http://terminology.hl7.org/ValueSet/v2-0315"
* targetUri = "null"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70315 to V2 0315.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/13BsPLL6w_cY2WpvpikQcwD1T4X5Vg7cm94BNNwLwp5Q/edit?gid=0#gid=0"
* group.element[0].code = #Y
* group.element[0].display = "Yes, patient has a living will"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #Y
* group.element[0].target.display = "Yes, patient has a living will"
* group.element[1].code = #F
* group.element[1].display = "Yes, patient has a living will but it is not on file"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #F
* group.element[1].target.display = "Yes, patient has a living will but it is not on file"
* group.element[2].code = #N
* group.element[2].display = "No, patient does not have a living will and no information was provided"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #N
* group.element[2].target.display = "No, patient does not have a living will and no information was provided"
* group.element[3].code = #I
* group.element[3].display = "No, patient does not have a living will but information was provided"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #I
* group.element[3].target.display = "No, patient does not have a living will but information was provided"
* group.element[4].code = #U
* group.element[4].display = "Unknown"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #U
* group.element[4].target.display = "Unknown"
