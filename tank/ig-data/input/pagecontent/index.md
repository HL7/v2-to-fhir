Start @Keith Boone Note - This needs to be a text box that has background color like this page http://hl7.org/fhir/uv/livd/2019Sep/ the section on top in reddish glow.
<p>   
Review Note:
<br>The purpose of this Peer Review is primarily to solicit feedback on the structure, navigation, and general content topics of the v2-to-FHIR Guide.  Specific questions are provided [here](questions.html) in the <b>Impact/Scope</b> and <b>Infrastructure</b> sections.  Feedback on the accuracy and completeness of the mappings included is secondary, that will be the focus of the Ballot cycles, but any feedback on an of the mappings is welcome, including the question in the <b>Mapping Content</b> on our questions page.
<br>
End @Keith Boone Note
<p>
The HL7 V2 to FHIR Implementation Guide supports the mapping of HL7 Version 2 messages
segments, datatypes and vocabulary to HL7 FHIR Release 4.0 Bundles, Resources, Data
Types and Coding Systems.

This implementation guide provides the Concept Maps and references to the Spreadsheets
used to generate them, as well as additional information and material to support validation
and testing of implementations.

This guide is organized into three main sections:

   1. [Introduction](introduction.html)<br/>This section provides an overview of the project, and explains how mapping is performed.

   2. [Mapping Guidelines] (mapping_guidelines.html)<br/>This section provides the rules and guidelines used to document
   the mappings such as identification of each HL7 v2 element with a mapping, the conditions 
   under which the HL7 v2 element may map to one or more HL7 FHIR components, as well references
   to more specific mappings considering context, e.g., when to map PID data to Patient vs. 
   RelatedPerson, or a CWE encoded element to either CodeableConcept, Coding, or code.
   
   3. [Mappings](mapping_outputs.html)<br/>This section provides an index to the mappings produced by this project, organized
   by message, segment, datatype, or vocabulary mapping.

   4. [Implementation and Use](implementation_considerations.html)<br/>This section covers implementation considerations and validation, 
   and provides example test conversions.
   
   5. [Profiles] (profiles.html)<br/>This section provides the profiles for the HL7 FHIR ConceptMap
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
