// HL7 Message - FHIR R4_ ADT_A02 - Sheet1.csv
Instance: MessageADT_A02ToBundle
InstanceOf: ConceptMap
Title: "Message ADT_A02 to Bundle Map"
* title = "Message ADT_A02 to Bundle Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Message ADT_A02 to the FHIR Message Bundle."
* id = "message-adt-a02-to-bundle"
* url = "http://hl7.org/fhir/uv/v2mappings/message-adt-a02-to-bundle"
* version = "1.0"
* name = "MessageADT_A02ToBundle"
* status = #active
* experimental = true
* date = "2024-11-01"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "ADT_A02"
* targetUri = "Bundle"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Message ADT:A02 to Bundle.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1BY-JEvMz5f22Tq489SdiWWEW-PqltTODb6JJVejjqTY/edit#gid=0"
* group.element[0].code = #ADT_A02.MSH
* group.element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].extension[0].extension[0].url = "cardinalityMin"
* group.element[0].extension[0].extension[0].valueInteger = 1
* group.element[0].extension[0].extension[1].url = "cardinalityMax"
* group.element[0].extension[0].extension[1].valueInteger = 1
* group.element[0].display = "Message Header"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #Bundle
* group.element[0].target.display = "Bundle"
* group.element[1].code = #ADT_A02.MSH
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
* group.element[2].code = #ADT_A02.MSH
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
* group.element[3].code = #ADT_A02.MSH
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
* group.element[4].code = #ADT_A02.SFT
* group.element[4].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[4].extension[0].extension[0].url = "cardinalityMin"
* group.element[4].extension[0].extension[0].valueInteger = 0
* group.element[4].extension[0].extension[1].url = "cardinalityMax"
* group.element[4].extension[0].extension[1].valueInteger = -1
* group.element[4].display = "Software Segment"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #Provenance[1].entity.what(Device)
* group.element[4].target.display = "Provenance[1].entity.what(Device)"
* group.element[5].code = #ADT_A02.SFT
* group.element[5].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[5].extension[0].extension[0].url = "cardinalityMin"
* group.element[5].extension[0].extension[0].valueInteger = 0
* group.element[5].extension[0].extension[1].url = "cardinalityMax"
* group.element[5].extension[0].extension[1].valueInteger = -1
* group.element[5].display = "Software Segment"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #Provenance[1].entity.what(Device)
* group.element[5].target.display = "Provenance[1].entity.what(Device)"
* group.element[6].code = #ADT_A02.EVN
* group.element[6].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[6].extension[0].extension[0].url = "cardinalityMin"
* group.element[6].extension[0].extension[0].valueInteger = 1
* group.element[6].extension[0].extension[1].url = "cardinalityMax"
* group.element[6].extension[0].extension[1].valueInteger = 1
* group.element[6].display = "Event Type"
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #Provenance[3]
* group.element[6].target.display = "Provenance[3]"
* group.element[7].code = #ADT_A02.EVN
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
* group.element[8].code = #ADT_A02.PID
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
* group.element[9].code = #ADT_A02.PID
* group.element[9].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[9].extension[0].extension[0].url = "cardinalityMin"
* group.element[9].extension[0].extension[0].valueInteger = 1
* group.element[9].extension[0].extension[1].url = "cardinalityMax"
* group.element[9].extension[0].extension[1].valueInteger = 1
* group.element[9].display = "Patient Identification"
* group.element[9].target.equivalence = #equivalent
* group.element[9].target.code = #Account
* group.element[9].target.display = "Account"
* group.element[10].code = #ADT_A02.PID
* group.element[10].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[10].extension[0].extension[0].url = "cardinalityMin"
* group.element[10].extension[0].extension[0].valueInteger = 1
* group.element[10].extension[0].extension[1].url = "cardinalityMax"
* group.element[10].extension[0].extension[1].valueInteger = 1
* group.element[10].display = "Patient Identification"
* group.element[10].target.equivalence = #equivalent
* group.element[10].target.code = #Provenance[4]
* group.element[10].target.display = "Provenance[4]"
* group.element[11].code = #ADT_A02.PD1
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
* group.element[12].code = #ADT_A02.PD1
* group.element[12].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[12].extension[0].extension[0].url = "cardinalityMin"
* group.element[12].extension[0].extension[0].valueInteger = 0
* group.element[12].extension[0].extension[1].url = "cardinalityMax"
* group.element[12].extension[0].extension[1].valueInteger = 1
* group.element[12].display = "Additional Demographics"
* group.element[12].target.equivalence = #equivalent
* group.element[12].target.code = #Observation[1]
* group.element[12].target.display = "Observation[1]"
* group.element[13].code = #ADT_A02:follow:PID.ROL
* group.element[13].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[13].extension[0].extension[0].url = "cardinalityMin"
* group.element[13].extension[0].extension[0].valueInteger = 0
* group.element[13].extension[0].extension[1].url = "cardinalityMax"
* group.element[13].extension[0].extension[1].valueInteger = -1
* group.element[13].display = "Role"
* group.element[13].target.equivalence = #equivalent
* group.element[13].target.code = #Patient[1]
* group.element[13].target.display = "Patient[1]"
* group.element[14].code = #ADT_A02:follow:PID.ROL
* group.element[14].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[14].extension[0].extension[0].url = "cardinalityMin"
* group.element[14].extension[0].extension[0].valueInteger = 0
* group.element[14].extension[0].extension[1].url = "cardinalityMax"
* group.element[14].extension[0].extension[1].valueInteger = -1
* group.element[14].display = "Role"
* group.element[14].target.equivalence = #equivalent
* group.element[14].target.code = #CareTeam[1]
* group.element[14].target.display = "CareTeam[1]"
* group.element[15].code = #ADT_A02:follow:PID.PRT
* group.element[15].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[15].extension[0].extension[0].url = "cardinalityMin"
* group.element[15].extension[0].extension[0].valueInteger = 0
* group.element[15].extension[0].extension[1].url = "cardinalityMax"
* group.element[15].extension[0].extension[1].valueInteger = -1
* group.element[15].display = "Participation"
* group.element[15].target.equivalence = #equivalent
* group.element[15].target.code = #Patient[1]
* group.element[15].target.display = "Patient[1]"
* group.element[16].code = #ADT_A02:follow:PID.PRT
* group.element[16].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[16].extension[0].extension[0].url = "cardinalityMin"
* group.element[16].extension[0].extension[0].valueInteger = 0
* group.element[16].extension[0].extension[1].url = "cardinalityMax"
* group.element[16].extension[0].extension[1].valueInteger = -1
* group.element[16].display = "Participation"
* group.element[16].target.equivalence = #equivalent
* group.element[16].target.code = #CareTeam[1]
* group.element[16].target.display = "CareTeam[1]"
* group.element[17].code = #ADT_A02.PV1
* group.element[17].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[17].extension[0].extension[0].url = "cardinalityMin"
* group.element[17].extension[0].extension[0].valueInteger = 1
* group.element[17].extension[0].extension[1].url = "cardinalityMax"
* group.element[17].extension[0].extension[1].valueInteger = 1
* group.element[17].display = "Patient Visit"
* group.element[17].target.equivalence = #equivalent
* group.element[17].target.code = #Encounter[1]
* group.element[17].target.display = "Encounter[1]"
* group.element[17].target.comment = "Processing of the PV1 segment results in the creation of a new Encounter resource"
* group.element[18].code = #ADT_A02.PV1
* group.element[18].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[18].extension[0].extension[0].url = "cardinalityMin"
* group.element[18].extension[0].extension[0].valueInteger = 1
* group.element[18].extension[0].extension[1].url = "cardinalityMax"
* group.element[18].extension[0].extension[1].valueInteger = 1
* group.element[18].display = "Patient Visit"
* group.element[18].target.equivalence = #equivalent
* group.element[18].target.code = #Basic-EncounterHistory
* group.element[18].target.display = "Basic-EncounterHistory"
* group.element[19].code = #ADT_A02.PV1
* group.element[19].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[19].extension[0].extension[0].url = "cardinalityMin"
* group.element[19].extension[0].extension[0].valueInteger = 1
* group.element[19].extension[0].extension[1].url = "cardinalityMax"
* group.element[19].extension[0].extension[1].valueInteger = 1
* group.element[19].display = "Patient Visit"
* group.element[19].target.equivalence = #equivalent
* group.element[19].target.code = #Patient[1]
* group.element[19].target.display = "Patient[1]"
* group.element[20].code = #ADT_A02.PV1
* group.element[20].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[20].extension[0].extension[0].url = "cardinalityMin"
* group.element[20].extension[0].extension[0].valueInteger = 1
* group.element[20].extension[0].extension[1].url = "cardinalityMax"
* group.element[20].extension[0].extension[1].valueInteger = 1
* group.element[20].display = "Patient Visit"
* group.element[20].target.equivalence = #equivalent
* group.element[20].target.code = #Coverage[1]
* group.element[20].target.display = "Coverage[1]"
* group.element[21].code = #ADT_A02.PV2
* group.element[21].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[21].extension[0].extension[0].url = "cardinalityMin"
* group.element[21].extension[0].extension[0].valueInteger = 0
* group.element[21].extension[0].extension[1].url = "cardinalityMax"
* group.element[21].extension[0].extension[1].valueInteger = 1
* group.element[21].display = "Patient Visit - Additional Info."
* group.element[21].target.equivalence = #equivalent
* group.element[21].target.code = #Encounter[1]
* group.element[21].target.display = "Encounter[1]"
* group.element[21].target.comment = "Incorporate PV2 content into the Encounter created from the PV1 segment."
* group.element[22].code = #ADT_A02:follow:PV1.ROL
* group.element[22].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[22].extension[0].extension[0].url = "cardinalityMin"
* group.element[22].extension[0].extension[0].valueInteger = 0
* group.element[22].extension[0].extension[1].url = "cardinalityMax"
* group.element[22].extension[0].extension[1].valueInteger = -1
* group.element[22].display = "Role"
* group.element[22].target.equivalence = #equivalent
* group.element[22].target.code = #Encounter[1]
* group.element[22].target.display = "Encounter[1]"
* group.element[23].code = #ADT_A02.OBSERVATION.OBX
* group.element[23].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[23].extension[0].extension[0].url = "cardinalityMin"
* group.element[23].extension[0].extension[0].valueInteger = 1
* group.element[23].extension[0].extension[1].url = "cardinalityMax"
* group.element[23].extension[0].extension[1].valueInteger = 1
* group.element[23].display = "Observation/Result"
* group.element[23].target.equivalence = #equivalent
* group.element[23].target.code = #Observation[3]
* group.element[23].target.display = "Observation[3]"
* group.element[23].target.comment = "One cannot determine whether this observation made during the PV1/PV2 communicated above, or from a prior visit/stay. It is therefore up to the implementer whether to populate Observation.encounter.reference with the Encounter[1].id or not.  Only when the ADT message involves an event before the encounter occurs, e.g., the intiial registration, it is clear that the observation is NOT associated with Encounter[1]."
* group.element[24].code = #ADT_A02.OBSERVATION.OBX
* group.element[24].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[24].extension[0].extension[0].url = "cardinalityMin"
* group.element[24].extension[0].extension[0].valueInteger = 1
* group.element[24].extension[0].extension[1].url = "cardinalityMax"
* group.element[24].extension[0].extension[1].valueInteger = 1
* group.element[24].display = "Observation/Result"
* group.element[24].target.equivalence = #equivalent
* group.element[24].target.code = #Observation[3]
* group.element[24].target.display = "Observation[3]"
* group.element[24].target.comment = "One cannot determine whether this observation made during the PV1/PV2 communicated above, or from a prior visit/stay. It is therefore up to the implementer whether to populate Observation.encounter.reference with the Encounter[1].id or not.  Only when the ADT message involves an event before the encounter occurs, e.g., the intiial registration, it is clear that the observation is NOT associated with Encounter[1]."
