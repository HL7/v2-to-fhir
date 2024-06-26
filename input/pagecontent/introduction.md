With the advent of HL7<sup>&copy;</sup> FHIR<sup>&copy;</sup>, an HL7 endorsed mapping of HL7 v2 components to FHIR components that can act as a starting point for implementations would aid in the consistent transition of data from v2 messages into FHIR based approaches (messages, persistence, RESTful APIs). The current mapping information in FHIR is limited to addressing FHIR components only and is incomplete in that it does not go down to the data types component level nor does it cover all commonly used v2 data elements.

This project will develop v2-to-FHIR maps for v2 messages, segments and data types to standard FHIR elements, as well as agreed to extensions where there is a gap in FHIR. The initial focus of the project is on commonly used v2 message structures and the segment and data types building blocks used to construct those messages.  Over time, other v2 message structures will be added based on interest and demand.

### Scope
The scope of the project is:

* The most current v2 version is the v2 source.
  * Initially this will be v2.9, and as newer versions become available, updates will be made ideally in parallel with the release of newer v2 versions.  While the latest v2 version is used to map, any deprecated data elements are mapped as well to enable mapping from prior HL7 v2 versions.  Effectively, from a v2 perspective, we are creating a cumulative map that enables a singular definition, yet any older message, or messages with pre-adoptions from more current versions can go through the same mapping process as fields are fixed.
* FHIR R4 is the initial FHIR target.
  * As newer FHIR versions emerge, new mapping tables will be created as the destinations may have changed while FHIR elements are not yet normative.
* The goal is to establish reusable data types and segment maps to reduce the overhead of maintaining maps for a wide variety of message structures
* Message Structures:
  * The initial focus will be on commonly exchanged v2 message structures (e.g., ADT, order, results, vaccinations).
  * The transformation of a v2 message will result in a bundle of related FHIR resources, potentially including MessageHeader, Provenance and Task resources.
  * Note that different FHIR workflows (e.g., messaging, RESTFul puts) may be used once the v2 to FHIR transformation has occurred. The initial project scope will support the FHIR messaging paradigm but will not be prescriptive of any particular FHIR workflow.
  * Message maps will reference re-usable segment maps which can be reused for mapping of multiple messages.
* Fields/Segments:
  * Typically, a segment will correspond to a FHIR resource although may map to a FHIR data type.
  * Initial segment maps will focus on those segments contained with the initial set of v2 messages and that are typically present.
  * A segment may require a different map to a different FHIR component depending on the context of the message structure it is used.  Consequently, segment map flavors will be created to simplify the maps yet maximize re-use where possible.
  * For every field known to be used in real world messaging in a mapped segment, the project will either identify:
    * The equivalent core FHIR resource element or,
    * A FHIR extension (either existing or proposed) to encourage consistent use rather than every implementation defining their own extensions.
  * Segment maps will reference re-usable data types maps which can be reused for mapping of multiple segments and fields.
* Data Types:
  * Establish v2 to FHIR data types mappings and resolve missing data type components in FHIR for V2 data type components.
  * A data type may require a different map to a different FHIR component depending on the context of the segment or other data type it is used.  Consequently, a data type map flavors will be created to simplify the maps yet maximize re-use where possible.
* Vocabulary:
  * Where a coded v2 data type maps to a FHIR data type which uses a different set of coded values, an initial vocabulary map is provided, either by referencing the applicable Unified Terminology Governance (UTG) map or creating a proposed map that UTG can adopt.
  * Note that not all elements (in either V2 or FHIR) provide suggested or required value sets, so it is not always possible to provide a vocabulary mapping.
  * Where a v2 table is available and the FHIR value set is not specified, the V2 codes may be used in the FHIR element.
  * Within a map, a subset of v2 codes may not have a corresponding code in the FHIR value set.
* Implementation Considerations:
  * Where the project team is unable to provide definitive mappings due to expected variations in local implementations, implementation considerations are provided to help guide implementers as they apply the standard mappings to their own circumstances.
  * In the case where a v2 codes does not have a corresponding code in the FHIR value set, implementers are encouraged to use the HL7 Terminology (THO) process to submit requests to HL7 to update vocabularies and improve alignment of terminologies across product families.
  * Note that the mappings are rooted in the base standards and do not account for constrains applied in specific HL7 published implementation guides (e.g., LOI, LRI, Immunization messaging), nor do maps account for any local variations which are not compliant with the base standard. Affiliates, jurisdictions, other parties, as well HL7 itself for implementation guides it owns can use the base v2-to-FHIR mappings to further establish implementation guide specific mappings.
* Maintenance
  * Once mappings have been established, both FHIR and v2 are expected to evolve and the mappings will be kept up-to-date, as closely tied to new releases of either as possible.
  * Once the basic format and initial message structure/segment/data type mappings have been validated, work will continue to expand the scope of messages and segments being mapped.
* Transformation Validation
  * Provide a mechanism for validating that transforms from a given engine adhere to the mappings developed by the project (or custom/extended mappings from implementers)
* Documentation and Publication Infrastructure
  * Create a documentation and publication infrastructure that enable easy editing of proposed mappings, human readable review formats (e.g., spreadsheet format) to enable validation, balloting, and mapping reference documentation, while providing computable mappings for mapping engines to ingest unambiguously across any mapping engine.  Until such time the project utilizes Google Spreadsheets that are indexed [here](https://docs.google.com/spreadsheets/d/1PaFYPSSq4oplTvw_4OgOn6h2Bs_CMvCAU9CqC4tPBgk/edit#gid=1419236962) to document the mappings that are then pulled into the IG for the CI Build and publication.
  * Upon publication of the first version, work will be initiated to enable FHIR resources and data types to directly reference available FHIR mappings rather than the summary mappings currently available. 


The intent is to ultimately achieve normative status of the mappings.

### Additional Mappings
The mappings will be expanded over time thus messages, segments, fields, data types, or code sets you use may not yet be included.  Please submit a JIRA for any missing mappings that you would like to see in the next version.  Note that any z-data (messages, trigger events, segments, data types) you may have will not be considered for inclusion.  Please aim to identify the proper equivalent in a later version and base your mappings on that.  If there is not an equivalen you always may enter a JIRA to add such data to the base standard.
