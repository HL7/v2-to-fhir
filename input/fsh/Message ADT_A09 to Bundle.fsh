// HL7 Message - FHIR R4_ ADT_A09 - Sheet1.csv
Instance: MessageADT_A09ToBundle
InstanceOf: ConceptMap
Title: "Message ADT_A09null to Bundle Map"
* title = "Message ADT_A09null to Bundle Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Message ADT_A09 to the FHIR Message Bundle."
* id = "message-adt-a09-to-bundle"
* url = "http://hl7.org/fhir/uv/v2mappings/message-adt-a09-to-bundle"
* version = "1.0"
* name = "MessageADT_A09ToBundle"
* status = #active
* experimental = true
* date = "2024-07-28"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "ADT_A09"
* targetUri = "Bundle"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Message ADT:A09 to Bundle.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1lFfoksYBm2Pbfs4PvDtCHkbuQgTL1Ooj4jREYFLK6Lc/edit#gid=0"
* group.element[0].code = #ADT_A09.MSH
* group.element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[0].extension[0].extension[0].url = "cardinalityMin"
* group.element[0].extension[0].extension[0].valueInteger = 1
* group.element[0].extension[0].extension[1].url = "cardinalityMax"
* group.element[0].extension[0].extension[1].valueInteger = 1
* group.element[0].display = "Message Header"
* group.element[0].target.equivalence = #equivalent
* group.element[0].target.code = #Bundle
* group.element[0].target.display = "Bundle"
* group.element[0].target.dependsOn[0].property = "segment-map"
* group.element[0].target.dependsOn[0].value = "MSH[Bundle]"
* group.element[1].code = #ADT_A09.MSH
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
* group.element[1].target.dependsOn[0].property = "segment-map"
* group.element[1].target.dependsOn[0].value = "MSH[MessageHeader]"
* group.element[2].code = #ADT_A09.MSH
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
* group.element[2].target.dependsOn[0].property = "segment-map"
* group.element[2].target.dependsOn[0].value = "MSH[Provenance-Source]"
* group.element[2].target.dependsOn[1].property = "references"
* group.element[2].target.dependsOn[1].value = "Provenance[1].target.reference=Bundle.id; Provenance[1].target.reference=MessageHeader[1].id"
* group.element[2].target.product[0].property = "narrative"
* group.element[2].target.product[0].value = "If there is a source in MSH-4, or known based on the configuration."
* group.element[3].code = #ADT_A09.MSH
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
* group.element[3].target.dependsOn[0].property = "segment-map"
* group.element[3].target.dependsOn[0].value = "MSH[Provenance-Transformation]"
* group.element[3].target.dependsOn[1].property = "references"
* group.element[3].target.dependsOn[1].value = "Provenance[2].target.reference=Bundle.id"
* group.element[4].code = #ADT_A09.SFT
* group.element[4].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[4].extension[0].extension[0].url = "cardinalityMin"
* group.element[4].extension[0].extension[0].valueInteger = 0
* group.element[4].extension[0].extension[1].url = "cardinalityMax"
* group.element[4].extension[0].extension[1].valueInteger = -1
* group.element[4].display = "Software Segment"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #Provenance[1].entity.what(Device)
* group.element[4].target.display = "Provenance[1].entity.what(Device)"
* group.element[4].target.dependsOn[0].property = "segment-map"
* group.element[4].target.dependsOn[0].value = "SFT[Device]"
* group.element[4].target.dependsOn[1].property = "references"
* group.element[4].target.dependsOn[1].value = """
Provenance[1].entity.what.reference=Device.id
Provenance[1].entity.role="derivation"\
"""
* group.element[4].target.product[0].property = "narrative"
* group.element[4].target.product[0].value = "If the software does represent not the original source system"
* group.element[5].code = #ADT_A09.SFT
* group.element[5].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[5].extension[0].extension[0].url = "cardinalityMin"
* group.element[5].extension[0].extension[0].valueInteger = 0
* group.element[5].extension[0].extension[1].url = "cardinalityMax"
* group.element[5].extension[0].extension[1].valueInteger = -1
* group.element[5].display = "Software Segment"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #Provenance[1].entity.what(Device)
* group.element[5].target.display = "Provenance[1].entity.what(Device)"
* group.element[5].target.dependsOn[0].property = "segment-map"
* group.element[5].target.dependsOn[0].value = "SFT[Device]"
* group.element[5].target.dependsOn[1].property = "references"
* group.element[5].target.dependsOn[1].value = """
Provenance[1].entity.what.reference=Device.id
Provenance[1].entity.role="source"\
"""
* group.element[5].target.product[0].property = "narrative"
* group.element[5].target.product[0].value = "If the software represents the original source system"
* group.element[6].code = #ADT_A09.EVN
* group.element[6].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[6].extension[0].extension[0].url = "cardinalityMin"
* group.element[6].extension[0].extension[0].valueInteger = 1
* group.element[6].extension[0].extension[1].url = "cardinalityMax"
* group.element[6].extension[0].extension[1].valueInteger = 1
* group.element[6].display = "Event Type"
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #Provenance[3]
* group.element[6].target.display = "Provenance[3]"
* group.element[6].target.dependsOn[0].property = "segment-map"
* group.element[6].target.dependsOn[0].value = "EVN[Provenance]"
* group.element[6].target.dependsOn[1].property = "references"
* group.element[6].target.dependsOn[1].value = "Provenance[3].target.reference=MessageHeader[1].id"
* group.element[7].code = #ADT_A09.EVN
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
* group.element[7].target.dependsOn[0].property = "segment-map"
* group.element[7].target.dependsOn[0].value = "MSH[Provenance-Operator]"
* group.element[7].target.dependsOn[1].property = "references"
* group.element[7].target.dependsOn[1].value = "Provenance[3].target.reference=MessageHeader[1].id"
* group.element[7].target.product[0].property = "antlr"
* group.element[7].target.product[0].value = "IF EVN-5 NOT VALUED AND (MSH-22 IS VALUED OR MSH-4 IS VALUED)"
* group.element[8].code = #ADT_A09.PID
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
* group.element[8].target.dependsOn[0].property = "segment-map"
* group.element[8].target.dependsOn[0].value = "PID[Patient]"
* group.element[9].code = #ADT_A09.PID
* group.element[9].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[9].extension[0].extension[0].url = "cardinalityMin"
* group.element[9].extension[0].extension[0].valueInteger = 1
* group.element[9].extension[0].extension[1].url = "cardinalityMax"
* group.element[9].extension[0].extension[1].valueInteger = 1
* group.element[9].display = "Patient Identification"
* group.element[9].target.equivalence = #equivalent
* group.element[9].target.code = #Account
* group.element[9].target.display = "Account"
* group.element[9].target.dependsOn[0].property = "segment-map"
* group.element[9].target.dependsOn[0].value = "PID[Account]"
* group.element[9].target.dependsOn[1].property = "references"
* group.element[9].target.dependsOn[1].value = "Account.subject.reference=Patient[1].id"
* group.element[10].code = #ADT_A09.PID
* group.element[10].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[10].extension[0].extension[0].url = "cardinalityMin"
* group.element[10].extension[0].extension[0].valueInteger = 1
* group.element[10].extension[0].extension[1].url = "cardinalityMax"
* group.element[10].extension[0].extension[1].valueInteger = 1
* group.element[10].display = "Patient Identification"
* group.element[10].target.equivalence = #equivalent
* group.element[10].target.code = #Provenance[4]
* group.element[10].target.display = "Provenance[4]"
* group.element[10].target.dependsOn[0].property = "segment-map"
* group.element[10].target.dependsOn[0].value = "PID[Provenance-Patient]"
* group.element[10].target.dependsOn[1].property = "references"
* group.element[10].target.dependsOn[1].value = "Provenance[4].target.reference=Patient[1].id"
* group.element[10].target.product[0].property = "antlr"
* group.element[10].target.product[0].value = "IF PID-33 AND PID-34 VALUED"
* group.element[10].target.product[1].property = "narrative"
* group.element[10].target.product[1].value = "One  may drop PID-33 from the condition if PID-34 Last Update Facility is still sufficient without a date."
* group.element[11].code = #ADT_A09.PD1
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
* group.element[11].target.dependsOn[0].property = "segment-map"
* group.element[11].target.dependsOn[0].value = "PD1[Patient]"
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
* group.element[12].target.dependsOn[0].property = "segment-map"
* group.element[12].target.dependsOn[0].value = "PD1[Observation-LivingWill]"
* group.element[12].target.dependsOn[1].property = "references"
* group.element[12].target.dependsOn[1].value = "Observation[1].subject.reference=Patient[1].id"
* group.element[12].target.product[0].property = "antlr"
* group.element[12].target.product[0].value = "IF PD1-7 VALUED"
* group.element[13].code = #ADT_A09.PV1
* group.element[13].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[13].extension[0].extension[0].url = "cardinalityMin"
* group.element[13].extension[0].extension[0].valueInteger = 1
* group.element[13].extension[0].extension[1].url = "cardinalityMax"
* group.element[13].extension[0].extension[1].valueInteger = 1
* group.element[13].display = "Patient Visit"
* group.element[13].target.equivalence = #equivalent
* group.element[13].target.code = #Encounter[1]
* group.element[13].target.display = "Encounter[1]"
* group.element[13].target.comment = "Processing of the PV1 segment results in the creation of a new Encounter resource"
* group.element[13].target.dependsOn[0].property = "segment-map"
* group.element[13].target.dependsOn[0].value = "PV1[Encounter]"
* group.element[13].target.dependsOn[1].property = "references"
* group.element[13].target.dependsOn[1].value = "Encounter[1].subject.reference=Patient[1].id"
* group.element[14].code = #ADT_A09.PV1
* group.element[14].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[14].extension[0].extension[0].url = "cardinalityMin"
* group.element[14].extension[0].extension[0].valueInteger = 1
* group.element[14].extension[0].extension[1].url = "cardinalityMax"
* group.element[14].extension[0].extension[1].valueInteger = 1
* group.element[14].display = "Patient Visit"
* group.element[14].target.equivalence = #equivalent
* group.element[14].target.code = #Patient[1]
* group.element[14].target.display = "Patient[1]"
* group.element[14].target.dependsOn[0].property = "segment-map"
* group.element[14].target.dependsOn[0].value = "PV1[Patient]"
* group.element[15].code = #ADT_A09.PV2
* group.element[15].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[15].extension[0].extension[0].url = "cardinalityMin"
* group.element[15].extension[0].extension[0].valueInteger = 0
* group.element[15].extension[0].extension[1].url = "cardinalityMax"
* group.element[15].extension[0].extension[1].valueInteger = 1
* group.element[15].display = "Patient Visit - Additional Info."
* group.element[15].target.equivalence = #equivalent
* group.element[15].target.code = #Encounter[1]
* group.element[15].target.display = "Encounter[1]"
* group.element[15].target.comment = "Incorporate PV2 content into the Encounter created from the PV1 segment."
* group.element[15].target.dependsOn[0].property = "segment-map"
* group.element[15].target.dependsOn[0].value = "PV2[Encounter]"
* group.element[16].code = #ADT_A09.OBSERVATION.OBX
* group.element[16].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[16].extension[0].extension[0].url = "cardinalityMin"
* group.element[16].extension[0].extension[0].valueInteger = 0
* group.element[16].extension[0].extension[1].url = "cardinalityMax"
* group.element[16].extension[0].extension[1].valueInteger = -1
* group.element[16].display = "Observation/Result"
* group.element[16].target.equivalence = #equivalent
* group.element[16].target.code = #Observation[2]
* group.element[16].target.display = "Observation[2]"
* group.element[16].target.comment = "One cannot determine whether this observation made during the PV1/PV2 communicated above, or from a prior visit/stay. It is therefore up to the implementer whether to populate Observation.encounter.reference with the Encounter[1].id or not.  Only when the ADT message involves an event before the encounter occurs, e.g., the intiial registration, it is clear that the observation is NOT associated with Encounter[1]."
* group.element[16].target.dependsOn[0].property = "segment-map"
* group.element[16].target.dependsOn[0].value = "OBX[Observation]"
* group.element[16].target.dependsOn[1].property = "references"
* group.element[16].target.dependsOn[1].value = "Observation[2].subject.reference=Patient[1].id"
* group.element[16].target.product[0].property = "narrative"
* group.element[16].target.product[0].value = "Based on profiles, such as Vital Signs, certain observations are represented on the Observation, while others on its components.  No computable guidance available yet."
* group.element[17].code = #ADT_A09.OBSERVATION.OBX
* group.element[17].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[17].extension[0].extension[0].url = "cardinalityMin"
* group.element[17].extension[0].extension[0].valueInteger = 0
* group.element[17].extension[0].extension[1].url = "cardinalityMax"
* group.element[17].extension[0].extension[1].valueInteger = -1
* group.element[17].display = "Observation/Result"
* group.element[17].target.equivalence = #equivalent
* group.element[17].target.code = #Observation[2]
* group.element[17].target.display = "Observation[2]"
* group.element[17].target.comment = "One cannot determine whether this observation made during the PV1/PV2 communicated above, or from a prior visit/stay. It is therefore up to the implementer whether to populate Observation.encounter.reference with the Encounter[1].id or not.  Only when the ADT message involves an event before the encounter occurs, e.g., the intiial registration, it is clear that the observation is NOT associated with Encounter[1]."
* group.element[17].target.dependsOn[0].property = "segment-map"
* group.element[17].target.dependsOn[0].value = "OBX[Observation-Component]"
* group.element[17].target.dependsOn[1].property = "references"
* group.element[17].target.dependsOn[1].value = "Observation[2].subject.reference=Patient[1].id"
* group.element[17].target.product[0].property = "narrative"
* group.element[17].target.product[0].value = "Based on profiles, such as Vital Signs, certain observations are represented on the Observation, while others on its components.  No computable guidance available yet."
