// HL7 Segment - FHIR R4_ RXR[Immunization] - RXR.csv
Instance: SegmentRXRToImmunization
InstanceOf: ConceptMap
Title: "Segment RXR to Immunization Map"
Usage: #definition
* title = "Segment RXR to Immunization Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Segment RXR to the FHIR Immunization Resource."
* id = "segment-rxr-to-immunization"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/segment-rxr-to-immunization"
* name = "SegmentRXRToImmunization"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Segment RXR to Immunization.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1ts04HItJMXe0nBzWKvmwibsLHYPvgokYl6Kn4Q_OMlY/edit#gid=0"
* group.element[0].code = #RXR-1
* group.element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].extension[0].extension[0].url = "type"
* group.element[0].extension[0].extension[0].valueCode = #"CWE"
* group.element[0].extension[0].extension[1].url = "cardinalityMin"
* group.element[0].extension[0].extension[1].valueInteger = 1
* group.element[0].extension[0].extension[2].url = "cardinalityMax"
* group.element[0].extension[0].extension[2].valueInteger = 1
* group.element[0].display = "Route"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #route
* group.element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].target.extension[0].extension[0].url = "type"
* group.element[0].target.extension[0].extension[0].valueCode = #"CodeableConcept"
* group.element[0].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[0].target.extension[0].extension[1].valueInteger = 0
* group.element[0].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[0].target.extension[0].extension[2].valueInteger = 1
* group.element[0].target.extension[0].extension[3].url = "mappedVia"
* group.element[0].target.extension[0].extension[3].valueUrl = "ConceptMap/table-hl70162-to-v2-0162"
* group.element[0].target.display = "route"
* group.element[1].code = #RXR-2
* group.element[1].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[1].extension[0].extension[0].url = "type"
* group.element[1].extension[0].extension[0].valueCode = #"CWE"
* group.element[1].extension[0].extension[1].url = "cardinalityMin"
* group.element[1].extension[0].extension[1].valueInteger = 1
* group.element[1].extension[0].extension[2].url = "cardinalityMax"
* group.element[1].extension[0].extension[2].valueInteger = 1
* group.element[1].display = "Administration Site"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #site
* group.element[1].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[1].target.extension[0].extension[0].url = "type"
* group.element[1].target.extension[0].extension[0].valueCode = #"CodeableConcept"
* group.element[1].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[1].target.extension[0].extension[1].valueInteger = 0
* group.element[1].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[1].target.extension[0].extension[2].valueInteger = 1
* group.element[1].target.extension[0].extension[3].url = "mappedVia"
* group.element[1].target.extension[0].extension[3].valueUrl = "ConceptMap/table-hl70550-to-v2-0550"
* group.element[1].target.display = "site"
