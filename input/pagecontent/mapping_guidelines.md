The mappings for this round of review are documented and published using a spreadsheet style format.  This format allows for easy, side-by-side editing and review of from=to mappings with supporting information.  At the same time, the content must be computable enabling a mapping engine to ingest the mappings to populate their base mappings for subsequent refinement.

To this end, the infrastructure is based on a number of FHIR ConceptMap profiles to capture the relevant data for message structure, segment, data type, and vocabulary mappings.  Until such time that tools are available to directly edit the ConceptMaps, Google Spreadsheets are used to capture the mappings and populate the ConceptMaps in gitHub at regular intervals.  Regardless of the tools used, as the displayed format will be spreadsheet style, we refer to the mappings as mapping spreadsheets.

The following provides a review for each of the types of spreadsheets the mapping and supporting information capture.

### Mapping Spreadsheets
Mapping is authored using CSV files.  The format of the mapping files varies depending on whether the V2 artifact
being mapped is a Message, Segment, Data Type, or Table.

The spreadsheet title has a defined format to enable conversion from .csv into FHIR ConceptMap:

<table>
<tr> <wbr>
HL7 {Message|Segment|Data Type|Code System} - FHIR {R4|R5}: [{v2 Message Type|v2 Segment|v2 Data Type|v2 Table}]([{FHIR Resource|FHIR Data Type|FHIR Metadata Data Type|FHIR Vocabulary}-{QualifierName}])
</wbr>
</tr>
</table>

Examples:

* HL7 Message - FHIR R4: ADT_A01
* HL7 Segment - FHIR R4: OBR[ServiceRequest]
* HL7 Segment - FHIR R4: OBX[Observation-Component]
* HL7 Data Type - FHIR R4: CQ[ServiceRequest.duration]

<span id="general-format"> </span>
#### General Format/Approach
* Regardless of the mapping spreadsheet, the spreadsheet is organized into three sections:
  * HL7 v2
     * The v2 elements being mapped.

  <span id="conditions"> </span>
  * Conditions
     * The condition(s), if any, that determine whether the v2 element is mapped
        * If there is no condition, the mapping must always be applied

  * HL7 FHIR
     * The FHIR element that the v2 element is mapped to.

<span id="sort-order"> </span>
* Rows are listed in sequence of how they appear in the v2 standard.
  * The first column, Sort Order, provides a sort order that can re-create the original v2 standard sequence in case one opts to re-sort/filter the rows.
  * In general, the content in the spreadsheet is declarative, not procedural but when implementing a tool to perform transformations, implementers must consider that in some cases relationships do exist between constructed FHIR resources
     * For example, for messages, there may be dependencies between segments
         * For example, the PID segment will create a Patient resource which is then added to with the content of the PD1 segment and referenced by the Encounter resource

* One v2 element will have one or more rows as multiple or different FHIR elements need to be populated.
   * Each row is executable on its own, whether it involves a different or the same v2 element.
   * When a single v2 element has multiple rows, the order of execution of the rows for that element should not be important
   * The sort order number will repeat when the v2 component is repeated to this end.  For example, if ORC-2 Placer Order Number maps to two different FHIR elements, then both rows would have the same sort order number "2".

* A <span id="condition">condition</span> includes the following statements:
   * If computable, both a condition using:
       * the following easy to read syntax (referenced as Computable ANTLR - further documented here: [ANTLR Condition Syntax](antlr_condition_syntax.html))

         * IF X EQUALS "A"
         * IF X NOT EQUALS
         * IF X VALUED
         * IF X NOT VALUED
         * IF X NOT VALUED ERROR   *** The mapper is to stop mapping of the Message and raise an error.
         * IF IN ("A","B", "C")
         * IF NOT IN ("A","B", "C")
         * IF X expression OR Y expression
         * IF NOT (X expression OR Y expression)
         * IF NOT (X expression AND Y expression)
         * IF X expression AND Y expression
         * IF ((X expression AND Y expression) OR C expression)
         * IF X LST.COUNT EQUALS  ***LST.COUNT is the count of entries in the list at hand
         * IF X LST.COUNT NOT EQUALS
         * IF X LST.COUNT GREATER THAN
         * IF X LST.COUNT LESS THAN
         * IF X LST.COUNT GREATER THAN OR EQUALS
         * IF X LST.COUNT LESS THAN OR EQUALS
         * IF X LENGTH ***LENGTH is the physical length of the value
         * IF X LENGTH NOT EQUALS
         * IF X LENGTH GREATER THAN
         * IF X LENGTH LESS THAN
         * IF X LENGTH GREATER THAN OR EQUALS
         * IF X LENGTH LESS THAN OR EQUALS

       * The [FHIRpath syntax](https://www.hl7.org/fhir/fhirpath.html) (referenced as Computable FHIRpath)
   * If not computable or in addition to the computable condition further non-computable conditions must be considered as well (referenced as Narrative).

* [n] Notation
  * Multiple v2 components within the same mapping spreadsheet may need to update the same instance of a FHIR element, or should yield a new instance of the same FHIR element.  To distinguish whether the mappings are to the same or different FHIR element instance each FHIR element at the appropriate place in the path will use the [n] notation.  Those FHIR elements with the same value in the same place in the path should apply the mapping to the same instance of that element as an addition to existing content.
     * Example: PID-13 Phone Number - Home and PID-14 Phone Number - Business are both mapped to Patient.telecom.  However, they need to yield different instances.  Thus, PID-13 maps to Patient.telecom[1] and PID-14 to Patient.telecom[2].
     * Exmample: If both PID and PD1 need to populate the same Patient resource instance, the Patient would be referenced as Patient[1] and Patient[1] so that the data from both segments appear in the same resource instance. 
  * Note that this does not mean that there is a first and second slot where one is kept empty if not available in v2.  Rather it just means they are to be different if both present.
  * If the mapping needs to yield multiple instances and the v2 value needs to be applied to multiple FHIR element instances, [each] is used.
     * Example:  OBX-2 Observation Identifier needs to be mapped to all Observation.component.code instances if OBX-5 Value contains multiple values.  The FHIR attribute being mapped to then states Observation.component[each].code.
  * While typically these notations are a suffix on the FHIR element it applies to, in Data Type mappings you may see these as seemingly a prefix.  This would effectively apply to the FHIR element (typically an attribute) where that FHIR data type is actually referenced.
     * Example: [1].Contactpoint.value and [2].ContactPoint.value mapped to from the v2 XTN data type would reflect the first instance of the attribute repetition is actually used, e.g., Patient.telecom that can repeat and is mapped to from PID-13 and PID-14 which have the v2 XTN data type.

* Each mapping row includes comments to document any considerations for the mapping that can aid in further refining the mappings for local use.
* Note that a FHIR attribute may be mapped to by both a segment field or a field component from another field in that segment, e.g., ROL-1 Role Instance ID and ROL-4 Role Person.  That involves two separate spreadsheets for different compoents (segment spreadsheet and data type component) and therefore should be mapped to different instance of a FHIR attribute.  In this example RelatedPerson.identifier.

#### Message Spreadsheet

{% include message_mapping.md %}

#### Segment Spreadsheet

{% include segment_mapping.md %}


There are situations where the field/attribute cardinalities between v2 and FHIR do not match.  These are highlighted in the mapping spreadsheet. Specifically, the following are causing potential challenges:
<table>
<tr>
<th>v2 Cardinality</th>
<th>FHIR Cardinality</th>
<th>Guidance</th>
</tr>
<tr>
<td>0..1</td>
<td>1..n</td>
<td>When the v2 message can empty and FHIR requires an attribute to be valued, a nullFlavor is preferred to indicate why it is absent.  The mapping will specify what the nullFavlor should be.  However, it there is nullFlavor, then the local implementation of the mapping needs to determine what value should be used.</td>
</tr>
<tr>
<td>n..*</td>
<td>n..1</td>
<td>When the v2 messages allows for multiple values in a field and FHIR only allows for one (after also considering the cardinalities within the FHIR data type that may apply), then the local implementation needs to decide which value is included in the first level field and which should go into an extension.</td>
</tr>
<tr>
<td>1..1</td>
<td>1..1 with conditions</td>
<td>When there is conditional mapping, there may be a situation that occurs where the condition(s) would yield that nothing is to be mapped, but FHIR requires a value.  If that is the result of a valid set of conditions, and there is no nullFlavor that is applicable,  then the local implementation of the mapping needs to determine what value should be used.</td>
</tr>
</table>

Note generally that extensions will be pursued for those situations where we know that actual implementations would run into this challenge, but will not pursue those until somebody indicates they need that.  Where an upcoming FHIR version includes the attribute of interest we will use that as an extension using the format  http://hl7.org/fhir/[version]/StructureDefinition/extension-[Path] according to the guidance provided here: http://hl7.org/fhir/versions.html#extensions.

Data Type mapping spreadsheets are only provided for complex v2 data types, not primitive v2 data types. In the case of v2 date and time data types (DTM, TM, ) the mapping is more complex as the format in v2 is not the same as in FHIR. One must use ISO 8601 (https://www.iso.org/iso-8601-date-and-time-format.html) to understand the variances and may use platform specific reformatting utilities/services to reformat the values. This would cover DTM=>dateTime, DTM=>date, DTM=>instant, DT=>dateTime, DT=>date, DT=>instant, TS=>dateTime, and TM=>time.

#### Data Type Spreadsheet

{% include datatype_mapping.md %}

#### Code System Spreadsheet

{% include table_mapping.md %}

