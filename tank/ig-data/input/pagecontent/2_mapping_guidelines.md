The mappings for this round of review are documented and published using a spreadsheet style format.  This format allows for easy, side-by-side editing and review of from=to mappings with supporting information.  At the same time, the content must be computable enabling a mapping engine to ingest the mappings to populate their base mappings for subsequent refinement.

To this end, the infrastructure is based on a number of FHIR ConceptMap profiles to capture the relevant data for message structure, segment, data type, and vocabulary mappings.  Until such time that tools are available to directly edit the ConceptMaps, Google Spreadsheets are used to capture the mappings and populate the ConceptMaps in gitHub at regular intervals.  Regardless of the tools used, as the displayed format will be spreadsheet style, we refer to the mappings as mapping spreadsheets.

The following provides a review for each of the types of spreadsheets the mapping and supporting information capture.

### Mapping Spreadsheets

#### General Format/Approach
* Regardless of the mapping spreadsheet, the spreadsheet is organized into three sections:
  * HL7 v2
     * The v2 elements being mapped.

  * Conditions
     * The condition(s), if any, that determine whether the v2 element is mapped
        * If there is no condition, the mapping must always be applied

  * HL7 FHIR
     * The FHIR element that the v2 element is mapped to.

* Rows are listed in sequence of how they appear in the v2 standard.
  * The first column, Sort Order, provides a sort order that can re-create the original v2 standard sequence in case one opts to re-sort/filter the rows.
  * In general, the content in the spreadsheet is declarative, not procedural but when implementing a tool to perform transformations, implementers must consider that in some cases relationships do exist between constructed FHIR resources
     * For example, for messages, there may be dependencies between segments
         * For example, the PID segment will create a Patient resource which is then added to with the content of the PD1 segment and referenced by the Encounter resource

* One v2 element will have one or more rows as multiple or different FHIR elements need to be populated.
   * Each row is executable on its own, whether it involves a different or the same v2 element.
   * When a single v2 element has multiple rows, the order of execution of the rows for that element should not be important
   * The sort order number will repeat when the v2 component is repeated to this end.  For example, if ORC-2 Placer Order Number maps to two different FHIR elements, then both rows would have the same sort order number "2".

* A condition includes the following statements:
   * If computable, both a condition using:
       * the following easy to read syntax (referenced as Computable ANTLR - further documented here: [ANTLR Condition Syntax](antlr_condition_syntax.md))
```
        IF X EQUALS "A"
        IF X NOT EQUALS
        IF X VALUED
        IF X NOT VALUED
        IF IN ("A","B", "C")
        IF NOT IN ("A","B", "C")
        IF X expression OR Y expression
        IF NOT (X expression OR Y expression)
        IF NOT (X expression AND Y expression)
        IF X expression AND Y expression
        IF ((X expression AND Y expression) OR C expression)
        IF X LST.COUNT EQUALS  ***LST.COUNT is the count of entries in the list at hand
        IF X LST.COUNT NOT EQUALS
        IF X LST.COUNT GREATER THAN
        IF X LST.COUNT LESS THAN
        IF X LST.COUNT GREATER THAN OR EQUALS
        IF X LST.COUNT LESS THAN OR EQUALS
```

    * The [FHIRpath syntax](https://www.hl7.org/fhir/fhirpath.html) (referenced as Computable FHIRpath)
  * If not computable or in addition to the computable condition further non-computable conditions must be considered as well (referenced as Narrative).

* [n] Notation
  * Multiple v2 components may need to update the same instance of a FHIR element, or should yield a new instance of the same FHIR element.  To distinguish whether the mappings are to the same or different FHIR element instance each FHIR element at the appropriate place in the path will use the [n] notation.  Those FHIR elements with the same value in the same place in the path should apply the mapping to the same instance of that element.
  * Example: PID-13 Phone Number - Home and PID-14 Phone Number - Business are both mapped to Patient.telecom.  However, they need to yield different instances.  Thus, PID-13 maps to Patient.telecom[1] and PID-14 to Patient.telecom[2].
  * Note that this does not mean that there is a first and second slot where one is kept empty if not available in v2.  Rather it just means they are to be different if both present.
  * If the mapping needs to yield multiple instances and the v2 value needs to be applied to multiple FHIR element instances, [each] is used.
  * Example:  OBX-2 Observation Identifier needs to be mapped to all Observation.component.code instances if OBX-5 Value contains multiple values.  The FHIR attribute being mapped to then states Observation.component[each].code.
  * While typically these notations are a suffix on the FHIR element it applies to, in Data Type mappings you may see these as seemingly a prefix.  This would effectively apply to the FHIR element (typically an attribute) where that FHIR data type is actually referenced.
  * Example: [1].Contactpoint.value and [2].ContactPoint.value mapped to from the v2 XTN data type would reflect the first instance of the attribute repetition is actually used, e.g., Patient.telecom that can repeat and is mapped to from PID-13 and PID-14 which have the v2 XTN data type.

* Each mapping row includes comments to document any considerations for the mapping that can aid in further refining the mappings for local use.

#### Message Spreadsheet

* HL7 v2
   * Sort Order
      * See above

   * Identifier
      * Contains an xml/json like path using the HL7 v2 XML approach of [MessageStructure].[GroupName or CHOICE].[SegmentName] where there may be multiple Group Names in play.
      * When there is a segment in multiple places in the message structure where this path would yield the same string even though it involves different uses of the same segment, thus potentially different mappings, the main segment preceding the segment at hand will be included in front of that segment using a ":follow:" tag.
         * For example, the ARV segment is used after the PID and the PV1 in the ADT_A01 structure.  There may be in either case other segments between the PID (or PV1) and the ARV.  The identifier in both cases would be ADT_A01.ARV.  To distinguish the two uses and likely mappings of ARV, the identifier will be ADT_A01:follow:PID.ARV for the ARV effectively related to the PID and ADT_A01:follow:PV1.ARV for the ARV effectively related to the PV1.
         * The primary segment it is related to will be used rather than any segments that may still be listed be between them (e.g., PD1) as they may not be present.

  * Syntax
     * Contains the first column of the Message Structure Table in the base standard.
     * This is included as it is a familiar format to understand the message structure using the { [ ] } brackets.

  * Name
     * The formal name of the segment or group
  * Cardinality (Min and Max)
     * The cardinality expressed numerically.
     * Note that "-1" is used for the max cardinality where v2 indicates it to be "*".

  * Condition
     * See above

* HL7 FHIR
   * Primary Target
      * The FHIR resource that is the main resource that the v2 segment will map to.
   * Segment Map
      * The URL to the Segment Map that is to be used for the segment in this message structure in this location.
      * There may be multiple flavors of the segment maps to support different mappings.  The flavor is appended to the end of the segment name using [] brackets, e.g., MSH[Provenance - Originator].
   * References
      * Defines for the Primary Target resource which resource.id it needs to reference.
      * Used to establish attributes involved in referencing the row at hand and a resource created/updated elsewhere in the message when converting the v2 message to a bundle of FHIR resources.


#### Segment Spreadsheet
* HL7 v2
   * Sort Order
      * See above
   * Identifier
      * Contains the formal Segment Name and Field Sequence according to the base standard using "-" as the delimiter.
   * Name
      * The formal name of the field in the most current published version
   * Data Type
      * The data type of the field in the most current published version if not deprecated
      * Otherwise it is the data type at the time it was deprecated and removed.
   * Cardinality (Min and Max)
      * The cardinality in the most current published version expressed numerically if not deprecated
      * Otherwise it reflects the cardinality at the time it was deprecated and removed.
* Condition
   * See above
* HL7 FHIR
   * FHIR Attribute
      * The first column reflects an existing FHIR attribute in the target FHIR version.
      * The second column reflects a proposed extension.  It will be expressed with #ext-......# around the proposed name.  Once approved, the formal name will be put in the first column.
      * This approach will enable tooling to already process existing FHIR attributes and not have to create special handling for elements still being proposed.
   * Data Type
      * The FHIR attribute's data type in the target FHIR version.
   * Cardinality (Min and Max)
      * The FHIR attribute's minimum and maximum cardinality in the target FHIR version.
   * Data Type Mapping
      * The URL to the Data Type Map that is to be used for the attribute in this segment.
      * There may be multiple flavors of the data type maps to support different mappings.  The flavor is appended to the end of the data type name using [] brackets, e.g., CWE[Coding].
   * Vocabulary Mapping
      * The URL to the Vocabulary Map that is to be used for the coded element for this attribute.

#### Data Type Spreadsheet
* HL7 v2
   * Sort Order
      * See above
   * Identifier
      * Contains the formal Data Type Name and Component Sequence according to the base standard using "." as the delimiter.
      * In a couple of places, e.g., DTM data type, mapping is based on the physical position in the component.  This will be noted using (pn)(x-y), e.g., DTM.(p1)(3-4)
         * (pn) - the part of the data type, e.g., (p1) for part 1.
         * (x-y) - the position within the part, e.g., (3-4).  This may just be a single position, e.g., (5).
         * Note the use of parts is relatively arbitrary.  In the case of DTM this is used for the year/month/date/time aspect vs. the time offset aspect.  However, if one wants to use the absolute position of across parts, add the position start/end (x and y) to the last position of the prior part.
   * Name
      * The formal name of the data type in the most current published version
   * Data Type
      * The data type of the component in the most current published version if not deprecated
      * Otherwise it is the data type at the time it was deprecated and removed.
   * Cardinality (Min and Max)
      * The cardinality in the most current published version expressed numerically if not deprecated
      * Otherwise it reflects the cardinality at the time it was deprecated and removed.
* Condition
   * See above
* HL7 FHIR
   * FHIR Attribute
      * The first column reflects an existing FHIR attribute in the target FHIR version.
      * The second column reflects a proposed extension.  It will be expressed with #ext-......# around the proposed name.  Once approved, the formal name will be put in the first column.
      * This approach will enable tooling to already process existing FHIR attributes and not have to create special handling for elements still being proposed.
   * Data Type
      * The FHIR attribute's data type in the target FHIR version.
      * Like the v2 data type, a physical position may be used, e.g., with DataTime.  See above for interpretation.
   * Cardinality (Min and Max)
      * The FHIR attribute's minimum and maximum cardinality in the target FHIR version.
   * Data Type Mapping
      * The URL to the Data Type Map that is to be used for the component in this segment.
      * There may be multiple flavors of the data type maps to support different mappings.  The flavor is appended to the end of the data type name using [] brackets, e.g., CWE[Coding].
   * Vocabulary Mapping
      * The URL to the Vocabulary Map that is to be used for the coded element for this attribute.

#### Code System Spreadsheet
* HL7 v2
   * Sort Order
       * See above
   * Code
      * The code as used in v2 for the concept
   * Text
      * The text as used in v2 for the concept
   * Code System
      * The code system/value set that the concept is part of.
* HL7 FHIR
   * Code
      * The code as used in FHIR for the concept
   * Display


When mapping from HL7 v2 messages to FHIR Resources, there are a number of cases where concept mapping needs to be performed.  When this mapping is performed, there may be information that is lost because it cannot be represented in a required coding system, or more specific detail may be lost when one or more codes is mapped to a singular required or preferred code in the FHIR specified terminology.

<table class="grid" >
<tr><th>FHIR Data Type</th><th>Binding</th><th>v2/FHIR Cardinality</th><th>Comments</th></tr></thead>
<tbody><tr><td rowspan='2'>code</td><td rowspan='2'>Required or Preferred</td><td>0..1/1..1</td>
<td><p>As the vocabulary is not the same, and the values are fixed in the FHIR Schema, the only way to record the original code is to attach it to an extension.&nbsp;</p><p>Preferred bindings are ONLY used with the code data type in Resource.language, and these should be treated as if they were required bindings.</p></td></tr>
<tr>
<td>0..*/1..*</td>
<td>This combination is rarely used in FHIR, only for FHIR definition or conformance resources and CoverageEligibilityRequest and CoverageEligibilityResponse, and so is not applicable to V2 conversion.</td></tr>
<tr>
<td rowspan='5'>Coding</td>
<td>Required</td>
<td>0..1/1..1/0..*/1..*</td>
<td>This combination is not presently used in FHIR</td>
<td>When there is a singular coding allow to a required or preferred term</td></tr>
<tr>
<td rowspan='2'>Preferred</td>
<td>0..1/1..1</td>
<td>&#xA0;</td></tr>
<tr>
<td>0..*/1..*</td>
<td>&#xA0;</td>
</tr>
<tr>
<td rowspan='2'>Extensible</td>
<td>0..1/1..1</td>
<td>&#xA0;</td></tr>
<tr>
<td>0..*/1..*</td>
<td><p>Only applicable to AuditEvent.entity.securityLabel, AuditEvent.source.type, AuditEvent.subtype, Consent.provision.class, Consent.provision.purpose, Consent.provision.securityLabel,&nbsp;ImagingStudy.modality, and StructureDefinition.keyword</p><p><br></p></td></tr>
<tr>
<td rowspan='6'>CodableConcept</td><td rowspan='2'>Required</td><td>0..1</td><td>&#xA0;</td></tr>
<tr>
<td>0..*/1..1/1..*</td>
<td>This combination is not presently used in FHIR</td></tr>
<tr>
<td rowspan='2'>Preferred</td>
<td>0..1/1..1</td>
<tr>
<td>0..*/1..*</td>
<td>&#xA0;</td></tr>
<tr>
<td rowspan='2'>Extensible</td>
<td>0..1/1..1</td>
<td>&#xA0;</td></tr>
<tr>
<td>0..*/1..*</td>
<td>&#xA0;</td></tr>
</tbody></table>
