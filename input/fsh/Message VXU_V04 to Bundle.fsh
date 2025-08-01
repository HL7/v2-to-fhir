// HL7 Message - FHIR R4_ VXU_V04 - Sheet1.csv
Instance: MessageVXU_V04ToBundle
InstanceOf: ConceptMap
Title: "Message VXU_V04 to Bundle Map"
Usage: #definition
* title = "Message VXU_V04 to Bundle Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Message VXU_V04 to the FHIR Message Bundle."
* id = "message-vxu-v04-to-bundle"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/message-vxu-v04-to-bundle"
* name = "MessageVXU_V04ToBundle"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Message VXU:V04 to Bundle.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1_7maXDpc_qMMRzMm0x6d90-Hj6vvhGyO2kyFX0tpuZs/edit#gid=0"
* group[0].element[0].code = #VXU_V04.MSH
* group[0].element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[0].extension[0].extension[0].valueInteger = 1
* group[0].element[0].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[0].extension[0].extension[1].valueInteger = 1
* group[0].element[0].display = "Message Header"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #Bundle
* group[0].element[0].target.display = "Bundle"
* group[0].element[1].code = #VXU_V04.MSH
* group[0].element[1].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[1].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[1].extension[0].extension[0].valueInteger = 1
* group[0].element[1].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[1].extension[0].extension[1].valueInteger = 1
* group[0].element[1].display = "Message Header Segment"
* group[0].element[1].target.equivalence = #equivalent
* group[0].element[1].target.code = #MessageHeader[1]
* group[0].element[1].target.display = "MessageHeader[1]"
* group[0].element[1].target.comment = "Processing of the MSH segment results in the creation of a new MessageHeader resource"
* group[0].element[2].code = #VXU_V04.MSH
* group[0].element[2].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[2].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[2].extension[0].extension[0].valueInteger = 1
* group[0].element[2].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[2].extension[0].extension[1].valueInteger = 1
* group[0].element[2].display = "Message Header Segment"
* group[0].element[2].target.equivalence = #equivalent
* group[0].element[2].target.code = #Provenance[1]
* group[0].element[2].target.display = "Provenance[1]"
* group[0].element[2].target.comment = "If the FHIR transformation does not yield a FHIR message, but only a set of resource (APIs, repository, etc.) than one should consider attaching this Provenance resource instance to the relevant FHIR resources generated."
* group[0].element[2].target.dependsOn[0].property = "Narrative-Condition"
* group[0].element[2].target.dependsOn[0].value = "If there is a source in MSH-4, or known based on the configuration."
* group[0].element[3].code = #VXU_V04.MSH
* group[0].element[3].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[3].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[3].extension[0].extension[0].valueInteger = 1
* group[0].element[3].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[3].extension[0].extension[1].valueInteger = 1
* group[0].element[3].display = "Message Header Segment"
* group[0].element[3].target.equivalence = #equivalent
* group[0].element[3].target.code = #Provenance[2]
* group[0].element[3].target.display = "Provenance[2]"
* group[0].element[3].target.comment = "If the FHIR transformation does not yield a FHIR Bunlde, but only a set of resource (APIs, repository, etc.) than one should consider attaching this Provenance resource instance to the relevant FHIR resources generated."
* group[0].element[4].code = #VXU_V04.SFT
* group[0].element[4].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[4].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[4].extension[0].extension[0].valueInteger = 0
* group[0].element[4].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[4].extension[0].extension[1].valueInteger = -1
* group[0].element[4].display = "Software"
* group[0].element[4].target.equivalence = #equivalent
* group[0].element[4].target.code = #Provenance[1].entity.what(Device)
* group[0].element[4].target.display = "Provenance[1].entity.what(Device)"
* group[0].element[4].target.dependsOn[0].property = "Narrative-Condition"
* group[0].element[4].target.dependsOn[0].value = "If the software does represent not the original source system"
* group[0].element[5].code = #VXU_V04.SFT
* group[0].element[5].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[5].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[5].extension[0].extension[0].valueInteger = 0
* group[0].element[5].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[5].extension[0].extension[1].valueInteger = -1
* group[0].element[5].display = "Software"
* group[0].element[5].target.equivalence = #equivalent
* group[0].element[5].target.code = #Provenance[1].entity.what(Device)
* group[0].element[5].target.display = "Provenance[1].entity.what(Device)"
* group[0].element[5].target.dependsOn[0].property = "Narrative-Condition"
* group[0].element[5].target.dependsOn[0].value = "If the software represents the original source system"
* group[0].element[6].code = #VXU_V04.PID
* group[0].element[6].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[6].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[6].extension[0].extension[0].valueInteger = 1
* group[0].element[6].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[6].extension[0].extension[1].valueInteger = 1
* group[0].element[6].display = "Patient Identification Segment"
* group[0].element[6].target.equivalence = #equivalent
* group[0].element[6].target.code = #Patient[1]
* group[0].element[6].target.display = "Patient[1]"
* group[0].element[6].target.comment = "Processing of the PID segment results in the creation of a new Patient resource"
* group[0].element[7].code = #VXU_V04.PID
* group[0].element[7].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[7].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[7].extension[0].extension[0].valueInteger = 1
* group[0].element[7].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[7].extension[0].extension[1].valueInteger = 1
* group[0].element[7].display = "Patient Identification Segment"
* group[0].element[7].target.equivalence = #equivalent
* group[0].element[7].target.code = #Provenance[4]
* group[0].element[7].target.display = "Provenance[4]"
* group[0].element[7].target.dependsOn[0].property = "Computable-ANTLR"
* group[0].element[7].target.dependsOn[0].value = "IF PID-33 AND PID-34 VALUED"
* group[0].element[7].target.dependsOn[1].property = "Narrative-Condition"
* group[0].element[7].target.dependsOn[1].value = "One  may drop PID-33 from the condition if PID-34 Last Update Facility is still sufficient without a date."
* group[0].element[8].code = #VXU_V04.PD1
* group[0].element[8].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[8].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[8].extension[0].extension[0].valueInteger = 0
* group[0].element[8].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[8].extension[0].extension[1].valueInteger = 1
* group[0].element[8].display = "Additional Demographics"
* group[0].element[8].target.equivalence = #equivalent
* group[0].element[8].target.code = #Patient[1]
* group[0].element[8].target.display = "Patient[1]"
* group[0].element[8].target.comment = "Incorporate PD1 content into the Patient created from the PID segment."
* group[0].element[9].code = #VXU_V04.PD1
* group[0].element[9].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[9].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[9].extension[0].extension[0].valueInteger = 0
* group[0].element[9].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[9].extension[0].extension[1].valueInteger = 1
* group[0].element[9].display = "Additional Demographics"
* group[0].element[9].target.equivalence = #equivalent
* group[0].element[9].target.code = #Observation[3]
* group[0].element[9].target.display = "Observation[3]"
* group[0].element[9].target.dependsOn[0].property = "Computable-ANTLR"
* group[0].element[9].target.dependsOn[0].value = "IF PD1-7 VALUED"
* group[0].element[10].code = #VXU_V04.NK1
* group[0].element[10].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[10].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[10].extension[0].extension[0].valueInteger = 0
* group[0].element[10].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[10].extension[0].extension[1].valueInteger = -1
* group[0].element[10].display = "Next of Kin/Associated Parties"
* group[0].element[10].target.equivalence = #equivalent
* group[0].element[10].target.code = #RelatedPerson[1]
* group[0].element[10].target.display = "RelatedPerson[1]"
* group[0].element[10].target.comment = "Typically, each NK1 will be translated to either a new RelatedPerson resource or added as a new occurrence of Patient.contact, but it's possible to insert the NK1 data into both structures."
* group[0].element[11].code = #VXU_V04.NK1
* group[0].element[11].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[11].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[11].extension[0].extension[0].valueInteger = 0
* group[0].element[11].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[11].extension[0].extension[1].valueInteger = -1
* group[0].element[11].display = "Next of Kin/Associated Parties"
* group[0].element[11].target.equivalence = #equivalent
* group[0].element[11].target.code = #Patient[1]
* group[0].element[11].target.display = "Patient[1]"
* group[0].element[12].code = #VXU_V04.PATIENT_VISIT.PV1
* group[0].element[12].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[12].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[12].extension[0].extension[0].valueInteger = 1
* group[0].element[12].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[12].extension[0].extension[1].valueInteger = 1
* group[0].element[12].display = "Patient Visit"
* group[0].element[12].target.equivalence = #equivalent
* group[0].element[12].target.code = #Encounter[1]
* group[0].element[12].target.display = "Encounter[1]"
* group[0].element[12].target.comment = "Processing of the PV1 segment results in the creation of a new Encounter resource"
* group[0].element[12].target.dependsOn[0].property = "Narrative-Condition"
* group[0].element[12].target.dependsOn[0].value = "Only if the system wants to know about the encounter related to the immunization event"
* group[0].element[13].code = #VXU_V04.PATIENT_VISIT.PV1
* group[0].element[13].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[13].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[13].extension[0].extension[0].valueInteger = 1
* group[0].element[13].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[13].extension[0].extension[1].valueInteger = 1
* group[0].element[13].display = "Patient Visit"
* group[0].element[13].target.equivalence = #equivalent
* group[0].element[13].target.code = #Basic
* group[0].element[13].target.display = "Basic"
* group[0].element[13].target.dependsOn[0].property = "Computable-ANTLR"
* group[0].element[13].target.dependsOn[0].value = "IF PV1-43 VALUED"
* group[0].element[14].code = #VXU_V04.PATIENT_VISIT.PV1
* group[0].element[14].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[14].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[14].extension[0].extension[0].valueInteger = 1
* group[0].element[14].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[14].extension[0].extension[1].valueInteger = 1
* group[0].element[14].display = "Patient Visit"
* group[0].element[14].target.equivalence = #equivalent
* group[0].element[14].target.code = #Patient[1]
* group[0].element[14].target.display = "Patient[1]"
* group[0].element[15].code = #VXU_V04.PATIENT_VISIT.PV1
* group[0].element[15].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[15].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[15].extension[0].extension[0].valueInteger = 1
* group[0].element[15].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[15].extension[0].extension[1].valueInteger = 1
* group[0].element[15].display = "Patient Visit"
* group[0].element[15].target.equivalence = #equivalent
* group[0].element[15].target.code = #Coverage[1]
* group[0].element[15].target.display = "Coverage[1]"
* group[0].element[15].target.dependsOn[0].property = "Computable-ANTLR"
* group[0].element[15].target.dependsOn[0].value = "IF PV1-20 VALUE"
* group[0].element[16].code = #VXU_V04.PATIENT_VISIT.PV2
* group[0].element[16].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[16].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[16].extension[0].extension[0].valueInteger = 0
* group[0].element[16].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[16].extension[0].extension[1].valueInteger = 1
* group[0].element[16].display = "Patient Visit – Additional Info"
* group[0].element[16].target.equivalence = #equivalent
* group[0].element[16].target.code = #Encounter[1]
* group[0].element[16].target.display = "Encounter[1]"
* group[0].element[16].target.comment = "Incorporate PV2 content into the Encounter created from the PV1 segment."
* group[0].element[17].code = #VXU_V04.PERSON_OBSERVATION.OBX
* group[0].element[17].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[17].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[17].extension[0].extension[0].valueInteger = 1
* group[0].element[17].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[17].extension[0].extension[1].valueInteger = 1
* group[0].element[17].display = "Observation/Result"
* group[0].element[17].target.equivalence = #equivalent
* group[0].element[17].target.code = #Observation[1]
* group[0].element[17].target.display = "Observation[1]"
* group[0].element[17].target.dependsOn[0].property = "Computable-ANTLR"
* group[0].element[17].target.dependsOn[0].value = "IF OBX-5 LST.count LESS THAN OR EQUALS 1 OR OBX-2 IS \"NA\""
* group[0].element[18].code = #VXU_V04.PERSON_OBSERVATION.OBX
* group[0].element[18].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[18].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[18].extension[0].extension[0].valueInteger = 1
* group[0].element[18].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[18].extension[0].extension[1].valueInteger = 1
* group[0].element[18].display = "Observation/Result"
* group[0].element[18].target.equivalence = #equivalent
* group[0].element[18].target.code = #Observation[1]
* group[0].element[18].target.display = "Observation[1]"
* group[0].element[18].target.comment = "Note that when OBX-5 repeats, the standard mapping is to use Observation.component (see OBX[Observation-Component] map) rather than creating separate Observation instances.  However, we are aware that some profiles and implementation guides do separate the OBX into multiple observations depending on the OBX-2 value.  This is an example of a non-standard interpretation as the OBX should have been separated into multiple OBX segments to start.  Please consider the local profiles and implementation guides on how to manage these variants."
* group[0].element[18].target.dependsOn[0].property = "Computable-ANTLR"
* group[0].element[18].target.dependsOn[0].value = "IF  OBX-5 LST.count GREATER THAN 1 AND OBX-2 IS NOT \"NA\""
* group[0].element[19].code = #VXU_V04.PERSON_OBSERVATION.PRT
* group[0].element[19].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[19].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[19].extension[0].extension[0].valueInteger = 0
* group[0].element[19].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[19].extension[0].extension[1].valueInteger = -1
* group[0].element[19].display = "Participation (for Observation)"
* group[0].element[19].target.equivalence = #equivalent
* group[0].element[19].target.code = #Device[1]
* group[0].element[19].target.display = "Device[1]"
* group[0].element[19].target.dependsOn[0].property = "Computable-ANTLR"
* group[0].element[19].target.dependsOn[0].value = "IF PRT-10 VALUED"
* group[0].element[20].code = #VXU_V04.PERSON_OBSERVATION.PRT
* group[0].element[20].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[20].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[20].extension[0].extension[0].valueInteger = 0
* group[0].element[20].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[20].extension[0].extension[1].valueInteger = -1
* group[0].element[20].display = "Participation (for Observation)"
* group[0].element[20].target.equivalence = #equivalent
* group[0].element[20].target.code = #Observation[1]
* group[0].element[20].target.display = "Observation[1]"
* group[0].element[20].target.comment = "At this time we don't know of a use case for sending a location PRT to a patient level observations. We've provided a mapping from PRT to Location but not way to link it to other resources in the Bundle. If there is a known use case, please comment on it so that we can develop a solution."
* group[0].element[20].target.dependsOn[0].property = "Computable-ANTLR"
* group[0].element[20].target.dependsOn[0].value = "IF PRT-9 VALUED OR IF PRT-14 VALUED"
* group[0].element[21].code = #VXU_V04.PERSON_OBSERVATION.PRT
* group[0].element[21].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[21].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[21].extension[0].extension[0].valueInteger = 0
* group[0].element[21].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[21].extension[0].extension[1].valueInteger = -1
* group[0].element[21].display = "Participation (for Observation)"
* group[0].element[21].target.equivalence = #equivalent
* group[0].element[21].target.code = #PractitionerRole[1]
* group[0].element[21].target.display = "PractitionerRole[1]"
* group[0].element[21].target.dependsOn[0].property = "Computable-ANTLR"
* group[0].element[21].target.dependsOn[0].value = "IF PRT-5 VALUED"
* group[0].element[22].code = #VXU_V04.PERSON_OBSERVATION.NTE
* group[0].element[22].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[22].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[22].extension[0].extension[0].valueInteger = 0
* group[0].element[22].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[22].extension[0].extension[1].valueInteger = -1
* group[0].element[22].display = "Notes (Regarding Patient Observation)"
* group[0].element[22].target.equivalence = #equivalent
* group[0].element[22].target.code = #Observation[1].note
* group[0].element[22].target.display = "Observation[1].note"
* group[0].element[23].code = #VXU_V04.ORDER.ORC
* group[0].element[23].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[23].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[23].extension[0].extension[0].valueInteger = 1
* group[0].element[23].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[23].extension[0].extension[1].valueInteger = 1
* group[0].element[23].display = "Common Order"
* group[0].element[23].target.equivalence = #equivalent
* group[0].element[23].target.code = #Immunization[1]
* group[0].element[23].target.display = "Immunization[1]"
* group[0].element[23].target.comment = "Processing of each ORC segment results in the creation of a new Immunization resource"
* group[0].element[24].code = #VXU_V04.ORDER.ORC
* group[0].element[24].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[24].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[24].extension[0].extension[0].valueInteger = 1
* group[0].element[24].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[24].extension[0].extension[1].valueInteger = 1
* group[0].element[24].display = "Common Order"
* group[0].element[24].target.equivalence = #equivalent
* group[0].element[24].target.code = #ServiceRequest[1]
* group[0].element[24].target.display = "ServiceRequest[1]"
* group[0].element[24].target.comment = "Processing of each ORC segment results in the creation of a new ServiceRequest resource if the receiving system wants to know about the order that lead to the immunization event"
* group[0].element[24].target.dependsOn[0].property = "Narrative-Condition"
* group[0].element[24].target.dependsOn[0].value = "Only if the system wants to know about the order that lead to the immunization event"
* group[0].element[25].code = #VXU_V04.ORDER.PRT
* group[0].element[25].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[25].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[25].extension[0].extension[0].valueInteger = 0
* group[0].element[25].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[25].extension[0].extension[1].valueInteger = -1
* group[0].element[25].display = "Participation (for ORC)"
* group[0].element[25].target.equivalence = #equivalent
* group[0].element[25].target.code = #PractitionerRole[2]
* group[0].element[25].target.display = "PractitionerRole[2]"
* group[0].element[25].target.comment = """
Processing of each PRT segment typically results in the creation of a new Practitioner or PractitionerRole resource. 

The decision between creating a Practitioner or PractitionerRole resource may depend on the availability of data related to the practitioner's role elsewhere in the message.

It may be possible to reuse a Practitioner resource in the bundle created from somewhere else in the bundle rather than creating a new resource for each PRT segment (eg, the same administering practictioner resource could be pointed to from multiple order segment groups) - if an implementer decides to do this, the system must be certain that it's the same person (same name, ID, etc) potentially even playing the same role (if the bundle uses PractitionerRole in addition to Practitioner).\
"""
* group[0].element[25].target.dependsOn[0].property = "Computable-ANTLR"
* group[0].element[25].target.dependsOn[0].value = "IF PRT-4.1 EQUALS \"OP\" AND PRT-4.3 EQUALS \"HL70443\""
* group[0].element[25].target.dependsOn[1].property = "Computable-FHIRPath"
* group[0].element[25].target.dependsOn[1].value = "(element(\"4.1\")=\"OP\")and(element(\"4.3\")=\"HL70443\")"
* group[0].element[26].code = #VXU_V04.ORDER.PRT
* group[0].element[26].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[26].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[26].extension[0].extension[0].valueInteger = 0
* group[0].element[26].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[26].extension[0].extension[1].valueInteger = -1
* group[0].element[26].display = "Participation (for ORC)"
* group[0].element[26].target.equivalence = #equivalent
* group[0].element[26].target.code = #Immunization[1].performer.function.coding.code
* group[0].element[26].target.display = "= \"OP'\""
* group[0].element[26].target.dependsOn[0].property = "Computable-ANTLR"
* group[0].element[26].target.dependsOn[0].value = "IF PRT-4.1 EQUALS \"OP\" AND PRT-4.3 EQUALS \"HL70443\""
* group[0].element[26].target.dependsOn[1].property = "Computable-FHIRPath"
* group[0].element[26].target.dependsOn[1].value = "(element(\"4.1\")=\"OP\")and(element(\"4.3\")=\"HL70443\")"
* group[0].element[27].code = #VXU_V04.ORDER.PRT
* group[0].element[27].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[27].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[27].extension[0].extension[0].valueInteger = 0
* group[0].element[27].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[27].extension[0].extension[1].valueInteger = -1
* group[0].element[27].display = "Participation (for ORC)"
* group[0].element[27].target.equivalence = #equivalent
* group[0].element[27].target.code = #Immunization[1].performer.function.coding.system
* group[0].element[27].target.display = "= \"http://terminology.hl7.org/CodeSystem/v2-0443\""
* group[0].element[27].target.dependsOn[0].property = "Computable-ANTLR"
* group[0].element[27].target.dependsOn[0].value = "IF PRT-4.1 EQUALS \"OP\" AND PRT-4.3 EQUALS \"HL70443\""
* group[0].element[27].target.dependsOn[1].property = "Computable-FHIRPath"
* group[0].element[27].target.dependsOn[1].value = "(element(\"4.1\")=\"OP\")and(element(\"4.3\")=\"HL70443\")"
* group[0].element[28].code = #VXU_V04.ORDER.PRT
* group[0].element[28].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[28].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[28].extension[0].extension[0].valueInteger = 0
* group[0].element[28].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[28].extension[0].extension[1].valueInteger = -1
* group[0].element[28].display = "Participation (for ORC)"
* group[0].element[28].target.equivalence = #equivalent
* group[0].element[28].target.code = #PractitionerRole[3]
* group[0].element[28].target.display = "PractitionerRole[3]"
* group[0].element[28].target.dependsOn[0].property = "Computable-ANTLR"
* group[0].element[28].target.dependsOn[0].value = "IF PRT-4.1 EQUALS \"AP\" AND PRT-4.3 EQUALS \"HL70443\""
* group[0].element[28].target.dependsOn[1].property = "Computable-FHIRPath"
* group[0].element[28].target.dependsOn[1].value = "(element(\"4.1\")=\"AP\")and(element(\"4.3\")=\"HL70443\")"
* group[0].element[29].code = #VXU_V04.ORDER.PRT
* group[0].element[29].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[29].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[29].extension[0].extension[0].valueInteger = 0
* group[0].element[29].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[29].extension[0].extension[1].valueInteger = -1
* group[0].element[29].display = "Participation (for ORC)"
* group[0].element[29].target.equivalence = #equivalent
* group[0].element[29].target.code = #Immunization[1].performer.function.coding.code
* group[0].element[29].target.display = "= \"AP'\""
* group[0].element[29].target.dependsOn[0].property = "Computable-ANTLR"
* group[0].element[29].target.dependsOn[0].value = "IF PRT-4.1 EQUALS \"AP\" AND PRT-4.3 EQUALS \"HL70443\""
* group[0].element[29].target.dependsOn[1].property = "Computable-FHIRPath"
* group[0].element[29].target.dependsOn[1].value = "(element(\"4.1\")=\"AP\")and(element(\"4.3\")=\"HL70443\")"
* group[0].element[30].code = #VXU_V04.ORDER.PRT
* group[0].element[30].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[30].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[30].extension[0].extension[0].valueInteger = 0
* group[0].element[30].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[30].extension[0].extension[1].valueInteger = -1
* group[0].element[30].display = "Participation (for ORC)"
* group[0].element[30].target.equivalence = #equivalent
* group[0].element[30].target.code = #Immunization[1].performer.function.coding.system
* group[0].element[30].target.display = "= \"http://terminology.hl7.org/CodeSystem/v2-0443\""
* group[0].element[30].target.dependsOn[0].property = "Computable-ANTLR"
* group[0].element[30].target.dependsOn[0].value = "IF PRT-4.1 EQUALS \"AP\" AND PRT-4.3 EQUALS \"HL70443\""
* group[0].element[30].target.dependsOn[1].property = "Computable-FHIRPath"
* group[0].element[30].target.dependsOn[1].value = "(element(\"4.1\")=\"AP\")and(element(\"4.3\")=\"HL70443\")"
* group[0].element[31].code = #VXU_V04.ORDER.RXA
* group[0].element[31].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[31].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[31].extension[0].extension[0].valueInteger = 1
* group[0].element[31].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[31].extension[0].extension[1].valueInteger = 1
* group[0].element[31].display = "Pharmacy Administration Segment"
* group[0].element[31].target.equivalence = #equivalent
* group[0].element[31].target.code = #Immunization[1]
* group[0].element[31].target.display = "Immunization[1]"
* group[0].element[31].target.comment = "Incorporate RXA content into the Immunization created from the ORC segment in the same segment group."
* group[0].element[32].code = #VXU_V04.ORDER.RXR
* group[0].element[32].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[32].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[32].extension[0].extension[0].valueInteger = 0
* group[0].element[32].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[32].extension[0].extension[1].valueInteger = 1
* group[0].element[32].display = "Pharmacy Route"
* group[0].element[32].target.equivalence = #equivalent
* group[0].element[32].target.code = #Immunization[1]
* group[0].element[32].target.display = "Immunization[1]"
* group[0].element[32].target.comment = "Incorporate RXR content into the Immunization created from the ORC segment in the same segment group."
* group[0].element[33].code = #VXU_V04.ORDER.OBSERVATION.OBX
* group[0].element[33].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[33].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[33].extension[0].extension[0].valueInteger = 1
* group[0].element[33].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[33].extension[0].extension[1].valueInteger = 1
* group[0].element[33].display = "Observation/Result"
* group[0].element[33].target.equivalence = #equivalent
* group[0].element[33].target.code = #Observation[2]
* group[0].element[33].target.display = "Observation[2]"
* group[0].element[33].target.dependsOn[0].property = "Computable-ANTLR"
* group[0].element[33].target.dependsOn[0].value = "IF OBX-5 LST.count LESS THAN OR EQUALS 1 AND OBX-2 IS \"NA\""
* group[0].element[33].target.dependsOn[1].property = "Narrative-Condition"
* group[0].element[33].target.dependsOn[1].value = "Some observations about the immunization may map to elements within the Immuniation resource rather than an independent Observation resource. For example, funding source, patient eligibility and educational material are often sent as OBX segments but map to Immunization elements.  Specific guidance on how to map, e.g., the US CDC implementation guide on immunizations, will be provided separately at a future time TBD."
* group[0].element[34].code = #VXU_V04.ORDER.OBSERVATION.OBX
* group[0].element[34].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[34].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[34].extension[0].extension[0].valueInteger = 1
* group[0].element[34].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[34].extension[0].extension[1].valueInteger = 1
* group[0].element[34].display = "Observation/Result"
* group[0].element[34].target.equivalence = #equivalent
* group[0].element[34].target.code = #Observation[2]
* group[0].element[34].target.display = "Observation[2]"
* group[0].element[34].target.dependsOn[0].property = "Computable-ANTLR"
* group[0].element[34].target.dependsOn[0].value = "IF OBX-5 LST.count GREATER THAN 1 AND OBX-2 IS NOT \"NA\""
* group[0].element[34].target.dependsOn[1].property = "Narrative-Condition"
* group[0].element[34].target.dependsOn[1].value = "Some observations about the immunization may map to elements within the Immuniation resource rather than an independent Observation resource. For example, funding source, patient eligibility and educational material are often sent as OBX segments but map to Immunization elements.  Specific guidance on how to map, e.g., the US CDC implementation guide on immunizations, will be provided separately at a future time TBD."
* group[0].element[35].code = #VXU_V04.ORDER.OBSERVATION.PRT
* group[0].element[35].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[35].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[35].extension[0].extension[0].valueInteger = 0
* group[0].element[35].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[35].extension[0].extension[1].valueInteger = -1
* group[0].element[35].display = "Participation (for Observation)"
* group[0].element[35].target.equivalence = #equivalent
* group[0].element[35].target.code = #Device[2]
* group[0].element[35].target.display = "Device[2]"
* group[0].element[35].target.dependsOn[0].property = "Computable-ANTLR"
* group[0].element[35].target.dependsOn[0].value = "IF PRT-10 VALUED"
* group[0].element[36].code = #VXU_V04.ORDER.OBSERVATION.PRT
* group[0].element[36].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[36].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[36].extension[0].extension[0].valueInteger = 0
* group[0].element[36].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[36].extension[0].extension[1].valueInteger = -1
* group[0].element[36].display = "Participation (for Observation)"
* group[0].element[36].target.equivalence = #equivalent
* group[0].element[36].target.code = #Observation[2]
* group[0].element[36].target.display = "Observation[2]"
* group[0].element[36].target.dependsOn[0].property = "Computable-ANTLR"
* group[0].element[36].target.dependsOn[0].value = "IF PRT-9 VALUED OR IF PRT-14 VALUED"
* group[0].element[37].code = #VXU_V04.ORDER.OBSERVATION.PRT
* group[0].element[37].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[37].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[37].extension[0].extension[0].valueInteger = 0
* group[0].element[37].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[37].extension[0].extension[1].valueInteger = -1
* group[0].element[37].display = "Participation (for Observation)"
* group[0].element[37].target.equivalence = #equivalent
* group[0].element[37].target.code = #PractitionerRole[4]
* group[0].element[37].target.display = "PractitionerRole[4]"
* group[0].element[37].target.dependsOn[0].property = "Computable-ANTLR"
* group[0].element[37].target.dependsOn[0].value = "IF PRT-5 VALUED"
* group[0].element[38].code = #VXU_V04.ORDER.OBSERVATION.NTE
* group[0].element[38].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[38].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[38].extension[0].extension[0].valueInteger = 0
* group[0].element[38].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[38].extension[0].extension[1].valueInteger = -1
* group[0].element[38].display = "Notes (Regarding Immunization)"
* group[0].element[38].target.equivalence = #equivalent
* group[0].element[38].target.code = #Observation[2].note
* group[0].element[38].target.display = "Observation[2].note"
