// HL7 Segment - FHIR R4_ PRT[CareTeam] - Sheet1.csv
Instance: SegmentPRTToCareTeam
InstanceOf: ConceptMap
Title: "Segment PRT to CareTeam Map"
* title = "Segment PRT to CareTeam Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Segment PRT to the FHIR CareTeam Resource."
* id = "segment-prt-to-careteam"
* url = "http://hl7.org/fhir/uv/v2mappings/segment-prt-to-careteam"
* version = "1.0"
* name = "SegmentPRTToCareTeam"
* status = #active
* experimental = true
* date = "2023-10-03"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "PRT"
* targetUri = "CareTeam"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Segment PRT to CareTeam.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1TcwjfyUSD-659jlIoZIne7O0JoxHPo6yhd4aaBGVrtE/edit#gid=0"
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
* group.element[0].target.code = #participant.role
* group.element[0].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].target.extension[0].extension[0].url = "type"
* group.element[0].target.extension[0].extension[0].valueCode = #"CodeableConcept"
* group.element[0].target.display = "participant.role"
* group.element[0].target.dependsOn[0].property = "data-type-map"
* group.element[0].target.dependsOn[0].value = "CWE[CodeableConcept]"
* group.element[0].target.dependsOn[1].property = "vocabulary-map"
* group.element[0].target.dependsOn[1].value = "Participation"
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
* group.element[1].target.code = #participant[1].member(Practitioner)
* group.element[1].target.display = "participant[1].member(Practitioner)"
* group.element[1].target.dependsOn[0].property = "data-type-map"
* group.element[1].target.dependsOn[0].value = "XCN[Practitioner]"
* group.element[1].target.product[0].property = "antlr"
* group.element[1].target.product[0].value = "IF PRT-6 IS NOT VALUED"
* group.element[2].code = #PRT-5
* group.element[2].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[2].extension[0].extension[0].url = "type"
* group.element[2].extension[0].extension[0].valueCode = #"XCN"
* group.element[2].extension[0].extension[1].url = "cardinalityMin"
* group.element[2].extension[0].extension[1].valueInteger = -1
* group.element[2].extension[0].extension[2].url = "cardinalityMax"
* group.element[2].extension[0].extension[2].valueInteger = -1
* group.element[2].display = "Person"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #participant[2].member(RelatedPerson)
* group.element[2].target.display = "participant[2].member(RelatedPerson)"
* group.element[2].target.dependsOn[0].property = "data-type-map"
* group.element[2].target.dependsOn[0].value = "XCN[RelatedPerson]"
* group.element[2].target.product[0].property = "antlr"
* group.element[2].target.product[0].value = "IF PRT-6 IS NOT VALUED"
* group.element[3].code = #PRT-5
* group.element[3].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[3].extension[0].extension[0].url = "type"
* group.element[3].extension[0].extension[0].valueCode = #"XCN"
* group.element[3].extension[0].extension[1].url = "cardinalityMin"
* group.element[3].extension[0].extension[1].valueInteger = -1
* group.element[3].extension[0].extension[2].url = "cardinalityMax"
* group.element[3].extension[0].extension[2].valueInteger = -1
* group.element[3].display = "Person"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #participant[3].member(PractitionerRole)
* group.element[3].target.display = "participant[3].member(PractitionerRole)"
* group.element[3].target.dependsOn[0].property = "data-type-map"
* group.element[3].target.dependsOn[0].value = "XCN[PractitionerRole]"
* group.element[3].target.product[0].property = "antlr"
* group.element[3].target.product[0].value = "IF PRT-6 IS VALUED"
* group.element[4].code = #PRT-6
* group.element[4].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[4].extension[0].extension[0].url = "type"
* group.element[4].extension[0].extension[0].valueCode = #"CWE"
* group.element[4].extension[0].extension[1].url = "cardinalityMin"
* group.element[4].extension[0].extension[1].valueInteger = 1
* group.element[4].extension[0].extension[2].url = "cardinalityMax"
* group.element[4].extension[0].extension[2].valueInteger = 1
* group.element[4].display = "Person Provider Type"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #participant[3].member(PractitionerRole)
* group.element[4].target.display = "participant[3].member(PractitionerRole)"
* group.element[4].target.dependsOn[0].property = "data-type-map"
* group.element[4].target.dependsOn[0].value = "CWE[PractitionerRole]"
* group.element[5].code = #PRT-8
* group.element[5].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[5].extension[0].extension[0].url = "type"
* group.element[5].extension[0].extension[0].valueCode = #"XON"
* group.element[5].extension[0].extension[1].url = "cardinalityMin"
* group.element[5].extension[0].extension[1].valueInteger = -1
* group.element[5].extension[0].extension[2].url = "cardinalityMax"
* group.element[5].extension[0].extension[2].valueInteger = -1
* group.element[5].display = "Organization"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #participant.member(Organization)
* group.element[5].target.display = "participant.member(Organization)"
* group.element[5].target.dependsOn[0].property = "data-type-map"
* group.element[5].target.dependsOn[0].value = "XON[Organization]"
* group.element[5].target.product[0].property = "antlr"
* group.element[5].target.product[0].value = "IF PRT-5 AND PRT-6 AREA NOT VALUED"
* group.element[6].code = #PRT-8
* group.element[6].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[6].extension[0].extension[0].url = "type"
* group.element[6].extension[0].extension[0].valueCode = #"XON"
* group.element[6].extension[0].extension[1].url = "cardinalityMin"
* group.element[6].extension[0].extension[1].valueInteger = -1
* group.element[6].extension[0].extension[2].url = "cardinalityMax"
* group.element[6].extension[0].extension[2].valueInteger = -1
* group.element[6].display = "Organization"
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #participant.onBehalfOf(Organization)
* group.element[6].target.display = "participant.onBehalfOf(Organization)"
* group.element[6].target.dependsOn[0].property = "data-type-map"
* group.element[6].target.dependsOn[0].value = "XON[Organization]"
* group.element[6].target.product[0].property = "antlr"
* group.element[6].target.product[0].value = "IF PRT-5 OR PRT-6 IS VALUED"
* group.element[7].code = #PRT-11
* group.element[7].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[7].extension[0].extension[0].url = "type"
* group.element[7].extension[0].extension[0].valueCode = #"DTM"
* group.element[7].extension[0].extension[1].url = "cardinalityMin"
* group.element[7].extension[0].extension[1].valueInteger = 1
* group.element[7].extension[0].extension[2].url = "cardinalityMax"
* group.element[7].extension[0].extension[2].valueInteger = 1
* group.element[7].display = "Begin Date/Time (arrival time)"
* group.element[7].target.equivalence = #equivalent
* group.element[7].target.code = #participant.coveragePeriod.start
* group.element[7].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[7].target.extension[0].extension[0].url = "type"
* group.element[7].target.extension[0].extension[0].valueCode = #"dateTime"
* group.element[7].target.display = "participant.coveragePeriod.start"
* group.element[7].target.dependsOn[0].property = "data-type-map"
* group.element[7].target.dependsOn[0].value = "DTM[DateTime]"
* group.element[8].code = #PRT-12
* group.element[8].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[8].extension[0].extension[0].url = "type"
* group.element[8].extension[0].extension[0].valueCode = #"DTM"
* group.element[8].extension[0].extension[1].url = "cardinalityMin"
* group.element[8].extension[0].extension[1].valueInteger = 1
* group.element[8].extension[0].extension[2].url = "cardinalityMax"
* group.element[8].extension[0].extension[2].valueInteger = 1
* group.element[8].display = "End Date/Time (departure time)"
* group.element[8].target.equivalence = #equivalent
* group.element[8].target.code = #participant.coveragePeriod.end
* group.element[8].target.extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[8].target.extension[0].extension[0].url = "type"
* group.element[8].target.extension[0].extension[0].valueCode = #"dateTime"
* group.element[8].target.display = "participant.coveragePeriod.end"
* group.element[8].target.dependsOn[0].property = "data-type-map"
* group.element[8].target.dependsOn[0].value = "DTM[DateTime]"
* group.element[9].code = #PRT-14
* group.element[9].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[9].extension[0].extension[0].url = "type"
* group.element[9].extension[0].extension[0].valueCode = #"XAD"
* group.element[9].extension[0].extension[1].url = "cardinalityMin"
* group.element[9].extension[0].extension[1].valueInteger = -1
* group.element[9].extension[0].extension[2].url = "cardinalityMax"
* group.element[9].extension[0].extension[2].valueInteger = -1
* group.element[9].display = "Address"
* group.element[9].target.equivalence = #equivalent
* group.element[9].target.code = #participant[1].member(Practitioner.address)
* group.element[9].target.display = "participant[1].member(Practitioner.address)"
* group.element[9].target.dependsOn[0].property = "data-type-map"
* group.element[9].target.dependsOn[0].value = "XAD[Address]"
* group.element[9].target.product[0].property = "antlr"
* group.element[9].target.product[0].value = "IF PRT-6 IS NOT VALUED"
* group.element[10].code = #PRT-14
* group.element[10].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[10].extension[0].extension[0].url = "type"
* group.element[10].extension[0].extension[0].valueCode = #"XAD"
* group.element[10].extension[0].extension[1].url = "cardinalityMin"
* group.element[10].extension[0].extension[1].valueInteger = -1
* group.element[10].extension[0].extension[2].url = "cardinalityMax"
* group.element[10].extension[0].extension[2].valueInteger = -1
* group.element[10].display = "Address"
* group.element[10].target.equivalence = #equivalent
* group.element[10].target.code = #participant[2].member(RelatedPerson.address)
* group.element[10].target.display = "participant[2].member(RelatedPerson.address)"
* group.element[10].target.dependsOn[0].property = "data-type-map"
* group.element[10].target.dependsOn[0].value = "XAD[Address]"
* group.element[10].target.product[0].property = "antlr"
* group.element[10].target.product[0].value = "IF PRT-6 IS NOT VALUED"
* group.element[11].code = #PRT-14
* group.element[11].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[11].extension[0].extension[0].url = "type"
* group.element[11].extension[0].extension[0].valueCode = #"XAD"
* group.element[11].extension[0].extension[1].url = "cardinalityMin"
* group.element[11].extension[0].extension[1].valueInteger = -1
* group.element[11].extension[0].extension[2].url = "cardinalityMax"
* group.element[11].extension[0].extension[2].valueInteger = -1
* group.element[11].display = "Address"
* group.element[11].target.equivalence = #equivalent
* group.element[11].target.code = #participant[3].member(PractitionerRole.address)
* group.element[11].target.display = "participant[3].member(PractitionerRole.address)"
* group.element[11].target.dependsOn[0].property = "data-type-map"
* group.element[11].target.dependsOn[0].value = "XAD[Address]"
* group.element[11].target.product[0].property = "antlr"
* group.element[11].target.product[0].value = "IF PRT-6 IS VALUED"
* group.element[12].code = #PRT-14
* group.element[12].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[12].extension[0].extension[0].url = "type"
* group.element[12].extension[0].extension[0].valueCode = #"XAD"
* group.element[12].extension[0].extension[1].url = "cardinalityMin"
* group.element[12].extension[0].extension[1].valueInteger = -1
* group.element[12].extension[0].extension[2].url = "cardinalityMax"
* group.element[12].extension[0].extension[2].valueInteger = -1
* group.element[12].display = "Address"
* group.element[12].target.equivalence = #equivalent
* group.element[12].target.code = #participant.member(Organization.address)
* group.element[12].target.display = "participant.member(Organization.address)"
* group.element[12].target.dependsOn[0].property = "data-type-map"
* group.element[12].target.dependsOn[0].value = "XAD[Address]"
* group.element[12].target.product[0].property = "antlr"
* group.element[12].target.product[0].value = "IF PRT-5 AND PRT-6 AREA NOT VALUED"
* group.element[13].code = #PRT-14
* group.element[13].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[13].extension[0].extension[0].url = "type"
* group.element[13].extension[0].extension[0].valueCode = #"XAD"
* group.element[13].extension[0].extension[1].url = "cardinalityMin"
* group.element[13].extension[0].extension[1].valueInteger = -1
* group.element[13].extension[0].extension[2].url = "cardinalityMax"
* group.element[13].extension[0].extension[2].valueInteger = -1
* group.element[13].display = "Address"
* group.element[13].target.equivalence = #equivalent
* group.element[13].target.code = #participant.onBehalfOf(Organization.address)
* group.element[13].target.display = "participant.onBehalfOf(Organization.address)"
* group.element[13].target.dependsOn[0].property = "data-type-map"
* group.element[13].target.dependsOn[0].value = "XAD[Address]"
* group.element[13].target.product[0].property = "antlr"
* group.element[13].target.product[0].value = "IF PRT-5 OR PRT-6 IS VALUED"
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
* group.element[14].target.code = #participant[1].member(Practitioner.telecom)
* group.element[14].target.display = "participant[1].member(Practitioner.telecom)"
* group.element[14].target.dependsOn[0].property = "data-type-map"
* group.element[14].target.dependsOn[0].value = "XTN[ContactPoint]"
* group.element[14].target.product[0].property = "antlr"
* group.element[14].target.product[0].value = "IF PRT-6 IS NOT VALUED"
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
* group.element[15].target.code = #participant[2].member(RelatedPerson.telecom)
* group.element[15].target.display = "participant[2].member(RelatedPerson.telecom)"
* group.element[15].target.dependsOn[0].property = "data-type-map"
* group.element[15].target.dependsOn[0].value = "XTN[ContactPoint]"
* group.element[15].target.product[0].property = "antlr"
* group.element[15].target.product[0].value = "IF PRT-6 IS NOT VALUED"
* group.element[16].code = #PRT-15
* group.element[16].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[16].extension[0].extension[0].url = "type"
* group.element[16].extension[0].extension[0].valueCode = #"XTN"
* group.element[16].extension[0].extension[1].url = "cardinalityMin"
* group.element[16].extension[0].extension[1].valueInteger = -1
* group.element[16].extension[0].extension[2].url = "cardinalityMax"
* group.element[16].extension[0].extension[2].valueInteger = -1
* group.element[16].display = "Telecommunication Address"
* group.element[16].target.equivalence = #equivalent
* group.element[16].target.code = #participant[3].member(PractitionerRole.telecom)
* group.element[16].target.display = "participant[3].member(PractitionerRole.telecom)"
* group.element[16].target.dependsOn[0].property = "data-type-map"
* group.element[16].target.dependsOn[0].value = "XTN[ContactPoint]"
* group.element[16].target.product[0].property = "antlr"
* group.element[16].target.product[0].value = "IF PRT-6 IS VALUED"
* group.element[17].code = #PRT-15
* group.element[17].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[17].extension[0].extension[0].url = "type"
* group.element[17].extension[0].extension[0].valueCode = #"XTN"
* group.element[17].extension[0].extension[1].url = "cardinalityMin"
* group.element[17].extension[0].extension[1].valueInteger = -1
* group.element[17].extension[0].extension[2].url = "cardinalityMax"
* group.element[17].extension[0].extension[2].valueInteger = -1
* group.element[17].display = "Telecommunication Address"
* group.element[17].target.equivalence = #equivalent
* group.element[17].target.code = #participant.member(Organization.telecom)
* group.element[17].target.display = "participant.member(Organization.telecom)"
* group.element[17].target.dependsOn[0].property = "data-type-map"
* group.element[17].target.dependsOn[0].value = "XTN[ContactPoint]"
* group.element[17].target.product[0].property = "antlr"
* group.element[17].target.product[0].value = "IF PRT-5 AND PRT-6 AREA NOT VALUED"
* group.element[18].code = #PRT-15
* group.element[18].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[18].extension[0].extension[0].url = "type"
* group.element[18].extension[0].extension[0].valueCode = #"XTN"
* group.element[18].extension[0].extension[1].url = "cardinalityMin"
* group.element[18].extension[0].extension[1].valueInteger = -1
* group.element[18].extension[0].extension[2].url = "cardinalityMax"
* group.element[18].extension[0].extension[2].valueInteger = -1
* group.element[18].display = "Telecommunication Address"
* group.element[18].target.equivalence = #equivalent
* group.element[18].target.code = #participant.onBehalfOf(Organization.telecom)
* group.element[18].target.display = "participant.onBehalfOf(Organization.telecom)"
* group.element[18].target.dependsOn[0].property = "data-type-map"
* group.element[18].target.dependsOn[0].value = "XTN[ContactPoint]"
* group.element[18].target.product[0].property = "antlr"
* group.element[18].target.product[0].value = "IF PRT-5 OR PRT-6 IS VALUED"
