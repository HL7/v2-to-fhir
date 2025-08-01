// HL7 Segment - FHIR R4_ AL1[AllergyIntolerance] - AL1.csv
Instance: SegmentAL1ToAllergyIntolerance
InstanceOf: ConceptMap
Title: "Segment AL1 to AllergyIntolerance Map"
Usage: #definition
* title = "Segment AL1 to AllergyIntolerance Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Segment AL1 to the FHIR AllergyIntolerance Resource."
* id = "segment-al1-to-allergyintolerance"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/segment-al1-to-allergyintolerance"
* name = "SegmentAL1ToAllergyIntolerance"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Segment AL1 to AllergyIntolerance.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/10aUgY2Kw3sYlbaw-QHykWri8J3Fb3J_Xc7DvCY_nzyE/edit?usp=sharing"
* group[0].element[0].code = #AL1
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #clinicalStatus.coding.code
* group[0].element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].target.extension[0].extension[0].url = "type"
* group[0].element[0].target.extension[0].extension[0].valueCode = #"code"
* group[0].element[0].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[0].target.extension[0].extension[1].valueInteger = 0
* group[0].element[0].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[0].target.extension[0].extension[2].valueInteger = 1
* group[0].element[0].target.extension[0].extension[3].url = "assignment"
* group[0].element[0].target.extension[0].extension[3].valueString = "\"active\""
* group[0].element[0].target.display = "clinicalStatus.coding.code"
* group[0].element[0].target.comment = "While .clinicalStatus is not required, constraint ait-1 (AllergyIntolerance.clinicalStatus SHALL be present if verificationStatus is not entered-in-error.) does necessitate populating this element in the map as it's not possible to infer a verificationStatus of \"entered-in-error\" based on the data in AL1."
* group[0].element[1].code = #AL1
* group[0].element[1].target.equivalence = #equivalent
* group[0].element[1].target.code = #clinicalStatus.coding.system
* group[0].element[1].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[1].target.extension[0].extension[0].url = "type"
* group[0].element[1].target.extension[0].extension[0].valueCode = #"uri"
* group[0].element[1].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[1].target.extension[0].extension[1].valueInteger = 0
* group[0].element[1].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[1].target.extension[0].extension[2].valueInteger = 1
* group[0].element[1].target.extension[0].extension[3].url = "assignment"
* group[0].element[1].target.extension[0].extension[3].valueString = "\"http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical\""
* group[0].element[1].target.display = "clinicalStatus.coding.system"
* group[0].element[2].code = #AL1-2
* group[0].element[2].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[2].extension[0].extension[0].url = "type"
* group[0].element[2].extension[0].extension[0].valueCode = #"CWE"
* group[0].element[2].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[2].extension[0].extension[1].valueInteger = 1
* group[0].element[2].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[2].extension[0].extension[2].valueInteger = 1
* group[0].element[2].display = "Allergen Type Code"
* group[0].element[2].target.equivalence = #equivalent
* group[0].element[2].target.code = #category
* group[0].element[2].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[2].target.extension[0].extension[0].url = "type"
* group[0].element[2].target.extension[0].extension[0].valueCode = #"code"
* group[0].element[2].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[2].target.extension[0].extension[1].valueInteger = 0
* group[0].element[2].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[2].target.extension[0].extension[2].valueInteger = -1
* group[0].element[2].target.extension[0].extension[3].url = "mappedVia"
* group[0].element[2].target.extension[0].extension[3].valueUrl = "ConceptMap/table-hl70127-to-allergy-intolerance-category"
* group[0].element[2].target.display = "category"
* group[0].element[2].target.comment = """
The FHIR table has a "required" binding. Do we need to expand the values in the FHIR table?

Could other be used for:
Miscellaneous allergy
Miscellaneous contraindication
Animal Allergy

HL70127 is a user defined table\
"""
* group[0].element[3].code = #AL1-2
* group[0].element[3].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[3].extension[0].extension[0].url = "type"
* group[0].element[3].extension[0].extension[0].valueCode = #"CWE"
* group[0].element[3].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[3].extension[0].extension[1].valueInteger = 1
* group[0].element[3].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[3].extension[0].extension[2].valueInteger = 1
* group[0].element[3].display = "Allergen Type Code"
* group[0].element[3].target.equivalence = #equivalent
* group[0].element[3].target.code = #category.extension[1].url
* group[0].element[3].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[3].target.extension[0].extension[0].url = "type"
* group[0].element[3].target.extension[0].extension[0].valueCode = #"uri"
* group[0].element[3].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[3].target.extension[0].extension[1].valueInteger = 1
* group[0].element[3].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[3].target.extension[0].extension[2].valueInteger = 1
* group[0].element[3].target.extension[0].extension[3].url = "assignment"
* group[0].element[3].target.extension[0].extension[3].valueString = "\"http://hl7.org/fhir/StructureDefinition/alternate-codes\""
* group[0].element[3].target.display = "category.extension[1].url"
* group[0].element[4].code = #AL1-2
* group[0].element[4].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[4].extension[0].extension[0].url = "type"
* group[0].element[4].extension[0].extension[0].valueCode = #"CWE"
* group[0].element[4].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[4].extension[0].extension[1].valueInteger = 1
* group[0].element[4].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[4].extension[0].extension[2].valueInteger = 1
* group[0].element[4].display = "Allergen Type Code"
* group[0].element[4].target.equivalence = #equivalent
* group[0].element[4].target.code = #category.extension[1].valueCodeableConcept
* group[0].element[4].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[4].target.extension[0].extension[0].url = "type"
* group[0].element[4].target.extension[0].extension[0].valueCode = #"CodeableConcept"
* group[0].element[4].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[4].target.extension[0].extension[1].valueInteger = 1
* group[0].element[4].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[4].target.extension[0].extension[2].valueInteger = 1
* group[0].element[4].target.extension[0].extension[3].url = "mappedVia"
* group[0].element[4].target.extension[0].extension[3].valueUrl = "ConceptMap/table-hl70127-to-v2-0127"
* group[0].element[4].target.display = "category.extension[1].valueCodeableConcept"
* group[0].element[5].code = #AL1-2
* group[0].element[5].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[5].extension[0].extension[0].url = "type"
* group[0].element[5].extension[0].extension[0].valueCode = #"CWE"
* group[0].element[5].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[5].extension[0].extension[1].valueInteger = 1
* group[0].element[5].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[5].extension[0].extension[2].valueInteger = 1
* group[0].element[5].display = "Allergen Type Code"
* group[0].element[5].target.equivalence = #equivalent
* group[0].element[5].target.code = #type
* group[0].element[5].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[5].target.extension[0].extension[0].url = "type"
* group[0].element[5].target.extension[0].extension[0].valueCode = #"code"
* group[0].element[5].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[5].target.extension[0].extension[1].valueInteger = 0
* group[0].element[5].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[5].target.extension[0].extension[2].valueInteger = 1
* group[0].element[5].target.extension[0].extension[3].url = "mappedVia"
* group[0].element[5].target.extension[0].extension[3].valueUrl = "ConceptMap/table-hl70127-to-allergy-intolerance-type"
* group[0].element[5].target.display = "type"
* group[0].element[6].code = #AL1-3
* group[0].element[6].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[6].extension[0].extension[0].url = "type"
* group[0].element[6].extension[0].extension[0].valueCode = #"CWE"
* group[0].element[6].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[6].extension[0].extension[1].valueInteger = 1
* group[0].element[6].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[6].extension[0].extension[2].valueInteger = 1
* group[0].element[6].display = "Allergen Code/Mnemonic/Description"
* group[0].element[6].target.equivalence = #equivalent
* group[0].element[6].target.code = #code
* group[0].element[6].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[6].target.extension[0].extension[0].url = "type"
* group[0].element[6].target.extension[0].extension[0].valueCode = #"CodeableConcept"
* group[0].element[6].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[6].target.extension[0].extension[1].valueInteger = 0
* group[0].element[6].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[6].target.extension[0].extension[2].valueInteger = 1
* group[0].element[6].target.display = "code"
* group[0].element[7].code = #AL1-4
* group[0].element[7].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[7].extension[0].extension[0].url = "type"
* group[0].element[7].extension[0].extension[0].valueCode = #"CWE"
* group[0].element[7].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[7].extension[0].extension[1].valueInteger = 1
* group[0].element[7].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[7].extension[0].extension[2].valueInteger = 1
* group[0].element[7].display = "Allergy Severity Code"
* group[0].element[7].target.equivalence = #equivalent
* group[0].element[7].target.code = #criticality
* group[0].element[7].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[7].target.extension[0].extension[0].url = "type"
* group[0].element[7].target.extension[0].extension[0].valueCode = #"code"
* group[0].element[7].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[7].target.extension[0].extension[1].valueInteger = 0
* group[0].element[7].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[7].target.extension[0].extension[2].valueInteger = 1
* group[0].element[7].target.extension[0].extension[3].url = "mappedVia"
* group[0].element[7].target.extension[0].extension[3].valueUrl = "ConceptMap/table-hl70128-to-allergy-intolerance-criticality"
* group[0].element[7].target.display = "criticality"
* group[0].element[7].target.comment = "Note that AllergyIntolerance.reaction.severity is available in FHIR but from a base standard perspective that is actually not the most appropriate and would require that AL1-6 is valued as well.  However, a local implementation may have used vocabulary that better fits AllergyIntolerance.reaction.severity and should then consider that instead as a local variation.  Note that the .reaction though is at a particular time, while .criticality is an overall assement that matches HL7 v2 generally better."
* group[0].element[7].target.dependsOn[0].property = "Narrative-Condition"
* group[0].element[7].target.dependsOn[0].value = "If severity was used equivalent to criticality"
* group[0].element[8].code = #AL1-4
* group[0].element[8].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[8].extension[0].extension[0].url = "type"
* group[0].element[8].extension[0].extension[0].valueCode = #"CWE"
* group[0].element[8].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[8].extension[0].extension[1].valueInteger = 1
* group[0].element[8].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[8].extension[0].extension[2].valueInteger = 1
* group[0].element[8].display = "Allergy Severity Code"
* group[0].element[8].target.equivalence = #equivalent
* group[0].element[8].target.code = #criticality.extension[1].url
* group[0].element[8].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[8].target.extension[0].extension[0].url = "type"
* group[0].element[8].target.extension[0].extension[0].valueCode = #"uri"
* group[0].element[8].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[8].target.extension[0].extension[1].valueInteger = 1
* group[0].element[8].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[8].target.extension[0].extension[2].valueInteger = 1
* group[0].element[8].target.extension[0].extension[3].url = "assignment"
* group[0].element[8].target.extension[0].extension[3].valueString = "\"http://hl7.org/fhir/StructureDefinition/alternate-codes\""
* group[0].element[8].target.display = "criticality.extension[1].url"
* group[0].element[8].target.dependsOn[0].property = "Narrative-Condition"
* group[0].element[8].target.dependsOn[0].value = "If severity was used equivalent to criticality"
* group[0].element[9].code = #AL1-4
* group[0].element[9].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[9].extension[0].extension[0].url = "type"
* group[0].element[9].extension[0].extension[0].valueCode = #"CWE"
* group[0].element[9].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[9].extension[0].extension[1].valueInteger = 1
* group[0].element[9].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[9].extension[0].extension[2].valueInteger = 1
* group[0].element[9].display = "Allergy Severity Code"
* group[0].element[9].target.equivalence = #equivalent
* group[0].element[9].target.code = #criticality.extension[1].valueCodeableConcept
* group[0].element[9].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[9].target.extension[0].extension[0].url = "type"
* group[0].element[9].target.extension[0].extension[0].valueCode = #"CodeableConcept"
* group[0].element[9].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[9].target.extension[0].extension[1].valueInteger = 1
* group[0].element[9].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[9].target.extension[0].extension[2].valueInteger = 1
* group[0].element[9].target.extension[0].extension[3].url = "mappedVia"
* group[0].element[9].target.extension[0].extension[3].valueUrl = "ConceptMap/table-hl70128-original-to-v2-0128"
* group[0].element[9].target.display = "criticality.extension[1].valueCodeableConcept"
* group[0].element[9].target.dependsOn[0].property = "Narrative-Condition"
* group[0].element[9].target.dependsOn[0].value = "If severity was used equivalent to criticality"
* group[0].element[10].code = #AL1-4
* group[0].element[10].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[10].extension[0].extension[0].url = "type"
* group[0].element[10].extension[0].extension[0].valueCode = #"CWE"
* group[0].element[10].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[10].extension[0].extension[1].valueInteger = 1
* group[0].element[10].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[10].extension[0].extension[2].valueInteger = 1
* group[0].element[10].display = "Allergy Severity Code"
* group[0].element[10].target.equivalence = #equivalent
* group[0].element[10].target.code = #reaction.severity
* group[0].element[10].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[10].target.extension[0].extension[0].url = "type"
* group[0].element[10].target.extension[0].extension[0].valueCode = #"code"
* group[0].element[10].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[10].target.extension[0].extension[1].valueInteger = 0
* group[0].element[10].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[10].target.extension[0].extension[2].valueInteger = 1
* group[0].element[10].target.extension[0].extension[3].url = "mappedVia"
* group[0].element[10].target.extension[0].extension[3].valueUrl = "ConceptMap/table-hl70128-to-reaction-event-severity"
* group[0].element[10].target.display = "reaction.severity"
* group[0].element[10].target.dependsOn[0].property = "Narrative-Condition"
* group[0].element[10].target.dependsOn[0].value = "If severity was not used equivalent to criticality"
* group[0].element[11].code = #AL1-5
* group[0].element[11].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[11].extension[0].extension[0].url = "type"
* group[0].element[11].extension[0].extension[0].valueCode = #"ST"
* group[0].element[11].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[11].extension[0].extension[1].valueInteger = -1
* group[0].element[11].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[11].extension[0].extension[2].valueInteger = -1
* group[0].element[11].display = "Allergy Reaction Code"
* group[0].element[11].target.equivalence = #equivalent
* group[0].element[11].target.code = #reaction.manifestation.text
* group[0].element[11].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[11].target.extension[0].extension[0].url = "type"
* group[0].element[11].target.extension[0].extension[0].valueCode = #"CodeableConcept"
* group[0].element[11].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[11].target.extension[0].extension[1].valueInteger = 0
* group[0].element[11].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[11].target.extension[0].extension[2].valueInteger = 1
* group[0].element[11].target.display = "reaction.manifestation.text"
* group[0].element[11].target.comment = """
AllergyIntolerance.reaction can repeat, presumably to capture both multiple manifestations of the reaction (rash and nausea) as well as reactions to independent exposures (last week and last month) - we may want to confirm this understanding.\
"""
* group[0].element[12].code = #AL1-6
* group[0].element[12].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[12].extension[0].extension[0].url = "type"
* group[0].element[12].extension[0].extension[0].valueCode = #"DT"
* group[0].element[12].extension[0].extension[1].url = "cardinalityMin"
* group[0].element[12].extension[0].extension[1].valueInteger = 1
* group[0].element[12].extension[0].extension[2].url = "cardinalityMax"
* group[0].element[12].extension[0].extension[2].valueInteger = 1
* group[0].element[12].display = "Identification Date"
* group[0].element[12].target.equivalence = #equivalent
* group[0].element[12].target.code = #onsetDateTime
* group[0].element[12].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[12].target.extension[0].extension[0].url = "type"
* group[0].element[12].target.extension[0].extension[0].valueCode = #"dateTime"
* group[0].element[12].target.extension[0].extension[1].url = "cardinalityMin"
* group[0].element[12].target.extension[0].extension[1].valueInteger = 0
* group[0].element[12].target.extension[0].extension[2].url = "cardinalityMax"
* group[0].element[12].target.extension[0].extension[2].valueInteger = 1
* group[0].element[12].target.display = "onsetDateTime"
* group[0].element[12].target.comment = "Withdrawn as of 2.7, Refer to IAM-11 Onset or IAM-13 Reported Date"
