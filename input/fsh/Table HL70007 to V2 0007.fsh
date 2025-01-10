// HL7 Concept Map_ AdmissionType - Sheet1.csv
Instance: TableHL70007ToV20007
InstanceOf: ConceptMap
Title: "Table HL70007 to V2 0007 Map"
Usage: #definition
* title = "Table HL70007 to V2 0007 Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70007 to the FHIR V2 0007 Value Set."
* id = "table-hl70007-to-v2-0007"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/table-hl70007-to-v2-0007"
* name = "TableHL70007ToV20007"
* sourceUri = "http://terminology.hl7.org/ValueSet/v2-0007"
* targetUri = "null"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70007 to V2 0007.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1KJsdOBI-L2BD2DpItURTDZ7o-rGNEYIZZMBNEoiqhrI/edit#gid=0"
* group.element[0].code = #A
* group.element[0].display = "Accident"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #A
* group.element[0].target.display = "Accident"
* group.element[1].code = #E
* group.element[1].display = "Emergency"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #E
* group.element[1].target.display = "Emergency"
* group.element[2].code = #L
* group.element[2].display = "Labor and Delivery"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #L
* group.element[2].target.display = "Labor and Delivery"
* group.element[3].code = #R
* group.element[3].display = "Routine"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #R
* group.element[3].target.display = "Routine"
* group.element[4].code = #N
* group.element[4].display = "Newborn (Birth in healthcare facility)"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #N
* group.element[4].target.display = "Newborn (Birth in healthcare facility)"
* group.element[5].code = #U
* group.element[5].display = "Urgent"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #U
* group.element[5].target.display = "Urgent"
* group.element[6].code = #C
* group.element[6].display = "Elective"
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #C
* group.element[6].target.display = "Elective"
