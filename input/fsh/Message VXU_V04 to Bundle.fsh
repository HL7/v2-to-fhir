// HL7 Message - FHIR R4_ VXU_V04 - Sheet1.csv
Instance: MessageVXU_V04toBundle
InstanceOf: ConceptMap
Title: "Message VXU_V04 to Bundle Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Message VXU_V04 to the FHIR Message Bundle."
* id = "message-vxu-v04-to-bundle"
* url = "http://hl7.org/fhir/uv/v2mappings/message-vxu-v04-to-bundle"
* version = "1.0"
* name = "MessageVXU_V04toBundle"
* status = #active
* experimental = true
* date = "2022-02-28"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "VXU_V04"
* targetUri = "Bundle"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Message VXU:V04 to Bundle.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1_7maXDpc_qMMRzMm0x6d90-Hj6vvhGyO2kyFX0tpuZs/edit#gid=0"
* group.element[0].code = #VXU_V04.MSH
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
* group.element[1].code = #VXU_V04.MSH
* group.element[1].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[1].extension[0].extension[0].url = "cardinalityMin"
* group.element[1].extension[0].extension[0].valueInteger = 1
* group.element[1].extension[0].extension[1].url = "cardinalityMax"
* group.element[1].extension[0].extension[1].valueInteger = 1
* group.element[1].display = "Message Header Segment"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #MessageHeader[1]
* group.element[1].target.display = "MessageHeader[1]"
* group.element[1].target.comment = "Processing of the MSH segment results in the creation of a new MessageHeader resource"
* group.element[1].target.dependsOn[0].property = "segment-map"
* group.element[1].target.dependsOn[0].value = "MSH[MessageHeader]"
* group.element[2].code = #VXU_V04.MSH
* group.element[2].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[2].extension[0].extension[0].url = "cardinalityMin"
* group.element[2].extension[0].extension[0].valueInteger = 1
* group.element[2].extension[0].extension[1].url = "cardinalityMax"
* group.element[2].extension[0].extension[1].valueInteger = 1
* group.element[2].display = "Message Header Segment"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #Provenance[1]
* group.element[2].target.display = "Provenance[1]"
* group.element[2].target.dependsOn[0].property = "segment-map"
* group.element[2].target.dependsOn[0].value = "MSH[Provenance]"
* group.element[2].target.dependsOn[1].property = "references"
* group.element[2].target.dependsOn[1].value = "Provenance.target=Bundle; Provenance.target=MessageHeader[MSH]"
* group.element[3].code = #VXU_V04.SFT
* group.element[3].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[3].extension[0].extension[0].url = "cardinalityMin"
* group.element[3].extension[0].extension[0].valueInteger = 0
* group.element[3].extension[0].extension[1].url = "cardinalityMax"
* group.element[3].extension[0].extension[1].valueInteger = -1
* group.element[3].display = "Software"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #MessageHeader[1]
* group.element[3].target.display = "MessageHeader[1]"
* group.element[3].target.comment = "Incorporate SFT content for each of the SFT instances into the MessageHeader created from the MSH segment."
* group.element[3].target.dependsOn[0].property = "segment-map"
* group.element[3].target.dependsOn[0].value = "SFT[MessageHeader]"
* group.element[4].code = #VXU_V04.PID
* group.element[4].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[4].extension[0].extension[0].url = "cardinalityMin"
* group.element[4].extension[0].extension[0].valueInteger = 1
* group.element[4].extension[0].extension[1].url = "cardinalityMax"
* group.element[4].extension[0].extension[1].valueInteger = 1
* group.element[4].display = "Patient Identification Segment"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #Patient[1]
* group.element[4].target.display = "Patient[1]"
* group.element[4].target.comment = "Processing of the PID segment results in the creation of a new Patient resource"
* group.element[4].target.dependsOn[0].property = "segment-map"
* group.element[4].target.dependsOn[0].value = "PID[Patient]"
* group.element[5].code = #VXU_V04.PID
* group.element[5].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[5].extension[0].extension[0].url = "cardinalityMin"
* group.element[5].extension[0].extension[0].valueInteger = 1
* group.element[5].extension[0].extension[1].url = "cardinalityMax"
* group.element[5].extension[0].extension[1].valueInteger = 1
* group.element[5].display = "Patient Identification Segment"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #Provenance[4]
* group.element[5].target.display = "Provenance[4]"
* group.element[5].target.dependsOn[0].property = "segment-map"
* group.element[5].target.dependsOn[0].value = "PID[Provenance]"
* group.element[5].target.dependsOn[1].property = "references"
* group.element[5].target.dependsOn[1].value = "Provenance.target.reference=Patient[1].id"
* group.element[5].target.product[0].property = "antlr"
* group.element[5].target.product[0].value = "IF PID-33 AND PID-34 VALUED"
* group.element[5].target.product[1].property = "narrative"
* group.element[5].target.product[1].value = "One  may drop PID-33 from the condition if PID-34 Last Update Facility is still sufficient without a date."
* group.element[6].code = #VXU_V04.PD1
* group.element[6].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[6].extension[0].extension[0].url = "cardinalityMin"
* group.element[6].extension[0].extension[0].valueInteger = 0
* group.element[6].extension[0].extension[1].url = "cardinalityMax"
* group.element[6].extension[0].extension[1].valueInteger = 1
* group.element[6].display = "Additional Demographics"
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #Patient[1]
* group.element[6].target.display = "Patient[1]"
* group.element[6].target.comment = "Incorporate PD1 content into the Patient created from the PID segment."
* group.element[6].target.dependsOn[0].property = "segment-map"
* group.element[6].target.dependsOn[0].value = "PD1[Patient]"
* group.element[7].code = #VXU_V04.NK1
* group.element[7].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[7].extension[0].extension[0].url = "cardinalityMin"
* group.element[7].extension[0].extension[0].valueInteger = 0
* group.element[7].extension[0].extension[1].url = "cardinalityMax"
* group.element[7].extension[0].extension[1].valueInteger = -1
* group.element[7].display = "Next of Kin/Associated Parties"
* group.element[7].target.equivalence = #equivalent
* group.element[7].target.code = #RelatedPerson[1]
* group.element[7].target.display = "RelatedPerson[1]"
* group.element[7].target.comment = "Typically, each NK1 will be translated to either a new RelatedPerson resource or added as a new occurrence of Patient.contact, but it's possible to insert the NK1 data into both structures."
* group.element[7].target.dependsOn[0].property = "segment-map"
* group.element[7].target.dependsOn[0].value = "NK1[RelatedPerson]"
* group.element[7].target.dependsOn[1].property = "references"
* group.element[7].target.dependsOn[1].value = "RelatedPerson.patient.reference=Patient[PID].id"
* group.element[8].code = #VXU_V04.NK1
* group.element[8].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[8].extension[0].extension[0].url = "cardinalityMin"
* group.element[8].extension[0].extension[0].valueInteger = 0
* group.element[8].extension[0].extension[1].url = "cardinalityMax"
* group.element[8].extension[0].extension[1].valueInteger = -1
* group.element[8].display = "Next of Kin/Associated Parties"
* group.element[8].target.equivalence = #equivalent
* group.element[8].target.code = #Patient[1]
* group.element[8].target.display = "Patient[1]"
* group.element[8].target.dependsOn[0].property = "segment-map"
* group.element[8].target.dependsOn[0].value = "NK1[Patient]"
* group.element[9].code = #VXU_V04.PATIENT_VISIT.PV1
* group.element[9].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[9].extension[0].extension[0].url = "cardinalityMin"
* group.element[9].extension[0].extension[0].valueInteger = 1
* group.element[9].extension[0].extension[1].url = "cardinalityMax"
* group.element[9].extension[0].extension[1].valueInteger = 1
* group.element[9].display = "Patient Visit"
* group.element[9].target.equivalence = #equivalent
* group.element[9].target.code = #Encounter[1]
* group.element[9].target.display = "Encounter[1]"
* group.element[9].target.comment = "Processing of the PV1 segment results in the creation of a new Encounter resource"
* group.element[9].target.dependsOn[0].property = "segment-map"
* group.element[9].target.dependsOn[0].value = "PV1[Encounter]"
* group.element[9].target.dependsOn[1].property = "references"
* group.element[9].target.dependsOn[1].value = "Encounter.subject.reference=Patient[PID].id"
* group.element[9].target.product[0].property = "narrative"
* group.element[9].target.product[0].value = "Only if the system wants to know about the encounter related to the immunization event"
* group.element[10].code = #VXU_V04.PATIENT_VISIT.PV1
* group.element[10].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[10].extension[0].extension[0].url = "cardinalityMin"
* group.element[10].extension[0].extension[0].valueInteger = 1
* group.element[10].extension[0].extension[1].url = "cardinalityMax"
* group.element[10].extension[0].extension[1].valueInteger = 1
* group.element[10].display = "Patient Visit"
* group.element[10].target.equivalence = #equivalent
* group.element[10].target.code = #Patient[1]
* group.element[10].target.display = "Patient[1]"
* group.element[10].target.dependsOn[0].property = "segment-map"
* group.element[10].target.dependsOn[0].value = "PV1[Patient]"
* group.element[11].code = #VXU_V04.PATIENT_VISIT.PV2
* group.element[11].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[11].extension[0].extension[0].url = "cardinalityMin"
* group.element[11].extension[0].extension[0].valueInteger = 0
* group.element[11].extension[0].extension[1].url = "cardinalityMax"
* group.element[11].extension[0].extension[1].valueInteger = 1
* group.element[11].display = "Patient Visit – Additional Info"
* group.element[11].target.equivalence = #equivalent
* group.element[11].target.code = #Encounter[1]
* group.element[11].target.display = "Encounter[1]"
* group.element[11].target.comment = "Incorporate PV2 content into the Encounter created from the PV1 segment."
* group.element[11].target.dependsOn[0].property = "segment-map"
* group.element[11].target.dependsOn[0].value = "PV2[Encounter]"
* group.element[12].code = #VXU_V04.PERSON_OBSERVATION.OBX
* group.element[12].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[12].extension[0].extension[0].url = "cardinalityMin"
* group.element[12].extension[0].extension[0].valueInteger = 1
* group.element[12].extension[0].extension[1].url = "cardinalityMax"
* group.element[12].extension[0].extension[1].valueInteger = 1
* group.element[12].display = "Observation/Result"
* group.element[12].target.equivalence = #equivalent
* group.element[12].target.code = #Observation[1]
* group.element[12].target.display = "Observation[1]"
* group.element[12].target.dependsOn[0].property = "segment-map"
* group.element[12].target.dependsOn[0].value = "OBX[Observation]"
* group.element[12].target.dependsOn[1].property = "references"
* group.element[12].target.dependsOn[1].value = "Observation.subject.reference=Patient[1].id"
* group.element[12].target.product[0].property = "antlr"
* group.element[12].target.product[0].value = "IF OBX-5 LST.count LESS THAN OR EQUALS 1"
* group.element[13].code = #VXU_V04.PERSON_OBSERVATION.OBX
* group.element[13].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[13].extension[0].extension[0].url = "cardinalityMin"
* group.element[13].extension[0].extension[0].valueInteger = 1
* group.element[13].extension[0].extension[1].url = "cardinalityMax"
* group.element[13].extension[0].extension[1].valueInteger = 1
* group.element[13].display = "Observation/Result"
* group.element[13].target.equivalence = #equivalent
* group.element[13].target.code = #Observation[1]
* group.element[13].target.display = "Observation[1]"
* group.element[13].target.dependsOn[0].property = "segment-map"
* group.element[13].target.dependsOn[0].value = "OBX[Observation-Component]"
* group.element[13].target.dependsOn[1].property = "references"
* group.element[13].target.dependsOn[1].value = "Observation.subject.reference=Patient[1].id"
* group.element[13].target.product[0].property = "antlr"
* group.element[13].target.product[0].value = "IF OBX-5 LST.count GREATER THAN 1"
* group.element[14].code = #VXU_V04.PERSON_OBSERVATION.PRT
* group.element[14].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[14].extension[0].extension[0].url = "cardinalityMin"
* group.element[14].extension[0].extension[0].valueInteger = 0
* group.element[14].extension[0].extension[1].url = "cardinalityMax"
* group.element[14].extension[0].extension[1].valueInteger = -1
* group.element[14].display = "Participation (for Observation)"
* group.element[14].target.equivalence = #equivalent
* group.element[14].target.code = #Device[1]
* group.element[14].target.display = "Device[1]"
* group.element[14].target.dependsOn[0].property = "segment-map"
* group.element[14].target.dependsOn[0].value = "PRT[Device]"
* group.element[14].target.dependsOn[1].property = "references"
* group.element[14].target.dependsOn[1].value = "Observation[1].device.reference=Device.id"
* group.element[14].target.product[0].property = "antlr"
* group.element[14].target.product[0].value = "IF PRT-10 VALUED"
* group.element[15].code = #VXU_V04.PERSON_OBSERVATION.PRT
* group.element[15].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[15].extension[0].extension[0].url = "cardinalityMin"
* group.element[15].extension[0].extension[0].valueInteger = 0
* group.element[15].extension[0].extension[1].url = "cardinalityMax"
* group.element[15].extension[0].extension[1].valueInteger = -1
* group.element[15].display = "Participation (for Observation)"
* group.element[15].target.equivalence = #equivalent
* group.element[15].target.code = #Observation[1]
* group.element[15].target.display = "Observation[1]"
* group.element[15].target.comment = "At this time we don't know of a use case for sending a location PRT to a patient level observations. We've provided a mapping from PRT to Location but not way to link it to other resources in the Bundle. If there is a known use case, please comment on it so that we can develop a solution."
* group.element[15].target.dependsOn[0].property = "segment-map"
* group.element[15].target.dependsOn[0].value = "PRT[Observation-Location]"
* group.element[15].target.product[0].property = "antlr"
* group.element[15].target.product[0].value = "IF PRT-9 VALUED OR IF PRT-14 VALUED"
* group.element[16].code = #VXU_V04.PERSON_OBSERVATION.PRT
* group.element[16].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[16].extension[0].extension[0].url = "cardinalityMin"
* group.element[16].extension[0].extension[0].valueInteger = 0
* group.element[16].extension[0].extension[1].url = "cardinalityMax"
* group.element[16].extension[0].extension[1].valueInteger = -1
* group.element[16].display = "Participation (for Observation)"
* group.element[16].target.equivalence = #equivalent
* group.element[16].target.code = #PractitionerRole[1]
* group.element[16].target.display = "PractitionerRole[1]"
* group.element[16].target.dependsOn[0].property = "segment-map"
* group.element[16].target.dependsOn[0].value = "PRT[PractitionerRole]"
* group.element[16].target.dependsOn[1].property = "references"
* group.element[16].target.dependsOn[1].value = "Observation.performer.reference=PractitionerRole[1].id"
* group.element[16].target.product[0].property = "antlr"
* group.element[16].target.product[0].value = "IF PRT-5 VALUED"
* group.element[17].code = #VXU_V04.PERSON_OBSERVATION.NTE
* group.element[17].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[17].extension[0].extension[0].url = "cardinalityMin"
* group.element[17].extension[0].extension[0].valueInteger = 0
* group.element[17].extension[0].extension[1].url = "cardinalityMax"
* group.element[17].extension[0].extension[1].valueInteger = -1
* group.element[17].display = "Notes (Regarding Patient Observation)"
* group.element[17].target.equivalence = #equivalent
* group.element[17].target.code = #Observation[1].note
* group.element[17].target.display = "Observation[1].note"
* group.element[17].target.dependsOn[0].property = "segment-map"
* group.element[17].target.dependsOn[0].value = "NTE[Annotation]"
* group.element[18].code = #VXU_V04.ORDER.ORC
* group.element[18].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[18].extension[0].extension[0].url = "cardinalityMin"
* group.element[18].extension[0].extension[0].valueInteger = 1
* group.element[18].extension[0].extension[1].url = "cardinalityMax"
* group.element[18].extension[0].extension[1].valueInteger = 1
* group.element[18].display = "Common Order"
* group.element[18].target.equivalence = #equivalent
* group.element[18].target.code = #Immunization[1]
* group.element[18].target.display = "Immunization[1]"
* group.element[18].target.comment = "Processing of each ORC segment results in the creation of a new Immunization resource"
* group.element[18].target.dependsOn[0].property = "segment-map"
* group.element[18].target.dependsOn[0].value = "ORC[Immunization]"
* group.element[18].target.dependsOn[1].property = "references"
* group.element[18].target.dependsOn[1].value = "Immunzation.patient.reference=Patient[1].id"
* group.element[19].code = #VXU_V04.ORDER.ORC
* group.element[19].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[19].extension[0].extension[0].url = "cardinalityMin"
* group.element[19].extension[0].extension[0].valueInteger = 1
* group.element[19].extension[0].extension[1].url = "cardinalityMax"
* group.element[19].extension[0].extension[1].valueInteger = 1
* group.element[19].display = "Common Order"
* group.element[19].target.equivalence = #equivalent
* group.element[19].target.code = #ServiceRequest[1]
* group.element[19].target.display = "ServiceRequest[1]"
* group.element[19].target.comment = "Processing of each ORC segment results in the creation of a new ServiceRequest resource if the receiving system wants to know about the order that lead to the immunization event"
* group.element[19].target.dependsOn[0].property = "segment-map"
* group.element[19].target.dependsOn[0].value = "ORC[ServiceRequest]"
* group.element[19].target.dependsOn[1].property = "references"
* group.element[19].target.dependsOn[1].value = "ServiceRequest.subject.reference=Patient[1].id"
* group.element[19].target.product[0].property = "narrative"
* group.element[19].target.product[0].value = "Only if the system wants to know about the order that lead to the immunization event"
* group.element[20].code = #VXU_V04.ORDER.PRT
* group.element[20].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[20].extension[0].extension[0].url = "cardinalityMin"
* group.element[20].extension[0].extension[0].valueInteger = 0
* group.element[20].extension[0].extension[1].url = "cardinalityMax"
* group.element[20].extension[0].extension[1].valueInteger = -1
* group.element[20].display = "Participation (for ORC)"
* group.element[20].target.equivalence = #equivalent
* group.element[20].target.code = #PractitionerRole[2]
* group.element[20].target.display = "PractitionerRole[2]"
* group.element[20].target.comment = """
Processing of each PRT segment typically results in the creation of a new Practitioner or PractitionerRole resource. 

The decision between creating a Practitioner or PractitionerRole resource may depend on the availability of data related to the practitioner's role elsewhere in the message.

It may be possible to reuse a Practitioner resource in the bundle created from somewhere else in the bundle rather than creating a new resource for each PRT segment (eg, the same administering practictioner resource could be pointed to from multiple order segment groups) - if an implementer decides to do this, the system must be certain that it's the same person (same name, ID, etc) potentially even playing the same role (if the bundle uses PractitionerRole in addition to Practitioner).\
"""
* group.element[20].target.dependsOn[0].property = "segment-map"
* group.element[20].target.dependsOn[0].value = "PRT[PractitionerRole]"
* group.element[20].target.dependsOn[1].property = "references"
* group.element[20].target.dependsOn[1].value = "Immunization.performer.actor.reference=PractitionerRole[2].id"
* group.element[20].target.product[0].property = "antlr"
* group.element[20].target.product[0].value = "IF PRT-4.1 EQUALS \"OP\" AND PRT-4.3 EQUALS \"HL70443\""
* group.element[20].target.product[1].property = "fhirpath"
* group.element[20].target.product[1].value = "(element(\"4.1\")=\"OP\")and(element(\"4.3\")=\"HL70443\")"
* group.element[21].code = #VXU_V04.ORDER.PRT
* group.element[21].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[21].extension[0].extension[0].url = "cardinalityMin"
* group.element[21].extension[0].extension[0].valueInteger = 0
* group.element[21].extension[0].extension[1].url = "cardinalityMax"
* group.element[21].extension[0].extension[1].valueInteger = -1
* group.element[21].display = "Participation (for ORC)"
* group.element[21].target.equivalence = #equivalent
* group.element[21].target.code = #Immunization[1].performer.function.coding.code
* group.element[21].target.display = "= \"OP'\""
* group.element[21].target.product[0].property = "antlr"
* group.element[21].target.product[0].value = "IF PRT-4.1 EQUALS \"OP\" AND PRT-4.3 EQUALS \"HL70443\""
* group.element[21].target.product[1].property = "fhirpath"
* group.element[21].target.product[1].value = "(element(\"4.1\")=\"OP\")and(element(\"4.3\")=\"HL70443\")"
* group.element[22].code = #VXU_V04.ORDER.PRT
* group.element[22].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[22].extension[0].extension[0].url = "cardinalityMin"
* group.element[22].extension[0].extension[0].valueInteger = 0
* group.element[22].extension[0].extension[1].url = "cardinalityMax"
* group.element[22].extension[0].extension[1].valueInteger = -1
* group.element[22].display = "Participation (for ORC)"
* group.element[22].target.equivalence = #equivalent
* group.element[22].target.code = #Immunization[1].performer.function.coding.system
* group.element[22].target.display = "= \"http://terminology.hl7.org/CodeSystem/v2-0443\""
* group.element[22].target.product[0].property = "antlr"
* group.element[22].target.product[0].value = "IF PRT-4.1 EQUALS \"OP\" AND PRT-4.3 EQUALS \"HL70443\""
* group.element[22].target.product[1].property = "fhirpath"
* group.element[22].target.product[1].value = "(element(\"4.1\")=\"OP\")and(element(\"4.3\")=\"HL70443\")"
* group.element[23].code = #VXU_V04.ORDER.PRT
* group.element[23].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[23].extension[0].extension[0].url = "cardinalityMin"
* group.element[23].extension[0].extension[0].valueInteger = 0
* group.element[23].extension[0].extension[1].url = "cardinalityMax"
* group.element[23].extension[0].extension[1].valueInteger = -1
* group.element[23].display = "Participation (for ORC)"
* group.element[23].target.equivalence = #equivalent
* group.element[23].target.code = #PractitionerRole[3]
* group.element[23].target.display = "PractitionerRole[3]"
* group.element[23].target.dependsOn[0].property = "segment-map"
* group.element[23].target.dependsOn[0].value = "PRT[PractitionerRole]"
* group.element[23].target.dependsOn[1].property = "references"
* group.element[23].target.dependsOn[1].value = "Immunization.performer.actor.reference=PractitionerRole[3].id"
* group.element[23].target.product[0].property = "antlr"
* group.element[23].target.product[0].value = "IF PRT-4.1 EQUALS \"AP\" AND PRT-4.3 EQUALS \"HL70443\""
* group.element[23].target.product[1].property = "fhirpath"
* group.element[23].target.product[1].value = "(element(\"4.1\")=\"AP\")and(element(\"4.3\")=\"HL70443\")"
* group.element[24].code = #VXU_V04.ORDER.PRT
* group.element[24].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[24].extension[0].extension[0].url = "cardinalityMin"
* group.element[24].extension[0].extension[0].valueInteger = 0
* group.element[24].extension[0].extension[1].url = "cardinalityMax"
* group.element[24].extension[0].extension[1].valueInteger = -1
* group.element[24].display = "Participation (for ORC)"
* group.element[24].target.equivalence = #equivalent
* group.element[24].target.code = #Immunization[1].performer.function.coding.code
* group.element[24].target.display = "= \"AP'\""
* group.element[24].target.product[0].property = "antlr"
* group.element[24].target.product[0].value = "IF PRT-4.1 EQUALS \"AP\" AND PRT-4.3 EQUALS \"HL70443\""
* group.element[24].target.product[1].property = "fhirpath"
* group.element[24].target.product[1].value = "(element(\"4.1\")=\"AP\")and(element(\"4.3\")=\"HL70443\")"
* group.element[25].code = #VXU_V04.ORDER.PRT
* group.element[25].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[25].extension[0].extension[0].url = "cardinalityMin"
* group.element[25].extension[0].extension[0].valueInteger = 0
* group.element[25].extension[0].extension[1].url = "cardinalityMax"
* group.element[25].extension[0].extension[1].valueInteger = -1
* group.element[25].display = "Participation (for ORC)"
* group.element[25].target.equivalence = #equivalent
* group.element[25].target.code = #Immunization[1].performer.function.coding.system
* group.element[25].target.display = "= \"http://terminology.hl7.org/CodeSystem/v2-0443\""
* group.element[25].target.product[0].property = "antlr"
* group.element[25].target.product[0].value = "IF PRT-4.1 EQUALS \"AP\" AND PRT-4.3 EQUALS \"HL70443\""
* group.element[25].target.product[1].property = "fhirpath"
* group.element[25].target.product[1].value = "(element(\"4.1\")=\"AP\")and(element(\"4.3\")=\"HL70443\")"
* group.element[26].code = #VXU_V04.ORDER.RXA
* group.element[26].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[26].extension[0].extension[0].url = "cardinalityMin"
* group.element[26].extension[0].extension[0].valueInteger = 1
* group.element[26].extension[0].extension[1].url = "cardinalityMax"
* group.element[26].extension[0].extension[1].valueInteger = 1
* group.element[26].display = "Pharmacy Administration Segment"
* group.element[26].target.equivalence = #equivalent
* group.element[26].target.code = #Immunization[1]
* group.element[26].target.display = "Immunization[1]"
* group.element[26].target.comment = "Incorporate RXA content into the Immunization created from the ORC segment in the same segment group."
* group.element[26].target.dependsOn[0].property = "segment-map"
* group.element[26].target.dependsOn[0].value = "RXA[Immunization]"
* group.element[27].code = #VXU_V04.ORDER.RXR
* group.element[27].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[27].extension[0].extension[0].url = "cardinalityMin"
* group.element[27].extension[0].extension[0].valueInteger = 0
* group.element[27].extension[0].extension[1].url = "cardinalityMax"
* group.element[27].extension[0].extension[1].valueInteger = 1
* group.element[27].display = "Pharmacy Route"
* group.element[27].target.equivalence = #equivalent
* group.element[27].target.code = #Immunization[1]
* group.element[27].target.display = "Immunization[1]"
* group.element[27].target.comment = "Incorporate RXR content into the Immunization created from the ORC segment in the same segment group."
* group.element[27].target.dependsOn[0].property = "segment-map"
* group.element[27].target.dependsOn[0].value = "RXR[Immunization]"
* group.element[28].code = #VXU_V04.ORDER.OBSERVATION.OBX
* group.element[28].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[28].extension[0].extension[0].url = "cardinalityMin"
* group.element[28].extension[0].extension[0].valueInteger = 1
* group.element[28].extension[0].extension[1].url = "cardinalityMax"
* group.element[28].extension[0].extension[1].valueInteger = 1
* group.element[28].display = "Observation/Result"
* group.element[28].target.equivalence = #equivalent
* group.element[28].target.code = #Observation[2]
* group.element[28].target.display = "Observation[2]"
* group.element[28].target.dependsOn[0].property = "segment-map"
* group.element[28].target.dependsOn[0].value = "OBX[Observation]"
* group.element[28].target.dependsOn[1].property = "references"
* group.element[28].target.dependsOn[1].value = "Observation.subject.reference=Patient[1].id; Observation.partOf.reference=Immunization[1].id"
* group.element[28].target.product[0].property = "antlr"
* group.element[28].target.product[0].value = "IF OBX-5 LST.count LESS THAN OR EQUALS 1"
* group.element[28].target.product[1].property = "narrative"
* group.element[28].target.product[1].value = "Some observations about the immunization may map to elements within the Immuniation resource rather than an independent Observation resource. For example, funding source, patient eligibility and educational material are often sent as OBX segments but map to Immunization elements.  Specific guidance on how to map, e.g., the US CDC implementation guide on immunizations, will be provided separately at a future time TBD."
* group.element[29].code = #VXU_V04.ORDER.OBSERVATION.OBX
* group.element[29].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[29].extension[0].extension[0].url = "cardinalityMin"
* group.element[29].extension[0].extension[0].valueInteger = 1
* group.element[29].extension[0].extension[1].url = "cardinalityMax"
* group.element[29].extension[0].extension[1].valueInteger = 1
* group.element[29].display = "Observation/Result"
* group.element[29].target.equivalence = #equivalent
* group.element[29].target.code = #Observation[2]
* group.element[29].target.display = "Observation[2]"
* group.element[29].target.dependsOn[0].property = "segment-map"
* group.element[29].target.dependsOn[0].value = "OBX[Observation-Component]"
* group.element[29].target.dependsOn[1].property = "references"
* group.element[29].target.dependsOn[1].value = "Observation.subject.reference=Patient[1].id; Observation.partOf.reference=Immunization[1].id"
* group.element[29].target.product[0].property = "antlr"
* group.element[29].target.product[0].value = "IF OBX-5 LST.count GREATER THAN 1"
* group.element[29].target.product[1].property = "narrative"
* group.element[29].target.product[1].value = "Some observations about the immunization may map to elements within the Immuniation resource rather than an independent Observation resource. For example, funding source, patient eligibility and educational material are often sent as OBX segments but map to Immunization elements.  Specific guidance on how to map, e.g., the US CDC implementation guide on immunizations, will be provided separately at a future time TBD."
* group.element[30].code = #VXU_V04.ORDER.OBSERVATION.PRT
* group.element[30].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[30].extension[0].extension[0].url = "cardinalityMin"
* group.element[30].extension[0].extension[0].valueInteger = 0
* group.element[30].extension[0].extension[1].url = "cardinalityMax"
* group.element[30].extension[0].extension[1].valueInteger = -1
* group.element[30].display = "Participation (for Observation)"
* group.element[30].target.equivalence = #equivalent
* group.element[30].target.code = #Device[2]
* group.element[30].target.display = "Device[2]"
* group.element[30].target.dependsOn[0].property = "segment-map"
* group.element[30].target.dependsOn[0].value = "PRT[Device]"
* group.element[30].target.dependsOn[1].property = "references"
* group.element[30].target.dependsOn[1].value = "Observation[1].device.reference=Device.id"
* group.element[30].target.product[0].property = "antlr"
* group.element[30].target.product[0].value = "IF PRT-10 VALUED"
* group.element[31].code = #VXU_V04.ORDER.OBSERVATION.PRT
* group.element[31].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[31].extension[0].extension[0].url = "cardinalityMin"
* group.element[31].extension[0].extension[0].valueInteger = 0
* group.element[31].extension[0].extension[1].url = "cardinalityMax"
* group.element[31].extension[0].extension[1].valueInteger = -1
* group.element[31].display = "Participation (for Observation)"
* group.element[31].target.equivalence = #equivalent
* group.element[31].target.code = #Observation[2]
* group.element[31].target.display = "Observation[2]"
* group.element[31].target.dependsOn[0].property = "segment-map"
* group.element[31].target.dependsOn[0].value = "PRT[Observation-Location]"
* group.element[31].target.product[0].property = "antlr"
* group.element[31].target.product[0].value = "IF PRT-9 VALUED OR IF PRT-14 VALUED"
* group.element[32].code = #VXU_V04.ORDER.OBSERVATION.PRT
* group.element[32].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[32].extension[0].extension[0].url = "cardinalityMin"
* group.element[32].extension[0].extension[0].valueInteger = 0
* group.element[32].extension[0].extension[1].url = "cardinalityMax"
* group.element[32].extension[0].extension[1].valueInteger = -1
* group.element[32].display = "Participation (for Observation)"
* group.element[32].target.equivalence = #equivalent
* group.element[32].target.code = #PractitionerRole[4]
* group.element[32].target.display = "PractitionerRole[4]"
* group.element[32].target.dependsOn[0].property = "segment-map"
* group.element[32].target.dependsOn[0].value = "PRT[PractitionerRole]"
* group.element[32].target.dependsOn[1].property = "references"
* group.element[32].target.dependsOn[1].value = "Observation.performer.reference=PractitionerRole[1].id"
* group.element[32].target.product[0].property = "antlr"
* group.element[32].target.product[0].value = "IF PRT-5 VALUED"
* group.element[33].code = #VXU_V04.ORDER.OBSERVATION.NTE
* group.element[33].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[33].extension[0].extension[0].url = "cardinalityMin"
* group.element[33].extension[0].extension[0].valueInteger = 0
* group.element[33].extension[0].extension[1].url = "cardinalityMax"
* group.element[33].extension[0].extension[1].valueInteger = -1
* group.element[33].display = "Notes (Regarding Immunization)"
* group.element[33].target.equivalence = #equivalent
* group.element[33].target.code = #Observation[2].note
* group.element[33].target.display = "Observation[2].note"
* group.element[33].target.dependsOn[0].property = "segment-map"
* group.element[33].target.dependsOn[0].value = "NTE[Annotation]"
