The HL7 V2 to FHIR Implementation Guide supports the mapping of HL7 Version 2 messages
segments, datatypes and vocabulary to HL7 FHIR Release 4.0 Bundles, Resources, Data
Types and Coding Systems.  It represents a cumulative mapping of the standard, not any HL7 v2 based implementation guide.  That means that it is not focused on any particular HL7 v2 version, although we started with HL7 v2.9, rather that it aims to address all message structures, segments, and data types that are represented in the latest HL7 v2 version and any components that were deprecated yet known to still be in use in messages based on older versions.  

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

* [this entire guide](full-ig.zip)
* the definition resources in [csv](csvs.zip) format

The source code for this Implementation Guide can be found on [GitHub](https://github.com/HL7/v2-to-fhir/).

You can also find [references and links to implementations](links.html).
