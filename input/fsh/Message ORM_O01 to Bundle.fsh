// HL7 Message - FHIR R4_ ORM_O01 - Sheet1.csv
Instance: MessageORM_O01ToBundle
InstanceOf: ConceptMap
Title: "Message ORM_O01 to Bundle Map"
Usage: #definition
* title = "Message ORM_O01 to Bundle Map"
* description = "This ConceptMap represents a mapping from the HL7 V2 Message ORM_O01 to the FHIR Message Bundle."
* id = "message-orm-o01-to-bundle"
* url = "http://hl7.org/fhir/uv/v2mappings/ConceptMap/message-orm-o01-to-bundle"
* name = "MessageORM_O01ToBundle"
* insert PublicationData
* extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/RelatedArtifact"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCode = #derived-from
* extension[0].extension[1].url = "label"
* extension[0].extension[1].valueString = "Message ORM:O01 to Bundle.fsh"
* extension[0].extension[2].url = "url"
* extension[0].extension[2].valueUri = "https://docs.google.com/spreadsheets/d/19C2jjzXZ8D7Um1iB-e6NmLfZVPvyZNkgwU8IxCJiwGs/edit#gid=0"
* group[0].element[0].code = #ORM_O01.MSH
* group[0].element[0].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[0].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[0].extension[0].extension[0].valueInteger = 1
* group[0].element[0].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[0].extension[0].extension[1].valueInteger = 1
* group[0].element[0].display = "Message Header"
* group[0].element[0].target.equivalence = #equivalent
* group[0].element[0].target.code = #Bundle
* group[0].element[0].target.display = "Bundle"
* group[0].element[1].code = #ORM_O01.MSH
* group[0].element[1].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[1].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[1].extension[0].extension[0].valueInteger = 1
* group[0].element[1].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[1].extension[0].extension[1].valueInteger = 1
* group[0].element[1].display = "Message Header"
* group[0].element[1].target.equivalence = #equivalent
* group[0].element[1].target.code = #MessageHeader[1]
* group[0].element[1].target.display = "MessageHeader[1]"
* group[0].element[1].target.comment = "Processing of the MSH segment results in the creation of a new MessageHeader resource"
* group[0].element[2].code = #ORM_O01.MSH
* group[0].element[2].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[2].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[2].extension[0].extension[0].valueInteger = 1
* group[0].element[2].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[2].extension[0].extension[1].valueInteger = 1
* group[0].element[2].display = "Message Header"
* group[0].element[2].target.equivalence = #equivalent
* group[0].element[2].target.code = #Provenance[1]
* group[0].element[2].target.display = "Provenance[1]"
* group[0].element[2].target.comment = "If the FHIR transformation does not yield a FHIR message, but only a set of resource (APIs, repository, etc.) than one should consider attaching this Provenance resource instance to the relevant FHIR resources generated."
* group[0].element[2].target.dependsOn[0].property = "Narrative-Condition"
* group[0].element[2].target.dependsOn[0].value = "If there is a source in MSH-4, or known based on the configuration."
* group[0].element[3].code = #ORM_O01.MSH
* group[0].element[3].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[3].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[3].extension[0].extension[0].valueInteger = 1
* group[0].element[3].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[3].extension[0].extension[1].valueInteger = 1
* group[0].element[3].display = "Message Header"
* group[0].element[3].target.equivalence = #equivalent
* group[0].element[3].target.code = #Provenance[2]
* group[0].element[3].target.display = "Provenance[2]"
* group[0].element[3].target.comment = "If the FHIR transformation does not yield a FHIR Bunlde, but only a set of resource (APIs, repository, etc.) than one should consider attaching this Provenance resource instance to the relevant FHIR resources generated."
* group[0].element[4].code = #ORM_O01.PATIENT.PID
* group[0].element[4].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[4].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[4].extension[0].extension[0].valueInteger = 1
* group[0].element[4].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[4].extension[0].extension[1].valueInteger = 1
* group[0].element[4].display = "Patient Identification"
* group[0].element[4].target.equivalence = #equivalent
* group[0].element[4].target.code = #Patient[1]
* group[0].element[4].target.display = "Patient[1]"
* group[0].element[4].target.comment = "Processing of the PID segment results in the creation of a new Patient resource"
* group[0].element[5].code = #ORM_O01.PATIENT.PID
* group[0].element[5].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[5].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[5].extension[0].extension[0].valueInteger = 1
* group[0].element[5].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[5].extension[0].extension[1].valueInteger = 1
* group[0].element[5].display = "Patient Identification"
* group[0].element[5].target.equivalence = #equivalent
* group[0].element[5].target.code = #Provenance[4]
* group[0].element[5].target.display = "Provenance[4]"
* group[0].element[5].target.dependsOn[0].property = "Computable-ANTLR"
* group[0].element[5].target.dependsOn[0].value = "IF PID-33 AND PID-34 VALUED"
* group[0].element[5].target.dependsOn[1].property = "Narrative-Condition"
* group[0].element[5].target.dependsOn[1].value = "One  may drop PID-33 from the condition if PID-34 Last Update Facility is still sufficient without a date."
* group[0].element[6].code = #ORM_O01.PATIENT.PD1
* group[0].element[6].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[6].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[6].extension[0].extension[0].valueInteger = 0
* group[0].element[6].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[6].extension[0].extension[1].valueInteger = 1
* group[0].element[6].display = "Additional Demographics"
* group[0].element[6].target.equivalence = #equivalent
* group[0].element[6].target.code = #Patient[1]
* group[0].element[6].target.display = "Patient[1]"
* group[0].element[6].target.comment = "Incorporate PD1 content into the Patient created from the PID segment."
* group[0].element[7].code = #ORM_O01.PATIENT.PD1
* group[0].element[7].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[7].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[7].extension[0].extension[0].valueInteger = 0
* group[0].element[7].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[7].extension[0].extension[1].valueInteger = 1
* group[0].element[7].display = "Additional Demographics"
* group[0].element[7].target.equivalence = #equivalent
* group[0].element[7].target.code = #Observation[2]
* group[0].element[7].target.display = "Observation[2]"
* group[0].element[7].target.dependsOn[0].property = "Computable-ANTLR"
* group[0].element[7].target.dependsOn[0].value = "IF PD1-7 VALUED"
* group[0].element[8].code = #ORM_O01.PATIENT.VISIT.PV1
* group[0].element[8].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[8].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[8].extension[0].extension[0].valueInteger = 1
* group[0].element[8].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[8].extension[0].extension[1].valueInteger = 1
* group[0].element[8].display = "Patient Visit"
* group[0].element[8].target.equivalence = #equivalent
* group[0].element[8].target.code = #Encounter[1]
* group[0].element[8].target.display = "Encounter[1]"
* group[0].element[8].target.comment = "Processing of the PV1 segment results in the creation of a new Encounter resource"
* group[0].element[9].code = #ORM_O01.PATIENT.VISIT.PV1
* group[0].element[9].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[9].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[9].extension[0].extension[0].valueInteger = 1
* group[0].element[9].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[9].extension[0].extension[1].valueInteger = 1
* group[0].element[9].display = "Patient Visit"
* group[0].element[9].target.equivalence = #equivalent
* group[0].element[9].target.code = #Basic
* group[0].element[9].target.display = "Basic"
* group[0].element[9].target.dependsOn[0].property = "Computable-ANTLR"
* group[0].element[9].target.dependsOn[0].value = "IF PV1-43 VALUED"
* group[0].element[10].code = #ORM_O01.PATIENT.VISIT.PV1
* group[0].element[10].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[10].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[10].extension[0].extension[0].valueInteger = 1
* group[0].element[10].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[10].extension[0].extension[1].valueInteger = 1
* group[0].element[10].display = "Patient Visit"
* group[0].element[10].target.equivalence = #equivalent
* group[0].element[10].target.code = #Patient[1]
* group[0].element[10].target.display = "Patient[1]"
* group[0].element[11].code = #ORM_O01.PATIENT.VISIT.PV1
* group[0].element[11].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[11].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[11].extension[0].extension[0].valueInteger = 1
* group[0].element[11].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[11].extension[0].extension[1].valueInteger = 1
* group[0].element[11].display = "Patient Visit"
* group[0].element[11].target.equivalence = #equivalent
* group[0].element[11].target.code = #Coverage[1]
* group[0].element[11].target.display = "Coverage[1]"
* group[0].element[11].target.dependsOn[0].property = "Computable-ANTLR"
* group[0].element[11].target.dependsOn[0].value = "IF PV1-20 VALUE"
* group[0].element[12].code = #ORM_O01.PATIENT.VISIT.PV2
* group[0].element[12].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[12].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[12].extension[0].extension[0].valueInteger = 0
* group[0].element[12].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[12].extension[0].extension[1].valueInteger = 1
* group[0].element[12].display = "Patient Visit- Additional Info"
* group[0].element[12].target.equivalence = #equivalent
* group[0].element[12].target.code = #Encounter[1]
* group[0].element[12].target.display = "Encounter[1]"
* group[0].element[12].target.comment = "Incorporate PV2 content into the Encounter created from the PV1 segment."
* group[0].element[13].code = #ORM_O01.PATIENT.INSURANCE.IN1
* group[0].element[13].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[13].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[13].extension[0].extension[0].valueInteger = 1
* group[0].element[13].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[13].extension[0].extension[1].valueInteger = 1
* group[0].element[13].display = "Insurance"
* group[0].element[13].target.equivalence = #equivalent
* group[0].element[13].target.code = #Coverage[1]
* group[0].element[13].target.display = "Coverage[1]"
* group[0].element[13].target.comment = "Processing of the IN1 segment results in the creation of a new Coverage resource"
* group[0].element[14].code = #ORM_O01.PATIENT.INSURANCE.IN2
* group[0].element[14].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[14].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[14].extension[0].extension[0].valueInteger = 0
* group[0].element[14].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[14].extension[0].extension[1].valueInteger = 1
* group[0].element[14].display = "Insurance Additional Info"
* group[0].element[14].target.equivalence = #equivalent
* group[0].element[14].target.code = #Coverage[1]
* group[0].element[14].target.display = "Coverage[1]"
* group[0].element[14].target.comment = "Incorporate IN2 content into the Coverage created from the IN1 segment."
* group[0].element[15].code = #ORM_O01.PATIENT.INSURANCE.IN3
* group[0].element[15].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[15].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[15].extension[0].extension[0].valueInteger = 0
* group[0].element[15].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[15].extension[0].extension[1].valueInteger = 1
* group[0].element[15].display = "Insurance Add'l Info – Cert."
* group[0].element[15].target.equivalence = #equivalent
* group[0].element[15].target.code = #Coverage[1]
* group[0].element[15].target.display = "Coverage[1]"
* group[0].element[15].target.comment = "Incorporate IN3 content into the Coverage created from the IN1 segment."
* group[0].element[16].code = #ORM_O01.PATIENT.AL1
* group[0].element[16].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[16].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[16].extension[0].extension[0].valueInteger = 0
* group[0].element[16].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[16].extension[0].extension[1].valueInteger = -1
* group[0].element[16].display = "Allergy Information"
* group[0].element[16].target.equivalence = #equivalent
* group[0].element[16].target.code = #AllergyIntolerance
* group[0].element[16].target.display = "AllergyIntolerance"
* group[0].element[16].target.comment = "Processing of the AL1 segment results in the creation of a new AllergyIntolerance resource"
* group[0].element[17].code = #ORM_O01.ORDER.ORC
* group[0].element[17].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[17].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[17].extension[0].extension[0].valueInteger = 1
* group[0].element[17].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[17].extension[0].extension[1].valueInteger = 1
* group[0].element[17].display = "Common Order"
* group[0].element[17].target.equivalence = #equivalent
* group[0].element[17].target.code = #ServiceRequest[1]
* group[0].element[17].target.display = "ServiceRequest[1]"
* group[0].element[17].target.comment = "Processing of each ORC segment results in the creation of a new ServiceRequest resource"
* group[0].element[18].code = #ORM_O01.ORDER.ORC
* group[0].element[18].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[18].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[18].extension[0].extension[0].valueInteger = 1
* group[0].element[18].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[18].extension[0].extension[1].valueInteger = 1
* group[0].element[18].display = "Common Order"
* group[0].element[18].target.equivalence = #equivalent
* group[0].element[18].target.code = #Task[1]
* group[0].element[18].target.display = "Task[1]"
* group[0].element[18].target.comment = "Processing of each ORC segment results in the creation of a new Task resource which is linked back to the ServiceRequest created for the same ORC segment. =*= The creation of a Task resource and its inclusion in the FHIR bundle should only happen when the receiving system is responsible for fulfillment of the ServiceRequest. Other systems may receive notification of the order, but should not receive a Task Resource if they are not the intended filler system. =*= The actual value of the ORC-1 Order Control Code will yield different population of the Task resource."
* group[0].element[18].target.dependsOn[0].property = "Computable-FHIRPath"
* group[0].element[18].target.dependsOn[0].value = "h"
* group[0].element[19].code = #ORM_O01.ORDER.ORC
* group[0].element[19].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[19].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[19].extension[0].extension[0].valueInteger = 1
* group[0].element[19].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[19].extension[0].extension[1].valueInteger = 1
* group[0].element[19].display = "Common Order"
* group[0].element[19].target.equivalence = #equivalent
* group[0].element[19].target.code = #Provenance[2]
* group[0].element[19].target.display = "Provenance[2]"
* group[0].element[20].code = #ORM_O01.ORDER_DETAIL.CHOICE.OBR
* group[0].element[20].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[20].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[20].extension[0].extension[0].valueInteger = 0
* group[0].element[20].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[20].extension[0].extension[1].valueInteger = 1
* group[0].element[20].display = "Order Detail Segment OBR, etc."
* group[0].element[20].target.equivalence = #equivalent
* group[0].element[20].target.code = #ServiceRequest[1]
* group[0].element[20].target.display = "ServiceRequest[1]"
* group[0].element[20].target.comment = "Incorporate OBR content into the ServiceRequest created from the ORC segment in the same segment group."
* group[0].element[20].target.dependsOn[0].property = "Computable-ANTLR"
* group[0].element[20].target.dependsOn[0].value = "IF PID VALUED"
* group[0].element[21].code = #ORM_O01.ORDER_DETAIL.CHOICE.OBR
* group[0].element[21].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[21].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[21].extension[0].extension[0].valueInteger = 0
* group[0].element[21].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[21].extension[0].extension[1].valueInteger = 1
* group[0].element[21].display = "Order Detail Segment OBR, etc."
* group[0].element[21].target.equivalence = #equivalent
* group[0].element[21].target.code = #SupplyRequest[1]
* group[0].element[21].target.display = "SupplyRequest[1]"
* group[0].element[21].target.dependsOn[0].property = "Computable-ANTLR"
* group[0].element[21].target.dependsOn[0].value = "IF PID NOT VALUED"
* group[0].element[22].code = #ORM_O01.ORDER_DETAIL.CHOICE.RXO
* group[0].element[22].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[22].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[22].extension[0].extension[0].valueInteger = 0
* group[0].element[22].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[22].extension[0].extension[1].valueInteger = 1
* group[0].element[22].display = "Pharmacy/Treatment Order"
* group[0].element[22].target.equivalence = #equivalent
* group[0].element[22].target.code = #MedicationRequest
* group[0].element[22].target.display = "MedicationRequest"
* group[0].element[23].code = #ORM_O01.ORDER_DETAIL.CHOICE.ODS
* group[0].element[23].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[23].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[23].extension[0].extension[0].valueInteger = 0
* group[0].element[23].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[23].extension[0].extension[1].valueInteger = 1
* group[0].element[23].display = "Dietary Orders, Supplements, and Preferences"
* group[0].element[23].target.equivalence = #equivalent
* group[0].element[23].target.code = #SupplyRequest[2]
* group[0].element[23].target.display = "SupplyRequest[2]"
* group[0].element[23].target.dependsOn[0].property = "Computable-ANTLR"
* group[0].element[23].target.dependsOn[0].value = "IF PID NOT VALUED"
* group[0].element[24].code = #ORM_O01.ORDER_DETAIL.NTE
* group[0].element[24].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[24].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[24].extension[0].extension[0].valueInteger = 0
* group[0].element[24].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[24].extension[0].extension[1].valueInteger = -1
* group[0].element[24].display = "Notes and Comments (for Detail)"
* group[0].element[24].target.equivalence = #equivalent
* group[0].element[24].target.code = #ServiceRequest[1].note
* group[0].element[24].target.display = "ServiceRequest[1].note"
* group[0].element[25].code = #ORM_O01.ORDER_DETAIL.DG1
* group[0].element[25].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[25].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[25].extension[0].extension[0].valueInteger = 0
* group[0].element[25].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[25].extension[0].extension[1].valueInteger = -1
* group[0].element[25].display = "Diagnosis"
* group[0].element[25].target.equivalence = #equivalent
* group[0].element[25].target.code = #ServiceRequest[1].reasonReference(Condition)
* group[0].element[25].target.display = "ServiceRequest[1].reasonReference(Condition)"
* group[0].element[25].target.comment = "Processing of the DG1 segment results in the creation of a new Condition resource which is referenced in the ServiceRequest created by the ORC segment"
* group[0].element[26].code = #ORM_O01.ORDER_DETAIL.OBSERVATION.OBX
* group[0].element[26].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[26].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[26].extension[0].extension[0].valueInteger = 1
* group[0].element[26].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[26].extension[0].extension[1].valueInteger = 1
* group[0].element[26].display = "Observation/Result"
* group[0].element[26].target.equivalence = #equivalent
* group[0].element[26].target.code = #Observation[1]
* group[0].element[26].target.display = "Observation[1]"
* group[0].element[26].target.dependsOn[0].property = "Computable-ANTLR"
* group[0].element[26].target.dependsOn[0].value = "IF OBX-5 LST.count LESS THAN OR EQUALS 1 OR OBX-2 IS \"NA\""
* group[0].element[27].code = #ORM_O01.ORDER_DETAIL.OBSERVATION.OBX
* group[0].element[27].extension[0].url = "http://hl7.org/fhir/uv/v2mappings/StructureDefinition/TypeInfo"
* group[0].element[27].extension[0].extension[0].url = "cardinalityMin"
* group[0].element[27].extension[0].extension[0].valueInteger = 1
* group[0].element[27].extension[0].extension[1].url = "cardinalityMax"
* group[0].element[27].extension[0].extension[1].valueInteger = 1
* group[0].element[27].display = "Observation/Result"
* group[0].element[27].target.equivalence = #equivalent
* group[0].element[27].target.code = #Observation[1]
* group[0].element[27].target.display = "Observation[1]"
* group[0].element[27].target.dependsOn[0].property = "Computable-ANTLR"
* group[0].element[27].target.dependsOn[0].value = "IF  OBX-5 LST.count GREATER THAN 1 AND OBX-2 IS NOT \"NA\""
