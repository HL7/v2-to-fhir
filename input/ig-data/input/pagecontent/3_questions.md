The v2-to-FHIR Project Team is soliciting general comments from reviewers as well as specific comments in a number of areas (see below). Comments should be documented in the standard HL7 balloting spreadsheet. At this time, Jira should not be used to submit comments.

### Impact/Scope:
* We are looking to gather case studies from reviewers as to how they could see this project impacting the work they are currently doing in the v2/FHIR space.
* What workflows will be used in conjunction with these mappings? Will implementations be using messaging or RESTful APIs once the v2 has been transformed to FHIR? What impact could this have on the mappings? For example, how could the workflow impact the population of resource .id values? What types of Bundles will need to be constructed to house the transformed resources?
* We are also looking for input on which use cases (message types, other implementations) we should be focusing on (eg billing or transcription/documents).
* Please comment on implementation considerations we have documented. Are there other things to consider on a per implementation basis?


### Infrastructure:
* We invite feedback on the best way to document the mappings. Currently we provide content in tabular form and as ConceptMap resources. Is there a preferred format? Is there an alternative format we should be considering?
* Should the original v2 message be included in the FHIR Bundle? One option is a DocumentReference or something pointed to in a Provenance record.
* We are looking for feedback on the implementation of Provenance. Currently every message includes the creation of Provenance resources for the message source. As well selected messages (eg OML) also include Provenance for specific segments (eg ORC contents fields related to the provenance of the ServiceRequest). We are interested in the appropriateness of the existing mappings and any other mappings that should be added.
* Some mappings are such that the v2 field is allowed to repeat but the cognate FHIR attribute is not. This can lead to a potential loss of data as the FHIR resource is not capable of holding all of the information conveyed in the v2 message. We are looking for input on how to handle these mismatches.

### Mapping Content:
* Are there v2 fields in use by Production interfaces that are not yet mapped?  If so, please provide the v2 segment-field identifier and a suggested FHIR component for each.
* Are v2 fields mapped differently than expected?  If so, please provide the v2 segment-field identifier and a proposed alternative mapping.


Specific content mapping questions:

#### AL1 segment
* AL1-4 (Allergy Severity Code) is defined as indicating "the general severity of the allergy". The project team has discussed whether or not this concept best maps to AllergyIntolerance.criticality (Estimate of the potential clinical harm, or seriousness, of the reaction to the identified substance.) or AllergyIntolerance.reaction.severity (Clinical assessment of the severity of the reaction event as a whole, potentially considering multiple different manifestations.). We are asking for input on which FHIR element is the better mapping or if the mappings should indicate both elements and leave the selection of the most appropriate element as an implementation decision. A similar issue exists for the IAM segment.

#### DG1 segment
* DG1-19 (Attestation Date/Time) is defined as containing "the time stamp that indicates the date and time that the attestation was signed". The project team is asking for input as whether this maps best to Condition.recordedDate (Date record was first recorded) or the Condition extension assertedDate (The date on which the existence of the Condition was first asserted or acknowledged).

#### OBX segment
* An OBX segment can represent a standalone Observation or may represent a component of an Observation (that is multiple OBX segments may be components of a single Observation). The decision between Observation or Observation Component is likely to be an implementation decision and/or run time decision. We are looking for input from the community has how to best represent the choice of Observation versus Observation.component in the Message maps. Several use cases have been document along with initial proposals for a preferred solution for each use case.

#### ROL segment
* An ROL segment following the PID segment may represent either a representative of either organization or the patient. The participant may be better represented as either a Practitioner/PractitionerRole or RelatedPerson. We are seeking input on which roles are best mapped to these two resource types.

#### XAD segment
* XAD-8 has no clear mapping, but we could use Address.line.  Would that be acceptable?  It would have to be clear from the value that it is a geographic designation that could be used for analytics

