// HL7 Segment - FHIR R4_ IAM[AllergyIntolerance] - Sheet1.csv
Instance: SegmentIAMToAllergyIntolerance
InstanceOf: ConceptMap
Title: "Segment IAM  to AllergyIntolerance Map"
* title = "Segment IAM  to AllergyIntolerance Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Segment IAM to the FHIR AllergyIntolerance Resource."
* id = "segment-iam-to-allergyintolerance"
* url = "http://hl7.org/fhir/uv/v2mappings/segment-iam-to-allergyintolerance"
* version = "1.0"
* name = "SegmentIAMToAllergyIntolerance"
* status = #active
* experimental = true
* date = "2025-01-06"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "IAM"
* targetUri = "AllergyIntolerance"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Segment IAM to AllergyIntolerance.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1oN0BuBRmIfVQHHU6DuwnL1ZL60h6BvnXISJQ7D6akbU/edit#gid=0"
* group.element[0].code = #IAM-2
* group.element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].extension[0].extension[0].url = "type"
* group.element[0].extension[0].extension[0].valueCode = #"CWE"
* group.element[0].extension[0].extension[1].url = "cardinalityMin"
* group.element[0].extension[0].extension[1].valueInteger = 1
* group.element[0].extension[0].extension[2].url = "cardinalityMax"
* group.element[0].extension[0].extension[2].valueInteger = 1
* group.element[0].display = "Allergen Type Code"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #category
* group.element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].target.extension[0].extension[0].url = "type"
* group.element[0].target.extension[0].extension[0].valueCode = #"code"
* group.element[0].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[0].target.extension[0].extension[1].valueInteger = 0
* group.element[0].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[0].target.extension[0].extension[2].valueInteger = -1
* group.element[0].target.display = "category"
* group.element[0].target.comment = """
The FHIR table has a "required" binding. Do we need to expand the values in the FHIR table?

Could other be used for:
Miscellaneous allergy
Miscellaneous contraindication
Animal Allergy

HL70127 is a user defined table\
"""
* group.element[1].code = #IAM-2
* group.element[1].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[1].extension[0].extension[0].url = "type"
* group.element[1].extension[0].extension[0].valueCode = #"CWE"
* group.element[1].extension[0].extension[1].url = "cardinalityMin"
* group.element[1].extension[0].extension[1].valueInteger = 1
* group.element[1].extension[0].extension[2].url = "cardinalityMax"
* group.element[1].extension[0].extension[2].valueInteger = 1
* group.element[1].display = "Allergen Type Code"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #category.extension[1].url
* group.element[1].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[1].target.extension[0].extension[0].url = "type"
* group.element[1].target.extension[0].extension[0].valueCode = #"uri"
* group.element[1].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[1].target.extension[0].extension[1].valueInteger = 1
* group.element[1].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[1].target.extension[0].extension[2].valueInteger = 1
* group.element[1].target.display = "category.extension[1].url"
* group.element[2].code = #IAM-2
* group.element[2].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[2].extension[0].extension[0].url = "type"
* group.element[2].extension[0].extension[0].valueCode = #"CWE"
* group.element[2].extension[0].extension[1].url = "cardinalityMin"
* group.element[2].extension[0].extension[1].valueInteger = 1
* group.element[2].extension[0].extension[2].url = "cardinalityMax"
* group.element[2].extension[0].extension[2].valueInteger = 1
* group.element[2].display = "Allergen Type Code"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #category.extension[1].valueCodeableConcept
* group.element[2].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[2].target.extension[0].extension[0].url = "type"
* group.element[2].target.extension[0].extension[0].valueCode = #"CodeableConcept"
* group.element[2].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[2].target.extension[0].extension[1].valueInteger = 1
* group.element[2].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[2].target.extension[0].extension[2].valueInteger = 1
* group.element[2].target.display = "category.extension[1].valueCodeableConcept"
* group.element[3].code = #IAM-2
* group.element[3].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[3].extension[0].extension[0].url = "type"
* group.element[3].extension[0].extension[0].valueCode = #"CWE"
* group.element[3].extension[0].extension[1].url = "cardinalityMin"
* group.element[3].extension[0].extension[1].valueInteger = 1
* group.element[3].extension[0].extension[2].url = "cardinalityMax"
* group.element[3].extension[0].extension[2].valueInteger = 1
* group.element[3].display = "Allergen Type Code"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #type
* group.element[3].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[3].target.extension[0].extension[0].url = "type"
* group.element[3].target.extension[0].extension[0].valueCode = #"code"
* group.element[3].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[3].target.extension[0].extension[1].valueInteger = 0
* group.element[3].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[3].target.extension[0].extension[2].valueInteger = 1
* group.element[3].target.display = "type"
* group.element[4].code = #IAM-3
* group.element[4].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[4].extension[0].extension[0].url = "type"
* group.element[4].extension[0].extension[0].valueCode = #"CWE"
* group.element[4].extension[0].extension[1].url = "cardinalityMin"
* group.element[4].extension[0].extension[1].valueInteger = 1
* group.element[4].extension[0].extension[2].url = "cardinalityMax"
* group.element[4].extension[0].extension[2].valueInteger = 1
* group.element[4].display = "Allergen Code/Mnemonic/Description"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #code[1]
* group.element[4].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[4].target.extension[0].extension[0].url = "type"
* group.element[4].target.extension[0].extension[0].valueCode = #"CodeableConcept"
* group.element[4].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[4].target.extension[0].extension[1].valueInteger = 0
* group.element[4].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[4].target.extension[0].extension[2].valueInteger = 1
* group.element[4].target.display = "code[1]"
* group.element[5].code = #IAM-4
* group.element[5].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[5].extension[0].extension[0].url = "type"
* group.element[5].extension[0].extension[0].valueCode = #"CWE"
* group.element[5].extension[0].extension[1].url = "cardinalityMin"
* group.element[5].extension[0].extension[1].valueInteger = 1
* group.element[5].extension[0].extension[2].url = "cardinalityMax"
* group.element[5].extension[0].extension[2].valueInteger = 1
* group.element[5].display = "Allergy Severity Code"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #reaction.severity
* group.element[5].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[5].target.extension[0].extension[0].url = "type"
* group.element[5].target.extension[0].extension[0].valueCode = #"code"
* group.element[5].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[5].target.extension[0].extension[1].valueInteger = 0
* group.element[5].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[5].target.extension[0].extension[2].valueInteger = 1
* group.element[5].target.display = "reaction.severity"
* group.element[6].code = #IAM-4
* group.element[6].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[6].extension[0].extension[0].url = "type"
* group.element[6].extension[0].extension[0].valueCode = #"CWE"
* group.element[6].extension[0].extension[1].url = "cardinalityMin"
* group.element[6].extension[0].extension[1].valueInteger = 1
* group.element[6].extension[0].extension[2].url = "cardinalityMax"
* group.element[6].extension[0].extension[2].valueInteger = 1
* group.element[6].display = "Allergy Severity Code"
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #criticality
* group.element[6].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[6].target.extension[0].extension[0].url = "type"
* group.element[6].target.extension[0].extension[0].valueCode = #"code"
* group.element[6].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[6].target.extension[0].extension[1].valueInteger = 0
* group.element[6].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[6].target.extension[0].extension[2].valueInteger = 1
* group.element[6].target.display = "criticality"
* group.element[6].target.comment = "Note that AllergyIntolerance.reaction.severity is available in FHIR but from a base standard perspective that is actually not the most appropriate and would require that AL1-6 is valued as well.  However, a local implementation may have used vocabulary that better fits AllergyIntolerance.reaction.severity and should then consider that instead as a local variation.  Note that the .reaction though is at a particular time, while .criticality is an overall assement that matches HL7 v2 generally better."
* group.element[7].code = #IAM-4
* group.element[7].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[7].extension[0].extension[0].url = "type"
* group.element[7].extension[0].extension[0].valueCode = #"CWE"
* group.element[7].extension[0].extension[1].url = "cardinalityMin"
* group.element[7].extension[0].extension[1].valueInteger = 1
* group.element[7].extension[0].extension[2].url = "cardinalityMax"
* group.element[7].extension[0].extension[2].valueInteger = 1
* group.element[7].display = "Allergy Severity Code"
* group.element[7].target.equivalence = #equivalent
* group.element[7].target.code = #criticality.extension[1].url
* group.element[7].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[7].target.extension[0].extension[0].url = "type"
* group.element[7].target.extension[0].extension[0].valueCode = #"uri"
* group.element[7].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[7].target.extension[0].extension[1].valueInteger = 1
* group.element[7].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[7].target.extension[0].extension[2].valueInteger = 1
* group.element[7].target.display = "criticality.extension[1].url"
* group.element[8].code = #IAM-4
* group.element[8].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[8].extension[0].extension[0].url = "type"
* group.element[8].extension[0].extension[0].valueCode = #"CWE"
* group.element[8].extension[0].extension[1].url = "cardinalityMin"
* group.element[8].extension[0].extension[1].valueInteger = 1
* group.element[8].extension[0].extension[2].url = "cardinalityMax"
* group.element[8].extension[0].extension[2].valueInteger = 1
* group.element[8].display = "Allergy Severity Code"
* group.element[8].target.equivalence = #equivalent
* group.element[8].target.code = #criticality.extension[1].valueCodeableConcept
* group.element[8].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[8].target.extension[0].extension[0].url = "type"
* group.element[8].target.extension[0].extension[0].valueCode = #"CodeableConcept"
* group.element[8].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[8].target.extension[0].extension[1].valueInteger = 1
* group.element[8].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[8].target.extension[0].extension[2].valueInteger = 1
* group.element[8].target.display = "criticality.extension[1].valueCodeableConcept"
* group.element[9].code = #IAM-5
* group.element[9].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[9].extension[0].extension[0].url = "type"
* group.element[9].extension[0].extension[0].valueCode = #"ST"
* group.element[9].extension[0].extension[1].url = "cardinalityMin"
* group.element[9].extension[0].extension[1].valueInteger = 1
* group.element[9].extension[0].extension[2].url = "cardinalityMax"
* group.element[9].extension[0].extension[2].valueInteger = 1
* group.element[9].display = "Allergy Reaction Code"
* group.element[9].target.equivalence = #equivalent
* group.element[9].target.code = #reaction.manifestation.text
* group.element[9].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[9].target.extension[0].extension[0].url = "type"
* group.element[9].target.extension[0].extension[0].valueCode = #"CodeableConcept"
* group.element[9].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[9].target.extension[0].extension[1].valueInteger = 0
* group.element[9].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[9].target.extension[0].extension[2].valueInteger = 1
* group.element[9].target.display = "reaction.manifestation.text"
* group.element[10].code = #IAM-7
* group.element[10].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[10].extension[0].extension[0].url = "type"
* group.element[10].extension[0].extension[0].valueCode = #"EI"
* group.element[10].extension[0].extension[1].url = "cardinalityMin"
* group.element[10].extension[0].extension[1].valueInteger = 1
* group.element[10].extension[0].extension[2].url = "cardinalityMax"
* group.element[10].extension[0].extension[2].valueInteger = 1
* group.element[10].display = "Allergy Unique Identifier"
* group.element[10].target.equivalence = #equivalent
* group.element[10].target.code = #identifier
* group.element[10].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[10].target.extension[0].extension[0].url = "type"
* group.element[10].target.extension[0].extension[0].valueCode = #"identifier"
* group.element[10].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[10].target.extension[0].extension[1].valueInteger = 0
* group.element[10].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[10].target.extension[0].extension[2].valueInteger = -1
* group.element[10].target.display = "identifier"
* group.element[11].code = #IAM-11
* group.element[11].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[11].extension[0].extension[0].url = "type"
* group.element[11].extension[0].extension[0].valueCode = #"DT"
* group.element[11].extension[0].extension[1].url = "cardinalityMin"
* group.element[11].extension[0].extension[1].valueInteger = 1
* group.element[11].extension[0].extension[2].url = "cardinalityMax"
* group.element[11].extension[0].extension[2].valueInteger = 1
* group.element[11].display = "Onset Date"
* group.element[11].target.equivalence = #equivalent
* group.element[11].target.code = #onsetDateTime
* group.element[11].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[11].target.extension[0].extension[0].url = "type"
* group.element[11].target.extension[0].extension[0].valueCode = #"dateTime"
* group.element[11].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[11].target.extension[0].extension[1].valueInteger = 0
* group.element[11].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[11].target.extension[0].extension[2].valueInteger = 1
* group.element[11].target.display = "onsetDateTime"
* group.element[12].code = #IAM-12
* group.element[12].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[12].extension[0].extension[0].url = "type"
* group.element[12].extension[0].extension[0].valueCode = #"ST"
* group.element[12].extension[0].extension[1].url = "cardinalityMin"
* group.element[12].extension[0].extension[1].valueInteger = 1
* group.element[12].extension[0].extension[2].url = "cardinalityMax"
* group.element[12].extension[0].extension[2].valueInteger = 1
* group.element[12].display = "Onset Date Text"
* group.element[12].target.equivalence = #equivalent
* group.element[12].target.code = #onsetString
* group.element[12].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[12].target.extension[0].extension[0].url = "type"
* group.element[12].target.extension[0].extension[0].valueCode = #"string"
* group.element[12].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[12].target.extension[0].extension[1].valueInteger = 0
* group.element[12].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[12].target.extension[0].extension[2].valueInteger = 1
* group.element[12].target.display = "onsetString"
* group.element[12].target.comment = "Cannot map to both onsetDateTime and onsetString, so take onsetDateTime if available."
* group.element[13].code = #IAM-13
* group.element[13].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[13].extension[0].extension[0].url = "type"
* group.element[13].extension[0].extension[0].valueCode = #"DTM"
* group.element[13].extension[0].extension[1].url = "cardinalityMin"
* group.element[13].extension[0].extension[1].valueInteger = 1
* group.element[13].extension[0].extension[2].url = "cardinalityMax"
* group.element[13].extension[0].extension[2].valueInteger = 1
* group.element[13].display = "Reported Date/Time"
* group.element[13].target.equivalence = #equivalent
* group.element[13].target.code = #recordedDate
* group.element[13].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[13].target.extension[0].extension[0].url = "type"
* group.element[13].target.extension[0].extension[0].valueCode = #"dateTime"
* group.element[13].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[13].target.extension[0].extension[1].valueInteger = 0
* group.element[13].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[13].target.extension[0].extension[2].valueInteger = 1
* group.element[13].target.display = "recordedDate"
* group.element[14].code = #IAM-14
* group.element[14].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[14].extension[0].extension[0].url = "type"
* group.element[14].extension[0].extension[0].valueCode = #"XPN"
* group.element[14].extension[0].extension[1].url = "cardinalityMin"
* group.element[14].extension[0].extension[1].valueInteger = 1
* group.element[14].extension[0].extension[2].url = "cardinalityMax"
* group.element[14].extension[0].extension[2].valueInteger = 1
* group.element[14].display = "Reported By"
* group.element[14].target.equivalence = #equivalent
* group.element[14].target.code = #recorder.reference(Practitioner.name)
* group.element[14].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[14].target.extension[0].extension[0].url = "type"
* group.element[14].target.extension[0].extension[0].valueCode = #"HumanName"
* group.element[14].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[14].target.extension[0].extension[1].valueInteger = 0
* group.element[14].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[14].target.extension[0].extension[2].valueInteger = 1
* group.element[14].target.display = "recorder.reference(Practitioner.name)"
* group.element[15].code = #IAM-14
* group.element[15].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[15].extension[0].extension[0].url = "type"
* group.element[15].extension[0].extension[0].valueCode = #"XPN"
* group.element[15].extension[0].extension[1].url = "cardinalityMin"
* group.element[15].extension[0].extension[1].valueInteger = 1
* group.element[15].extension[0].extension[2].url = "cardinalityMax"
* group.element[15].extension[0].extension[2].valueInteger = 1
* group.element[15].display = "Reported By"
* group.element[15].target.equivalence = #equivalent
* group.element[15].target.code = #recorder.reference(Patient[1].name)
* group.element[15].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[15].target.extension[0].extension[0].url = "type"
* group.element[15].target.extension[0].extension[0].valueCode = #"HumanName"
* group.element[15].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[15].target.extension[0].extension[1].valueInteger = 0
* group.element[15].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[15].target.extension[0].extension[2].valueInteger = 1
* group.element[15].target.display = "recorder.reference(Patient[1].name)"
* group.element[16].code = #IAM-14
* group.element[16].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[16].extension[0].extension[0].url = "type"
* group.element[16].extension[0].extension[0].valueCode = #"XPN"
* group.element[16].extension[0].extension[1].url = "cardinalityMin"
* group.element[16].extension[0].extension[1].valueInteger = 1
* group.element[16].extension[0].extension[2].url = "cardinalityMax"
* group.element[16].extension[0].extension[2].valueInteger = 1
* group.element[16].display = "Reported By"
* group.element[16].target.equivalence = #equivalent
* group.element[16].target.code = #recorder.reference(RelatedPerson.name)
* group.element[16].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[16].target.extension[0].extension[0].url = "type"
* group.element[16].target.extension[0].extension[0].valueCode = #"HumanName"
* group.element[16].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[16].target.extension[0].extension[1].valueInteger = 0
* group.element[16].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[16].target.extension[0].extension[2].valueInteger = 1
* group.element[16].target.display = "recorder.reference(RelatedPerson.name)"
* group.element[17].code = #IAM-15
* group.element[17].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[17].extension[0].extension[0].url = "type"
* group.element[17].extension[0].extension[0].valueCode = #"CWE"
* group.element[17].extension[0].extension[1].url = "cardinalityMin"
* group.element[17].extension[0].extension[1].valueInteger = 1
* group.element[17].extension[0].extension[2].url = "cardinalityMax"
* group.element[17].extension[0].extension[2].valueInteger = 1
* group.element[17].display = "Relationship to Patient"
* group.element[17].target.equivalence = #equivalent
* group.element[17].target.code = #recorder.reference(RelatedPerson.relationship)
* group.element[17].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[17].target.extension[0].extension[0].url = "type"
* group.element[17].target.extension[0].extension[0].valueCode = #"CodeableConcept"
* group.element[17].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[17].target.extension[0].extension[1].valueInteger = 0
* group.element[17].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[17].target.extension[0].extension[2].valueInteger = -1
* group.element[17].target.display = "recorder.reference(RelatedPerson.relationship)"
* group.element[18].code = #IAM-17
* group.element[18].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[18].extension[0].extension[0].url = "type"
* group.element[18].extension[0].extension[0].valueCode = #"CWE"
* group.element[18].extension[0].extension[1].url = "cardinalityMin"
* group.element[18].extension[0].extension[1].valueInteger = 1
* group.element[18].extension[0].extension[2].url = "cardinalityMax"
* group.element[18].extension[0].extension[2].valueInteger = 1
* group.element[18].display = "Allergy Clinical Status"
* group.element[18].target.equivalence = #equivalent
* group.element[18].target.code = #clinicalStatus
* group.element[18].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[18].target.extension[0].extension[0].url = "type"
* group.element[18].target.extension[0].extension[0].valueCode = #"CodeableConcept"
* group.element[18].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[18].target.extension[0].extension[1].valueInteger = 0
* group.element[18].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[18].target.extension[0].extension[2].valueInteger = 1
* group.element[18].target.display = "clinicalStatus"
* group.element[19].code = #IAM-27
* group.element[19].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[19].extension[0].extension[0].url = "type"
* group.element[19].extension[0].extension[0].valueCode = #"CWE"
* group.element[19].extension[0].extension[1].url = "cardinalityMin"
* group.element[19].extension[0].extension[1].valueInteger = 1
* group.element[19].extension[0].extension[2].url = "cardinalityMax"
* group.element[19].extension[0].extension[2].valueInteger = 1
* group.element[19].display = "Clinician Identified Code"
* group.element[19].target.equivalence = #equivalent
* group.element[19].target.code = #code[1]
* group.element[19].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[19].target.extension[0].extension[0].url = "type"
* group.element[19].target.extension[0].extension[0].valueCode = #"CodeableConcept"
* group.element[19].target.display = "code[1]"
* group.element[19].target.comment = "The values are added as additional .coding entries in the CodeableConcept for AllergyIntolerance.code"
