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
* group.element[2].target.comment = "If the FHIR transformation does not yield a FHIR message, but only a set of resource (APIs, repository, etc.) than one should consider attaching this Provenance resource instance to the relevant FHIR resources generated."
* group.element[3].code = #VXU_V04.MSH
* group.element[3].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[3].extension[0].extension[0].url = "cardinalityMin"
* group.element[3].extension[0].extension[0].valueInteger = 1
* group.element[3].extension[0].extension[1].url = "cardinalityMax"
* group.element[3].extension[0].extension[1].valueInteger = 1
* group.element[3].display = "Message Header Segment"
* group.element[3].target.equivalence = #equivalent
* group.element[3].target.code = #Provenance[2]
* group.element[3].target.display = "Provenance[2]"
* group.element[3].target.comment = "If the FHIR transformation does not yield a FHIR Bunlde, but only a set of resource (APIs, repository, etc.) than one should consider attaching this Provenance resource instance to the relevant FHIR resources generated."
* group.element[4].code = #VXU_V04.SFT
* group.element[4].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[4].extension[0].extension[0].url = "cardinalityMin"
* group.element[4].extension[0].extension[0].valueInteger = 0
* group.element[4].extension[0].extension[1].url = "cardinalityMax"
* group.element[4].extension[0].extension[1].valueInteger = -1
* group.element[4].display = "Software"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #Provenance[1].entity.what(Device)
* group.element[4].target.display = "Provenance[1].entity.what(Device)"
* group.element[5].code = #VXU_V04.SFT
* group.element[5].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[5].extension[0].extension[0].url = "cardinalityMin"
* group.element[5].extension[0].extension[0].valueInteger = 0
* group.element[5].extension[0].extension[1].url = "cardinalityMax"
* group.element[5].extension[0].extension[1].valueInteger = -1
* group.element[5].display = "Software"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #Provenance[1].entity.what(Device)
* group.element[5].target.display = "Provenance[1].entity.what(Device)"
* group.element[6].code = #VXU_V04.PID
* group.element[6].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[6].extension[0].extension[0].url = "cardinalityMin"
* group.element[6].extension[0].extension[0].valueInteger = 1
* group.element[6].extension[0].extension[1].url = "cardinalityMax"
* group.element[6].extension[0].extension[1].valueInteger = 1
* group.element[6].display = "Patient Identification Segment"
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #Patient[1]
* group.element[6].target.display = "Patient[1]"
* group.element[6].target.comment = "Processing of the PID segment results in the creation of a new Patient resource"
* group.element[7].code = #VXU_V04.PID
* group.element[7].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[7].extension[0].extension[0].url = "cardinalityMin"
* group.element[7].extension[0].extension[0].valueInteger = 1
* group.element[7].extension[0].extension[1].url = "cardinalityMax"
* group.element[7].extension[0].extension[1].valueInteger = 1
* group.element[7].display = "Patient Identification Segment"
* group.element[7].target.equivalence = #equivalent
* group.element[7].target.code = #Provenance[4]
* group.element[7].target.display = "Provenance[4]"
* group.element[7].target.dependsOn[0].property = "Computable-ANTLR"
* group.element[7].target.dependsOn[0].system = "http://hl7.org/fhir/uv/v2mappings/antlr_condition_syntax.html"
* group.element[7].target.dependsOn[0].value = "IF PID-33 AND PID-34 VALUED"
* group.element[7].target.dependsOn[0].display = "IF PID-33 AND PID-34 VALUED"
* group.element[8].code = #VXU_V04.PD1
* group.element[8].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[8].extension[0].extension[0].url = "cardinalityMin"
* group.element[8].extension[0].extension[0].valueInteger = 0
* group.element[8].extension[0].extension[1].url = "cardinalityMax"
* group.element[8].extension[0].extension[1].valueInteger = 1
* group.element[8].display = "Additional Demographics"
* group.element[8].target.equivalence = #equivalent
* group.element[8].target.code = #Patient[1]
* group.element[8].target.display = "Patient[1]"
* group.element[8].target.comment = "Incorporate PD1 content into the Patient created from the PID segment."
* group.element[9].code = #VXU_V04.PD1
* group.element[9].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[9].extension[0].extension[0].url = "cardinalityMin"
* group.element[9].extension[0].extension[0].valueInteger = 0
* group.element[9].extension[0].extension[1].url = "cardinalityMax"
* group.element[9].extension[0].extension[1].valueInteger = 1
* group.element[9].display = "Additional Demographics"
* group.element[9].target.equivalence = #equivalent
* group.element[9].target.code = #Observation[3]
* group.element[9].target.display = "Observation[3]"
* group.element[9].target.dependsOn[0].property = "Computable-ANTLR"
* group.element[9].target.dependsOn[0].system = "http://hl7.org/fhir/uv/v2mappings/antlr_condition_syntax.html"
* group.element[9].target.dependsOn[0].value = "IF PD1-7 VALUED"
* group.element[9].target.dependsOn[0].display = "IF PD1-7 VALUED"
* group.element[10].code = #VXU_V04.NK1
* group.element[10].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[10].extension[0].extension[0].url = "cardinalityMin"
* group.element[10].extension[0].extension[0].valueInteger = 0
* group.element[10].extension[0].extension[1].url = "cardinalityMax"
* group.element[10].extension[0].extension[1].valueInteger = -1
* group.element[10].display = "Next of Kin/Associated Parties"
* group.element[10].target.equivalence = #equivalent
* group.element[10].target.code = #RelatedPerson[1]
* group.element[10].target.display = "RelatedPerson[1]"
* group.element[10].target.comment = "Typically, each NK1 will be translated to either a new RelatedPerson resource or added as a new occurrence of Patient.contact, but it's possible to insert the NK1 data into both structures."
* group.element[11].code = #VXU_V04.NK1
* group.element[11].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[11].extension[0].extension[0].url = "cardinalityMin"
* group.element[11].extension[0].extension[0].valueInteger = 0
* group.element[11].extension[0].extension[1].url = "cardinalityMax"
* group.element[11].extension[0].extension[1].valueInteger = -1
* group.element[11].display = "Next of Kin/Associated Parties"
* group.element[11].target.equivalence = #equivalent
* group.element[11].target.code = #Patient[1]
* group.element[11].target.display = "Patient[1]"
* group.element[12].code = #VXU_V04.PATIENT_VISIT.PV1
* group.element[12].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[12].extension[0].extension[0].url = "cardinalityMin"
* group.element[12].extension[0].extension[0].valueInteger = 1
* group.element[12].extension[0].extension[1].url = "cardinalityMax"
* group.element[12].extension[0].extension[1].valueInteger = 1
* group.element[12].display = "Patient Visit"
* group.element[12].target.equivalence = #equivalent
* group.element[12].target.code = #Encounter[1]
* group.element[12].target.display = "Encounter[1]"
* group.element[12].target.comment = "Processing of the PV1 segment results in the creation of a new Encounter resource"
* group.element[13].code = #VXU_V04.PATIENT_VISIT.PV1
* group.element[13].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[13].extension[0].extension[0].url = "cardinalityMin"
* group.element[13].extension[0].extension[0].valueInteger = 1
* group.element[13].extension[0].extension[1].url = "cardinalityMax"
* group.element[13].extension[0].extension[1].valueInteger = 1
* group.element[13].display = "Patient Visit"
* group.element[13].target.equivalence = #equivalent
* group.element[13].target.code = #Basic
* group.element[13].target.display = "Basic"
* group.element[13].target.dependsOn[0].property = "Computable-ANTLR"
* group.element[13].target.dependsOn[0].system = "http://hl7.org/fhir/uv/v2mappings/antlr_condition_syntax.html"
* group.element[13].target.dependsOn[0].value = "IF PV1-43 VALUED"
* group.element[13].target.dependsOn[0].display = "IF PV1-43 VALUED"
* group.element[14].code = #VXU_V04.PATIENT_VISIT.PV1
* group.element[14].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[14].extension[0].extension[0].url = "cardinalityMin"
* group.element[14].extension[0].extension[0].valueInteger = 1
* group.element[14].extension[0].extension[1].url = "cardinalityMax"
* group.element[14].extension[0].extension[1].valueInteger = 1
* group.element[14].display = "Patient Visit"
* group.element[14].target.equivalence = #equivalent
* group.element[14].target.code = #Patient[1]
* group.element[14].target.display = "Patient[1]"
* group.element[15].code = #VXU_V04.PATIENT_VISIT.PV1
* group.element[15].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[15].extension[0].extension[0].url = "cardinalityMin"
* group.element[15].extension[0].extension[0].valueInteger = 1
* group.element[15].extension[0].extension[1].url = "cardinalityMax"
* group.element[15].extension[0].extension[1].valueInteger = 1
* group.element[15].display = "Patient Visit"
* group.element[15].target.equivalence = #equivalent
* group.element[15].target.code = #Coverage[1]
* group.element[15].target.display = "Coverage[1]"
* group.element[15].target.dependsOn[0].property = "Computable-ANTLR"
* group.element[15].target.dependsOn[0].system = "http://hl7.org/fhir/uv/v2mappings/antlr_condition_syntax.html"
* group.element[15].target.dependsOn[0].value = "IF PV1-20 VALUE"
* group.element[15].target.dependsOn[0].display = "IF PV1-20 VALUE"
* group.element[16].code = #VXU_V04.PATIENT_VISIT.PV2
* group.element[16].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[16].extension[0].extension[0].url = "cardinalityMin"
* group.element[16].extension[0].extension[0].valueInteger = 0
* group.element[16].extension[0].extension[1].url = "cardinalityMax"
* group.element[16].extension[0].extension[1].valueInteger = 1
* group.element[16].display = "Patient Visit – Additional Info"
* group.element[16].target.equivalence = #equivalent
* group.element[16].target.code = #Encounter[1]
* group.element[16].target.display = "Encounter[1]"
* group.element[16].target.comment = "Incorporate PV2 content into the Encounter created from the PV1 segment."
* group.element[17].code = #VXU_V04.PERSON_OBSERVATION.OBX
* group.element[17].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[17].extension[0].extension[0].url = "cardinalityMin"
* group.element[17].extension[0].extension[0].valueInteger = 1
* group.element[17].extension[0].extension[1].url = "cardinalityMax"
* group.element[17].extension[0].extension[1].valueInteger = 1
* group.element[17].display = "Observation/Result"
* group.element[17].target.equivalence = #equivalent
* group.element[17].target.code = #Observation[1]
* group.element[17].target.display = "Observation[1]"
* group.element[17].target.dependsOn[0].property = "Computable-ANTLR"
* group.element[17].target.dependsOn[0].system = "http://hl7.org/fhir/uv/v2mappings/antlr_condition_syntax.html"
* group.element[17].target.dependsOn[0].value = "IF OBX-5 LST.count LESS THAN OR EQUALS 1 OR OBX-2 IS \"NA\""
* group.element[17].target.dependsOn[0].display = "IF OBX-5 LST.count LESS THAN OR EQUALS 1 OR OBX-2 IS \"NA\""
* group.element[18].code = #VXU_V04.PERSON_OBSERVATION.OBX
* group.element[18].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[18].extension[0].extension[0].url = "cardinalityMin"
* group.element[18].extension[0].extension[0].valueInteger = 1
* group.element[18].extension[0].extension[1].url = "cardinalityMax"
* group.element[18].extension[0].extension[1].valueInteger = 1
* group.element[18].display = "Observation/Result"
* group.element[18].target.equivalence = #equivalent
* group.element[18].target.code = #Observation[1]
* group.element[18].target.display = "Observation[1]"
* group.element[18].target.comment = "Note that when OBX-5 repeats, the standard mapping is to use Observation.component (see OBX[Observation-Component] map) rather than creating separate Observation instances.  However, we are aware that some profiles and implementation guides do separate the OBX into multiple observations depending on the OBX-2 value.  This is an example of a non-standard interpretation as the OBX should have been separated into multiple OBX segments to start.  Please consider the local profiles and implementation guides on how to manage these variants."
* group.element[18].target.dependsOn[0].property = "Computable-ANTLR"
* group.element[18].target.dependsOn[0].system = "http://hl7.org/fhir/uv/v2mappings/antlr_condition_syntax.html"
* group.element[18].target.dependsOn[0].value = "IF  OBX-5 LST.count GREATER THAN 1 AND OBX-2 IS NOT \"NA\""
* group.element[18].target.dependsOn[0].display = "IF  OBX-5 LST.count GREATER THAN 1 AND OBX-2 IS NOT \"NA\""
* group.element[19].code = #VXU_V04.PERSON_OBSERVATION.PRT
* group.element[19].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[19].extension[0].extension[0].url = "cardinalityMin"
* group.element[19].extension[0].extension[0].valueInteger = 0
* group.element[19].extension[0].extension[1].url = "cardinalityMax"
* group.element[19].extension[0].extension[1].valueInteger = -1
* group.element[19].display = "Participation (for Observation)"
* group.element[19].target.equivalence = #equivalent
* group.element[19].target.code = #Device[1]
* group.element[19].target.display = "Device[1]"
* group.element[19].target.dependsOn[0].property = "Computable-ANTLR"
* group.element[19].target.dependsOn[0].system = "http://hl7.org/fhir/uv/v2mappings/antlr_condition_syntax.html"
* group.element[19].target.dependsOn[0].value = "IF PRT-10 VALUED"
* group.element[19].target.dependsOn[0].display = "IF PRT-10 VALUED"
* group.element[20].code = #VXU_V04.PERSON_OBSERVATION.PRT
* group.element[20].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[20].extension[0].extension[0].url = "cardinalityMin"
* group.element[20].extension[0].extension[0].valueInteger = 0
* group.element[20].extension[0].extension[1].url = "cardinalityMax"
* group.element[20].extension[0].extension[1].valueInteger = -1
* group.element[20].display = "Participation (for Observation)"
* group.element[20].target.equivalence = #equivalent
* group.element[20].target.code = #Observation[1]
* group.element[20].target.display = "Observation[1]"
* group.element[20].target.comment = "At this time we don't know of a use case for sending a location PRT to a patient level observations. We've provided a mapping from PRT to Location but not way to link it to other resources in the Bundle. If there is a known use case, please comment on it so that we can develop a solution."
* group.element[20].target.dependsOn[0].property = "Computable-ANTLR"
* group.element[20].target.dependsOn[0].system = "http://hl7.org/fhir/uv/v2mappings/antlr_condition_syntax.html"
* group.element[20].target.dependsOn[0].value = "IF PRT-9 VALUED OR IF PRT-14 VALUED"
* group.element[20].target.dependsOn[0].display = "IF PRT-9 VALUED OR IF PRT-14 VALUED"
* group.element[21].code = #VXU_V04.PERSON_OBSERVATION.PRT
* group.element[21].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[21].extension[0].extension[0].url = "cardinalityMin"
* group.element[21].extension[0].extension[0].valueInteger = 0
* group.element[21].extension[0].extension[1].url = "cardinalityMax"
* group.element[21].extension[0].extension[1].valueInteger = -1
* group.element[21].display = "Participation (for Observation)"
* group.element[21].target.equivalence = #equivalent
* group.element[21].target.code = #PractitionerRole[1]
* group.element[21].target.display = "PractitionerRole[1]"
* group.element[21].target.dependsOn[0].property = "Computable-ANTLR"
* group.element[21].target.dependsOn[0].system = "http://hl7.org/fhir/uv/v2mappings/antlr_condition_syntax.html"
* group.element[21].target.dependsOn[0].value = "IF PRT-5 VALUED"
* group.element[21].target.dependsOn[0].display = "IF PRT-5 VALUED"
* group.element[22].code = #VXU_V04.PERSON_OBSERVATION.NTE
* group.element[22].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[22].extension[0].extension[0].url = "cardinalityMin"
* group.element[22].extension[0].extension[0].valueInteger = 0
* group.element[22].extension[0].extension[1].url = "cardinalityMax"
* group.element[22].extension[0].extension[1].valueInteger = -1
* group.element[22].display = "Notes (Regarding Patient Observation)"
* group.element[22].target.equivalence = #equivalent
* group.element[22].target.code = #Observation[1].note
* group.element[22].target.display = "Observation[1].note"
* group.element[23].code = #VXU_V04.ORDER.ORC
* group.element[23].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[23].extension[0].extension[0].url = "cardinalityMin"
* group.element[23].extension[0].extension[0].valueInteger = 1
* group.element[23].extension[0].extension[1].url = "cardinalityMax"
* group.element[23].extension[0].extension[1].valueInteger = 1
* group.element[23].display = "Common Order"
* group.element[23].target.equivalence = #equivalent
* group.element[23].target.code = #Immunization[1]
* group.element[23].target.display = "Immunization[1]"
* group.element[23].target.comment = "Processing of each ORC segment results in the creation of a new Immunization resource"
* group.element[24].code = #VXU_V04.ORDER.ORC
* group.element[24].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[24].extension[0].extension[0].url = "cardinalityMin"
* group.element[24].extension[0].extension[0].valueInteger = 1
* group.element[24].extension[0].extension[1].url = "cardinalityMax"
* group.element[24].extension[0].extension[1].valueInteger = 1
* group.element[24].display = "Common Order"
* group.element[24].target.equivalence = #equivalent
* group.element[24].target.code = #ServiceRequest[1]
* group.element[24].target.display = "ServiceRequest[1]"
* group.element[24].target.comment = "Processing of each ORC segment results in the creation of a new ServiceRequest resource if the receiving system wants to know about the order that lead to the immunization event"
* group.element[25].code = #VXU_V04.ORDER.PRT
* group.element[25].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[25].extension[0].extension[0].url = "cardinalityMin"
* group.element[25].extension[0].extension[0].valueInteger = 0
* group.element[25].extension[0].extension[1].url = "cardinalityMax"
* group.element[25].extension[0].extension[1].valueInteger = -1
* group.element[25].display = "Participation (for ORC)"
* group.element[25].target.equivalence = #equivalent
* group.element[25].target.code = #PractitionerRole[2]
* group.element[25].target.display = "PractitionerRole[2]"
* group.element[25].target.comment = """
Processing of each PRT segment typically results in the creation of a new Practitioner or PractitionerRole resource. 

The decision between creating a Practitioner or PractitionerRole resource may depend on the availability of data related to the practitioner's role elsewhere in the message.

It may be possible to reuse a Practitioner resource in the bundle created from somewhere else in the bundle rather than creating a new resource for each PRT segment (eg, the same administering practictioner resource could be pointed to from multiple order segment groups) - if an implementer decides to do this, the system must be certain that it's the same person (same name, ID, etc) potentially even playing the same role (if the bundle uses PractitionerRole in addition to Practitioner).\
"""
* group.element[25].target.dependsOn[0].property = "Computable-ANTLR"
* group.element[25].target.dependsOn[0].system = "http://hl7.org/fhir/uv/v2mappings/antlr_condition_syntax.html"
* group.element[25].target.dependsOn[0].value = "IF PRT-4.1 EQUALS \"OP\" AND PRT-4.3 EQUALS \"HL70443\""
* group.element[25].target.dependsOn[0].display = "IF PRT-4.1 EQUALS \"OP\" AND PRT-4.3 EQUALS \"HL70443\""
* group.element[25].target.dependsOn[1].property = "Computable-FHIRPath"
* group.element[25].target.dependsOn[1].system = "http://hl7.org/fhirpath/N1"
* group.element[25].target.dependsOn[1].value = "IF PRT-4.1 EQUALS \"OP\" AND PRT-4.3 EQUALS \"HL70443\""
* group.element[25].target.dependsOn[1].display = "IF PRT-4.1 EQUALS \"OP\" AND PRT-4.3 EQUALS \"HL70443\""
* group.element[26].code = #VXU_V04.ORDER.PRT
* group.element[26].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[26].extension[0].extension[0].url = "cardinalityMin"
* group.element[26].extension[0].extension[0].valueInteger = 0
* group.element[26].extension[0].extension[1].url = "cardinalityMax"
* group.element[26].extension[0].extension[1].valueInteger = -1
* group.element[26].display = "Participation (for ORC)"
* group.element[26].target.equivalence = #equivalent
* group.element[26].target.code = #Immunization[1].performer.function.coding.code
* group.element[26].target.display = "= \"OP'\""
* group.element[26].target.dependsOn[0].property = "Computable-ANTLR"
* group.element[26].target.dependsOn[0].system = "http://hl7.org/fhir/uv/v2mappings/antlr_condition_syntax.html"
* group.element[26].target.dependsOn[0].value = "IF PRT-4.1 EQUALS \"OP\" AND PRT-4.3 EQUALS \"HL70443\""
* group.element[26].target.dependsOn[0].display = "IF PRT-4.1 EQUALS \"OP\" AND PRT-4.3 EQUALS \"HL70443\""
* group.element[26].target.dependsOn[1].property = "Computable-FHIRPath"
* group.element[26].target.dependsOn[1].system = "http://hl7.org/fhirpath/N1"
* group.element[26].target.dependsOn[1].value = "IF PRT-4.1 EQUALS \"OP\" AND PRT-4.3 EQUALS \"HL70443\""
* group.element[26].target.dependsOn[1].display = "IF PRT-4.1 EQUALS \"OP\" AND PRT-4.3 EQUALS \"HL70443\""
* group.element[27].code = #VXU_V04.ORDER.PRT
* group.element[27].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[27].extension[0].extension[0].url = "cardinalityMin"
* group.element[27].extension[0].extension[0].valueInteger = 0
* group.element[27].extension[0].extension[1].url = "cardinalityMax"
* group.element[27].extension[0].extension[1].valueInteger = -1
* group.element[27].display = "Participation (for ORC)"
* group.element[27].target.equivalence = #equivalent
* group.element[27].target.code = #Immunization[1].performer.function.coding.system
* group.element[27].target.display = "= \"http://terminology.hl7.org/CodeSystem/v2-0443\""
* group.element[27].target.dependsOn[0].property = "Computable-ANTLR"
* group.element[27].target.dependsOn[0].system = "http://hl7.org/fhir/uv/v2mappings/antlr_condition_syntax.html"
* group.element[27].target.dependsOn[0].value = "IF PRT-4.1 EQUALS \"OP\" AND PRT-4.3 EQUALS \"HL70443\""
* group.element[27].target.dependsOn[0].display = "IF PRT-4.1 EQUALS \"OP\" AND PRT-4.3 EQUALS \"HL70443\""
* group.element[27].target.dependsOn[1].property = "Computable-FHIRPath"
* group.element[27].target.dependsOn[1].system = "http://hl7.org/fhirpath/N1"
* group.element[27].target.dependsOn[1].value = "IF PRT-4.1 EQUALS \"OP\" AND PRT-4.3 EQUALS \"HL70443\""
* group.element[27].target.dependsOn[1].display = "IF PRT-4.1 EQUALS \"OP\" AND PRT-4.3 EQUALS \"HL70443\""
* group.element[28].code = #VXU_V04.ORDER.PRT
* group.element[28].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[28].extension[0].extension[0].url = "cardinalityMin"
* group.element[28].extension[0].extension[0].valueInteger = 0
* group.element[28].extension[0].extension[1].url = "cardinalityMax"
* group.element[28].extension[0].extension[1].valueInteger = -1
* group.element[28].display = "Participation (for ORC)"
* group.element[28].target.equivalence = #equivalent
* group.element[28].target.code = #PractitionerRole[3]
* group.element[28].target.display = "PractitionerRole[3]"
* group.element[28].target.dependsOn[0].property = "Computable-ANTLR"
* group.element[28].target.dependsOn[0].system = "http://hl7.org/fhir/uv/v2mappings/antlr_condition_syntax.html"
* group.element[28].target.dependsOn[0].value = "IF PRT-4.1 EQUALS \"AP\" AND PRT-4.3 EQUALS \"HL70443\""
* group.element[28].target.dependsOn[0].display = "IF PRT-4.1 EQUALS \"AP\" AND PRT-4.3 EQUALS \"HL70443\""
* group.element[28].target.dependsOn[1].property = "Computable-FHIRPath"
* group.element[28].target.dependsOn[1].system = "http://hl7.org/fhirpath/N1"
* group.element[28].target.dependsOn[1].value = "IF PRT-4.1 EQUALS \"AP\" AND PRT-4.3 EQUALS \"HL70443\""
* group.element[28].target.dependsOn[1].display = "IF PRT-4.1 EQUALS \"AP\" AND PRT-4.3 EQUALS \"HL70443\""
* group.element[29].code = #VXU_V04.ORDER.PRT
* group.element[29].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[29].extension[0].extension[0].url = "cardinalityMin"
* group.element[29].extension[0].extension[0].valueInteger = 0
* group.element[29].extension[0].extension[1].url = "cardinalityMax"
* group.element[29].extension[0].extension[1].valueInteger = -1
* group.element[29].display = "Participation (for ORC)"
* group.element[29].target.equivalence = #equivalent
* group.element[29].target.code = #Immunization[1].performer.function.coding.code
* group.element[29].target.display = "= \"AP'\""
* group.element[29].target.dependsOn[0].property = "Computable-ANTLR"
* group.element[29].target.dependsOn[0].system = "http://hl7.org/fhir/uv/v2mappings/antlr_condition_syntax.html"
* group.element[29].target.dependsOn[0].value = "IF PRT-4.1 EQUALS \"AP\" AND PRT-4.3 EQUALS \"HL70443\""
* group.element[29].target.dependsOn[0].display = "IF PRT-4.1 EQUALS \"AP\" AND PRT-4.3 EQUALS \"HL70443\""
* group.element[29].target.dependsOn[1].property = "Computable-FHIRPath"
* group.element[29].target.dependsOn[1].system = "http://hl7.org/fhirpath/N1"
* group.element[29].target.dependsOn[1].value = "IF PRT-4.1 EQUALS \"AP\" AND PRT-4.3 EQUALS \"HL70443\""
* group.element[29].target.dependsOn[1].display = "IF PRT-4.1 EQUALS \"AP\" AND PRT-4.3 EQUALS \"HL70443\""
* group.element[30].code = #VXU_V04.ORDER.PRT
* group.element[30].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[30].extension[0].extension[0].url = "cardinalityMin"
* group.element[30].extension[0].extension[0].valueInteger = 0
* group.element[30].extension[0].extension[1].url = "cardinalityMax"
* group.element[30].extension[0].extension[1].valueInteger = -1
* group.element[30].display = "Participation (for ORC)"
* group.element[30].target.equivalence = #equivalent
* group.element[30].target.code = #Immunization[1].performer.function.coding.system
* group.element[30].target.display = "= \"http://terminology.hl7.org/CodeSystem/v2-0443\""
* group.element[30].target.dependsOn[0].property = "Computable-ANTLR"
* group.element[30].target.dependsOn[0].system = "http://hl7.org/fhir/uv/v2mappings/antlr_condition_syntax.html"
* group.element[30].target.dependsOn[0].value = "IF PRT-4.1 EQUALS \"AP\" AND PRT-4.3 EQUALS \"HL70443\""
* group.element[30].target.dependsOn[0].display = "IF PRT-4.1 EQUALS \"AP\" AND PRT-4.3 EQUALS \"HL70443\""
* group.element[30].target.dependsOn[1].property = "Computable-FHIRPath"
* group.element[30].target.dependsOn[1].system = "http://hl7.org/fhirpath/N1"
* group.element[30].target.dependsOn[1].value = "IF PRT-4.1 EQUALS \"AP\" AND PRT-4.3 EQUALS \"HL70443\""
* group.element[30].target.dependsOn[1].display = "IF PRT-4.1 EQUALS \"AP\" AND PRT-4.3 EQUALS \"HL70443\""
* group.element[31].code = #VXU_V04.ORDER.RXA
* group.element[31].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[31].extension[0].extension[0].url = "cardinalityMin"
* group.element[31].extension[0].extension[0].valueInteger = 1
* group.element[31].extension[0].extension[1].url = "cardinalityMax"
* group.element[31].extension[0].extension[1].valueInteger = 1
* group.element[31].display = "Pharmacy Administration Segment"
* group.element[31].target.equivalence = #equivalent
* group.element[31].target.code = #Immunization[1]
* group.element[31].target.display = "Immunization[1]"
* group.element[31].target.comment = "Incorporate RXA content into the Immunization created from the ORC segment in the same segment group."
* group.element[32].code = #VXU_V04.ORDER.RXR
* group.element[32].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[32].extension[0].extension[0].url = "cardinalityMin"
* group.element[32].extension[0].extension[0].valueInteger = 0
* group.element[32].extension[0].extension[1].url = "cardinalityMax"
* group.element[32].extension[0].extension[1].valueInteger = 1
* group.element[32].display = "Pharmacy Route"
* group.element[32].target.equivalence = #equivalent
* group.element[32].target.code = #Immunization[1]
* group.element[32].target.display = "Immunization[1]"
* group.element[32].target.comment = "Incorporate RXR content into the Immunization created from the ORC segment in the same segment group."
* group.element[33].code = #VXU_V04.ORDER.OBSERVATION.OBX
* group.element[33].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[33].extension[0].extension[0].url = "cardinalityMin"
* group.element[33].extension[0].extension[0].valueInteger = 1
* group.element[33].extension[0].extension[1].url = "cardinalityMax"
* group.element[33].extension[0].extension[1].valueInteger = 1
* group.element[33].display = "Observation/Result"
* group.element[33].target.equivalence = #equivalent
* group.element[33].target.code = #Observation[2]
* group.element[33].target.display = "Observation[2]"
* group.element[33].target.dependsOn[0].property = "Computable-ANTLR"
* group.element[33].target.dependsOn[0].system = "http://hl7.org/fhir/uv/v2mappings/antlr_condition_syntax.html"
* group.element[33].target.dependsOn[0].value = "IF OBX-5 LST.count LESS THAN OR EQUALS 1 AND OBX-2 IS \"NA\""
* group.element[33].target.dependsOn[0].display = "IF OBX-5 LST.count LESS THAN OR EQUALS 1 AND OBX-2 IS \"NA\""
* group.element[34].code = #VXU_V04.ORDER.OBSERVATION.OBX
* group.element[34].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[34].extension[0].extension[0].url = "cardinalityMin"
* group.element[34].extension[0].extension[0].valueInteger = 1
* group.element[34].extension[0].extension[1].url = "cardinalityMax"
* group.element[34].extension[0].extension[1].valueInteger = 1
* group.element[34].display = "Observation/Result"
* group.element[34].target.equivalence = #equivalent
* group.element[34].target.code = #Observation[2]
* group.element[34].target.display = "Observation[2]"
* group.element[34].target.dependsOn[0].property = "Computable-ANTLR"
* group.element[34].target.dependsOn[0].system = "http://hl7.org/fhir/uv/v2mappings/antlr_condition_syntax.html"
* group.element[34].target.dependsOn[0].value = "IF OBX-5 LST.count GREATER THAN 1 AND OBX-2 IS NOT \"NA\""
* group.element[34].target.dependsOn[0].display = "IF OBX-5 LST.count GREATER THAN 1 AND OBX-2 IS NOT \"NA\""
* group.element[35].code = #VXU_V04.ORDER.OBSERVATION.PRT
* group.element[35].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[35].extension[0].extension[0].url = "cardinalityMin"
* group.element[35].extension[0].extension[0].valueInteger = 0
* group.element[35].extension[0].extension[1].url = "cardinalityMax"
* group.element[35].extension[0].extension[1].valueInteger = -1
* group.element[35].display = "Participation (for Observation)"
* group.element[35].target.equivalence = #equivalent
* group.element[35].target.code = #Device[2]
* group.element[35].target.display = "Device[2]"
* group.element[35].target.dependsOn[0].property = "Computable-ANTLR"
* group.element[35].target.dependsOn[0].system = "http://hl7.org/fhir/uv/v2mappings/antlr_condition_syntax.html"
* group.element[35].target.dependsOn[0].value = "IF PRT-10 VALUED"
* group.element[35].target.dependsOn[0].display = "IF PRT-10 VALUED"
* group.element[36].code = #VXU_V04.ORDER.OBSERVATION.PRT
* group.element[36].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[36].extension[0].extension[0].url = "cardinalityMin"
* group.element[36].extension[0].extension[0].valueInteger = 0
* group.element[36].extension[0].extension[1].url = "cardinalityMax"
* group.element[36].extension[0].extension[1].valueInteger = -1
* group.element[36].display = "Participation (for Observation)"
* group.element[36].target.equivalence = #equivalent
* group.element[36].target.code = #Observation[2]
* group.element[36].target.display = "Observation[2]"
* group.element[36].target.dependsOn[0].property = "Computable-ANTLR"
* group.element[36].target.dependsOn[0].system = "http://hl7.org/fhir/uv/v2mappings/antlr_condition_syntax.html"
* group.element[36].target.dependsOn[0].value = "IF PRT-9 VALUED OR IF PRT-14 VALUED"
* group.element[36].target.dependsOn[0].display = "IF PRT-9 VALUED OR IF PRT-14 VALUED"
* group.element[37].code = #VXU_V04.ORDER.OBSERVATION.PRT
* group.element[37].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[37].extension[0].extension[0].url = "cardinalityMin"
* group.element[37].extension[0].extension[0].valueInteger = 0
* group.element[37].extension[0].extension[1].url = "cardinalityMax"
* group.element[37].extension[0].extension[1].valueInteger = -1
* group.element[37].display = "Participation (for Observation)"
* group.element[37].target.equivalence = #equivalent
* group.element[37].target.code = #PractitionerRole[4]
* group.element[37].target.display = "PractitionerRole[4]"
* group.element[37].target.dependsOn[0].property = "Computable-ANTLR"
* group.element[37].target.dependsOn[0].system = "http://hl7.org/fhir/uv/v2mappings/antlr_condition_syntax.html"
* group.element[37].target.dependsOn[0].value = "IF PRT-5 VALUED"
* group.element[37].target.dependsOn[0].display = "IF PRT-5 VALUED"
* group.element[38].code = #VXU_V04.ORDER.OBSERVATION.NTE
* group.element[38].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[38].extension[0].extension[0].url = "cardinalityMin"
* group.element[38].extension[0].extension[0].valueInteger = 0
* group.element[38].extension[0].extension[1].url = "cardinalityMax"
* group.element[38].extension[0].extension[1].valueInteger = -1
* group.element[38].display = "Notes (Regarding Immunization)"
* group.element[38].target.equivalence = #equivalent
* group.element[38].target.code = #Observation[2].note
* group.element[38].target.display = "Observation[2].note"
