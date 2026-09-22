// HL7 Segment - FHIR E2_ SPM[ServiceRequest] - SPM.csv
Instance: SegmentSPMToServiceRequest
InstanceOf: ConceptMap
Title: "Segment SPM to ServiceRequest Map"
Usage: #definition
* title = "Segment SPM to ServiceRequest Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Segment SPM to the FHIR ServiceRequest Resource."
* id = "segment-spm-to-servicerequest"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/segment-spm-to-servicerequest"
* name = "SegmentSPMToServiceRequest"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Segment SPM to ServiceRequest.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1l_j_zF-4t2TzuiwYobNCvx3-mKX3Y_Ek53JH2Jp1ANI/edit?gid=0#gid=0"
* group[0].element[0].code = #SPM-21
* group[0].element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].extension[0].extension[0].url = "type"
* group[0].element[0].extension[0].extension[0].valueCode = #"CWE"
* group[0].element[0].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[0].extension[0].extension[1].valueInteger = -1
* group[0].element[0].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[0].extension[0].extension[2].valueInteger = -1
* group[0].element[0].display = "Specimen Reject Reason"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #specimen.extension.url
* group[0].element[0].target.display = "specimen.extension.url"
* group[0].element[0].target.comment = "This should be mapped top the correct ServiceRequest.dataAbsentReason as the speciman is rejected in the context of a particular test given the specimen condition.  Since the placement of the SPM in the message is not always clear as to which ORC/OBR it relates to, we cannot provide specific mapping beyond the vocabulary map."
* group[0].element[1].code = #SPM-21
* group[0].element[1].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[1].extension[0].extension[0].url = "type"
* group[0].element[1].extension[0].extension[0].valueCode = #"CWE"
* group[0].element[1].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[1].extension[0].extension[1].valueInteger = -1
* group[0].element[1].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[1].extension[0].extension[2].valueInteger = -1
* group[0].element[1].display = "Specimen Reject Reason"
* group[0].element[1].target.equivalence = #equivalent
* group[0].element[1].target.code = #specimen.extension.valueCodeableConcept
* group[0].element[1].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[1].target.extension[0].extension[0].url = "type"
* group[0].element[1].target.extension[0].extension[0].valueCode = #"CodeableConcept"
* group[0].element[1].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[1].target.extension[0].extension[1].valueInteger = 0
* group[0].element[1].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[1].target.extension[0].extension[2].valueInteger = 1
* group[0].element[1].target.extension[0].extension[3].url = "mappedVia"
* group[0].element[1].target.extension[0].extension[3].valueUrl = "ConceptMap/table-hl70490-to-v2-0490"
* group[0].element[1].target.display = "specimen.extension.valueCodeableConcept"
