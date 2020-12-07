This sections outlines implementation specific considerations that will have to be addressed during the implementation of v2-to-FHIR
transformation project. Not all of these issues will apply to every implementation, but each implementation should review and consider
he entire list to assess whether or not they are relevant for the project at hand. This list is not comprehensive and other
implementation considerations may emerge as transforms are developed, tested and implemented in a Production environment.

### Message Structures in Older Versions
In older versions, e.g., v2.3.1 the message structure in MSH-9 may have been omitted as the standard did not always include that in the message structure definition.  For example, the message definition for RDE^O01 in v2.3.1 does not include the message structure, thus implementers omitted that, even though in Table 0354 there was a structure defined RDE_O01.  When MSH-9.3 is empty, we suggest to derive the message structure to get to the proper map by using the message code and trigger event. I.e., when message code and trigger event is ABC^Nnn then use ABC_Nnn.  For RDE^O01 that would be RDE_O01.
We will be listing any known exceptions to that rule here as we find them.

### Variations in Cardinality
In several maps, the v2 field or element has a larger maximum cardinality than the mapped FHIR attributes. That is, some v2 elements are allowed to repeat while the cognate FHIR element is not allowed to repeat. We still provide these mappings, but if your implementation allows these v2 elements to repeat, data may be lost. Implementers should evaluate the likelihood of this happening. The project team welcomes examples where this occurs in existing implementations so that we can discuss possible solutions.

### Resource.id Generation and References
When the v2 message is mapped into a FHIR Bundle, resources need to have a resource.id.  At the time of the mapping the actual
Resource.id may not be known if the intent is to update or reference an existing resource.  The following guidance should be followed:

* Give resources a unique id within the bundle so all references in the bundle are correct.
  * Give resources a unique UUID
  * Base the id generation on information in the segment.  But that may vary, e.g.,
    * the UK may opt to use the NHS number for PID to Patient to then be used as reference.
    * another may create random numbers
    * etc.
  * Receiver cannot read any meaning in the value of the .id.

Depending on the next step, the Bundle may be forwarded in a FHIR message, the resource may be persisted as FHIR resources or
translated into local data structures, or used in subsequent RESTful APIs.  The system managing one or more of these steps may
therefore opt to not follow all of the above guidance as they may be able to already be capable of resolving the Resource.id to the
correct existing or new .id.

### Contained Resources
This implementation guide recognizes the distinction between stand-alone and [contained resources](https://www.hl7.org/fhir/references.html#contained)
but does not provide guidance in the mappings as the appropriate usage of contained resources. Implementers should consider the
appropriateness of using contained resources during the transformation process where insufficient data is available in the v2
message to create a stand-alone FHIR resource. For example, if an ROL segment is transformed into a PractitionerRole resource
including the address of the provider office in ROL-11 but lacks the provider's location in ROL-13 there may not be enough
information to create a stand-alone Location resource, but contained Location resource (including the address) may be included in
the PractitionerRole resource.

### Task Management
The FHIR standard includes extensive content related to [workflow management](http://hl7.org/implement/standards/fhir/workflow-module.html)
and [task management](http://hl7.org/implement/standards/fhir/task.html). While many v2 message types don't
infer tasks (eg, they report on a previously completed event), some message types (eg. order messages) may imply the need for an
external system to complete a task (eg. fullfill the order being requested). This implementation does include some mappings to the
Task resource but it is up to implementers to determine if it is appropriate to create Task resources during the transformation
process. For example, an order message may be directed to a system with the intent of notifying the system of the existence of the
order without any expectation that the receiving system will fulfill the order. In this case, the creation of a Task resource is
likely to not be appropriate. Implementers must understand the workflows associated with the data exchange to implement tasks
correctly.

### Provenance
The concept of data provenance is typically only indirectly addressed within the v2 standard, however provenance can often be
inferred by the data in various fields in the v2 message. For example, provenance may be inferred from data in the MSH segment (eg.
the responsible sending organization), the ORC segment (eg. the entering user) or TXA segment (eg. the authenticator). This
implementation guide does include some mapping to the Provenance resource but it is up to implementors to determine the level of
data provenance that should be captured during the transformation process. At a minimum, the authors of this document feel that it
may be appropriate to capture the provenance of the message source and the v2-to-FHIR transformation process. Additional provenance
may be captured from additional fields as appropriate for the implementation.

The guide does provide minimum provenance that is recommended to establish.  For every message, the MSH is mapped to the Provenance resource as well.  That Provenance resource may contain the original v2 message as well.  We do not provide specific mapping guidance on how to establish specific provenance on a FHIR resource back to the exact v2 segment in the message that yielded that (updated or new) resource.  However, you may include every resource created/updated as a result of this message as well in the Provenance resource created through the MSH[PRovenance] map, particularly if you included in this Provenance resoruce the full v2 message as well.


### Security
Under Construction.

### Patients
Identity management and patient merging/unmerging are complex processes at the best of times. Implementers should carefully consider
how these activities will be impacted by a v2-to-FHIR transformation project. In particular, the workflow chosen (eg. messaging versus
RESTful actions) and how Patient.id is populated may significantly impact how Patient resources are created, updated and deleted by
the receiving system.

### Encounters
Clinically focused v2 messages (eg. ORM/OML, ORU, MDM) may contain limited data regarding an associated patient encounter. This
data content may or may not be sufficient to unambiguously identify a matching encounter in the receiving system. The creation
of Encounter resources should be carefully considered during the implementation process. The use of contained Encounter resources
may be appropriate.

### Practitioners
In v2 messages, it is common for multiple fields (using the XCN data type) to document the data for the same provider (eg, the same
person may be the attending provider in the PV1 segment of an order message as well as the ordering provider in both the ORC and
OBR segments of the same message). In this case, it may be most efficient if the Encounter and ServiceRequest resources reference
the same Practitioner resource. It is critical that implementers consider how they will recognize duplicate provider references in
a given v2 message and reuse Practitioner resources efficiently. Deduplication logic based on data including identifiers, name and
credentials should be employed as part of the transformation strategy to identify potentially reusable resources.

In most FHIR resources, elements which allow a reference to a Practitioner resource also allow a reference to a PractitionerRole
resource. In most scenarios, a v2 field using the XCN data type will typically be mapped to the Practitioner resource, but
implementers may choose to map to the PractitionerRole resource instead. In a few places, an XCN field will be mapped to a
PractitionerRole resource when other fields in the segment can contribute content to the PractitionerRole resource to create a
more robust resource (for example, the ORC segment when mapped to ServiceRequest maps the Ordering Provider (ORC-12) field to
PractitionerRole because the Ordering Facility fields in ORC (ORC-21 through -23) can also contribute to the PractitionerRole resource).

### Results
#### Observations and Components
Depending on context and content an OBX segment in a v2 message may represent a wide variety of different types of data. Typically
however, the OBX segment will map to an Observation resource which in turn is referenced in some other resource (eg, the result
containing OBX segments in an ORU message will typically be transformed into Observation resources which are referenced in
DiagnosticReport.result). Even when an OBX segment clearly maps to an Observation resource, complications may arise when the
contents of multiple OBX segments must be considered as a whole in order to be fully understood or when there are multiple parts to
a single result (that is each OBX segment is a component of an Observation (eg Observation.component). It is critical that
implementers fully understand the type of content that may be presented in an OBX segment.

#### Multiple Occurrences of OBX-5
OBX-5 (Observation Value) is allowed to repeat in the v2 base standard however Observation.value[x] is constrained to a cardinality
of 0..1. In this case, the transform may take a number of forms:

* Where it is possible to concatenate the repeating values into a single value, then it may be possible to use one Observation resource
to capture the result
* Multiple Observation resources may need to be created, one for each occurrence of OBX-5
  * In this instance, it may be important to understand the relationships that can be documented with the partOf and/or hasMember
  elements offered by Observation
* It may be possible to capture each occurrence as a component of a single Observation resource

#### Related Observations
The values of OBX-3 and/or OBX-4 in multiple OBX segments may indicate a relationship between individual observations that must be
maintain during the transformation process in order for the data to remain accurate and of use. For example, when two OBX segments
contain the systolic and diastolic values of a blood pressure reading, the relationship between the two observations must be
maintained. Observation.component can be used to maintain the relationship between related results. Implementers are encouraged
to read the base standard documentation available describing the use of Observation.component as well as think about how related
observations will be identified during the transformation process.

### Implementation Guide Extensions on the Base Standard
Some v2 implementations may adhere to constraints made on the base standard by an implementation guide. Where this happens it may
be necessary to extend or constrain the standard mappings provided by this project. For example, in the US the v2.5.1 immunization
messaging implementation guide describes how to use OBX segments to convey information related patient eligibility, distribution of
educational materials and vaccine funding source. While these concepts are part of the FHIR Immunization resource, the VXU mappings
from this project do not include these transformations as they are defined by the implementation guide, not the base standard.
Implementers should consider local variations from the base standard when developing their transformations.

### Instructions on Assignments in Mapping Spreadsheets
In the Assigmen columns for Segment and Data Type mapping, the specific assignment may not be available, but textual guidance is.  As this may be easily overseen, the following provides a list of where these instructions occur:
* MSH[Provenance]

### Vocabulary Mapping

#### Basics
The CWE data type can contain up to 3 “coding triplets” each of which may contain unique codes from different codes sets, however all codes must represent the same concept
At a high level, these correspond to multiple occurrences of CodeableConcept.coding for the cognate FHIR element
In an ideal world, each v2 CWE triplet will consist of a code, a display name and a coding system
The combination of the code and the coding system should provide a unique key for mapping purposes
While the v2-to-FHIR project can provide some basic vocabulary maps, it’s expected that individual implementation will need to confirm and potentially extend those maps to include non-standard values (either within a standard value set or in a custom value set)
The project team cannot be expected to know all possible values in use by a given implementation
Tool behavior should be driven by the configuration of the mapping files and not by unique code in the transformation engine

#### Translator Logic
For the CWE field, the translator should perform the following steps for each of the three possible triplets
If the triplet contains data (at a minimum, the code is present in the triplet), then:
The code and code system present in the triplet, are used to identify the relevant lines in the vocabulary map (that is the code from the triplet matches a value in Column A (Code) and the code system from the triple matches the value in Column C (Code System) for that same row
Note that a single vocabulary map may contain multiple rows for a given code/code system pair if the implementers want to translate the code to multiple codings in the FHIR resource
For each matching line in the vocabulary map, a new occurrence of CodeableConcept.coding is created with coding.code populated from Column G, coding.display populated from Column I and coding.system populated from Column J

#### Example (Marital Status)
* Marital Status (PID-16) uses User-defined table HL70002 which includes the code S for Single
* Patient.maritalStatus uses an extensible value set using codes from a v3 code system
* A given implementation my use the HL70002 table but also have a set of local codes (using the code system of “L”) including “UN” for Unmarried (a synonym of single)
* PID-16 in a given message may look like:
   * S^Single^HL70002^UN^Unmarried^L
   * In this case, the first and second triplets are populated with codes from two different code systems
* The implementers must make a decision if the base mapping of HL70002 to the FHIR value set is sufficient or if they also want to either persist one or both of the v2 codes or map either code to an alternate FHIR coding occurrence
   * Note that as a project, we shouldn’t decide if it’s appropriate to retain the original codes or not - that is an implementation decision
   * As well, the transformation engine shouldn’t have to coded to retain (or not retain) the original codes, this should be determined by the contents of the mapping files
* For the remainder of this example, let’s assume that the implementers want to translate the HL70002 code to the FHIR value set and retain the original values from both triplets
   * The implementers enhance the existing base vocabulary map to include new lines for mapping the HL70002 code to v2-0002 code system and the local code to an appropriate local FHIR value set by adding the two new rows in yellow (the rows in red font are all the rows relevant to the concept of “single” regardless of the code used to represent that concept)
   
![Vocabulary Mapping Sample](CWE_Guidance_Sample.png)

* The transformation engine takes the first triplet from PID-16 (S^Single^HL70002) and compares it to the values in Columns A and C and find 2 relevant rows (Rows 6 and 7), for each row, a new occurrence of CodeableConcept.coding is created using the content of Columns G, I and J
   * The transformation engine then takes the second triplet from PID-16 (UN^unmarried^L) and performs the same comparison to the map and finds one relevant row (Row 10) and creates a third occurrence of CodeableConcept.coding
* If instead the implementers had decided to only preserve the original HL70002 code and discard the local code (UN), they would not have created Row 10 and when the transformation engine searched the table, it would have found no matching row and not created an occurrence of CodeableConcept.coding
   * It would be up to the transformation engine to determine if the lack of a matching row warrants the logging of a warning or error
* When there is no value on the right hand side, in principle agreed that the implementer/mapping needs to determine the additional values in v2 as to where to go.
* Question on if the FHIR side is NOT extensible AND required, is there value to an indication.   But not yet clear how to do so.
   * If we do not have an entry for “other”, then FHIR validation will fail. We want to avoid that.
* If we do have an entry for “other”, then FHIR validation will be find, but the implementer/mapping still needs to review the mapping as that default mapping may not be right.

#### Edge Cases
If the implementers know that the v2 CWE field will not be fully populated (eg, there will be a code but not a code system), the vocabulary map will need to be updated accordingly to include a row where Column A is populated but not Column C is not populated
Note that in this case, column J should remain populated so that the FHIR resource that is created contains both a code and a system
The triplet does not contain a code but does contain text (in either the text field of the triplet (eg CWE.2 or CWE.5) or the original text (CWE.9)) then it is unsuitable for discrete mapping and the text should be used to populate CodeableConcept.text

<table>
 <tr>
  <th colspan="1" rowspan="3">HL7 v2</th>
  <th colspan="5">HL7 FHIR</th>
 </tr>
 <tr>
   <th colspan="4">Codeable Concept/Coding</th>
   <th>code</th>
  </tr>
  <tr>
   <th>Example</th>
   <th>Preferred</th>
   <th>Extensible</th>
   <th>Required</th>
   <th>Required</th>
  </tr>
<tr>
 <td rowspan="4">User Defined Table</td>
 <td valign=top>Project Approach: The mapping may map as many as possible of the HL7 provided examples are mapped to FHIR value set values.  That may result in v2 values not having a FHIR target if there is no suitable value.</td>
 <td valign=top>Project Approach: The mapping will map as many as possible of the HL7 provided examples are mapped to FHIR value set values.  That may result in v2 values not having a FHIR target if there is no suitable value.</td>
 <td valign=top>Project Approach: The mapping will map as many as possible of the HL7 provided examples are mapped to FHIR value set values.  That may result in v2 values not having a FHIR target if there is no suitable value.</td>
 <td valign=top>Project Approach: The mapping will map as many as possible of the HL7 provided examples are mapped to FHIR value set values.  That may result in v2 values not having a FHIR target if there is no known use for the v2 value or there is no suitable value and FHIR is not ready to expand their list.</td>
 <td valign=top>Project Approach: The mapping will map as many as possible of the HL7 provided examples are mapped to FHIR value set values.  That may result in v2 values not having a FHIR target if there is no known use for the v2 value or there is no suitable value and FHIR is not ready to expand their list.</td>
 </tr>
 <tr>
  <td valign=top>Implementation: The implementation team must map any known locally used codes that may be received in the v2 message to an appropriate value in the FHIR value set. This may include HL7 suggested codes from the base standard and any local extensions to that list. Because the FHIR base standard only includes an example value set, the implementation team must understand what values the FHIR recipient accepts for the data element.</td>
  <td valign=top>Implementation: The implementation team must map any known locally used codes that may be received in the v2 message to an appropriate value in the FHIR value set. This may include HL7 suggested codes from the base standard and any local extensions to that list. Because the FHIR base standard only includes a preferred value set, the implementation team must understand what values the FHIR recipient accepts for the data element.</td>
  <td valign=top>Implementation: The implementation team must map any known locally used codes that may be received in the v2 message to an appropriate value in the FHIR value set. This may include HL7 suggested codes from the base standard and any local extensions to that list. Because the FHIR base standard includes an extensible value set, any values from the FHIR value set must be used as the target code if they are appropriate for use. If no appropriate code exists in the extensible FHIR value set, then the implementation team must identify an appropriate local extension acceptable to the FHIR recipient system.</td>
  <td valign=top>Implementation: The implementation team must map any known locally used codes that may be received in the v2 message to an appropriate value in the FHIR value set. This may include HL7 suggested codes from the base standard and any local extensions to that list. Because the FHIR base standard includes a required value set, any values from the FHIR value set must be used as the target code if they are appropriate for use. If no appropriate code exists in the required FHIR value set, a local extension of the value set is NOT allowed and extensive discussion between trading partners will be required to arrive at a mutually agreeable solution.</td>
  <td valign=top>Implementation: The implementation team must map any known locally used codes that may be received in the v2 message to an appropriate value in the FHIR value set. This may include HL7 suggested codes from the base standard and any local extensions to that list. Note that because some v2 data types (eg CWE) can contain mulitple triplets containing synonymous codes for the same concept, it is important that the implementation team understand if multiple codes may be sent  in a single element and map/prioritize the appropriate codes from the multiple triplets. Because the FHIR base standard includes a required value set, any values from the FHIR value set must be used as the target code if they are appropriate for use. If no appropriate code exists in the required FHIR value set, a local extension of the value set is NOT allowed and extensive discussion between trading partners will be required to arrive at a mutually agreeable solution.</td>
 </tr>
 <tr>
  <td>Default Behavior: If after all expected codes are mapped, if the v2 message contains an unmapped (unexpected) code, system behavior options include (these are not mutually exclusive options):
   <br>- log an error (may be a warning (non-fatal) or an error (fatal))</br>
<br>- if the FHIR element uses CodeableConcept, a text version of the code (eg. CWE.2 or CWE.9) may be conveyed in CodeableConcept.text (note this will involve the lost of the code information)</br>
<br>- If an appropriate uri is known for the code system conveyed in the CWE data type (eg CWE.3 or CWE.6), the code may carried over to CodeableConcept.coding.code and .system populated (note that depending on the capabilities of the FHIR recipient, this code may or may not be useful to the receiving system)</br>
<br>- use the "original code" extension to preserve the code </br>
</td>
<td valign=top>Default Behavior: If after all expected codes are mapped, if the v2 message contains an unmapped (unexpected) code, system behavior options include (these are not mutually exclusive options):
<br>- log an error (may be a warning (non-fatal) or an error (fatal)) </br>
<br>- if the FHIR element uses CodeableConcept, a text version of the code (eg. CWE.2 or CWE.9) may be conveyed in CodeableConcept.text (note this will involve the lost of the code information) </br>
<br>- If an appropriate uri is known for the code system conveyed in the CWE data type (eg CWE.3 or CWE.6), the code may carried over to CodeableConcept.coding.code and .system populated (note that depending on the capabilities of the FHIR recipient, this code may or may not be useful to the receiving system) </br>
<br>- use the "original code" extension to preserve the code </br>
</td>
<td valign=top>Default Behavior: If after all expected codes are mapped, if the v2 message contains an unmapped (unexpected) code, system behavior options include (these are not mutually exclusive options):
<br>- log an error (may be a warning (non-fatal) or an error (fatal))</br>
<br>- if the FHIR element uses CodeableConcept, a text version of the code (eg. CWE.2 or CWE.9) may be conveyed in CodeableConcept.text (note this will involve the lost of the code information)</br>
<br>- If an appropriate uri is known for the code system conveyed in the CWE data type (eg CWE.3 or CWE.6), the code may carried over to CodeableConcept.coding.code and .system populated (note that depending on the capabilities of the FHIR recipient, this code may or may not be useful to the receiving system)</br>
<br>- use the "original code" extension to preserve the code</br> 
</td>
<td valign=top>Default Behavior: If after all expected codes are mapped, if the v2 message contains an unmapped (unexpected) code, system behavior options include (these are not mutually exclusive options):
<br>- log an error (may be a warning (non-fatal) or an error (fatal)</br>
<br>- if the FHIR element uses CodeableConcept, a text version of the code (eg. CWE.2 or CWE.9) may be conveyed in CodeableConcept.text (note this will involve the lost of the code information)</br>
<br>- use the "original code" extension to preserve the code without violating the "required" binding of the value set</br>
</td>
<td valign=top>Default Behavior: If after all expected codes are mapped, if the v2 message contains an unmapped (unexpected) code, system behavior options include (these are not mutually exclusive options):
<br>- log an error (may be a warning (non-fatal) or an error (fatal)<br>
<br>- use the "original code" extension to preserve the code without violating the "required" binding of the value set<br>
</td>
</tr>
<tr>
 <td valign=top>Example:</td>
 <td valign=top>Example:</td>
 <td valign=top>Example:</td>
 <td valign=top>Example:</td>
 <td valign=top>Example:</td>
</tr>
<tr>
<td rowspan="4">HL7 Defined Table</td>
<td valign=top>Project Approach: The mapping will map as many as possible of the HL7 provided examples are mapped to FHIR value set values.  That may result in v2 values not having a FHIR target if there is no suitable value.</td>
<td valign=top>Project Approach: The mapping will map as many as possible of the HL7 provided examples are mapped to FHIR value set values.  That may result in v2 values not having a FHIR target if there is no suitable value.</td>
<td valign=top>Project Approach: The mapping will map as many as possible of the HL7 provided examples are mapped to FHIR value set values.  That may result in v2 values not having a FHIR target if there is no suitable value.</td>
<td valign=top>Project Approach: The mapping will map as many as possible of the HL7 provided examples are mapped to FHIR value set values.  That may result in v2 values not having a FHIR target if there is no known use for the v2 value or there is no suitable value and FHIR is not ready to expand their list.</td>
<td valign=top>Project Approach: The mapping will map as many as possible of the HL7 provided examples are mapped to FHIR value set values.  That may result in v2 values not having a FHIR target if there is no known use for the v2 value or there is no suitable value and FHIR is not ready to expand their list.</td>
</tr>
<tr>
<td valign=top>Implementation: The implementation team must map any known locally used codes that may be received in the v2 message to an appropriate value in the FHIR value set. This may include HL7 defined codes from the base standard and any local extensions to that list (note, that some HL7 defined tables may be extended locally (eg specimen collection priority) while others (eg data types, message type) may not be extended locally). Because the FHIR base standard only includes an example value set, the implementation team must understand what values the FHIR recipient accepts for the data element.</td>
<td valign=top>Implementation: The implementation team must map any known locally used codes that may be received in the v2 message to an appropriate value in the FHIR value set. This may include HL7 define codes from the base standard and any local extensions to that list (note, that some HL7 defined tables may be extended locally (eg specimen collection priority) while others (eg data types, message type) may not be extended locally). Because the FHIR base standard only includes a preferred value set, the implementation team must understand what values the FHIR recipient accepts for the data element.</td>
<td valign=top>Implementation: The implementation team must map any known locally used codes that may be received in the v2 message to an appropriate value in the FHIR value set. This may include HL7 defined codes from the base standard and any local extensions to that list (note, that some HL7 defined tables may be extended locally (eg specimen collection priority) while others (eg data types, message type) may not be extended locally). Because the FHIR base standard includes an extensible value set, any values from the FHIR value set must be used as the target code if they are appropriate for use. If no appropriate code exists in the extensible FHIR value set, then the implementation must identify an appropriate local extension acceptable to the FHIR recipient system.</td>
<td valign=top>Implementation: The implementation team must map any known locally used codes that may be received in the v2 message to an appropriate value in the FHIR value set. This may include HL7 defined codes from the base standard and any local extensions to that list (note, that some HL7 defined tables may be extended locally (eg specimen collection priority) while others (eg data types, message type) may not be extended locally). Because the FHIR base standard includes a required value set, any values from the FHIR value set must be used as the target code if they are appropriate for use. If no appropriate code exists in the required FHIR value set, a local extension of the value set is NOT allowed and extensive discussion between trading partners will be required to arrive at a mutually agreeable solution.</td>
<td valign=top>Implementation: The implementation team must map any known locally used codes that may be received in the v2 message to an appropriate value in the FHIR value set. This may include HL7 suggested codes from the base standard and any local extensions to that list. Note that because some v2 data types (eg CWE) can contain mulitple triplets containing synonymous codes for the same concept, it is important that the implementation team understand if multiple codes may be sent  in a single element and map/prioritize the appropriate codes from the multiple triplets. Because the FHIR base standard includes a required value set, any values from the FHIR value set must be used as the target code if they are appropriate for use. If no appropriate code exists in the required FHIR value set, a local extension of the value set is NOT allowed and extensive discussion between trading partners will be required to arrive at a mutually agreeable solution.</td>
</tr>
<tr>
<td valign=top>Default Behavior: If after all expected codes are mapped, if the v2 message contains an unmapped (unexpected) code, system behavior options include (these are not mutually exclusive options):
<br>- log an error (may be a warning (non-fatal) or an error (fatal) </br>
<br>- if the FHIR element uses CodeableConcept, a text version of the code (eg. CWE.2 or CWE.9) may be conveyed in CodeableConcept.text (note this will involve the lost of the code information)</br>
<br>- If an appropriate uri is known for the code system conveyed in the CWE data type (eg CWE.3 or CWE.6), the code may carried over to CodeableConcept.coding.code and .system populated (note that depending on the capabilities of the FHIR recipient, this code may or may not be useful to the receiving system)</br>
<br>- use the "original code" extension to preserve the code </br>
</td>
<td valign=top>Default Behavior: If after all expected codes are mapped, if the v2 message contains an unmapped (unexpected) code, system behavior options include (these are not mutually exclusive options):
<br>- log an error (may be a warning (non-fatal) or an error (fatal) </br>
<br>- if the FHIR element uses CodeableConcept, a text version of the code (eg. CWE.2 or CWE.9) may be conveyed in CodeableConcept.text (note this will involve the lost of the code information)</br>
<br>- If an appropriate uri is known for the code system conveyed in the CWE data type (eg CWE.3 or CWE.6), the code may carried over to CodeableConcept.coding.code and .system populated (note that depending on the capabilities of the FHIR recipient, this code may or may not be useful to the receiving system)</br>
<br>- use the "original code" extension to preserve the code </br>
</td>
<td valign=top>Default Behavior: If after all expected codes are mapped, if the v2 message contains an unmapped (unexpected) code, system behavior options include (these are not mutually exclusive options):
<br>- log an error (may be a warning (non-fatal) or an error (fatal) </br>
<br>- if the FHIR element uses CodeableConcept, a text version of the code (eg. CWE.2 or CWE.9) may be conveyed in CodeableConcept.text (note this will involve the lost of the code information)</br>
<br>- If an appropriate uri is known for the code system conveyed in the CWE data type (eg CWE.3 or CWE.6), the code may carried over to CodeableConcept.coding.code and .system populated (note that depending on the capabilities of the FHIR recipient, this code may or may not be useful to the receiving system)</br>
<br>- use the "original code" extension to preserve the code </br>
</td>
<td valign=top>Default Behavior: If after all expected codes are mapped, if the v2 message contains an unmapped (unexpected) code, system behavior options include (these are not mutually exclusive options):
<br>- log an error (may be a warning (non-fatal) or an error (fatal) </br>
<br>- if the FHIR element uses CodeableConcept, a text version of the code (eg. CWE.2 or CWE.9) may be conveyed in CodeableConcept.text (note this will involve the lost of the code information)</br>
<br>- use the "original code" extension to preserve the code without violating the "required" binding of the value set</br>
 </td>
<td valign=top>Default Behavior: If after all expected codes are mapped, if the v2 message contains an unmapped (unexpected) code, system behavior options include (these are not mutually exclusive options):
<br>- log an error (may be a warning (non-fatal) or an error (fatal) </br>
<br>- use the "original code" extension to preserve the code without violating the "required" binding of the value set</br>
</td>
</tr>
<tr>
<td valign=top>Example:</td>
<td valign=top>Example:</td>
<td valign=top>Example:</td>
<td valign=top>Example:</td>
<td valign=top>Example:</td>
</tr>
</table>
