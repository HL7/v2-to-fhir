* HL7 v2
   * Sort Order
      * See the [General Guidelines](mapping_guidelines.html#sort-order)

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
     * See the [General Guidelines](mapping_guidelines.html#condition)

* HL7 FHIR
   * Primary Target
      * The FHIR resource that is the main resource that the v2 segment will map to.
   * Segment Map
      * The URL to the Segment Map that is to be used for the segment in this message structure in this location.
      * There may be multiple flavors of the segment maps to support different mappings.  The flavor is appended to the end of the segment name using [] brackets, e.g., MSH[Provenance - Originator].
   * References
      *  An assignment that indicates for the FHIR resource being mapped to the attribute that needs to reference a particular other resource.  For example, a PV1 segement being mapped to an Encounter resource must reference the Patient resource that the PID earlier in the message was mapped to.

