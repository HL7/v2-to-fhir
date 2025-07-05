// HL7 Concept Map_ HospitalService - Sheet1.csv
Instance: TableHL70069ToServiceType
InstanceOf: ConceptMap
Title: "Table HL70069 to Service Type Map"
Usage: #definition
* title = "Table HL70069 to Service Type Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Table HL70069 to the FHIR Service Type Value Set."
* id = "table-hl70069-to-service-type"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/table-hl70069-to-service-type"
* name = "TableHL70069ToServiceType"
* sourceUri = "http://terminology.hl7.org/ValueSet/v2-0069"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Table HL70069 to Service Type.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1fSIQqfva5y93Y_3UAE6SnSodQevLGUuumI2WFiedc8k/edit?gid=0#gid=0"
* group[0].source = "http://terminology.hl7.org/CodeSystem/v2-0069"
* group[0].target = "http://terminology.hl7.org/CodeSystem/service-type"
* group[0].element[0].code = #MED
* group[0].element[0].display = "Medical Service"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #382
* group[0].element[0].target.display = "Medical Services"
* group[0].element[1].code = #URO
* group[0].element[1].display = "Urology Service"
* group[0].element[1].target.equivalence = #equivalent
* group[0].element[1].target.code = #222
* group[0].element[1].target.display = "Urology"
* group[1].source = "http://terminology.hl7.org/CodeSystem/v2-0069"
* group[1].target = "http://terminology.hl7.org/CodeSystem/v2-0069"
* group[1].element[0].code = #SUR
* group[1].element[0].display = "Surgical Service"
* group[1].element[0].target.equivalence = #equivalent
* group[1].element[0].target.code = #SUR
* group[1].element[0].target.display = "Surgical Service"
* group[1].element[1].code = #PUL
* group[1].element[1].display = "Pulmonary Service"
* group[1].element[1].target.equivalence = #equivalent
* group[1].element[1].target.code = #PUL
* group[1].element[1].target.display = "Pulmonary Service"
* group[1].element[2].code = #CAR
* group[1].element[2].display = "Cardiac Service"
* group[1].element[2].target.equivalence = #equivalent
* group[1].element[2].target.code = #CAR
* group[1].element[2].target.display = "Cardiac Service"
