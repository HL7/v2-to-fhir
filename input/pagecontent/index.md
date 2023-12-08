<p id="publish-box">
<b>Review Note:</b>
<br>The focus of this first HL7 v2-to-FHIR STU Ballot is on an initial set of messages, segments, data types, and vocabulary to establish the foundation on which to expand and cover the full range of HL7 v2 messages in actual use.  The purpose is primarily to solicit feedback on the accuracy of the proposed mappings.  Secondary is to solicit feedback on structure and navigation.  Suggestions on additional messages, segments, data types, and vocabulary to prioritize supporting real-world use are welcome as well and should be marked as A-S in the ballot spreadsheet.  Lastly, specific questions are provided [here](questions.html).
<br>
<br>
The following are known JIRAs waiting for resolution.  Feedback and voting on these as part of the ballot can further guide appropriate resolution and inclusion:
<ul>
   <li>[FHIR-33007] Aligning Appointment.servicetype and .basedOn</li>
   <li>[FHIR-33036] Observation needs type and subtype extension</li>
   <li>[FHIR-33037] Observation Location extension needed</li>
   <li>[FHIR-33041] Clarify "in process" as part Observation.status="registered" or create a separate status</li>
   <li>[FHIR-33042] Include Observation.status "appended"</li>
   <li>[FHIR-33043] Clarify "not asked" as part Observation.status="final" or create a separate status</li>
   <li>[FHIR-34194] Add businessEvent extension</li>
   <li>[FHIR-43298] Attachment.data only supports binary64</li>
   <li>UPS-217] Add "sender-application" to http://terminology.hl7.org/CodeSystem/provenance-participant-type</li>
</ul>
<br>
The following JIRAs have been dispositioned and will be applied before publication as they are formatting issues:
<ul>
   <li>[V2-5] Duplicate information</li>
   <li>[V2-25538] MSH[MessageHeader] is presented in Message Table format, not Segment Table Format</li>
   <li>[V2-25632] Segment Mapping Headers out of sync</li>
   <li>[FHIR-V2-25633] Data Type Mapping table columns out of sync</li>
</ul>
</p>
The HL7 V2 to FHIR Implementation Guide supports the mapping of HL7 Version 2 messages
segments, datatypes and vocabulary to HL7 FHIR Release 4.0 Bundles, Resources, Data
Types and Coding Systems.

This implementation guide provides the Concept Maps and references to the Spreadsheets
used to generate them, as well as additional information and material to support validation
and testing of implementations.

This guide is organized into three main sections:

   1. [Introduction](introduction.html)<br/>This section provides an overview of the project, and explains [how mapping is performed](mapping_guidelines.html).
      You can also find [questions to address in this ballot](questions.html), the [glossary](glossary.html)
      and [acknowledgements](acknowledgements.html).

   2. [Mapping Guidelines](mapping_guidelines.html)<br/>This section provides the rules and guidelines used to document
   the mappings such as identification of each HL7 v2 element with a mapping, the conditions
   under which the HL7 v2 element may map to one or more HL7 FHIR components, as well references
   to more specific mappings considering context, e.g., when to map PID data to Patient vs.
   RelatedPerson, or a CWE encoded element to either CodeableConcept, Coding, or code.

   3. [Mappings](mappings.html)<br/>This section provides an index to the mappings produced by this project, organized
      by [message](message_maps.html), [segment](segment_maps.html),[datatype](datatype_maps.html),
      or [vocabulary](coding_system_maps.html) mapping.

   4. [Implementation and Use](implementation_considerations.html)<br/>This section covers implementation considerations,
      [validation](validation.html), and provides example [test conversions](test_conversions.html).

   5. [Profiles](profiles.html)<br/>This section provides the profiles for the HL7 FHIR ConceptMap
   that describes the data maintained in Concept Maps for each of the message, segment, data type,
   and vocabulary mapping, as well as a profile for HL7 FHIR Bundle that establishes the basic
   structure/content of a HL7 FHIR message resulting from an HL7 v2 message.

Click on any of the links above, head on over the [table of contents](toc.html), or
if you are looking for a specific artifact, check out the [index](artifacts.html).

You can also download:

* [this entire guide](full-ig.zip),
* the definition resources in [json](definitions.json.zip), [xml](definitions.xml.zip), [ttl](definitions.ttl.zip), or [csv](csvs.zip) format, or
* the example resources in [json](examples.json.zip), [xml](examples.xml.zip) or [ttl](examples.ttl.zip) format.

The source code for this Implementation Guide can be found on [GitHub](https://github.com/HL7/v2-to-fhir/).

You can also find [references and links to implementations](links.html).
