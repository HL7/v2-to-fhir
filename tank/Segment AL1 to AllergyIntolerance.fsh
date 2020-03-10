Instance: SegmentAL1toAllergyIntolerance
InstanceOf: ConceptMap
Title: "Segment AL1 to AllergyIntolerance Map"
* description = "This ConceptMap represents the mapping from the HL7 V2 AL1 Segment to the FHIR AllergyIntolerance Resource."
* id = "segment-al1-to-allergyintolerance"
* url = "http://hl7.org/fhir/v2-tofhir/segment-al1-to-allergyintolerance"
* version = "1.0"
* name = "Segment_AL1_Map"
* status = #active
* experimental = true
* date = "2020-03-10"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "AL1"
* targetUri = "AllergyIntolerance"
* group.element[0].code = #AL1-2
* group.element[0].display = "Allergen Type Code"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #AllergyIntolerance.category
* group.element[0].target.display = "AllergyIntolerance.category"
* group.element[0].target.comment = """
The FHIR table has a "required" binding. Do we need to expand the values in the FHIR table?

Could other be used for:
Miscellaneous allergy
Miscellaneous contraindication
Animal Allergy

HL70127 is a user defined table\
"""
* group.element[1].code = #AL1-2
* group.element[1].display = "Allergen Type Code"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #AllergyIntolerance.type
* group.element[1].target.display = "AllergyIntolerance.type"
* group.element[2].code = #AL1-3
* group.element[2].display = "Allergen Code/Mnemonic/Description"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #AllergyIntolerance.code
* group.element[2].target.display = "AllergyIntolerance.code"
* group.element[3].code = #AL1-4
* group.element[3].display = "Allergy Severity Code"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #AllergyIntolerance.reaction.severity
* group.element[3].target.display = "AllergyIntolerance.reaction.severity"
* group.element[3].target.comment = """
HL70128 is a user defined table
Consider using AllergyIntolerance.criticality\
"""
* group.element[3].target.dependsOn[0].property = "value"
* group.element[3].target.dependsOn[0].value = """
# IF AL1-4 NOT EQUALS 'U'\
"""
* group.element[3].target.dependsOn[0].value = "AND If severity was used equivalent to severity in FHIR"
* group.element[4].code = #AL1-4
* group.element[4].display = "Allergy Severity Code"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #AllergyIntolerance.reaction.severity.extension-data-absent-reason
* group.element[4].target.display = "= \"unknown\""
* group.element[4].target.dependsOn[0].property = "value"
* group.element[4].target.dependsOn[0].value = """
# If AL1-4 EQUALS 'U'\
"""
* group.element[4].target.dependsOn[0].value = "AND If severity was used equivalent to severity in FHIR"
* group.element[5].code = #AL1-4
* group.element[5].display = "Allergy Severity Code"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #AllergyIntolerance.criticality
* group.element[5].target.display = "AllergyIntolerance.criticality"
* group.element[5].target.dependsOn[0].property = "value"
* group.element[5].target.dependsOn[0].value = "If severity was used equivalent to criticality"
* group.element[6].code = #AL1-5
* group.element[6].display = "Allergy Reaction Code"
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #AllergyIntolerance.reaction.manifestation.text
* group.element[6].target.display = "AllergyIntolerance.reaction.manifestation.text"
* group.element[6].target.comment = """
AllergyIntolerance.reaction can repeat, presumably to capture both multiple manifestations of the reaction (rash and nausea) as well as reactions to independent exposures (last week and last month) - we may want to confirm this understanding.\
"""
* group.element[7].code = #AL1-6
* group.element[7].display = "Identification Date"
* group.element[7].target.equivalence = #equivalent
* group.element[7].target.code = #AllergyIntolerance.onsetDateTime
* group.element[7].target.display = "AllergyIntolerance.onsetDateTime"
* group.element[7].target.comment = "Withdrawn as of 2.7, Refer to IAM-11 Onset or IAM-13 Reported Date"
