// HL7 Segment - FHIR R4_ PRT[PractitionerRole] - Sheet1.csv
Instance: SegmentPRTToPractitionerRole
InstanceOf: ConceptMap
Title: "Segment PRT to PractitionerRole Map"
* title = "Segment PRT to PractitionerRole Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Segment PRT to the FHIR PractitionerRole Resource."
* id = "segment-prt-to-practitionerrole"
* url = "http://hl7.org/fhir/uv/v2mappings/segment-prt-to-practitionerrole"
* version = "1.0"
* name = "SegmentPRTToPractitionerRole"
* status = #active
* experimental = true
* date = "2024-12-29"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "PRT"
* targetUri = "PractitionerRole"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Segment PRT to PractitionerRole.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1UBY3MvsvJhw7jhUfVjywvLacO54CcnInnAkjTT0Jp5I/edit#gid=0"
* group.element[0].code = #PRT-4
* group.element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].extension[0].extension[0].url = "type"
* group.element[0].extension[0].extension[0].valueCode = #"CWE"
* group.element[0].extension[0].extension[1].url = "cardinalityMin"
* group.element[0].extension[0].extension[1].valueInteger = 1
* group.element[0].extension[0].extension[2].url = "cardinalityMax"
* group.element[0].extension[0].extension[2].valueInteger = 1
* group.element[0].display = "Role of Participation"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #code
* group.element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].target.extension[0].extension[0].url = "type"
* group.element[0].target.extension[0].extension[0].valueCode = #"CodeableConcept"
* group.element[0].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[0].target.extension[0].extension[1].valueInteger = 0
* group.element[0].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[0].target.extension[0].extension[2].valueInteger = -1
* group.element[0].target.display = "code"
* group.element[1].code = #PRT-5
* group.element[1].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[1].extension[0].extension[0].url = "type"
* group.element[1].extension[0].extension[0].valueCode = #"XCN"
* group.element[1].extension[0].extension[1].url = "cardinalityMin"
* group.element[1].extension[0].extension[1].valueInteger = -1
* group.element[1].extension[0].extension[2].url = "cardinalityMax"
* group.element[1].extension[0].extension[2].valueInteger = -1
* group.element[1].display = "Person"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #practitioner[Practitioner]
* group.element[1].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[1].target.extension[0].extension[0].url = "type"
* group.element[1].target.extension[0].extension[0].valueCode = #"Reference(Practitioner)"
* group.element[1].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[1].target.extension[0].extension[1].valueInteger = 0
* group.element[1].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[1].target.extension[0].extension[2].valueInteger = 1
* group.element[1].target.display = "practitioner[Practitioner]"
* group.element[1].target.comment = "While PRT may contain multiple persons within one PRT, we believe this to be rare, and when it happens, the implementer needs to determine how to best resolve that."
* group.element[2].code = #PRT-6
* group.element[2].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[2].extension[0].extension[0].url = "type"
* group.element[2].extension[0].extension[0].valueCode = #"CWE"
* group.element[2].extension[0].extension[1].url = "cardinalityMin"
* group.element[2].extension[0].extension[1].valueInteger = 1
* group.element[2].extension[0].extension[2].url = "cardinalityMax"
* group.element[2].extension[0].extension[2].valueInteger = 1
* group.element[2].display = "Person Provider Type"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #specialty
* group.element[2].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[2].target.extension[0].extension[0].url = "type"
* group.element[2].target.extension[0].extension[0].valueCode = #"CodeableConcept"
* group.element[2].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[2].target.extension[0].extension[1].valueInteger = 0
* group.element[2].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[2].target.extension[0].extension[2].valueInteger = -1
* group.element[2].target.display = "specialty"
* group.element[3].code = #PRT-7
* group.element[3].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[3].extension[0].extension[0].url = "type"
* group.element[3].extension[0].extension[0].valueCode = #"CWE"
* group.element[3].extension[0].extension[1].url = "cardinalityMin"
* group.element[3].extension[0].extension[1].valueInteger = 1
* group.element[3].extension[0].extension[2].url = "cardinalityMax"
* group.element[3].extension[0].extension[2].valueInteger = 1
* group.element[3].display = "Organization Unit Type"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #organization[Organization.type]
* group.element[3].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[3].target.extension[0].extension[0].url = "type"
* group.element[3].target.extension[0].extension[0].valueCode = #"CodeableConcept"
* group.element[3].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[3].target.extension[0].extension[1].valueInteger = 0
* group.element[3].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[3].target.extension[0].extension[2].valueInteger = 1
* group.element[3].target.display = "organization[Organization.type]"
* group.element[4].code = #PRT-8
* group.element[4].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[4].extension[0].extension[0].url = "type"
* group.element[4].extension[0].extension[0].valueCode = #"XON"
* group.element[4].extension[0].extension[1].url = "cardinalityMin"
* group.element[4].extension[0].extension[1].valueInteger = -1
* group.element[4].extension[0].extension[2].url = "cardinalityMax"
* group.element[4].extension[0].extension[2].valueInteger = -1
* group.element[4].display = "Organization"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #organization[Organization]
* group.element[4].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[4].target.extension[0].extension[0].url = "type"
* group.element[4].target.extension[0].extension[0].valueCode = #"Reference(Organization)"
* group.element[4].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[4].target.extension[0].extension[1].valueInteger = 0
* group.element[4].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[4].target.extension[0].extension[2].valueInteger = 1
* group.element[4].target.display = "organization[Organization]"
* group.element[4].target.comment = "While PRT may contain multiple organizations within one PRT, we believe this to be rare, and when it happens, the implementer needs to determine how to best resolve that."
* group.element[5].code = #PRT-9
* group.element[5].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[5].extension[0].extension[0].url = "type"
* group.element[5].extension[0].extension[0].valueCode = #"PL"
* group.element[5].extension[0].extension[1].url = "cardinalityMin"
* group.element[5].extension[0].extension[1].valueInteger = -1
* group.element[5].extension[0].extension[2].url = "cardinalityMax"
* group.element[5].extension[0].extension[2].valueInteger = -1
* group.element[5].display = "Location"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #location[Location]
* group.element[5].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[5].target.extension[0].extension[0].url = "type"
* group.element[5].target.extension[0].extension[0].valueCode = #"Reference(Location)"
* group.element[5].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[5].target.extension[0].extension[1].valueInteger = 0
* group.element[5].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[5].target.extension[0].extension[2].valueInteger = 1
* group.element[5].target.display = "location[Location]"
* group.element[5].target.comment = "While PRT may contain multiple locations within one PRT, we believe this to be rare, and when it happens, the implementer needs to determine how to best resolve that."
* group.element[6].code = #PRT-11
* group.element[6].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[6].extension[0].extension[0].url = "type"
* group.element[6].extension[0].extension[0].valueCode = #"DTM"
* group.element[6].extension[0].extension[1].url = "cardinalityMin"
* group.element[6].extension[0].extension[1].valueInteger = 1
* group.element[6].extension[0].extension[2].url = "cardinalityMax"
* group.element[6].extension[0].extension[2].valueInteger = 1
* group.element[6].display = "Begin Date/Time (arrival time)"
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #period.start
* group.element[6].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[6].target.extension[0].extension[0].url = "type"
* group.element[6].target.extension[0].extension[0].valueCode = #"dateTime"
* group.element[6].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[6].target.extension[0].extension[1].valueInteger = 0
* group.element[6].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[6].target.extension[0].extension[2].valueInteger = 1
* group.element[6].target.display = "period.start"
* group.element[7].code = #PRT-12
* group.element[7].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[7].extension[0].extension[0].url = "type"
* group.element[7].extension[0].extension[0].valueCode = #"DTM"
* group.element[7].extension[0].extension[1].url = "cardinalityMin"
* group.element[7].extension[0].extension[1].valueInteger = 1
* group.element[7].extension[0].extension[2].url = "cardinalityMax"
* group.element[7].extension[0].extension[2].valueInteger = 1
* group.element[7].display = "End Date/Time (departure time)"
* group.element[7].target.equivalence = #equivalent
* group.element[7].target.code = #period.end
* group.element[7].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[7].target.extension[0].extension[0].url = "type"
* group.element[7].target.extension[0].extension[0].valueCode = #"dateTime"
* group.element[7].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[7].target.extension[0].extension[1].valueInteger = 0
* group.element[7].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[7].target.extension[0].extension[2].valueInteger = 1
* group.element[7].target.display = "period.end"
* group.element[8].code = #PRT-14
* group.element[8].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[8].extension[0].extension[0].url = "type"
* group.element[8].extension[0].extension[0].valueCode = #"XAD"
* group.element[8].extension[0].extension[1].url = "cardinalityMin"
* group.element[8].extension[0].extension[1].valueInteger = -1
* group.element[8].extension[0].extension[2].url = "cardinalityMax"
* group.element[8].extension[0].extension[2].valueInteger = -1
* group.element[8].display = "Address"
* group.element[8].target.equivalence = #equivalent
* group.element[8].target.code = #practitioner[Practitioner.address]
* group.element[8].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[8].target.extension[0].extension[0].url = "type"
* group.element[8].target.extension[0].extension[0].valueCode = #"Address"
* group.element[8].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[8].target.extension[0].extension[1].valueInteger = 0
* group.element[8].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[8].target.extension[0].extension[2].valueInteger = -1
* group.element[8].target.display = "practitioner[Practitioner.address]"
* group.element[9].code = #PRT-15
* group.element[9].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[9].extension[0].extension[0].url = "type"
* group.element[9].extension[0].extension[0].valueCode = #"XTN"
* group.element[9].extension[0].extension[1].url = "cardinalityMin"
* group.element[9].extension[0].extension[1].valueInteger = -1
* group.element[9].extension[0].extension[2].url = "cardinalityMax"
* group.element[9].extension[0].extension[2].valueInteger = -1
* group.element[9].display = "Telecommunication Address"
* group.element[9].target.equivalence = #equivalent
* group.element[9].target.code = #telecom
* group.element[9].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[9].target.extension[0].extension[0].url = "type"
* group.element[9].target.extension[0].extension[0].valueCode = #"ContactPoint"
* group.element[9].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[9].target.extension[0].extension[1].valueInteger = 0
* group.element[9].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[9].target.extension[0].extension[2].valueInteger = -1
* group.element[9].target.display = "telecom"
* group.element[10].code = #PRT-15
* group.element[10].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[10].extension[0].extension[0].url = "type"
* group.element[10].extension[0].extension[0].valueCode = #"XTN"
* group.element[10].extension[0].extension[1].url = "cardinalityMin"
* group.element[10].extension[0].extension[1].valueInteger = -1
* group.element[10].extension[0].extension[2].url = "cardinalityMax"
* group.element[10].extension[0].extension[2].valueInteger = -1
* group.element[10].display = "Telecommunication Address"
* group.element[10].target.equivalence = #equivalent
* group.element[10].target.code = #telecom[1]
* group.element[10].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[10].target.extension[0].extension[0].url = "type"
* group.element[10].target.extension[0].extension[0].valueCode = #"ContactPoint"
* group.element[10].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[10].target.extension[0].extension[1].valueInteger = 0
* group.element[10].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[10].target.extension[0].extension[2].valueInteger = -1
* group.element[10].target.display = "telecom[1]"
* group.element[11].code = #PRT-15
* group.element[11].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[11].extension[0].extension[0].url = "type"
* group.element[11].extension[0].extension[0].valueCode = #"XTN"
* group.element[11].extension[0].extension[1].url = "cardinalityMin"
* group.element[11].extension[0].extension[1].valueInteger = -1
* group.element[11].extension[0].extension[2].url = "cardinalityMax"
* group.element[11].extension[0].extension[2].valueInteger = -1
* group.element[11].display = "Telecommunication Address"
* group.element[11].target.equivalence = #equivalent
* group.element[11].target.code = #telecom[2]
* group.element[11].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[11].target.extension[0].extension[0].url = "type"
* group.element[11].target.extension[0].extension[0].valueCode = #"ContactPoint"
* group.element[11].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[11].target.extension[0].extension[1].valueInteger = 0
* group.element[11].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[11].target.extension[0].extension[2].valueInteger = -1
* group.element[11].target.display = "telecom[2]"
* group.element[12].code = #PRT-15
* group.element[12].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[12].extension[0].extension[0].url = "type"
* group.element[12].extension[0].extension[0].valueCode = #"XTN"
* group.element[12].extension[0].extension[1].url = "cardinalityMin"
* group.element[12].extension[0].extension[1].valueInteger = -1
* group.element[12].extension[0].extension[2].url = "cardinalityMax"
* group.element[12].extension[0].extension[2].valueInteger = -1
* group.element[12].display = "Telecommunication Address"
* group.element[12].target.equivalence = #equivalent
* group.element[12].target.code = #telecom[3]
* group.element[12].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[12].target.extension[0].extension[0].url = "type"
* group.element[12].target.extension[0].extension[0].valueCode = #"ContactPoint"
* group.element[12].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[12].target.extension[0].extension[1].valueInteger = 0
* group.element[12].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[12].target.extension[0].extension[2].valueInteger = -1
* group.element[12].target.display = "telecom[3]"
* group.element[13].code = #PRT-15
* group.element[13].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[13].extension[0].extension[0].url = "type"
* group.element[13].extension[0].extension[0].valueCode = #"XTN"
* group.element[13].extension[0].extension[1].url = "cardinalityMin"
* group.element[13].extension[0].extension[1].valueInteger = -1
* group.element[13].extension[0].extension[2].url = "cardinalityMax"
* group.element[13].extension[0].extension[2].valueInteger = -1
* group.element[13].display = "Telecommunication Address"
* group.element[13].target.equivalence = #equivalent
* group.element[13].target.code = #telecom[4]
* group.element[13].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[13].target.extension[0].extension[0].url = "type"
* group.element[13].target.extension[0].extension[0].valueCode = #"ContactPoint"
* group.element[13].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[13].target.extension[0].extension[1].valueInteger = 0
* group.element[13].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[13].target.extension[0].extension[2].valueInteger = -1
* group.element[13].target.display = "telecom[4]"
* group.element[14].code = #PRT-15
* group.element[14].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[14].extension[0].extension[0].url = "type"
* group.element[14].extension[0].extension[0].valueCode = #"XTN"
* group.element[14].extension[0].extension[1].url = "cardinalityMin"
* group.element[14].extension[0].extension[1].valueInteger = -1
* group.element[14].extension[0].extension[2].url = "cardinalityMax"
* group.element[14].extension[0].extension[2].valueInteger = -1
* group.element[14].display = "Telecommunication Address"
* group.element[14].target.equivalence = #equivalent
* group.element[14].target.code = #telecom[5]
* group.element[14].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[14].target.extension[0].extension[0].url = "type"
* group.element[14].target.extension[0].extension[0].valueCode = #"ContactPoint"
* group.element[14].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[14].target.extension[0].extension[1].valueInteger = 0
* group.element[14].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[14].target.extension[0].extension[2].valueInteger = -1
* group.element[14].target.display = "telecom[5]"
* group.element[15].code = #PRT-15
* group.element[15].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[15].extension[0].extension[0].url = "type"
* group.element[15].extension[0].extension[0].valueCode = #"XTN"
* group.element[15].extension[0].extension[1].url = "cardinalityMin"
* group.element[15].extension[0].extension[1].valueInteger = -1
* group.element[15].extension[0].extension[2].url = "cardinalityMax"
* group.element[15].extension[0].extension[2].valueInteger = -1
* group.element[15].display = "Telecommunication Address"
* group.element[15].target.equivalence = #equivalent
* group.element[15].target.code = #telecom[6]
* group.element[15].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[15].target.extension[0].extension[0].url = "type"
* group.element[15].target.extension[0].extension[0].valueCode = #"ContactPoint"
* group.element[15].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[15].target.extension[0].extension[1].valueInteger = 0
* group.element[15].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[15].target.extension[0].extension[2].valueInteger = -1
* group.element[15].target.display = "telecom[6]"
* group.element[16].code = #PRT-23
* group.element[16].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[16].extension[0].extension[0].url = "type"
* group.element[16].extension[0].extension[0].valueCode = #"CWE"
* group.element[16].extension[0].extension[1].url = "cardinalityMin"
* group.element[16].extension[0].extension[1].valueInteger = 1
* group.element[16].extension[0].extension[2].url = "cardinalityMax"
* group.element[16].extension[0].extension[2].valueInteger = 1
* group.element[16].display = "Preferred Method of Contact"
* group.element[16].target.equivalence = #equivalent
* group.element[16].target.code = #telecom[1].extension[1].url
* group.element[16].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[16].target.extension[0].extension[0].url = "type"
* group.element[16].target.extension[0].extension[0].valueCode = #"uri"
* group.element[16].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[16].target.extension[0].extension[1].valueInteger = 0
* group.element[16].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[16].target.extension[0].extension[2].valueInteger = 1
* group.element[16].target.display = "telecom[1].extension[1].url"
* group.element[17].code = #PRT-23
* group.element[17].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[17].extension[0].extension[0].url = "type"
* group.element[17].extension[0].extension[0].valueCode = #"CWE"
* group.element[17].extension[0].extension[1].url = "cardinalityMin"
* group.element[17].extension[0].extension[1].valueInteger = 1
* group.element[17].extension[0].extension[2].url = "cardinalityMax"
* group.element[17].extension[0].extension[2].valueInteger = 1
* group.element[17].display = "Preferred Method of Contact"
* group.element[17].target.equivalence = #equivalent
* group.element[17].target.code = #telecom[1].extension[1].valueBoolean
* group.element[17].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[17].target.extension[0].extension[0].url = "type"
* group.element[17].target.extension[0].extension[0].valueCode = #"boolean"
* group.element[17].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[17].target.extension[0].extension[1].valueInteger = 0
* group.element[17].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[17].target.extension[0].extension[2].valueInteger = 1
* group.element[17].target.display = "telecom[1].extension[1].valueBoolean"
* group.element[18].code = #PRT-23
* group.element[18].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[18].extension[0].extension[0].url = "type"
* group.element[18].extension[0].extension[0].valueCode = #"CWE"
* group.element[18].extension[0].extension[1].url = "cardinalityMin"
* group.element[18].extension[0].extension[1].valueInteger = 1
* group.element[18].extension[0].extension[2].url = "cardinalityMax"
* group.element[18].extension[0].extension[2].valueInteger = 1
* group.element[18].display = "Preferred Method of Contact"
* group.element[18].target.equivalence = #equivalent
* group.element[18].target.code = #telecom[2].extension[1].url
* group.element[18].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[18].target.extension[0].extension[0].url = "type"
* group.element[18].target.extension[0].extension[0].valueCode = #"uri"
* group.element[18].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[18].target.extension[0].extension[1].valueInteger = 0
* group.element[18].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[18].target.extension[0].extension[2].valueInteger = 1
* group.element[18].target.display = "telecom[2].extension[1].url"
* group.element[19].code = #PRT-23
* group.element[19].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[19].extension[0].extension[0].url = "type"
* group.element[19].extension[0].extension[0].valueCode = #"CWE"
* group.element[19].extension[0].extension[1].url = "cardinalityMin"
* group.element[19].extension[0].extension[1].valueInteger = 1
* group.element[19].extension[0].extension[2].url = "cardinalityMax"
* group.element[19].extension[0].extension[2].valueInteger = 1
* group.element[19].display = "Preferred Method of Contact"
* group.element[19].target.equivalence = #equivalent
* group.element[19].target.code = #telecom[2].extension[1].valueBoolean
* group.element[19].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[19].target.extension[0].extension[0].url = "type"
* group.element[19].target.extension[0].extension[0].valueCode = #"boolean"
* group.element[19].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[19].target.extension[0].extension[1].valueInteger = 0
* group.element[19].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[19].target.extension[0].extension[2].valueInteger = 1
* group.element[19].target.display = "telecom[2].extension[1].valueBoolean"
* group.element[20].code = #PRT-23
* group.element[20].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[20].extension[0].extension[0].url = "type"
* group.element[20].extension[0].extension[0].valueCode = #"CWE"
* group.element[20].extension[0].extension[1].url = "cardinalityMin"
* group.element[20].extension[0].extension[1].valueInteger = 1
* group.element[20].extension[0].extension[2].url = "cardinalityMax"
* group.element[20].extension[0].extension[2].valueInteger = 1
* group.element[20].display = "Preferred Method of Contact"
* group.element[20].target.equivalence = #equivalent
* group.element[20].target.code = #telecom[3].extension[1].url
* group.element[20].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[20].target.extension[0].extension[0].url = "type"
* group.element[20].target.extension[0].extension[0].valueCode = #"uri"
* group.element[20].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[20].target.extension[0].extension[1].valueInteger = 0
* group.element[20].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[20].target.extension[0].extension[2].valueInteger = 1
* group.element[20].target.display = "telecom[3].extension[1].url"
* group.element[21].code = #PRT-23
* group.element[21].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[21].extension[0].extension[0].url = "type"
* group.element[21].extension[0].extension[0].valueCode = #"CWE"
* group.element[21].extension[0].extension[1].url = "cardinalityMin"
* group.element[21].extension[0].extension[1].valueInteger = 1
* group.element[21].extension[0].extension[2].url = "cardinalityMax"
* group.element[21].extension[0].extension[2].valueInteger = 1
* group.element[21].display = "Preferred Method of Contact"
* group.element[21].target.equivalence = #equivalent
* group.element[21].target.code = #telecom[3].extension[1].valueBoolean
* group.element[21].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[21].target.extension[0].extension[0].url = "type"
* group.element[21].target.extension[0].extension[0].valueCode = #"boolean"
* group.element[21].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[21].target.extension[0].extension[1].valueInteger = 0
* group.element[21].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[21].target.extension[0].extension[2].valueInteger = 1
* group.element[21].target.display = "telecom[3].extension[1].valueBoolean"
* group.element[22].code = #PRT-23
* group.element[22].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[22].extension[0].extension[0].url = "type"
* group.element[22].extension[0].extension[0].valueCode = #"CWE"
* group.element[22].extension[0].extension[1].url = "cardinalityMin"
* group.element[22].extension[0].extension[1].valueInteger = 1
* group.element[22].extension[0].extension[2].url = "cardinalityMax"
* group.element[22].extension[0].extension[2].valueInteger = 1
* group.element[22].display = "Preferred Method of Contact"
* group.element[22].target.equivalence = #equivalent
* group.element[22].target.code = #telecom[4].extension[1].url
* group.element[22].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[22].target.extension[0].extension[0].url = "type"
* group.element[22].target.extension[0].extension[0].valueCode = #"uri"
* group.element[22].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[22].target.extension[0].extension[1].valueInteger = 0
* group.element[22].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[22].target.extension[0].extension[2].valueInteger = 1
* group.element[22].target.display = "telecom[4].extension[1].url"
* group.element[23].code = #PRT-23
* group.element[23].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[23].extension[0].extension[0].url = "type"
* group.element[23].extension[0].extension[0].valueCode = #"CWE"
* group.element[23].extension[0].extension[1].url = "cardinalityMin"
* group.element[23].extension[0].extension[1].valueInteger = 1
* group.element[23].extension[0].extension[2].url = "cardinalityMax"
* group.element[23].extension[0].extension[2].valueInteger = 1
* group.element[23].display = "Preferred Method of Contact"
* group.element[23].target.equivalence = #equivalent
* group.element[23].target.code = #telecom[4].extension[1].valueBoolean
* group.element[23].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[23].target.extension[0].extension[0].url = "type"
* group.element[23].target.extension[0].extension[0].valueCode = #"boolean"
* group.element[23].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[23].target.extension[0].extension[1].valueInteger = 0
* group.element[23].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[23].target.extension[0].extension[2].valueInteger = 1
* group.element[23].target.display = "telecom[4].extension[1].valueBoolean"
* group.element[24].code = #PRT-23
* group.element[24].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[24].extension[0].extension[0].url = "type"
* group.element[24].extension[0].extension[0].valueCode = #"CWE"
* group.element[24].extension[0].extension[1].url = "cardinalityMin"
* group.element[24].extension[0].extension[1].valueInteger = 1
* group.element[24].extension[0].extension[2].url = "cardinalityMax"
* group.element[24].extension[0].extension[2].valueInteger = 1
* group.element[24].display = "Preferred Method of Contact"
* group.element[24].target.equivalence = #equivalent
* group.element[24].target.code = #telecom[5].extension[1].url
* group.element[24].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[24].target.extension[0].extension[0].url = "type"
* group.element[24].target.extension[0].extension[0].valueCode = #"uri"
* group.element[24].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[24].target.extension[0].extension[1].valueInteger = 0
* group.element[24].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[24].target.extension[0].extension[2].valueInteger = 1
* group.element[24].target.display = "telecom[5].extension[1].url"
* group.element[25].code = #PRT-23
* group.element[25].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[25].extension[0].extension[0].url = "type"
* group.element[25].extension[0].extension[0].valueCode = #"CWE"
* group.element[25].extension[0].extension[1].url = "cardinalityMin"
* group.element[25].extension[0].extension[1].valueInteger = 1
* group.element[25].extension[0].extension[2].url = "cardinalityMax"
* group.element[25].extension[0].extension[2].valueInteger = 1
* group.element[25].display = "Preferred Method of Contact"
* group.element[25].target.equivalence = #equivalent
* group.element[25].target.code = #telecom[5].extension[1].valueBoolean
* group.element[25].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[25].target.extension[0].extension[0].url = "type"
* group.element[25].target.extension[0].extension[0].valueCode = #"boolean"
* group.element[25].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[25].target.extension[0].extension[1].valueInteger = 0
* group.element[25].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[25].target.extension[0].extension[2].valueInteger = 1
* group.element[25].target.display = "telecom[5].extension[1].valueBoolean"
* group.element[26].code = #PRT-23
* group.element[26].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[26].extension[0].extension[0].url = "type"
* group.element[26].extension[0].extension[0].valueCode = #"CWE"
* group.element[26].extension[0].extension[1].url = "cardinalityMin"
* group.element[26].extension[0].extension[1].valueInteger = 1
* group.element[26].extension[0].extension[2].url = "cardinalityMax"
* group.element[26].extension[0].extension[2].valueInteger = 1
* group.element[26].display = "Preferred Method of Contact"
* group.element[26].target.equivalence = #equivalent
* group.element[26].target.code = #telecom[6].extension[1].url
* group.element[26].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[26].target.extension[0].extension[0].url = "type"
* group.element[26].target.extension[0].extension[0].valueCode = #"uri"
* group.element[26].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[26].target.extension[0].extension[1].valueInteger = 0
* group.element[26].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[26].target.extension[0].extension[2].valueInteger = 1
* group.element[26].target.display = "telecom[6].extension[1].url"
* group.element[27].code = #PRT-23
* group.element[27].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[27].extension[0].extension[0].url = "type"
* group.element[27].extension[0].extension[0].valueCode = #"CWE"
* group.element[27].extension[0].extension[1].url = "cardinalityMin"
* group.element[27].extension[0].extension[1].valueInteger = 1
* group.element[27].extension[0].extension[2].url = "cardinalityMax"
* group.element[27].extension[0].extension[2].valueInteger = 1
* group.element[27].display = "Preferred Method of Contact"
* group.element[27].target.equivalence = #equivalent
* group.element[27].target.code = #telecom[6].extension[1].valueBoolean
* group.element[27].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[27].target.extension[0].extension[0].url = "type"
* group.element[27].target.extension[0].extension[0].valueCode = #"boolean"
* group.element[27].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[27].target.extension[0].extension[1].valueInteger = 0
* group.element[27].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[27].target.extension[0].extension[2].valueInteger = 1
* group.element[27].target.display = "telecom[6].extension[1].valueBoolean"
* group.element[28].code = #PRT-24
* group.element[28].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[28].extension[0].extension[0].url = "type"
* group.element[28].extension[0].extension[0].valueCode = #"PLN"
* group.element[28].extension[0].extension[1].url = "cardinalityMin"
* group.element[28].extension[0].extension[1].valueInteger = -1
* group.element[28].extension[0].extension[2].url = "cardinalityMax"
* group.element[28].extension[0].extension[2].valueInteger = -1
* group.element[28].display = "Contact Identifiers"
* group.element[28].target.equivalence = #equivalent
* group.element[28].target.code = #identifier[2]
* group.element[28].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[28].target.extension[0].extension[0].url = "type"
* group.element[28].target.extension[0].extension[0].valueCode = #"Identifier"
* group.element[28].target.extension[0].extension[1].url = "cardinalityMin"
* group.element[28].target.extension[0].extension[1].valueInteger = 0
* group.element[28].target.extension[0].extension[2].url = "cardinalityMax"
* group.element[28].target.extension[0].extension[2].valueInteger = -1
* group.element[28].target.display = "identifier[2]"
