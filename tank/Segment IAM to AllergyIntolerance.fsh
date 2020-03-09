Instance: SegmentIAMtoAllergyIntolerance
InstanceOf: ConceptMap
Title: "Segment IAM to AllergyIntolerance Map"
* description = "This ConceptMap represents the mapping from the HL7 V2 IAM Segment to the FHIR AllergyIntolerance Resource."
* id = "segment-iam-to-allergyintolerance"
* url = "http://hl7.org/fhir/v2-tofhir/segment-iam-to-allergyintolerance"
* version = "1.0"
* name = "Segment_IAM_Map"
* status = #active
* experimental = true
* date = "2020-03-09"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "IAM"
* targetUri = "AllergyIntolerance"
* group.element[0].code = #IAM-2
* group.element[0].display = "Allergen Type Code"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #AllergyIntolerance.category
* group.element[0].target.display = "AllergyIntolerance.category"
* group.element[1].code = #IAM-2
* group.element[1].display = "Allergen Type Code"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #AllergyIntolerance.type
* group.element[1].target.display = "AllergyIntolerance.type"
* group.element[2].code = #IAM-3
* group.element[2].display = "Allergen Code/Mnemonic/Description"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #AllergyIntolerance.code[1]
* group.element[2].target.display = "AllergyIntolerance.code[1]"
* group.element[3].code = #IAM-4
* group.element[3].display = "Allergy Severity Code"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #AllergyIntolerance.reaction.severity
* group.element[3].target.display = "AllergyIntolerance.reaction.severity"
* group.element[4].code = #IAM-5
* group.element[4].display = "Allergy Reaction Code"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #AllergyIntolerance.reaction.manifestation.text
* group.element[4].target.display = "AllergyIntolerance.reaction.manifestation.text"
* group.element[5].code = #IAM-7
* group.element[5].display = "Allergy Unique Identifier"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #AllergyIntolerance.identifier
* group.element[5].target.display = "AllergyIntolerance.identifier"
* group.element[6].code = #IAM-11
* group.element[6].display = "Onset Date"
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #AllergyIntolerance.onsetDateTime
* group.element[6].target.display = "AllergyIntolerance.onsetDateTime"
* group.element[7].code = #IAM-12
* group.element[7].display = "Onset Date Text"
* group.element[7].target.equivalence = #equivalent
* group.element[7].target.code = #AllergyIntolerance.onsetString
* group.element[7].target.display = "AllergyIntolerance.onsetString"
* group.element[7].target.comment = "Cannot map to both onsetDateTime and onsetString, so take onsetDateTime if available."
* group.element[7].target.dependsOn[0].property = "value"
* group.element[7].target.dependsOn[0].value = """
# IF IAM-11 NOT VALUED\
"""
* group.element[8].code = #IAM-13
* group.element[8].display = "Reported Date/Time"
* group.element[8].target.equivalence = #equivalent
* group.element[8].target.code = #AllergyIntolerance.recordedDate
* group.element[8].target.display = "AllergyIntolerance.recordedDate"
* group.element[9].code = #IAM-14
* group.element[9].display = "Reported By"
* group.element[9].target.equivalence = #equivalent
* group.element[9].target.code = #AllergyIntolerance.recorder.reference(Practitioner.name)
* group.element[9].target.display = "AllergyIntolerance.recorder.reference(Practitioner.name)"
* group.element[9].target.dependsOn[0].property = "value"
* group.element[9].target.dependsOn[0].value = """
# IF IAM-15 NOT VALUED\
"""
* group.element[9].target.dependsOn[0].value = "If IAM-15 is not valued, not always 100% clear this is a practitioner, so much review locally."
* group.element[10].code = #IAM-14
* group.element[10].display = "Reported By"
* group.element[10].target.equivalence = #equivalent
* group.element[10].target.code = #AllergyIntolerance.recorder.reference(Patient[1].name)
* group.element[10].target.display = "AllergyIntolerance.recorder.reference(Patient[1].name)"
* group.element[10].target.dependsOn[0].property = "value"
* group.element[10].target.dependsOn[0].value = """
# IF IAM-15 EQUALS "SEL"\
"""
* group.element[11].code = #IAM-14
* group.element[11].display = "Reported By"
* group.element[11].target.equivalence = #equivalent
* group.element[11].target.code = #AllergyIntolerance.recorder.reference(RelatedPerson.name)
* group.element[11].target.display = "AllergyIntolerance.recorder.reference(RelatedPerson.name)"
* group.element[11].target.dependsOn[0].property = "value"
* group.element[11].target.dependsOn[0].value = """
# IF IAM-15 VALUED AND NOT "SEL"\
"""
* group.element[12].code = #IAM-15
* group.element[12].display = "Relationship to Patient"
* group.element[12].target.equivalence = #equivalent
* group.element[12].target.code = #AllergyIntolerance.recorder.reference(RelatedPerson.relationship)
* group.element[12].target.display = "AllergyIntolerance.recorder.reference(RelatedPerson.relationship)"
* group.element[12].target.dependsOn[0].property = "value"
* group.element[12].target.dependsOn[0].value = """
# IF IAM-15 VALUED AND NOT "SEL"\
"""
* group.element[13].code = #IAM-17
* group.element[13].display = "Allergy Clinical Status"
* group.element[13].target.equivalence = #equivalent
* group.element[13].target.code = #AllergyIntolerance.clinicalStatus
* group.element[13].target.display = "AllergyIntolerance.clinicalStatus"
* group.element[14].code = #IAM-27
* group.element[14].display = "Clinician Identified Code"
* group.element[14].target.equivalence = #equivalent
* group.element[14].target.code = #AllergyIntolerance.code[1]
* group.element[14].target.display = "AllergyIntolerance.code[1]"
* group.element[14].target.comment = "The values are added as additional .coding entries in the CodeableConcept for AllergyIntolerance.code"
