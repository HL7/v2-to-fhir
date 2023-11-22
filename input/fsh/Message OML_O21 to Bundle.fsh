// HL7 Message - FHIR R4_ OML_O21 - Sheet1.csv
Instance: MessageOML_O21ToBundle
InstanceOf: ConceptMap
Title: "Message OML_O21 to Bundle Map"
* title = "Message OML_O21 to Bundle Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Message OML_O21 to the FHIR Message Bundle."
* id = "message-oml-o21-to-bundle"
* url = "http://hl7.org/fhir/uv/v2mappings/message-oml-o21-to-bundle"
* version = "1.0"
* name = "MessageOML_O21ToBundle"
* status = #active
* experimental = true
* date = "2023-11-22"
* publisher = "HL7 International, Inc"
* contact.telecom.system = #email
* contact.telecom.value = "v2-to-fhir@lists.hl7.org"
* copyright = "Copyright (c) 2020, HL7 International, Inc., All Rights Reserved."
* sourceUri = "OML_O21"
* targetUri = "Bundle"
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Message OML:O21 to Bundle.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/1cSYLIXVfIjl7ib2DEGxD96LD9-YVJNQtKul5IwzJtts/edit#gid=0"
* group.element[0].code = #OML_O21.MSH
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
* group.element[1].code = #OML_O21.MSH
* group.element[1].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[1].extension[0].extension[0].url = "cardinalityMin"
* group.element[1].extension[0].extension[0].valueInteger = 1
* group.element[1].extension[0].extension[1].url = "cardinalityMax"
* group.element[1].extension[0].extension[1].valueInteger = 1
* group.element[1].display = "Message Header"
* group.element[1].target.equivalence = #equivalent
* group.element[1].target.code = #MessageHeader[1]
* group.element[1].target.display = "MessageHeader[1]"
* group.element[1].target.comment = "Processing of the MSH segment results in the creation of a new MessageHeader resource"
* group.element[1].target.dependsOn[0].property = "segment-map"
* group.element[1].target.dependsOn[0].value = "MSH[MessageHeader]"
* group.element[2].code = #OML_O21.MSH
* group.element[2].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[2].extension[0].extension[0].url = "cardinalityMin"
* group.element[2].extension[0].extension[0].valueInteger = 1
* group.element[2].extension[0].extension[1].url = "cardinalityMax"
* group.element[2].extension[0].extension[1].valueInteger = 1
* group.element[2].display = "Message Header"
* group.element[2].target.equivalence = #equivalent
* group.element[2].target.code = #Provenance[1]
* group.element[2].target.display = "Provenance[1]"
* group.element[2].target.comment = "If the FHIR transformation does not yield a FHIR message, but only a set of resource (APIs, repository, etc.) than one should consider attaching this Provenance resource instance to the relevant FHIR resources generated."
* group.element[2].target.dependsOn[0].property = "segment-map"
* group.element[2].target.dependsOn[0].value = "MSH[Provenance-Source]"
* group.element[2].target.dependsOn[1].property = "references"
* group.element[2].target.dependsOn[1].value = "Provenance[1].target.reference=Bundle.id; Provenance[1].target.reference=MessageHeader[1].id"
* group.element[2].target.product[0].property = "narrative"
* group.element[2].target.product[0].value = "If there is a source in MSH-4, or known based on the configuration."
* group.element[3].code = #OML_O21.MSH
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
* group.element[4].code = #OML_O21.SFT
* group.element[4].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[4].extension[0].extension[0].url = "cardinalityMin"
* group.element[4].extension[0].extension[0].valueInteger = 0
* group.element[4].extension[0].extension[1].url = "cardinalityMax"
* group.element[4].extension[0].extension[1].valueInteger = -1
* group.element[4].display = "Software"
* group.element[4].target.equivalence = #equivalent
* group.element[4].target.code = #MessageHeader[1]
* group.element[4].target.display = "MessageHeader[1]"
* group.element[4].target.comment = "Incorporate SFT content for each of the SFT instances into the MessageHeader created from the MSH segment."
* group.element[4].target.dependsOn[0].property = "segment-map"
* group.element[4].target.dependsOn[0].value = "SFT[MessageHeader]"
* group.element[5].code = #OML_O21.PATIENT.PID
* group.element[5].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[5].extension[0].extension[0].url = "cardinalityMin"
* group.element[5].extension[0].extension[0].valueInteger = 1
* group.element[5].extension[0].extension[1].url = "cardinalityMax"
* group.element[5].extension[0].extension[1].valueInteger = 1
* group.element[5].display = "Patient Identification"
* group.element[5].target.equivalence = #equivalent
* group.element[5].target.code = #Patient[1]
* group.element[5].target.display = "Patient[1]"
* group.element[5].target.comment = "Processing of the PID segment results in the creation of a new Patient resource"
* group.element[5].target.dependsOn[0].property = "segment-map"
* group.element[5].target.dependsOn[0].value = "PID[Patient]"
* group.element[6].code = #OML_O21.PATIENT.PID
* group.element[6].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[6].extension[0].extension[0].url = "cardinalityMin"
* group.element[6].extension[0].extension[0].valueInteger = 1
* group.element[6].extension[0].extension[1].url = "cardinalityMax"
* group.element[6].extension[0].extension[1].valueInteger = 1
* group.element[6].display = "Patient Identification"
* group.element[6].target.equivalence = #equivalent
* group.element[6].target.code = #Provenance[4]
* group.element[6].target.display = "Provenance[4]"
* group.element[6].target.dependsOn[0].property = "segment-map"
* group.element[6].target.dependsOn[0].value = "PID[Provenance-Patient]"
* group.element[6].target.dependsOn[1].property = "references"
* group.element[6].target.dependsOn[1].value = "Provenance.target.reference=Patient[1].id"
* group.element[6].target.product[0].property = "antlr"
* group.element[6].target.product[0].value = "IF PID-33 AND PID-34 VALUED"
* group.element[6].target.product[1].property = "narrative"
* group.element[6].target.product[1].value = "One  may drop PID-33 from the condition if PID-34 Last Update Facility is still sufficient without a date."
* group.element[7].code = #OML_O21.PATIENT.PD1
* group.element[7].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[7].extension[0].extension[0].url = "cardinalityMin"
* group.element[7].extension[0].extension[0].valueInteger = 0
* group.element[7].extension[0].extension[1].url = "cardinalityMax"
* group.element[7].extension[0].extension[1].valueInteger = 1
* group.element[7].display = "Additional Demographics"
* group.element[7].target.equivalence = #equivalent
* group.element[7].target.code = #Patient[1]
* group.element[7].target.display = "Patient[1]"
* group.element[7].target.comment = "Incorporate PD1 content into the Patient created from the PID segment."
* group.element[7].target.dependsOn[0].property = "segment-map"
* group.element[7].target.dependsOn[0].value = "PD1[Patient]"
* group.element[8].code = #OML_O21.PATIENT.PRT
* group.element[8].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[8].extension[0].extension[0].url = "cardinalityMin"
* group.element[8].extension[0].extension[0].valueInteger = 0
* group.element[8].extension[0].extension[1].url = "cardinalityMax"
* group.element[8].extension[0].extension[1].valueInteger = -1
* group.element[8].display = "Participation (for Patient)"
* group.element[8].target.equivalence = #equivalent
* group.element[8].target.code = #PractitionerRole[1]
* group.element[8].target.display = "PractitionerRole[1]"
* group.element[8].target.comment = "Incorporate PRT content into the Patient created from the PID segment when the PRT contains practitioner related data."
* group.element[8].target.dependsOn[0].property = "segment-map"
* group.element[8].target.dependsOn[0].value = "PRT[PractitionerRole]"
* group.element[8].target.dependsOn[1].property = "references"
* group.element[8].target.dependsOn[1].value = "Patient[1].generalPractitioner.reference=PractitionerRole[1].id"
* group.element[8].target.product[0].property = "antlr"
* group.element[8].target.product[0].value = "IF PRT-4.1 EQUALS \"PP\" AND PRT-4.3 EQUALS \"HL70443\""
* group.element[8].target.product[1].property = "fhirpath"
* group.element[8].target.product[1].value = "(element(\"4.1\")=\"PP\")and(element(\"4.3\")=\"HL70443\")"
* group.element[9].code = #OML_O21.PATIENT.PRT
* group.element[9].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[9].extension[0].extension[0].url = "cardinalityMin"
* group.element[9].extension[0].extension[0].valueInteger = 0
* group.element[9].extension[0].extension[1].url = "cardinalityMax"
* group.element[9].extension[0].extension[1].valueInteger = -1
* group.element[9].display = "Participation (for Patient)"
* group.element[9].target.equivalence = #equivalent
* group.element[9].target.code = #RelatedPerson[1]
* group.element[9].target.display = "RelatedPerson[1]"
* group.element[9].target.dependsOn[0].property = "segment-map"
* group.element[9].target.dependsOn[0].value = "PRT[RelatedPerson]"
* group.element[9].target.dependsOn[1].property = "references"
* group.element[9].target.dependsOn[1].value = "RelatedPerson[1].patient.reference=Patient[1].id"
* group.element[9].target.product[0].property = "antlr"
* group.element[9].target.product[0].value = "IF PRT-4.1 NOT EQUALS \"PP\" OR PRT-4.3 NOT EQUALS \"HL70443\""
* group.element[9].target.product[1].property = "fhirpath"
* group.element[9].target.product[1].value = "(element(\"4.1\"!)=\"PP\")or(element(\"4.3\")!=\"HL70443\")"
* group.element[10].code = #OML_O21.PATIENT.NK1
* group.element[10].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[10].extension[0].extension[0].url = "cardinalityMin"
* group.element[10].extension[0].extension[0].valueInteger = 0
* group.element[10].extension[0].extension[1].url = "cardinalityMax"
* group.element[10].extension[0].extension[1].valueInteger = -1
* group.element[10].display = "Next of Kin/Associated Parties"
* group.element[10].target.equivalence = #equivalent
* group.element[10].target.code = #RelatedPerson[2]
* group.element[10].target.display = "RelatedPerson[2]"
* group.element[10].target.comment = "Typically, each NK1 will be translated to either a new RelatedPerson resource or added as a new occurrence of Patient.contact, but it's possible to insert the NK1 data into both structures."
* group.element[10].target.dependsOn[0].property = "segment-map"
* group.element[10].target.dependsOn[0].value = "NK1[RelatedPerson]"
* group.element[10].target.dependsOn[1].property = "references"
* group.element[10].target.dependsOn[1].value = "RelatedPerson[2].patient.reference=Patient[1].id"
* group.element[10].target.product[0].property = "narrative"
* group.element[10].target.product[0].value = "The FHIR location will depend on the nature of the data being exchanged and how the systems use next of kin data"
* group.element[11].code = #OML_O21.PATIENT.NK1
* group.element[11].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[11].extension[0].extension[0].url = "cardinalityMin"
* group.element[11].extension[0].extension[0].valueInteger = 0
* group.element[11].extension[0].extension[1].url = "cardinalityMax"
* group.element[11].extension[0].extension[1].valueInteger = -1
* group.element[11].display = "Next of Kin/Associated Parties"
* group.element[11].target.equivalence = #equivalent
* group.element[11].target.code = #Patient[1]
* group.element[11].target.display = "Patient[1]"
* group.element[11].target.comment = "Typically, each NK1 will be translated to either a new RelatedPerson resource or added as a new occurrence of Patient.contact, but it's possible to insert the NK1 data into both structures."
* group.element[11].target.dependsOn[0].property = "segment-map"
* group.element[11].target.dependsOn[0].value = "NK1[Patient]"
* group.element[11].target.product[0].property = "narrative"
* group.element[11].target.product[0].value = "The FHIR location will depend on the nature of the data being exchanged and how the systems use next of kin data"
* group.element[12].code = #OML_O21.PATIENT.PATIENT_VISIT.PV1
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
* group.element[12].target.dependsOn[0].property = "segment-map"
* group.element[12].target.dependsOn[0].value = "PV1[Encounter]"
* group.element[12].target.dependsOn[1].property = "references"
* group.element[12].target.dependsOn[1].value = "Encounter.subject=Patient[PID]"
* group.element[13].code = #OML_O21.PATIENT.PATIENT_VISIT.PV1
* group.element[13].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[13].extension[0].extension[0].url = "cardinalityMin"
* group.element[13].extension[0].extension[0].valueInteger = 1
* group.element[13].extension[0].extension[1].url = "cardinalityMax"
* group.element[13].extension[0].extension[1].valueInteger = 1
* group.element[13].display = "Patient Visit"
* group.element[13].target.equivalence = #equivalent
* group.element[13].target.code = #Patient[1]
* group.element[13].target.display = "Patient[1]"
* group.element[13].target.dependsOn[0].property = "segment-map"
* group.element[13].target.dependsOn[0].value = "PV1[Patient]"
* group.element[14].code = #OML_O21.PATIENT.PATIENT_VISIT.PV2
* group.element[14].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[14].extension[0].extension[0].url = "cardinalityMin"
* group.element[14].extension[0].extension[0].valueInteger = 0
* group.element[14].extension[0].extension[1].url = "cardinalityMax"
* group.element[14].extension[0].extension[1].valueInteger = 1
* group.element[14].display = "Patient Visit- Additional Info"
* group.element[14].target.equivalence = #equivalent
* group.element[14].target.code = #Encounter[1]
* group.element[14].target.display = "Encounter[1]"
* group.element[14].target.comment = "Incorporate PV2 content into the Encounter created from the PV1 segment."
* group.element[14].target.dependsOn[0].property = "segment-map"
* group.element[14].target.dependsOn[0].value = "PV2[Encounter]"
* group.element[15].code = #OML_O21.PATIENT.PATIENT_VISIT.PRT
* group.element[15].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[15].extension[0].extension[0].url = "cardinalityMin"
* group.element[15].extension[0].extension[0].valueInteger = 0
* group.element[15].extension[0].extension[1].url = "cardinalityMax"
* group.element[15].extension[0].extension[1].valueInteger = -1
* group.element[15].display = "Participation (for Patient Visit)"
* group.element[15].target.equivalence = #equivalent
* group.element[15].target.code = #PractitionerRole[2]
* group.element[15].target.display = "PractitionerRole[2]"
* group.element[15].target.comment = "Incorporate PRT content into the Encounter created from the PV1 segment."
* group.element[15].target.dependsOn[0].property = "segment-map"
* group.element[15].target.dependsOn[0].value = "PRT[PractitionerRole]"
* group.element[15].target.dependsOn[1].property = "references"
* group.element[15].target.dependsOn[1].value = "Encounter[1].participant.individual.reference=PractitionerRole[2].id"
* group.element[16].code = #OML_O21.PATIENT.INSURANCE.IN1
* group.element[16].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[16].extension[0].extension[0].url = "cardinalityMin"
* group.element[16].extension[0].extension[0].valueInteger = 1
* group.element[16].extension[0].extension[1].url = "cardinalityMax"
* group.element[16].extension[0].extension[1].valueInteger = 1
* group.element[16].display = "Insurance"
* group.element[16].target.equivalence = #equivalent
* group.element[16].target.code = #Coverage[1]
* group.element[16].target.display = "Coverage[1]"
* group.element[16].target.comment = "Processing of the IN1 segment results in the creation of a new Coverage resource"
* group.element[16].target.dependsOn[0].property = "segment-map"
* group.element[16].target.dependsOn[0].value = "IN1[Coverage]"
* group.element[16].target.dependsOn[1].property = "references"
* group.element[16].target.dependsOn[1].value = "Coverage.subscriber=Patient[PID]"
* group.element[17].code = #OML_O21.PATIENT.INSURANCE.IN3
* group.element[17].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[17].extension[0].extension[0].url = "cardinalityMin"
* group.element[17].extension[0].extension[0].valueInteger = 0
* group.element[17].extension[0].extension[1].url = "cardinalityMax"
* group.element[17].extension[0].extension[1].valueInteger = 1
* group.element[17].display = "Insurance Additional Information, Certification"
* group.element[17].target.equivalence = #equivalent
* group.element[17].target.code = #Coverage[1]
* group.element[17].target.display = "Coverage[1]"
* group.element[17].target.dependsOn[0].property = "segment-map"
* group.element[17].target.dependsOn[0].value = "IN3[CareTeam]"
* group.element[18].code = #OML_O21.PATIENT.AL1
* group.element[18].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[18].extension[0].extension[0].url = "cardinalityMin"
* group.element[18].extension[0].extension[0].valueInteger = 0
* group.element[18].extension[0].extension[1].url = "cardinalityMax"
* group.element[18].extension[0].extension[1].valueInteger = -1
* group.element[18].display = "Allergy Information"
* group.element[18].target.equivalence = #equivalent
* group.element[18].target.code = #AllergyIntolerance
* group.element[18].target.display = "AllergyIntolerance"
* group.element[18].target.comment = "Processing of the AL1 segment results in the creation of a new AllergyIntolerance resource"
* group.element[18].target.dependsOn[0].property = "segment-map"
* group.element[18].target.dependsOn[0].value = "AL1[AllergyIntolerance]"
* group.element[18].target.dependsOn[1].property = "references"
* group.element[18].target.dependsOn[1].value = "AllergyIntolerance.patient=Patient[PID]"
* group.element[19].code = #OML_O21.ORDER.ORC
* group.element[19].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[19].extension[0].extension[0].url = "cardinalityMin"
* group.element[19].extension[0].extension[0].valueInteger = 1
* group.element[19].extension[0].extension[1].url = "cardinalityMax"
* group.element[19].extension[0].extension[1].valueInteger = 1
* group.element[19].display = "Common Order"
* group.element[19].target.equivalence = #equivalent
* group.element[19].target.code = #ServiceRequest[1]
* group.element[19].target.display = "ServiceRequest[1]"
* group.element[19].target.comment = "Processing of each ORC segment results in the creation of a new ServiceRequest resource"
* group.element[19].target.dependsOn[0].property = "segment-map"
* group.element[19].target.dependsOn[0].value = "ORC[ServiceRequest]"
* group.element[19].target.dependsOn[1].property = "references"
* group.element[19].target.dependsOn[1].value = "ServiceRequest.subject=Patient[PID]"
* group.element[20].code = #OML_O21.ORDER.ORC
* group.element[20].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[20].extension[0].extension[0].url = "cardinalityMin"
* group.element[20].extension[0].extension[0].valueInteger = 1
* group.element[20].extension[0].extension[1].url = "cardinalityMax"
* group.element[20].extension[0].extension[1].valueInteger = 1
* group.element[20].display = "Common Order"
* group.element[20].target.equivalence = #equivalent
* group.element[20].target.code = #Provenance[3]
* group.element[20].target.display = "Provenance[3]"
* group.element[20].target.comment = "Using Provenance is the preferred way, but a local implementation may decide to add extensions to the main resource.  As the use and guidance of Provenance matures we wil revisit this later."
* group.element[20].target.dependsOn[0].property = "segment-map"
* group.element[20].target.dependsOn[0].value = "ORC[Provenance]"
* group.element[20].target.dependsOn[1].property = "references"
* group.element[20].target.dependsOn[1].value = "Provenance.target=ServiceRequest[ORC]"
* group.element[21].code = #OML_O21.ORDER.PRT
* group.element[21].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[21].extension[0].extension[0].url = "cardinalityMin"
* group.element[21].extension[0].extension[0].valueInteger = 0
* group.element[21].extension[0].extension[1].url = "cardinalityMax"
* group.element[21].extension[0].extension[1].valueInteger = -1
* group.element[21].display = "Participation (for Common Order)"
* group.element[21].target.equivalence = #equivalent
* group.element[21].target.code = #PractitionerRole[3]
* group.element[21].target.display = "PractitionerRole[3]"
* group.element[21].target.dependsOn[0].property = "segment-map"
* group.element[21].target.dependsOn[0].value = "PRT[PractitionerRole]"
* group.element[21].target.dependsOn[1].property = "references"
* group.element[21].target.dependsOn[1].value = "ServiceRequest[1].requester.reference=PractitionerRole[3].id"
* group.element[21].target.product[0].property = "antlr"
* group.element[21].target.product[0].value = "IF PRT-4.1 EQUALS \"OP\" AND PRT-4.3 EQUALS \"HL70443\""
* group.element[21].target.product[1].property = "fhirpath"
* group.element[21].target.product[1].value = "(element(\"4.1\")=\"OP\")and(element(\"4.3\")=\"HL70443\")"
* group.element[22].code = #OML_O21.ORDER.TIMING.TQ1
* group.element[22].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[22].extension[0].extension[0].url = "cardinalityMin"
* group.element[22].extension[0].extension[0].valueInteger = 1
* group.element[22].extension[0].extension[1].url = "cardinalityMax"
* group.element[22].extension[0].extension[1].valueInteger = 1
* group.element[22].display = "Timing/Quantity"
* group.element[22].target.equivalence = #equivalent
* group.element[22].target.code = #ServiceRequest[1]
* group.element[22].target.display = "ServiceRequest[1]"
* group.element[22].target.dependsOn[0].property = "segment-map"
* group.element[22].target.dependsOn[0].value = "TQ1[ServiceRequest]"
* group.element[23].code = #OML_O21.ORDER.OBSERVATION_REQUEST.OBR
* group.element[23].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[23].extension[0].extension[0].url = "cardinalityMin"
* group.element[23].extension[0].extension[0].valueInteger = 1
* group.element[23].extension[0].extension[1].url = "cardinalityMax"
* group.element[23].extension[0].extension[1].valueInteger = 1
* group.element[23].display = "Observation Request"
* group.element[23].target.equivalence = #equivalent
* group.element[23].target.code = #ServiceRequest[1]
* group.element[23].target.display = "ServiceRequest[1]"
* group.element[23].target.comment = "Incorporate OBR content into the ServiceRequest created from the ORC segment in the same segment group."
* group.element[23].target.dependsOn[0].property = "segment-map"
* group.element[23].target.dependsOn[0].value = "OBR[ServiceRequest]"
* group.element[24].code = #OML_O21.ORDER.OBSERVATION_REQUEST.OBR
* group.element[24].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[24].extension[0].extension[0].url = "cardinalityMin"
* group.element[24].extension[0].extension[0].valueInteger = 1
* group.element[24].extension[0].extension[1].url = "cardinalityMax"
* group.element[24].extension[0].extension[1].valueInteger = 1
* group.element[24].display = "Observation Request"
* group.element[24].target.equivalence = #equivalent
* group.element[24].target.code = #Specimen[each]
* group.element[24].target.display = "Specimen[each]"
* group.element[24].target.dependsOn[0].property = "segment-map"
* group.element[24].target.dependsOn[0].value = "OBR[Specimen]"
* group.element[25].code = #OML_O21.ORDER.OBSERVATION_REQUEST.NTE
* group.element[25].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[25].extension[0].extension[0].url = "cardinalityMin"
* group.element[25].extension[0].extension[0].valueInteger = 0
* group.element[25].extension[0].extension[1].url = "cardinalityMax"
* group.element[25].extension[0].extension[1].valueInteger = -1
* group.element[25].display = "Notes and Comments (for Detail)"
* group.element[25].target.equivalence = #equivalent
* group.element[25].target.code = #ServiceRequest[1]
* group.element[25].target.display = "ServiceRequest[1]"
* group.element[25].target.dependsOn[0].property = "segment-map"
* group.element[25].target.dependsOn[0].value = "NTE[ServiceRequest]"
* group.element[26].code = #OML_O21.ORDER.OBSERVATION_REQUEST.PRT
* group.element[26].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[26].extension[0].extension[0].url = "cardinalityMin"
* group.element[26].extension[0].extension[0].valueInteger = 0
* group.element[26].extension[0].extension[1].url = "cardinalityMax"
* group.element[26].extension[0].extension[1].valueInteger = -1
* group.element[26].display = "Participation (for Observation Request)"
* group.element[26].target.equivalence = #equivalent
* group.element[26].target.code = #PractitionerRole[4]
* group.element[26].target.display = "PractitionerRole[4]"
* group.element[26].target.dependsOn[0].property = "segment-map"
* group.element[26].target.dependsOn[0].value = "PRT[PractitionerRole]"
* group.element[26].target.dependsOn[1].property = "references"
* group.element[26].target.dependsOn[1].value = "ServiceRequest[1].specimen[1](Specimen.collection.collector.reference)=PractitionerRole[4].id"
* group.element[26].target.product[0].property = "antlr"
* group.element[26].target.product[0].value = "IF PRT-4.1 EQUALS \"SC\" AND PRT-4.3 EQUALS \"HL70443\""
* group.element[26].target.product[1].property = "fhirpath"
* group.element[26].target.product[1].value = "(element(\"4.1\")=\"SC\")and(element(\"4.3\")=\"HL70443\")"
* group.element[27].code = #OML_O21.ORDER.OBSERVATION_REQUEST.PRT
* group.element[27].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[27].extension[0].extension[0].url = "cardinalityMin"
* group.element[27].extension[0].extension[0].valueInteger = 0
* group.element[27].extension[0].extension[1].url = "cardinalityMax"
* group.element[27].extension[0].extension[1].valueInteger = -1
* group.element[27].display = "Participation (for Observation Request)"
* group.element[27].target.equivalence = #equivalent
* group.element[27].target.code = #PractitionerRole[3]
* group.element[27].target.display = "PractitionerRole[3]"
* group.element[27].target.dependsOn[0].property = "segment-map"
* group.element[27].target.dependsOn[0].value = "PRT[PractitionerRole]"
* group.element[27].target.dependsOn[1].property = "references"
* group.element[27].target.dependsOn[1].value = "ServiceRequest[1].requester.reference=PractitionerRole[3].id"
* group.element[27].target.product[0].property = "antlr"
* group.element[27].target.product[0].value = "IF PRT-4.1 EQUALS \"OP\" AND PRT-4.3 EQUALS \"HL70443\""
* group.element[27].target.product[1].property = "fhirpath"
* group.element[27].target.product[1].value = "(element(\"4.1\")=\"OP\")and(element(\"4.3\")=\"HL70443\")"
* group.element[28].code = #OML_O21.ORDER.OBSERVATION_REQUEST.DG1
* group.element[28].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[28].extension[0].extension[0].url = "cardinalityMin"
* group.element[28].extension[0].extension[0].valueInteger = 0
* group.element[28].extension[0].extension[1].url = "cardinalityMax"
* group.element[28].extension[0].extension[1].valueInteger = -1
* group.element[28].display = "Diagnosis"
* group.element[28].target.equivalence = #equivalent
* group.element[28].target.code = #Condition[1]
* group.element[28].target.display = "Condition[1]"
* group.element[28].target.comment = "Processing of the DG1 segment results in the creation of a new Condition resource which is referenced in the ServiceRequest created by the ORC segment"
* group.element[28].target.dependsOn[0].property = "segment-map"
* group.element[28].target.dependsOn[0].value = "DG1[Condition]"
* group.element[28].target.dependsOn[1].property = "references"
* group.element[28].target.dependsOn[1].value = "ServiceRequest[1].reasonReference.reference=Condition[1].id; Condition[1].subject.reference=Patient[1].id"
* group.element[29].code = #OML_O21.ORDER.OBSERVATION_REQUEST.OBSERVATION.OBX
* group.element[29].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[29].extension[0].extension[0].url = "cardinalityMin"
* group.element[29].extension[0].extension[0].valueInteger = 1
* group.element[29].extension[0].extension[1].url = "cardinalityMax"
* group.element[29].extension[0].extension[1].valueInteger = 1
* group.element[29].display = "Observation/Result"
* group.element[29].target.equivalence = #equivalent
* group.element[29].target.code = #Observation[1]
* group.element[29].target.display = "Observation[1]"
* group.element[29].target.dependsOn[0].property = "segment-map"
* group.element[29].target.dependsOn[0].value = "OBX[ServiceRequest.supportingInfo(Observation)-Component]"
* group.element[29].target.dependsOn[1].property = "references"
* group.element[29].target.dependsOn[1].value = "ServiceRequest[1].supportingInfo.reference=Observation[1].id; Observation[1].subject.id=Patient[1].id"
* group.element[29].target.product[0].property = "antlr"
* group.element[29].target.product[0].value = "IF  OBX-5 LST.count GREATER THAN 1"
* group.element[30].code = #OML_O21.ORDER.OBSERVATION_REQUEST.OBSERVATION.OBX
* group.element[30].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[30].extension[0].extension[0].url = "cardinalityMin"
* group.element[30].extension[0].extension[0].valueInteger = 1
* group.element[30].extension[0].extension[1].url = "cardinalityMax"
* group.element[30].extension[0].extension[1].valueInteger = 1
* group.element[30].display = "Observation/Result"
* group.element[30].target.equivalence = #equivalent
* group.element[30].target.code = #Observation[1]
* group.element[30].target.display = "Observation[1]"
* group.element[30].target.dependsOn[0].property = "segment-map"
* group.element[30].target.dependsOn[0].value = "OBX[ServiceRequest.supportingInfo(Observation)]"
* group.element[30].target.dependsOn[1].property = "references"
* group.element[30].target.dependsOn[1].value = "ServiceRequest[1].supportingInfo.reference=Observation[1].id; Observation[1].subject.id=Patient[1].id"
* group.element[30].target.product[0].property = "antlr"
* group.element[30].target.product[0].value = "IF OBX-5 LST.count LESS THAN OR EQUALS 1"
* group.element[31].code = #OML_O21.ORDER.OBSERVATION_REQUEST.OBSERVATION.PRT
* group.element[31].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[31].extension[0].extension[0].url = "cardinalityMin"
* group.element[31].extension[0].extension[0].valueInteger = 0
* group.element[31].extension[0].extension[1].url = "cardinalityMax"
* group.element[31].extension[0].extension[1].valueInteger = -1
* group.element[31].display = "Participation (for OBX)"
* group.element[31].target.equivalence = #equivalent
* group.element[31].target.code = #Device[1]
* group.element[31].target.display = "Device[1]"
* group.element[31].target.dependsOn[0].property = "segment-map"
* group.element[31].target.dependsOn[0].value = "PRT[Device]"
* group.element[31].target.dependsOn[1].property = "references"
* group.element[31].target.dependsOn[1].value = "Observation[2].device.reference=Device.id"
* group.element[31].target.product[0].property = "antlr"
* group.element[31].target.product[0].value = "IF PRT-10 VALUED"
* group.element[32].code = #OML_O21.ORDER.OBSERVATION_REQUEST.OBSERVATION.PRT
* group.element[32].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[32].extension[0].extension[0].url = "cardinalityMin"
* group.element[32].extension[0].extension[0].valueInteger = 0
* group.element[32].extension[0].extension[1].url = "cardinalityMax"
* group.element[32].extension[0].extension[1].valueInteger = -1
* group.element[32].display = "Participation (for OBX)"
* group.element[32].target.equivalence = #equivalent
* group.element[32].target.code = #Observation[1]
* group.element[32].target.display = "Observation[1]"
* group.element[32].target.comment = "Incorporate PRT content into the Observation created from the OBX segment in the same segment group when it represents observation location information."
* group.element[32].target.dependsOn[0].property = "segment-map"
* group.element[32].target.dependsOn[0].value = "PRT[Observation-Location]"
* group.element[32].target.product[0].property = "antlr"
* group.element[32].target.product[0].value = "IF PRT-9 VALUED OR IF PRT-14 VALUED"
* group.element[33].code = #OML_O21.ORDER.OBSERVATION_REQUEST.OBSERVATION.PRT
* group.element[33].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[33].extension[0].extension[0].url = "cardinalityMin"
* group.element[33].extension[0].extension[0].valueInteger = 0
* group.element[33].extension[0].extension[1].url = "cardinalityMax"
* group.element[33].extension[0].extension[1].valueInteger = -1
* group.element[33].display = "Participation (for OBX)"
* group.element[33].target.equivalence = #equivalent
* group.element[33].target.code = #PractitionerRole[7]
* group.element[33].target.display = "PractitionerRole[7]"
* group.element[33].target.comment = "Incorporate PRT content into the Observation created from the OBX segment in the same segment group when it represents observation practitioner information."
* group.element[33].target.dependsOn[0].property = "segment-map"
* group.element[33].target.dependsOn[0].value = "PRT[PractitionerRole]"
* group.element[33].target.dependsOn[1].property = "references"
* group.element[33].target.dependsOn[1].value = "Observation[2].performer.reference=PractitionerRole[7].id"
* group.element[33].target.product[0].property = "antlr"
* group.element[33].target.product[0].value = "IF PRT-5 VALUED"
* group.element[34].code = #OML_O21.ORDER.OBSERVATION_REQUEST.OBSERVATION.NTE
* group.element[34].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[34].extension[0].extension[0].url = "cardinalityMin"
* group.element[34].extension[0].extension[0].valueInteger = 0
* group.element[34].extension[0].extension[1].url = "cardinalityMax"
* group.element[34].extension[0].extension[1].valueInteger = -1
* group.element[34].display = "Notes and Comments (for Results)"
* group.element[34].target.equivalence = #equivalent
* group.element[34].target.code = #Observation[1]
* group.element[34].target.display = "Observation[1]"
* group.element[34].target.dependsOn[0].property = "segment-map"
* group.element[34].target.dependsOn[0].value = "NTE[Observation]"
* group.element[35].code = #OML_O21.ORDER.OBSERVATION_REQUEST.SPECIMEN.SPM
* group.element[35].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group.element[35].extension[0].extension[0].url = "cardinalityMin"
* group.element[35].extension[0].extension[0].valueInteger = 1
* group.element[35].extension[0].extension[1].url = "cardinalityMax"
* group.element[35].extension[0].extension[1].valueInteger = 1
* group.element[35].display = "Specimen"
* group.element[35].target.equivalence = #equivalent
* group.element[35].target.code = #Specimen
* group.element[35].target.display = "Specimen"
* group.element[35].target.dependsOn[0].property = "segment-map"
* group.element[35].target.dependsOn[0].value = "SPM[Specimen]"
* group.element[35].target.dependsOn[1].property = "references"
* group.element[35].target.dependsOn[1].value = "ServiceRequest[1].specimen.reference=Specimen[SPM].id"
