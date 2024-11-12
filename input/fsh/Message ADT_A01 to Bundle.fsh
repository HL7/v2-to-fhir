// HL7 Message - FHIR R4_ ADT_A01 - Sheet1.csv
Instance: MessageADT_A01ToBundle
InstanceOf: ConceptMap
Title: "Message ADT_A01 to Bundle Map"
* title = "Message ADT_A01 to Bundle Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Message ADT_A01 to the FHIR Message Bundle."
* id = "message-adt-a01-to-bundle"
* url = "http://hl7.org/fhir/uv/v2mappings/message-adt-a01-to-bundle"
* version = "1.0"
* name = "MessageADT_A01ToBundle"
* status = #active
* experimental = true
* date = "2024-11-12"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "ADT_A01"
* targetUri = "Bundle"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Message ADT:A01 to Bundle.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1kPOewgrlY4Mpi8W3HyLzb5J-tuZnUBAzgsXuhX5lcGo/edit#gid=0"
* group.element[0].code = #ADT_A01.MSH
* group.element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].extension[0].extension[0].url = "cardinalityMin"
* group.element[0].extension[0].extension[0].valueInteger = 1
* group.element[0].extension[0].extension[1].url = "cardinalityMax"
* group.element[0].extension[0].extension[1].valueInteger = 1
* group.element[0].display = "Message Header"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #Bundle
* group.element[0].target.display = "Bundle"
* group.element[1].code = #ADT_A01.MSH
* group.element[1].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[1].extension[0].extension[0].url = "cardinalityMin"
* group.element[1].extension[0].extension[0].valueInteger = 1
* group.element[1].extension[0].extension[1].url = "cardinalityMax"
* group.element[1].extension[0].extension[1].valueInteger = 1
* group.element[1].display = "Message Header"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #MessageHeader[1]
* group.element[1].target.display = "MessageHeader[1]"
* group.element[1].target.comment = "Processing of the MSH segment results in the creation of a new MessageHeader resource."
* group.element[2].code = #ADT_A01.MSH
* group.element[2].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[2].extension[0].extension[0].url = "cardinalityMin"
* group.element[2].extension[0].extension[0].valueInteger = 1
* group.element[2].extension[0].extension[1].url = "cardinalityMax"
* group.element[2].extension[0].extension[1].valueInteger = 1
* group.element[2].display = "Message Header"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #Provenance[1]
* group.element[2].target.display = "Provenance[1]"
* group.element[2].target.comment = "If the FHIR transformation does not yield a FHIR message, but only a set of resource (APIs, repository, etc.) than one should consider attaching this Proviance resource instance to the relevant FHIR resources generated."
* group.element[3].code = #ADT_A01.MSH
* group.element[3].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[3].extension[0].extension[0].url = "cardinalityMin"
* group.element[3].extension[0].extension[0].valueInteger = 1
* group.element[3].extension[0].extension[1].url = "cardinalityMax"
* group.element[3].extension[0].extension[1].valueInteger = 1
* group.element[3].display = "Message Header"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #Provenance[2]
* group.element[3].target.display = "Provenance[2]"
* group.element[3].target.comment = "If the FHIR transformation does not yield a FHIR Bunlde, but only a set of resource (APIs, repository, etc.) than one should consider attaching this Provenance resource instance to the relevant FHIR resources generated."
* group.element[4].code = #ADT_A01.SFT
* group.element[4].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[4].extension[0].extension[0].url = "cardinalityMin"
* group.element[4].extension[0].extension[0].valueInteger = 0
* group.element[4].extension[0].extension[1].url = "cardinalityMax"
* group.element[4].extension[0].extension[1].valueInteger = -1
* group.element[4].display = "Software Segment"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #Provenance[1].entity.what(Device)
* group.element[4].target.display = "Provenance[1].entity.what(Device)"
* group.element[5].code = #ADT_A01.SFT
* group.element[5].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[5].extension[0].extension[0].url = "cardinalityMin"
* group.element[5].extension[0].extension[0].valueInteger = 0
* group.element[5].extension[0].extension[1].url = "cardinalityMax"
* group.element[5].extension[0].extension[1].valueInteger = -1
* group.element[5].display = "Software Segment"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #Provenance[1].entity.what(Device)
* group.element[5].target.display = "Provenance[1].entity.what(Device)"
* group.element[6].code = #ADT_A01.EVN
* group.element[6].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[6].extension[0].extension[0].url = "cardinalityMin"
* group.element[6].extension[0].extension[0].valueInteger = 1
* group.element[6].extension[0].extension[1].url = "cardinalityMax"
* group.element[6].extension[0].extension[1].valueInteger = 1
* group.element[6].display = "Event Type"
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #Provenance[3]
* group.element[6].target.display = "Provenance[3]"
* group.element[7].code = #ADT_A01.EVN
* group.element[7].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[7].extension[0].extension[0].url = "cardinalityMin"
* group.element[7].extension[0].extension[0].valueInteger = 1
* group.element[7].extension[0].extension[1].url = "cardinalityMax"
* group.element[7].extension[0].extension[1].valueInteger = 1
* group.element[7].display = "Event Type"
* group.element[7].target.equivalence = #equivalent
* group.element[7].target.code = #Provenance[3]
* group.element[7].target.display = "Provenance[3]"
* group.element[7].target.comment = "If EVN-5 is not valued, then the MSH may have either the sending responsible organization (MSH-22) or the sending facility (MSH-4) to reasonable approximate the agent relevant for this Provenance instance."
* group.element[8].code = #ADT_A01.PID
* group.element[8].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[8].extension[0].extension[0].url = "cardinalityMin"
* group.element[8].extension[0].extension[0].valueInteger = 1
* group.element[8].extension[0].extension[1].url = "cardinalityMax"
* group.element[8].extension[0].extension[1].valueInteger = 1
* group.element[8].display = "Patient Identification"
* group.element[8].target.equivalence = #equivalent
* group.element[8].target.code = #Patient[1]
* group.element[8].target.display = "Patient[1]"
* group.element[8].target.comment = "Processing of the PID segment results in the creation of a new Patient resource"
* group.element[9].code = #ADT_A01.PID
* group.element[9].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[9].extension[0].extension[0].url = "cardinalityMin"
* group.element[9].extension[0].extension[0].valueInteger = 1
* group.element[9].extension[0].extension[1].url = "cardinalityMax"
* group.element[9].extension[0].extension[1].valueInteger = 1
* group.element[9].display = "Patient Identification"
* group.element[9].target.equivalence = #equivalent
* group.element[9].target.code = #Account
* group.element[9].target.display = "Account"
* group.element[10].code = #ADT_A01.PID
* group.element[10].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[10].extension[0].extension[0].url = "cardinalityMin"
* group.element[10].extension[0].extension[0].valueInteger = 1
* group.element[10].extension[0].extension[1].url = "cardinalityMax"
* group.element[10].extension[0].extension[1].valueInteger = 1
* group.element[10].display = "Patient Identification"
* group.element[10].target.equivalence = #equivalent
* group.element[10].target.code = #Provenance[4]
* group.element[10].target.display = "Provenance[4]"
* group.element[11].code = #ADT_A01.PD1
* group.element[11].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[11].extension[0].extension[0].url = "cardinalityMin"
* group.element[11].extension[0].extension[0].valueInteger = 0
* group.element[11].extension[0].extension[1].url = "cardinalityMax"
* group.element[11].extension[0].extension[1].valueInteger = 1
* group.element[11].display = "Additional Demographics"
* group.element[11].target.equivalence = #equivalent
* group.element[11].target.code = #Patient[1]
* group.element[11].target.display = "Patient[1]"
* group.element[11].target.comment = "Incorporate PD1 content into the Patient created from the PID segment."
* group.element[12].code = #ADT_A01.PD1
* group.element[12].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[12].extension[0].extension[0].url = "cardinalityMin"
* group.element[12].extension[0].extension[0].valueInteger = 0
* group.element[12].extension[0].extension[1].url = "cardinalityMax"
* group.element[12].extension[0].extension[1].valueInteger = 1
* group.element[12].display = "Additional Demographics"
* group.element[12].target.equivalence = #equivalent
* group.element[12].target.code = #Observation[1]
* group.element[12].target.display = "Observation[1]"
* group.element[13].code = #ADT_A01:follow:PID.ROL
* group.element[13].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[13].extension[0].extension[0].url = "cardinalityMin"
* group.element[13].extension[0].extension[0].valueInteger = 0
* group.element[13].extension[0].extension[1].url = "cardinalityMax"
* group.element[13].extension[0].extension[1].valueInteger = -1
* group.element[13].display = "Role"
* group.element[13].target.equivalence = #equivalent
* group.element[13].target.code = #Patient[1]
* group.element[13].target.display = "Patient[1]"
* group.element[14].code = #ADT_A01:follow:PID.ROL
* group.element[14].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[14].extension[0].extension[0].url = "cardinalityMin"
* group.element[14].extension[0].extension[0].valueInteger = 0
* group.element[14].extension[0].extension[1].url = "cardinalityMax"
* group.element[14].extension[0].extension[1].valueInteger = -1
* group.element[14].display = "Role"
* group.element[14].target.equivalence = #equivalent
* group.element[14].target.code = #CareTeam[1]
* group.element[14].target.display = "CareTeam[1]"
* group.element[15].code = #ADT_A01:follow:PID.PRT
* group.element[15].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[15].extension[0].extension[0].url = "cardinalityMin"
* group.element[15].extension[0].extension[0].valueInteger = 0
* group.element[15].extension[0].extension[1].url = "cardinalityMax"
* group.element[15].extension[0].extension[1].valueInteger = -1
* group.element[15].display = "Participation"
* group.element[15].target.equivalence = #equivalent
* group.element[15].target.code = #Patient[1]
* group.element[15].target.display = "Patient[1]"
* group.element[16].code = #ADT_A01:follow:PID.PRT
* group.element[16].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[16].extension[0].extension[0].url = "cardinalityMin"
* group.element[16].extension[0].extension[0].valueInteger = 0
* group.element[16].extension[0].extension[1].url = "cardinalityMax"
* group.element[16].extension[0].extension[1].valueInteger = -1
* group.element[16].display = "Participation"
* group.element[16].target.equivalence = #equivalent
* group.element[16].target.code = #CareTeam[1]
* group.element[16].target.display = "CareTeam[1]"
* group.element[17].code = #ADT_A01.NEXT_OF_KIN.NK1
* group.element[17].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[17].extension[0].extension[0].url = "cardinalityMin"
* group.element[17].extension[0].extension[0].valueInteger = 0
* group.element[17].extension[0].extension[1].url = "cardinalityMax"
* group.element[17].extension[0].extension[1].valueInteger = -1
* group.element[17].display = "Next of Kin / Associated Parties"
* group.element[17].target.equivalence = #equivalent
* group.element[17].target.code = #RelatedPerson[2]
* group.element[17].target.display = "RelatedPerson[2]"
* group.element[17].target.comment = "Typically, each NK1 will be translated to either a new RelatedPerson resource or added as a new occurrence of Patient.contact, but it's possible to insert the NK1 data into both structures."
* group.element[18].code = #ADT_A01.NEXT_OF_KIN.NK1
* group.element[18].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[18].extension[0].extension[0].url = "cardinalityMin"
* group.element[18].extension[0].extension[0].valueInteger = 0
* group.element[18].extension[0].extension[1].url = "cardinalityMax"
* group.element[18].extension[0].extension[1].valueInteger = -1
* group.element[18].display = "Next of Kin / Associated Parties"
* group.element[18].target.equivalence = #equivalent
* group.element[18].target.code = #Patient[1]
* group.element[18].target.display = "Patient[1]"
* group.element[19].code = #ADT_A01.NEXT_OF_KIN.NK1
* group.element[19].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[19].extension[0].extension[0].url = "cardinalityMin"
* group.element[19].extension[0].extension[0].valueInteger = 0
* group.element[19].extension[0].extension[1].url = "cardinalityMax"
* group.element[19].extension[0].extension[1].valueInteger = -1
* group.element[19].display = "Next of Kin / Associated Parties"
* group.element[19].target.equivalence = #equivalent
* group.element[19].target.code = #Patient[1]
* group.element[19].target.display = "Patient[1]"
* group.element[20].code = #ADT_A01.PV1
* group.element[20].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[20].extension[0].extension[0].url = "cardinalityMin"
* group.element[20].extension[0].extension[0].valueInteger = 1
* group.element[20].extension[0].extension[1].url = "cardinalityMax"
* group.element[20].extension[0].extension[1].valueInteger = 1
* group.element[20].display = "Patient Visit"
* group.element[20].target.equivalence = #equivalent
* group.element[20].target.code = #Encounter[1]
* group.element[20].target.display = "Encounter[1]"
* group.element[20].target.comment = "Processing of the PV1 segment results in the creation of a new Encounter resource"
* group.element[21].code = #ADT_A01.PV1
* group.element[21].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[21].extension[0].extension[0].url = "cardinalityMin"
* group.element[21].extension[0].extension[0].valueInteger = 1
* group.element[21].extension[0].extension[1].url = "cardinalityMax"
* group.element[21].extension[0].extension[1].valueInteger = 1
* group.element[21].display = "Patient Visit"
* group.element[21].target.equivalence = #equivalent
* group.element[21].target.code = #Basic
* group.element[21].target.display = "Basic"
* group.element[22].code = #ADT_A01.PV1
* group.element[22].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[22].extension[0].extension[0].url = "cardinalityMin"
* group.element[22].extension[0].extension[0].valueInteger = 1
* group.element[22].extension[0].extension[1].url = "cardinalityMax"
* group.element[22].extension[0].extension[1].valueInteger = 1
* group.element[22].display = "Patient Visit"
* group.element[22].target.equivalence = #equivalent
* group.element[22].target.code = #Patient[1]
* group.element[22].target.display = "Patient[1]"
* group.element[23].code = #ADT_A01.PV1
* group.element[23].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[23].extension[0].extension[0].url = "cardinalityMin"
* group.element[23].extension[0].extension[0].valueInteger = 1
* group.element[23].extension[0].extension[1].url = "cardinalityMax"
* group.element[23].extension[0].extension[1].valueInteger = 1
* group.element[23].display = "Patient Visit"
* group.element[23].target.equivalence = #equivalent
* group.element[23].target.code = #Coverage[1]
* group.element[23].target.display = "Coverage[1]"
* group.element[24].code = #ADT_A01.PV2
* group.element[24].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[24].extension[0].extension[0].url = "cardinalityMin"
* group.element[24].extension[0].extension[0].valueInteger = 0
* group.element[24].extension[0].extension[1].url = "cardinalityMax"
* group.element[24].extension[0].extension[1].valueInteger = 1
* group.element[24].display = "Patient Visit - Additional Info."
* group.element[24].target.equivalence = #equivalent
* group.element[24].target.code = #Encounter[1]
* group.element[24].target.display = "Encounter[1]"
* group.element[24].target.comment = "Incorporate PV2 content into the Encounter created from the PV1 segment."
* group.element[25].code = #ADT_A01:follow:PV1.ROL
* group.element[25].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[25].extension[0].extension[0].url = "cardinalityMin"
* group.element[25].extension[0].extension[0].valueInteger = 0
* group.element[25].extension[0].extension[1].url = "cardinalityMax"
* group.element[25].extension[0].extension[1].valueInteger = -1
* group.element[25].display = "Role"
* group.element[25].target.equivalence = #equivalent
* group.element[25].target.code = #Encounter[1]
* group.element[25].target.display = "Encounter[1]"
* group.element[26].code = #ADT_A01.OBSERVATION.OBX
* group.element[26].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[26].extension[0].extension[0].url = "cardinalityMin"
* group.element[26].extension[0].extension[0].valueInteger = 0
* group.element[26].extension[0].extension[1].url = "cardinalityMax"
* group.element[26].extension[0].extension[1].valueInteger = -1
* group.element[26].display = "Observation/Result"
* group.element[26].target.equivalence = #equivalent
* group.element[26].target.code = #Observation[3]
* group.element[26].target.display = "Observation[3]"
* group.element[26].target.comment = "One cannot determine whether this observation made during the PV1/PV2 communicated above, or from a prior visit/stay. It is therefore up to the implementer whether to populate Observation.encounter.reference with the Encounter[1].id or not.  Only when the ADT message involves an event before the encounter occurs, e.g., the intiial registration, it is clear that the observation is NOT associated with Encounter[1]."
* group.element[27].code = #ADT_A01.OBSERVATION.OBX
* group.element[27].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[27].extension[0].extension[0].url = "cardinalityMin"
* group.element[27].extension[0].extension[0].valueInteger = 0
* group.element[27].extension[0].extension[1].url = "cardinalityMax"
* group.element[27].extension[0].extension[1].valueInteger = -1
* group.element[27].display = "Observation/Result"
* group.element[27].target.equivalence = #equivalent
* group.element[27].target.code = #Observation[3]
* group.element[27].target.display = "Observation[3]"
* group.element[27].target.comment = "One cannot determine whether this observation made during the PV1/PV2 communicated above, or from a prior visit/stay. It is therefore up to the implementer whether to populate Observation.encounter.reference with the Encounter[1].id or not.  Only when the ADT message involves an event before the encounter occurs, e.g., the intiial registration, it is clear that the observation is NOT associated with Encounter[1]."
* group.element[28].code = #ADT_A01.AL1
* group.element[28].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[28].extension[0].extension[0].url = "cardinalityMin"
* group.element[28].extension[0].extension[0].valueInteger = 0
* group.element[28].extension[0].extension[1].url = "cardinalityMax"
* group.element[28].extension[0].extension[1].valueInteger = -1
* group.element[28].display = "Allergy Information"
* group.element[28].target.equivalence = #equivalent
* group.element[28].target.code = #AllergyIntolerance
* group.element[28].target.display = "AllergyIntolerance"
* group.element[28].target.comment = "Processing of the AL1 segment results in the creation of a new AllergyIntolerance resource"
* group.element[29].code = #ADT_A01.DG1
* group.element[29].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[29].extension[0].extension[0].url = "cardinalityMin"
* group.element[29].extension[0].extension[0].valueInteger = 0
* group.element[29].extension[0].extension[1].url = "cardinalityMax"
* group.element[29].extension[0].extension[1].valueInteger = -1
* group.element[29].display = "Diagnosis Information"
* group.element[29].target.equivalence = #equivalent
* group.element[29].target.code = #Condition[1]
* group.element[29].target.display = "Condition[1]"
* group.element[29].target.comment = "Processing of the DG1 segment results in the creation of a new Condition resource"
* group.element[30].code = #ADT_A01.DG1
* group.element[30].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[30].extension[0].extension[0].url = "cardinalityMin"
* group.element[30].extension[0].extension[0].valueInteger = 0
* group.element[30].extension[0].extension[1].url = "cardinalityMax"
* group.element[30].extension[0].extension[1].valueInteger = -1
* group.element[30].display = "Diagnosis Information"
* group.element[30].target.equivalence = #equivalent
* group.element[30].target.code = #Encounter[1]
* group.element[30].target.display = "Encounter[1]"
* group.element[31].code = #ADT_A01.DG1
* group.element[31].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[31].extension[0].extension[0].url = "cardinalityMin"
* group.element[31].extension[0].extension[0].valueInteger = 0
* group.element[31].extension[0].extension[1].url = "cardinalityMax"
* group.element[31].extension[0].extension[1].valueInteger = -1
* group.element[31].display = "Diagnosis Information"
* group.element[31].target.equivalence = #equivalent
* group.element[31].target.code = #EpisodeOfCare[1]
* group.element[31].target.display = "EpisodeOfCare[1]"
* group.element[32].code = #ADT_A01.PROCEDURE.PR1
* group.element[32].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[32].extension[0].extension[0].url = "cardinalityMin"
* group.element[32].extension[0].extension[0].valueInteger = 1
* group.element[32].extension[0].extension[1].url = "cardinalityMax"
* group.element[32].extension[0].extension[1].valueInteger = 1
* group.element[32].display = "Procedures"
* group.element[32].target.equivalence = #equivalent
* group.element[32].target.code = #Procedure
* group.element[32].target.display = "Procedure"
* group.element[33].code = #ADT_A01.INSURANCE.IN1
* group.element[33].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[33].extension[0].extension[0].url = "cardinalityMin"
* group.element[33].extension[0].extension[0].valueInteger = 1
* group.element[33].extension[0].extension[1].url = "cardinalityMax"
* group.element[33].extension[0].extension[1].valueInteger = 1
* group.element[33].display = "Insurance"
* group.element[33].target.equivalence = #equivalent
* group.element[33].target.code = #Coverage[1]
* group.element[33].target.display = "Coverage[1]"
* group.element[33].target.comment = "Processing of the IN1 segment results in the creation of a new Coverage resource"
* group.element[34].code = #ADT_A01.INSURANCE.IN3
* group.element[34].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[34].extension[0].extension[0].url = "cardinalityMin"
* group.element[34].extension[0].extension[0].valueInteger = 0
* group.element[34].extension[0].extension[1].url = "cardinalityMax"
* group.element[34].extension[0].extension[1].valueInteger = -1
* group.element[34].display = "Insurance Additional Info - Cert."
* group.element[34].target.equivalence = #equivalent
* group.element[34].target.code = #CareTeam[1]
* group.element[34].target.display = "CareTeam[1]"
* group.element[34].target.comment = "Incorporate IN3 content into the Coverage created from the IN1 segment."
