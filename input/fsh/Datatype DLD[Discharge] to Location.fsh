// HL7 Data Type - FHIR R4_ DLD[Location-Discharge] - Sheet1.csv
Instance: DatatypeDLDDischargeToLocation
InstanceOf: ConceptMap
Title: "Datatype DLD [Discharge] to Location Map"
Usage: #definition
* title = "Datatype DLD [Discharge] to Location Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Datatype DLD to the FHIR Location Resource."
* id = "datatype-dld-discharge-to-location"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/datatype-dld-discharge-to-location"
* name = "DatatypeDLDDischargeToLocation"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Datatype DLD[Discharge] to Location.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1lUw9g0EWTpvOZ-4GBPpvOh-djKs_38GZTDxhMz3WgwE/edit#gid=0"
* group[0].element[0].code = #DLD.1
* group[0].element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].extension[0].extension[0].url = "type"
* group[0].element[0].extension[0].extension[0].valueCode = #"CWE"
* group[0].element[0].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[0].extension[0].extension[1].valueInteger = 1
* group[0].element[0].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[0].extension[0].extension[2].valueInteger = 1
* group[0].element[0].display = "Discharge to Location"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #type
* group[0].element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].target.extension[0].extension[0].url = "type"
* group[0].element[0].target.extension[0].extension[0].valueCode = #"CodeableConcept"
* group[0].element[0].target.extension[0].extension[1].url = "mappedVia"
* group[0].element[0].target.extension[0].extension[1].valueUrl = "unspecified_mapping"
* group[0].element[0].target.display = "type"
