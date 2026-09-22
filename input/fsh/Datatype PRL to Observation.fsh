// HL7 Data Type - FHIR E2_ PRL[Observation] - OBX.csv
Instance: DatatypePRLToObservation
InstanceOf: ConceptMap
Title: "Datatype PRL to Observation Map"
Usage: #definition
* title = "Datatype PRL to Observation Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Datatype PRL to the FHIR Observation Resource."
* id = "datatype-prl-to-observation"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/datatype-prl-to-observation"
* name = "DatatypePRLToObservation"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Datatype PRL to Observation.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1tDvu3KX2ag9_uFrdS2eaWjs48U_z8QY0VSNhJFJJD9k/edit?gid=0#gid=0"
* group[0].element[0].code = #PRL.1
* group[0].element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].extension[0].extension[0].url = "type"
* group[0].element[0].extension[0].extension[0].valueCode = #"CWE"
* group[0].element[0].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[0].extension[0].extension[1].valueInteger = 1
* group[0].element[0].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[0].extension[0].extension[2].valueInteger = 1
* group[0].element[0].display = "Parent Observation Identifier"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #code
* group[0].element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].target.extension[0].extension[0].url = "type"
* group[0].element[0].target.extension[0].extension[0].valueCode = #"CodeableConcept"
* group[0].element[0].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[0].target.extension[0].extension[1].valueInteger = 1
* group[0].element[0].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[0].target.extension[0].extension[2].valueInteger = 1
* group[0].element[0].target.display = "code"
* group[0].element[0].target.comment = "Note that in Observation there is category field that depending on implementation guide and/or realm is required.   MSH-9.2 Trigger Event, the MSH-3 Sending Application and OBX-3 Observation Identifier's code system ontology  would inform how to value Observation.category."
* group[0].element[1].code = #PRL.3
* group[0].element[1].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[1].extension[0].extension[0].url = "type"
* group[0].element[1].extension[0].extension[0].valueCode = #"TX"
* group[0].element[1].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[1].extension[0].extension[1].valueInteger = 0
* group[0].element[1].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[1].extension[0].extension[2].valueInteger = 1
* group[0].element[1].display = "Parent Observation Value Descriptor"
* group[0].element[1].target.equivalence = #equivalent
* group[0].element[1].target.code = #valueString
* group[0].element[1].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[1].target.extension[0].extension[0].url = "type"
* group[0].element[1].target.extension[0].extension[0].valueCode = #"quantity"
* group[0].element[1].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[1].target.extension[0].extension[1].valueInteger = 1
* group[0].element[1].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[1].target.extension[0].extension[2].valueInteger = 1
* group[0].element[1].target.display = "valueString"
