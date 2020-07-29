
// segments/HL7 Segment - FHIR R4_ MSH[General] - R4.csv:15 MSH-15
Extension: AcceptAcknowledgementType
Id: Accept-Acknowledgement-Type
Description: """
The Accept Acknowledgement Type of the v2 message that was transformed into the FHIR message Bundle. This extension is
only relevant when performing a v2 to FHIR transformation. This extension corresponds to MSH-15 of the original message.
"""
* ^context.type = #element
* ^context.expression = "MessageHeader"
* value[x] only Coding

// segments/HL7 Segment - FHIR R4_ ARV - Sheet1.csv:6 ARV-6
Extension: AccessRestrictionRange
Id: Access-Restriction-Range
Description: """
The Access Restriction Date Range. This extension corresponds to ARV-6 of the original message.
"""
* ^context.type = #element
* ^context.expression = "meta.security"
* value[x] only Period
* valuePeriod 1..1

// segments/HL7 Segment - FHIR R4_ PV2 - PV2.csv:40 PV2-40
Extension: AdmissionLevelOfCare
Id: Admission-Level-Of-Care
Description: """
Code indicating the acuity level assigned to the patient at the time of admission.
This extension corresponds to PV2-40 of the v2 PV2 segment.
"""
* ^context.type = #element
* ^context.expression = "Encounter"
* value[x] only CodeableConcept
* valueCodeableConcept 1..1

// segments/HL7 Segment - FHIR R4_ OBX[ObservationComponent] - PV1.csv:19 OBX-19
// segments/HL7 Segment - FHIR R4_ OBX[Observation] - PV1.csv:19 OBX-19
Extension: AnalysisDateTime
Id: Analysis-Date-Time
Description: """
The time stamp associated with generation of the analytical result by the instrument.
This extension corresponds to OBX-19 of the v2 OBX segment.
"""
* ^context.type = #element
* ^context.expression = "Observation"
* value[x] only dateTime
* valueDateTime 1..1

// segments/HL7 Segment - FHIR R4_ MSH[General] - R4.csv:16 MSH-16
Extension: ApplicationAcknowledgementType
Id: Application-Acknowledgement-Type
Description: """
The Application Acknowledgement Type of the v2 message that was transformed into the FHIR message Bundle. This extension is only relevant when performing a v2 to FHIR transformation.
This extension corresponds to MSH-15 of the original message.
"""
* ^context.type = #element
* ^context.expression = "MessageHeader"
* value[x] only Coding

// datatypes/HL7 Data Type - FHIR R4_ CX - Sheet1.csv:4 CX.4
Extension: AssigningAuthority
Id: Assigning-Authority
Description: """
Extensions supporting the coding of HD type stored in an Identifier
This extension corresponds to components of the v2 HD data type.
"""
* ^context[0].type = #element
* ^context[0].expression = "Identifier"
* ^context[1].type = #element
* ^context[1].expression = "Device.udiCarrier"

* extension contains namespace-id 0..1 MS and
    universal-id 0..1 MS and
    universal-id-type 0..1 MS and
    assigning-facility-id 0..1 MS

* extension[namespace-id].value[x] only string
* extension[namespace-id] ^short = "Unique string identifying the namespace provided by the assigning authority"
* extension[namespace-id].valueString 1..1

* extension[universal-id].value[x] only string
* extension[universal-id] ^short = "Unique identifier of the assigning authority"
* extension[universal-id].valueString 1..1

* extension[universal-id-type].value[x] only code
* extension[universal-id-type] ^short = "Type of unique identifier used by the assigning authority"
* extension[universal-id-type].valueCode 1..1

* extension[assigning-facility-id].value[x] only Identifier
* extension[assigning-facility-id] ^short = "Identifier of the assigning facility"
* extension[assigning-facility-id].valueIdentifier 1..1

// segments/HL7 Segment - FHIR R4_ SFT - Sheet1.csv:4 SFT-4
Extension: BinaryIdentifier
Id: Binary-Identifier
Description: """
Identifier issued by a vendor for the unique software version instance of the system originating the content of the transaction.
This extension corresponds to SFT-4 of the v2 SFT segment.
"""
* ^context.type = #element
* ^context.expression = "MessageHeader.source"
* value[x] only string
* valueString 1..1

// segments/HL7 Segment - FHIR R4_ OBR[ServiceRequest] - OBR.csv:17 OBR-17
Extension: CallbackNumber
Id: Callback-Number
Description: """
"""
* ^context.type = #element
* ^context.expression = "ServiceRequest.intent"
* value[x] only ContactPoint
* valueContactPoint 1..1

// datatypes/HL7 Data Type - FHIR R4_ XPN - Sheet1.csv:
Extension: CalledBy
Id: Called-By
Description: """
"""
* ^context.type = #element
* ^context.expression = "HumanName.family"
* value[x] only string

// datatypes/HL7 Data Type - FHIR R4_ CX - Sheet1.csv:3 CX.3
Extension: CheckDigitScheme
Id: Check-Digit-Scheme
Description: """The check digit scheme
"""
* ^context.type = #element
* ^context.expression = "Identifier"
* value[x] only code
* valueCode 1..1

// segments/HL7 Segment - FHIR R4_ OBR[ServiceRequest] - OBR.csv:13 OBR-13
Extension: Codeable
Id: Codeable
Description: """
"""
* ^context.type = #element
* ^context.expression = "ServiceRequest.supportingInfo"
* value[x] only CodeableConcept
* valueCodeableConcept 1..1

// datatypes/HL7 Data Type - FHIR R4_ PLN - Sheet1.csv:3 PLN.3
Extension: Comment
Id: Comment
Description: """
Qualifying information regarding the identifier.
This may include information about locations where the identifier is valid.
This extension corresponds to PLN.3 of the v2 PLN data type.
"""
* ^context.type = #element
* ^context.expression = "Identifier"
* value[x] only string
* valueString 1..1

// datatypes/HL7 Data Type - FHIR R4_ TQ[ServiceRequest] - Sheet1.csv:7 TQ.7
// datatypes/HL7 Data Type - FHRI R4_ TQ[Medication Request] - Sheet1.csv:7 TQ.7
Extension: Condition
Id: Condition
Description: """TODO
"""
* ^context[0].type = #element
* ^context[0].expression = "ServiceRequest"
* ^context[1].type = #element
* ^context[1].expression = "MedicationRequest"

* value[x] only string
* valueString 1..1

// segments/HL7 Segment - FHIR R4_ SFT - Sheet1.csv:5 SFT-5
Extension: Description
Id: Description
Description: """
Software identification information supplied by a software vendor for the system originating the content of the transaction.
This extension corresponds to SFT-5 of the v2 SFT segment.
"""
* ^context.type = #element
* ^context.expression = "MessageHeader.source"
* value[x] only string
* valueString 1..1

// datatypes/HL7 Data Type - FHIR R4_ TQ[ServiceRequest] - Sheet1.csv:3 TQ.3
// datatypes/HL7 Data Type - FHRI R4_ TQ[Medication Request] - Sheet1.csv:3 TQ.3
Extension: Duration
Id: Duration
Description: """
"""
* ^context.type = #element
* ^context.expression = "Timing.repeat"
* value[x] only string
* valueString 1..1


// segments/HL7 Segment - FHIR R4_ PRT[PIDPD1 - RelatedPerson] - Sheet1.csv:13 PRT-13
// segments/HL7 Segment - FHIR R4_ ROL[PID_PD1_RelatedPerson] - Sheet1.csv:7 ROL-7
// segments/HL7 Segment - FHIR R4_ ROL[PV1_PV2_PractitionerRole] - Sheet1.csv:7 ROL-7
Extension: QualitativeDuration
Id: qualitative-duration
Description: """
Code indicating the qualitative length of time (e.g., until the next assessment, four days,
until discharge, etc.) for participation  of the RelatedPerson in their role.
This extension corresponds to PRT-13 of the v2 PRT segment.
"""
* ^context[0].type = #element
* ^context[0].expression = "RelatedPerson"
* ^context[1].type = #element
* ^context[1].expression = "PractitionerRole"
* ^context[2].type = #element
* ^context[2].expression = "Encounter.participant"
* value[x] only CodeableConcept
* valueCodeableConcept 1..1

// segments/HL7 Segment - FHIR R4_ PV2 - PV2.csv:10 PV2-10
Extension: EstimatedLength
Id: estimated-length
Description: """
The estimated days of the inpatient stay.
This extension corresponds to PV2-10 of the v2 PV2 segment.
It is measured in units of days (http://unitsofmeasure.org/#d)
"""
* ^context.type = #element
* ^context.expression = "Encounter"
* value[x] only Quantity
* valueQuantity 1..1
* valueQuantity.code = #d
* valueQuantity.system = "http://unitsofmeasure.org/"



// segments/HL7 Segment - FHIR R4_ PV1 - PV1.csv:20 PV1-20
Extension: FinancialClass
Id: Financial-Class
Description: """
The financial class(es) assigned to the patient for the purpose of identifying sources of reimbursement for the encounter.
This extension corresponds to PV1-20 of the v2 PV1 segment.
"""
* ^context.type = #element
* ^context.expression = "Encounter"
* value[x] only CodeableConcept
* valueCodeableConcept 1..1

// segments/HL7 Segment - FHIR R4_ OBR[ServiceRequest] - OBR.csv:3 OBR-3
Extension: Fingerprint
Id: Fingerprint
Description: """
"""
* ^context.type = #element
* ^context.expression = "ServiceRequest"
* value[x] only string
* valueString 1..1

// segments/HL7 Segment - FHIR R4_ PID - PID.csv:31 PID-31
Extension: IdentityUnknown
Id: Identity-Unknown
Description: """
Indicator of whether or not the patient's identity is known.
This extension corresponds to PID-31 of the v2 PID segment.
"""
* ^context.type = #element
* ^context.expression = "Patient"
* value[x] only boolean
* valueBoolean 1..1

// segments/HL7 Segment - FHIR R4_ SFT - Sheet1.csv:6 SFT-6
Extension: InstallDate
Id: Install-Date
Description: """
The date the submitting software was installed at the sending site.
This extension corresponds to SFT-6 of the v2 SFT segment.
"""
* ^context.type = #element
* ^context.expression = "MessageHeader.source"
* value[x] only dateTime
* valueDateTime 1..1

// segments/HL7 Segment - FHIR R4_ NK1 [RelatedPerson] - Sheet1.csv:34 NK1-34
Extension: JobStatus
Id: Job-Status
Description: """
"""
* ^context.type = #element
* ^context.expression = "RelatedPerson"
* value[x] only CodeableConcept
* valueCodeableConcept 1..1

// segments/HL7 Segment - FHIR R4_ PID - PID.csv:34 PID-34
Extension: LastUpdatedFacility
Id: Last-Updated-Facility
Description: """
Reference which identifies the facility of the last update to a patient's identifying and demographic data.
This extension corresponds to PID-34 of the v2 PID segment
"""
* ^context.type = #element
* ^context.expression = "Meta"
* value[x] only Reference(Organization)
* valueReference 1..1

// segments/HL7 Segment - FHIR R4_ PD1 - PD1.csv:7 PD1-7
Extension: LivingWill
Id: Living-Will
Description: """
A code indicating whether or not the patient has a living will and, if so, whether a copy of the living will is on file at the healthcare facility.
If the patient does not have a living will, the value of this field indicates whether the patient was provided information on living wills.
This extension corresponds to PD1-7 of the v2 PD1 segment.
"""
* ^context.type = #element
* ^context.expression = "Patient"
* value[x] only CodeableConcept
* valueCodeableConcept 1..1

// segments/HL7 Segment - FHIR R4_ PRT[PIDPD1 - RelatedPerson] - Sheet1.csv:9 PRT-9
Extension: Location
Id: Location
Description: """
Location of the RelatedPerson acting in their role.
This extension corresponds to PRT-9 of the v2 PRT segment.
"""
* ^context.type = #element
* ^context.expression = "RelatedPerson"
* value[x] only Reference(Location)
* valueReference 1..1

// segments/HL7 Segment - FHIR R4_ PRT[OBX_Location] - Sheet1.csv:12 PRT-12
// segments/HL7 Segment - FHIR R4_ PRT[OBX_Location] - Sheet1.csv:11 PRT-11
Extension: LocationPeriod
Id: location-period
Description: """
The time period that the location was relevant for the Observation.
This extension corresponds to PRT-11 and PRT-12 of the v2 PRT segment.
"""
* ^context.type = #element
* ^context.expression = "Observation"
* value[x] only Period
* valuePeriod 1..1

// segments/HL7 Segment - FHIR R4_ PV1 - PV1.csv:53 PV1-53
Extension: EpisodeName
Id: episode-name
Description: """
A brief user_Defined description of a Service Episode in or for which the encounter occurs.
This extension corresponds to PV1-53 of the v2 PV1 segment.
"""
* ^context.type = #element
* ^context.expression = "EpisodeOfCare"
* value[x] only string
* valueString 1..1

// datatypes/HL7 Data Type - FHIR R4_ XON[Location] - Sheet1.csv:2 XON.2
// datatypes/HL7 Data Type - FHIR R4_ XON[Organization] - Sheet1.csv:2 XON.2
Extension: NameType
Id: Name-Type
Description: """
A code that represents the type of name of the Location i.e., XON.2 of the v2 XON data type.
"""
* ^context[0].type = #element
* ^context[0].expression = "Location"
* ^context[1].type = #element
* ^context[1].expression = "Organization"
* value[x] only Coding
* valueCoding 1..1

// segments/HL7 Segment - FHIR R4_ OBX[ObservationComponent] - PV1.csv:10 OBX-10
// segments/HL7 Segment - FHIR R4_ OBX[Observation] - PV1.csv:10 OBX-10
Extension: NatureOfAbnormalTest
Id: Nature-Of-Abnormal-Test
Description: """
The nature of the abnormal test. For example, normal range values may be based on age, sex and/or race.
This extension corresponds to OBX-10 of the v2 OBX segment.
"""
* ^context[0].type = #element
* ^context[0].expression = "Observation.component"
* ^context[1].type = #element
* ^context[1].expression = "Observation"

* value[x] only CodeableConcept
* valueCodeableConcept 1..1

// segments/HL7 Segment - FHIR R4_ NTE[Annotation] - NTE.csv:4 NTE-4
Extension: NoteType
Id: Note-Type
Description: """
The type of comment text in the Annotation (e.g. Patient Instructions or General Remark).
This extension corresponds to NTE-4 of the v2 NTE segment.
"""
* ^context.type = #element
* ^context.expression = "Annotation"
* value[x] only CodeableConcept
* valueCodeableConcept 1..1

// segments/HL7 Segment - FHIR R4_ PRT[PIDPD1 - RelatedPerson] - Sheet1.csv:8 PRT-8
// segments/HL7 Segment - FHIR R4_ ROL[PID_PD1_RelatedPerson] - Sheet1.csv:14 ROL-14
Extension: RelatedOrganization
Id: related-organization
Description: """
"""
* ^context.type = #element
* ^context.expression = "RelatedPerson"
* value[x] only Reference(Organization)
* valueReference 1..1

// segments/HL7 Segment - FHIR R4_ PRT[PIDPD1 - RelatedPerson] - Sheet1.csv:7 PRT-7
// segments/HL7 Segment - FHIR R4_ ROL[PID_PD1_RelatedPerson] - Sheet1.csv:10 ROL-10
Extension: RelatedOrganizationType
Id: related-organization-type
Description: """
"""
* ^context.type = #element
* ^context.expression = "RelatedPerson"
* value[x] only CodeableConcept
* valueCodeableConcept 1..1

// segments/HL7 Segment - FHIR R4_ AL1[AllergeryIntolerance] - AL1.csv:2 AL1-2
// segments/HL7 Segment - FHIR R4_ AL1[AllergeryIntolerance] - AL1.csv:4 AL1-4
// segments/HL7 Segment - FHIR R4_ AL1[AllergeryIntolerance] - AL1.csv:4 AL1-4
Extension: OriginalCode
Id: original-code
Description: """
The original code populating the CWE data type.
Retention of the original code prevents the loss of information that may occur during translation.
"""
* ^context[1].type = #element
* ^context[1].expression = "Coding"
* ^context[2].type = #element
* ^context[2].expression = "code"

* value[x] only Coding
* valueCoding 1..1

// segments/HL7 Segment - FHIR R4_ ORC[ServiceRequest] - ORC.csv:8 ORC-8
Extension: ParentFiller
Id: parent-filler
Description: """
"""
* ^context.type = #element
* ^context.expression = "ServiceRequest.basedOn"
* value[x] only Identifier
* valueIdentifier 1..1

// segments/HL7 Segment - FHIR R4_ ORC[ServiceRequest] - ORC.csv:8 ORC-8
Extension: ParentPlacer
Id: parent-placer
Description: """
"""
* ^context.type = #element
* ^context.expression = "ServiceRequest.basedOn[1]"
* value[x] only Identifier
* valueIdentifier 1..1

// segments/HL7 Segment - FHIR R4_ ORC[ServiceRequest] - ORC.csv:31 ORC-31
Extension: ParentService
Id: parent-service
Description: """
"""
* ^context.type = #element
* ^context.expression = "ServiceRequest.basedOn[1]"
* value[x] only CodeableConcept
* valueCodeableConcept 1..1

// segments/HL7 Segment - FHIR R4_ PRT[PIDPD1 - RelatedPerson] - Sheet1.csv:23 PRT-23
Extension: PreferredMethodOfContact
Id: Preferred-Method-Of-Contact
Description: """
Code indicating the preferred method to use when communicating with the person.
This extension corresponds to PRT-23 of the v2 PRT segment.
"""
* ^context[0].type = #element
* ^context[0].expression = "RelatedPerson"
* ^context[1].type = #element
* ^context[1].expression = "PractitionerRole"
* value[x] only CodeableConcept
* valueCodeableConcept 1..1

// segments/HL7 Segment - FHIR R4_ OBX[ObservationComponent] - PV1.csv:15 OBX-15
// segments/HL7 Segment - FHIR R4_ OBX[Observation] - PV1.csv:15 OBX-15
Extension: ProducerIdentifier
Id: Producer-Identifier
Description: """
"""
* ^context.type = #element
* ^context.expression = "Observation"
* ^context.type = #element
* ^context.expression = "Observation.component"
* value[x] only CodeableConcept
* valueCodeableConcept 1..1

// segments/HL7 Segment - FHIR R4_ PRT[PIDPD1 - RelatedPerson] - Sheet1.csv:6 PRT-6
// segments/HL7 Segment - FHIR R4_ ROL[PID_PD1_RelatedPerson] - Sheet1.csv:9 ROL-9
Extension: ProviderType
Id: Provider-Type
Description: """
"""
* ^context.type = #element
* ^context.expression = "RelatedPerson"
* value[x] only CodeableConcept
* valueCodeableConcept 1..1


// segments/HL7 Segment - FHIR R4_ PV2 - PV2.csv:21 PV2-21
Extension: PublicityCode
Id: Publicity-Code
Description: """
Code indicating the level of publicity allowed for the encounter.
This extension corresponds to PV2-21 of the v2 PV2 segment.
"""
* ^context.type = #element
* ^context.expression = "Encounter"
* value[x] only CodeableConcept
* valueCodeableConcept 1..1

// messages/HL7 Message - FHIR R4_ OML_O21 - Sheet1.csv:6.4.8.1 OML_O21.ORDER.OBSERVATION_REQUEST.SPECIMEN.SPM
Extension: RejectReason
Id: reject-reason
Description: """
This provides a reject reason for the specimen in context of the specific test. The reject reason is captured as part of the ServiceRequest rather than the Specimen
as the specimen may still be usable for other tests.
"""
* ^context.type = #element
* ^context.expression = "rejectReason"
* value[x] only CodeableConcept
* valueCodeableConcept 1..1


// segments/HL7 Segment - FHIR R4_ SPM - SPM.csv:9 SPM-9
Extension: SiteModifier
Id: Site-Modifier
Description: """
Modifying or qualifying description about the specimen source site.
This extension corresponds to SPM-9 of the v2 SPM segment.
"""
* ^context.type = #element
* ^context.expression = "Specimen.collection"
* value[x] only CodeableConcept
* valueCodeableConcept 1..1

// segments/HL7 Segment - FHIR R4_ PD1 - PD1.csv:5 PD1-5
Extension: StudentStatus
Id: Student-Status
Description: """
A code indicating if the patient is currently a student or not, and whether the patient is a full_Time or a part_Time student.
This extension corresponds to PD1-5 of the v2 PD1 segment.
"""
* ^context.type = #element
* ^context.expression = "Patient"
* value[x] only CodeableConcept
* valueCodeableConcept 1..1

// segments/HL7 Segment - FHIR R4_ OBX[ObservationComponent] - PV1.csv:30 OBX-30
// segments/HL7 Segment - FHIR R4_ OBX[Observation] - PV1.csv:30 OBX-30
Extension: SubType
Id: Sub-Type
Description: """
The sub type was necessary in v2 to distinguish purpose of the observation when it appears in a
message in the same group (e.g., answers to ask at order entry questions with actual results ).
Within FHIR flagging the observation may not be necessary, but that is not yet clear.  Until then,
we will keep the thought of needing an extension, but not create it yet.
"""
* ^context.type = #element
* ^context.expression = "Observation"
* ^context.type = #element
* ^context.expression = "Observation.component"
* value[x] only code
* valueCode 1..1

// segments/HL7 Segment - FHIR R4_ PV1 - PV1.csv:6 PV1-6
Extension: TemporaryLocation
Id: temporary-location
Description: """
Boolean indicator of whether or not the Location is a temporary location.
"""
* ^context.type = #element
* ^context.expression = "Encounter.location"
* value[x] only boolean
* valueBoolean 1..1


// segments/HL7 Segment - FHIR R4_ MSH[General] - R4.csv:7 MSH-7
Extension: Timestamp
Id: Timestamp
Description: """
The date/time that the sending system created the v2 message that was transformed into the FHIR message Bundle. This extension is only relevant when performing a v2 to FHIR transformation.
This extension corresponds to MSH-7 of the original message.
"""
* ^context.type = #element
* ^context.expression = "MessageHeader"
* value[x] only dateTime
* valueDateTime 1..1

// segments/HL7 Segment - FHIR R4_ PV1 - PV1.csv:48 PV1-48
Extension: TotalAdjustment
Id: Total-Adjustment
Description: """
The total adjustments for the encounter.
This extension corresponds to PV1-48 of the v2 PV1 segment.
"""
* ^context.type = #element
* ^context.expression = "Encounter"
* value[x] only Money
* valueMoney 1..1

// segments/HL7 Segment - FHIR R4_ PV1 - PV1.csv:47 PV1-47
Extension: TotalCharges
Id: Total-Charges
Description: """
The total charges  for the encounter.
This extension corresponds to PV1-47 of the v2 PV1 segment.
"""
* ^context.type = #element
* ^context.expression = "Encounter"
* value[x] only Money
* valueMoney 1..1

// segments/HL7 Segment - FHIR R4_ PV1 - PV1.csv:49 PV1-49
Extension: TotalPayments
Id: Total-Payments
Description: """
The total payments  for the encounter.
This extension corresponds to PV1-49 of the v2 PV1 segment.
"""
* ^context.type = #element
* ^context.expression = "Encounter"
* value[x] only Money
* valueMoney 1..1


// segments/HL7 Segment - FHIR R4_ OBX[ObservationComponent] - PV1.csv:29 OBX-29
// segments/HL7 Segment - FHIR R4_ OBX[Observation] - PV1.csv:29 OBX-29
Extension: Type
Id: Type
Description: """
The type was necessary in v2 to distinguish purpose of the observation when it appears in a message in the same group (e.g., answers to ask at order entry questions with actual results ).  Within FHIR flagging the observation may not be necessary, but that is not yet clear.  Until then, we will keep the thought of needing an extension, but not create it yet.
"""
* ^context.type = #element
* ^context.expression = "Observation"
* value[x] only code
* valueCode 1..1

// segments/HL7 Segment - FHIR R4_ NK1 [Patient.contact] - Sheet1.csv:3 NK1-3
Extension: V2Relationship
Id: V2-Relationship
Description: """
Patient.contact.relationship uses the same value set as NK1-7 (contact role). There doesn't seem to be a standard element for the NK1-3 relationship in Patient.contact. An extension will likely be needed
"""
* ^context.type = #element
* ^context.expression = "Patient.contact"
* value[x] only CodeableConcept
* valueCodeableConcept 1..1


// segments/HL7 Segment - FHIR R4_ OBX[ObservationComponent] - PV1.csv:5 OBX-5
// segments/HL7 Segment - FHIR R4_ OBX[ObservationComponent] - PV1.csv:5 OBX-5
// segments/HL7 Segment - FHIR R4_ OBX[Observation] - PV1.csv:5 OBX-5
// segments/HL7 Segment - FHIR R4_ OBX[Observation] - PV1.csv:5 OBX-5
Extension: ValueAttachment
Id: value-attachment
Description: """
We are for now addressing Base64 that cover .pdf, pictures and other binaries.
If somebody does this, we will address those.
"""
* ^context[0].type = #element
* ^context[0].expression = "Observation"
* ^context[1].type = #element
* ^context[1].expression = "Observation.component"
* value[x] only Attachment
* valueAttachment 1..1

// segments/HL7 Segment - FHIR R4_ SFT - Sheet1.csv:1 SFT-1
Extension: VendorOrganization
Id: vendor-organization
Description: """
Organization identification information for the software vendor that created the system originating the content of the transaction.
This extension corresponds to SFT-1 of the v2 SFT segment.
"""
* ^context.type = #element
* ^context.expression = "MessageHeader.source"
* value[x] only Reference(Organization)
* valueReference 1..1

// segments/HL7 Segment - FHIR R4_ PID - PID.csv:27 PID-27
Extension: VeteranMilitaryStatus
Id: veteran-military-status
Description: """
A code indicating the military status assigned to a veteran.
This extension corresponds to PID-27 of the v2 PID segment.
"""
* ^context.type = #element
* ^context.expression = "Patient"
* value[x] only CodeableConcept
* valueCodeableConcept 1..1

// segments/HL7 Segment - FHIR R4_ PV2 - PV2.csv:7 PV2-7
Extension: VisitUserCode
Id: Visit-User-Code
Description: """
Categorization of a patient's encounter.
This extension corresponds to PV2-7 of the v2 PV2 segment.
"""
* ^context.type = #element
* ^context.expression = "Encounter"
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
