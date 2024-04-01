This section outlines implementation specific considerations that will have to be addressed during the implementation of a v2-to-FHIR 
transformation project. Not all of these issues will apply to every implementation, but each implementation should review and consider 
the entire list to assess whether or not they are relevant for the project at hand. This list is not comprehensive and other implementation 
considerations may emerge as transforms are developed, tested, and implemented in a Production environment.

### Message Structures in Older Versions
In older versions (e.g., v2.3.1), the message structure in MSH-9, specifically MSH-9.3, may have been omitted as the standard did not always 
include it in the message structure definition. For example, the message definition for RDE^O01 in v2.3.1 does not include the message structure, 
thus implementers omitted that, even though in Table 0354 there was a structure defined for RDE_O01. When MSH-9.3 is empty, we suggest to derive 
the message structure to get to the proper map by using the message code and trigger event. For example, when the message code and trigger event 
is ABC^Nnn then use ABC_Nnn. For RDE^O01 that would be RDE_O01. Exceptions to this approach will be more common for certain domains, for example 
Admission, Discharge and Transfer (ADT) messaging often reuses an existing message type for new message code/trigger event pairs.

### Implementation Guide Extensions on the Base Standard
Some v2 implementations may adhere to constraints made on the base standard by an implementation guide. Where this happens, it may
be necessary to extend or constrain the standard mappings provided by this project. For example, in the US the v2.5.1 immunization
messaging implementation guide describes how to use OBX segments to convey information related patient eligibility, distribution of
educational materials and vaccine funding source. While these concepts are part of the FHIR Immunization resource, the VXU mappings
from this project do not include these transformations as they are defined by the implementation guide, not the base standard.
Implementers should consider local variations from the base standard when developing their transformations.

### Common References
In v2, it often happens that singular organization, person, or other entity may be referenced multiple places in a message. For example, 
the Attending Doctor in PV1-7 of a laboratory order message may also be the ordering provider referenced in ORC-12 and OBR-16 (or in newer 
versions a PRT segment). When converting a v2 message to a set of FHIR resources, it may be ideal to create a single instance of a resource 
for that entity and reference it from multiple Resource elements. In this case, a single Practitioner resource may be present in the newly 
created FHIR bundle but references from both Encounter.participant.individual and ServiceRequest.requester in a bundle of R4 FHIR resources. 
Since these references may occur in different segments and a given message may not always have enough data in the data type components to 
unambiguously identify multiple references to a singular entity, this may be a challenge for some implementations. This guide therefore does 
not attempt to provide guidance in the mappings where different message data elements may potentially reference a common entity. However, we 
do encourage to re-use resources for reference where the mapper and receiving system can establish such re-use. Deduplication logic based on 
data including identifiers, name and credentials should be employed as part of the transformation strategy to identify potentially reusable resources.

In some instances, a single segment may be mapped to multiple FHIR resources, for example MSH is mapped to MessageHeader and one or more Provenance 
resources. In this case, the mapper is strongly encouraged to reuse resulting FHIR resources where possible. For example, the mapping for MSH-4 Sending 
Facility yields an Organization resource which can be referenced from the respective MessageHeader and Provenance resources resulting from individual segment maps.

### Variations in Cardinality
In several maps, the v2 field or element has a larger maximum cardinality than the mapped FHIR attributes. That is, some v2 elements are allowed to repeat 
while the cognate FHIR element is not allowed to repeat. We still provide these mappings, but if your implementation allows these v2 elements to repeat, 
data may be lost. Implementers should evaluate the likelihood of this happening. The project team welcomes examples where this occurs in existing 
implementations so that we can discuss possible solutions.

### Resource.id Generation and References
When the v2 message is mapped into a FHIR Bundle, resources need to have a Resource.id. The [FHIR base standard](https://hl7.org/implement/standards/fhir/resource-definitions.html#Resource.id) defines Resource.id as “The logical id of the resource, 
as used in the URL for the resource.”. Typically, this is the “the ‘logical id’ of the resource assigned by the server responsible for storing it” however in the 
case of a v2 message conversion this definition is not applicable, Additional discussion of the use of Resource.id when resources are created transiently for 
transfer between systems is available in the [base standard](https://hl7.org/implement/standards/fhir/resource.html#id). The description of [resolving references in Bundles](https://hl7.org/implement/standards/fhir/bundle.html#references) is particularly important for the v2 transformation 
process. Implementers should ensure that all resources within the Bundle resulting from the transformation have a unique id so that references within the bundle 
can be resolved. Different options may include assigning an id based on information with the message (such as a patient or order identifier) or system assigned 
number generated at the time of transformation. The receiver of the Bundle should not read any meaning into the value of the id.  

Depending on the nature of the implementation, the Bundle may be used by the recipient in any number of ways including being forwarded in a FHIR message, 
persisting the content as FHIR resources, or translating content into local data structures. Persistence of Resource.id cannot be guaranteed. 

### Contained Resources
This implementation guide recognizes the distinction between stand-alone and [contained resources](https://www.hl7.org/fhir/references.html#contained)
but does not provide guidance in the mappings as the appropriate usage of contained resources. Implementers should consider the
appropriateness of using contained resources during the transformation process where insufficient data is available in the v2
message to create a stand-alone FHIR resource. For example, if an ROL segment is transformed into a PractitionerRole resource
including the address of the provider office in ROL-11 but the segment lacks the provider's location in ROL-13 there may not be enough
information to warrant creating a stand-alone Location resource, but rather a contained Location resource (including the address) may be 
included in the PractitionerRole resource.

### Task Management
The FHIR standard includes extensive content related to [workflow management](http://hl7.org/implement/standards/fhir/workflow-module.html)
and [task management](http://hl7.org/implement/standards/fhir/task.html). While many v2 message types don't
infer tasks (eg, they report on a previously completed event), some message types (e.g., order messages) may imply the need for an
external system to complete a task (e.g., fullfill the order being requested). This implementation does include some mappings to the
Task resource but it is up to implementers to determine if it is appropriate to create Task resources during the transformation
process based on the business requirements and workflows associated with the integration. For example, an order message may be 
directed to a system with the intent of notifying the system of the existence of the order without any expectation that the receiving 
system will fulfill the order. In this case, the creation of a Task resource is likely to be inappropriate. Implementers must 
understand the workflows associated with the data exchange to implement tasks correctly.

### Segment Action Code
Most Hl7 v2 messages are sent using snapshot mode. However, where segment action codes (typically – add, update, or delete) are used it 
is up to the implementers to determine the appropriate actions on the FHIR side as the data may already exist. That may or may not be 
known by the mapping engine and lead to the application of different techniques to interpret and manage the action codes. A future version 
of this guide may include further guidance and best practices on mapping segment action codes.

### Provenance
The concept of data provenance is typically only indirectly addressed within the v2 standard; however provenance can often be inferred by the 
data in various fields of the v2 message. For example, provenance may be inferred from data in the MSH segment (e.g., the responsible sending 
organization), the EVN segment (e.g., the event it represents), the ORC segment (e.g., the entering user) or TXA segment (e.g., the authenticator). 
This implementation guide does include some mapping to the Provenance resource, but it is up to implementors to determine the level of data 
provenance that should be captured during the transformation process. At a minimum, the authors of this document feel that it is appropriate to 
capture the provenance of the message source and the v2-to-FHIR transformation process. Additional provenance may be captured from additional 
fields as appropriate for the implementation. To enable provenance, it is important to have the responsible organization or individual included 
in the MSH, EVN, ORC, TXA, and other applicable segment as identified in the mapping.

### Patients
Identity management and patient merging/unmerging are complex processes at the best of times. Implementers should carefully consider
how these activities will be impacted by a v2-to-FHIR transformation project. In particular, the workflow chosen (e.g., messaging versus
RESTful actions) and how Patient.id is populated may significantly impact how Patient resources are created, updated and deleted by
the receiving system.

### Encounters
Clinically focused v2 messages (e.g., ORM/OML, ORU, MDM) may contain limited data regarding an associated patient encounter. This
data content may or may not be sufficient to unambiguously identify a matching encounter in the receiving system. The creation
of Encounter resources should be carefully considered during the implementation process. The use of contained Encounter resources
may be appropriate.

### Practitioner-PractionerRole
In most FHIR resources, elements which allow a reference to a Practitioner resource also allow a reference to a PractitionerRole
resource. In most scenarios, a v2 field using the XCN data type will typically be mapped to the Practitioner resource, but
implementers may choose to map to the PractitionerRole resource instead. In a few places, an XCN field will be mapped to a
PractitionerRole resource when other fields in the segment can contribute content to the PractitionerRole resource to create a
more robust resource. For example, the ORC segment when mapped to ServiceRequest maps the Ordering Provider (ORC-12) field to
PractitionerRole because the Ordering Facility fields in ORC (ORC-21 through -23) can also contribute to the PractitionerRole resource 
to create a more robust resource.

### Results
#### Observations and Components
Depending on context and content an OBX segment in a v2 message may represent a wide variety of different types of data. Typically, 
the OBX segment will map to an Observation resource which in turn is referenced in some other resource (eg, the result
containing OBX segments in an ORU message will typically be transformed into Observation resources which are referenced in
DiagnosticReport.result). Even when an OBX segment clearly maps to an Observation resource, complications may arise when the
contents of multiple OBX segments must be considered as a whole in order to be fully understood or when there are multiple parts to
a single result (that is each OBX segment is a component of an Observation (e.g., Observation.component). It is critical that
implementers fully understand the type of content that may be presented in an OBX segment so that an appropriate transformation approach can be developed.

#### Multiple Occurrences of OBX-5
OBX-5 (Observation Value) is allowed to repeat in the v2 base standard however Observation.value[x] is constrained to a cardinality
of 0..1. In this case, the transform may take a number of forms:

* Where it is possible to concatenate the repeating values into a single value, then it may be possible to use one Observation resource
to capture the result
* Multiple Observation resources may need to be created, one for each occurrence of OBX-5
  * In this instance, it is important to understand the relationships that can be documented with the partOf and/or hasMember
  elements offered by Observation
* It may be possible to capture each occurrence as a component of a single Observation resource

#### Related Observations
The values of OBX-3 and/or OBX-4 in multiple OBX segments may indicate a relationship between individual observations that must be
maintain during the transformation process in order for the data to remain accurate and of use. For example, when two OBX segments
contain the systolic and diastolic values of a blood pressure reading, the relationship between the two observations must be
maintained. Observation.component can be used to maintain the relationship between related results. Implementers are encouraged
to read the base standard documentation available describing the use of Observation.component as well as think about how related
observations will be identified during the transformation process.

### Vocabulary Mapping

#### Basics
Various HL7 v2 types enable the use of codes, e.g., CWE, CNE, CE, as well as ID and IS. Real-world implementations of v2 messaging are 
diverse and use a variety of coded values to convey meaning between systems. Because of this diversity, implementers of v2-to-FHIR 
transformations will need to develop and apply processes for terminology review and mapping. These processes will need to accommodate the 
nature of the HL7 v2 table used to populate the v2 message and the value set contents and binding strength of the target FHIR data elements. 
Some general guidance for a variety of situations is provided below, however transformation implementers must evaluate all value sets that 
may be used to populate the v2 message to ensure that any coded data contained in the v2 message is appropriately transformed into the 
resulting FHIR resources even when different sets of values are used by the two standards.

HL7 v2 uses the concept of tables to describe the coded values used in a v2 message. A coded data element in the message (e.g., Patient 
administrative sex in PID-8 or the order control code in ORC-1) is assigned a specific table which documents valid values. While the v2 
base standard includes tables in Chapter 2C, local implementations may constrain or extend the base standard values. It is critical that 
transformation implementers understand the full range of values that a sender may include in a v2 message and the values that a message 
recipient can consume. HL7 v2 defines a number of types of tables:
* **HL7 Defined tables** contain specific values whose meanings are defined by the base standard and which cannot be changed. HL7 Defined tables
are most often used for “structural” parts of the v2 message including things like acknowledgment types (MSH-15 and MSH-16) and order control
codes (ORC-1) of order and results messages. These structural fields often drive specific functionality associated with v2 messages. While v2
messaging implementations will often constrain values from these structural type tables they are rarely extended locally to include new values.
For example, not all laboratory exchanges will support the full range of order control codes in ORC-1 but new orders control codes being added
is rare. However, other message elements which are not structural may also use HL7 defined tables. For example, the medication route and site
administered data elements also use HL7 defined table. While these data elements may also constrain the list of codes provided in the table by
the base standard, it is possible that local v2 implementations have also extend the values in the table to include new codes not present in
the v2 base standard to meet local requirements.
* In contrast, the breadth and meaning of codes in **User Defined tables** are determined locally for a given v2 implementation. While the HL7 v2 base
standard may provide “suggested” values in User Defined tables, v2 messaging implementers are not required to use them (although many still do).
Transformation implementers must be aware of all of the possible codes in use with User Defined tables as they may or may not align with the values
provided in the tables in the v2 base standard.
* The codes contained in both HL7 Defined tables and User Defined tables are defined by either by HL7 or by local v2 implementers and are not drawn from
standard code systems. In contrast, **Externally Defined tables** contain codes defined elsewhere, in code systems such as SNOMED-CT, LOINC, NUBC or others.
For v2 message elements which use Externally Defined tables, the meaning of the codes use may not be changed locally, but the list of codes in use for a
specific v2 implementation will be determined locally.

Rather than using tables, FHIR defines value sets which contain codes from specific coding systems (see the FHIR Terminology page for further information on 
this topic). Coded data elements in the FHIR base standard are typically bound to a value set with a particular binding strength which has implications for 
the ability of the recipient of a FHIR bundle to process coded values. The FHIR binding strengths are defined as:
* **Required** - To be conformant, the concept in this element SHALL be from the specified value set (that is, no additions to the value set are allowed).
* **Extensible** - To be conformant, the concept in this element SHALL be from the specified value set if any of the codes within the value set can apply to the 
concept being communicated. If the value set does not cover the concept (based on human review), alternate codings (or, data type allowing, text) may be included instead.
* **Preferred** - Instances are encouraged to draw from the specified codes for interoperability purposes but are not required to do so to be considered conformant.
* **Example** - Instances are not expected or even encouraged to draw from the specified value set. The value set merely provides examples of the types of concepts intended to be included.

Furthermore, FHIR employs several coded data types including:
* **code** - Indicates that the value is taken from a set of controlled strings defined elsewhere. Where the code data type is used, the FHIR base standard 
will typically use a value set binding of Required because the code data type does not include any indication of the code system (or value set) from 
which the code is drawn. Therefore, in order to ensure that the meaning of the code is clear, the required binding is used to define the meaning of codes 
* **Coding** - A representation of a defined concept using a symbol from a defined "code system". Where the Coding data type is used, in addition to the code 
itself, an indication of the coding system from which the code is drawn is typically provided. This allows trading partners to determine the meaning of 
the code by exploring the documentation for the code in the coding system. The Coding data type is used relatively sparingly in the base standard but 
it is a key component of the next data type, CodeableConcept.
* **CodeableConcept** - Represents a value that is usually supplied by providing a reference to one or more terminologies. Note that this data type allows 
multiple representations of a concept using codes from different coding systems. Among other things, this allows the use of local codes as well as codes 
from more standardized code systems such as SNOMED-CT or LOINC. As discussed below, the ability to use multiple codes to represent a single concept is 
important to consider when reviewing terminology mappings for v2-to-FHIR transformations.

This v2-to-FHIR Implementation Guide provides basic mappings from the v2 tables used by the mapped message types to the cognate FHIR value sets. However, the 
complexity of the terminology approaches used by both v2 and FHIR combined with the inherent flexibility of both standards makes it impossible for this document 
to provide definitive mappings for all possible values for all coded data elements. When possible this document provides mappings where both HL7 defined values 
(in both HL7 Defined and User Defined tables) and FHIR value sets (off all binding strengths) are available. However, as noted above, implementers of v2-to-FHIR 
transformations must review every terminology mapping supported by the transformation process to ensure that all locally used codes are accounted for. Below are a 
few considerations when doing local terminology review.
* Not all values in a given HL7 v2 table will have a cognate code in the FHIR value sets defined in the base standard. 
  * When the FHIR value set binding strength is Example or Preferred, additional codes may be added to the FHIR value set provided that the system receiving the 
transformed FHIR bundle is capable of correctly using the added codes. 
  * Where the FHIR value set binding strength is Extensible, additional codes may be added with certain restrictions. Because the FHIR base standard includes 
an extensible value set, any values from the FHIR value set must be used as the target code if they are appropriate for use. If no appropriate code exists in 
the extensible FHIR value set, then the transformation implementation team must identify an appropriate local extension acceptable to the FHIR recipient system. 
  * Things are more complicated where the FHIR value set uses a binding strength of required. This applies to the use of both the code and CodeableConcept data types. 
If no appropriate code exists in the required FHIR value set, a local extension of the value set is NOT allowed and extensive discussion between trading partners 
will be required to arrive at a mutually agreeable solution, particularly when the FHIR data elements is required (that is, has a minimum cardinality of 1).
* The v2 message may contain more codes than the cognate FHIR data element can accommodate.
  * While rare, it is possible that certain v2 message data elements may contain multiple codes drawn from different tables for the same concept. This is more 
common for the CWE data type which in later versions of the v2 base standard can contain up to three different codes. If the v2 field is mapped to a FHIR data 
element which does not permit repeating codes (such as a data element which uses the code FHIR data type), then the transformation implementation team will 
need to prioritize the mapping of certain codes or implement processes to ensure that all codes contained in the v2 data element map to the same FHIR code.
* To avoid potential data loss, system functionality and/or error handling processes must be developed to handle cases where a value in an instance of a v2 message 
cannot be mapped at the time of transformation. Potential (non-mutually exclusive) options include:
  * Log an error in the transformation tool (may be a warning (non-fatal) or an error (fatal))
  * If the FHIR element uses CodeableConcept, a text version of the code (eg. CWE.2 or CWE.9) may be conveyed in CodeableConcept.text (note this will involve 
the loss of the code information)
  * If an appropriate uri is known for the code system conveyed in the CWE data type (eg CWE.3 or CWE.6), the code may be carried over to CodeableConcept.coding.code
and .system populated (note that depending on the capabilities of the FHIR recipient, this code may or may not be useful to the receiving system)
  * Use the Alternate Codes extension to preserve the original code 
* Note that the scope of this document is a transformation from v2 format to FHIR format, as such this mapping guidance is focused on ensuring that any 
potential coded values in the v2 message can be faithfully converted to a value from the cognate FHIR value set. However, not all codes in the FHIR value 
sets may correspond to a potential v2 code, even where the FHIR value set uses the Required binding strength. Transformation implementers are highly encouraged 
to review the FHIR value sets to ensure that any codes critical to the performance of workflows or use of data in the FHIR receiving system are accounted for.



Translations may be particularly problematic when the FHIR value set is rigidlyfixed (a binding strength of "Required") and cannot be extended locally. 
A v2 value may not have a cognate FHIR value or the FHIR value may be less granular than the v2 code, either situation can potentially result in the 
loss of information as the concept is translated. In these situations we recommend the following:
* When the FHIR data type is code or coding: 
  * Review the provided mappings and confirm that the v2 value is translated to the most appropriate value for the implementation
  * We strongly encourage the retention of the original v2 value using the [Alternative Codes extension] (http://hl7.org/fhir/StructureDefinition/alternate-codes)
for those values that are not mappable or when the v2 value is more granular than the FHIR value and data may be lost in the translation
  * For example, PV1-2 Patient class maps to Encounter.status where the FHIR value set is fixed. Any suggested mappings to "unknown" need to be reviewed to determine if another FHIR value might be better
* When the FHIR data type is not code or coding: 
  * Review the provided mappings and confirm that the v2 value is translated to the most appropriate value for the integration
  * We strongly encourage the retention of the original v2 value as an alternate occurrence of the CodeableConcept.coding element

Tool behavior should be driven by the configuration of the vocabulary mapping files rather can coding within the transformation tool itself. Using the CWE 
data type as the example, the following section describes how vocabulary mapping is achieved between HL7 v2 and FHIR vocabulary.

#### Translator Logic
The CWE data type can contain up to 3 “coding triplets” each of which may contain unique codes from different codes sets, however all codes must represent the same concept.  At a high level, these correspond to multiple occurrences of CodeableConcept.coding for the cognate FHIR element. In an ideal world, each HL7 v2 CWE triplet will consist of a code, a display name and a coding system. The combination of the code and the coding system should provide a unique key for mapping purposes. 

For the CWE field, the translator should perform the following steps for each of the three possible triplets.
* If the triplet contains data (at a minimum, the code is present in the triplet), then:
* The code and code system present in the triplet, are used to identify the relevant lines in the vocabulary map (that is the code from the triplet matches a value in Column A (Code) and the code system from the triple matches the value in Column C (Code System) for that same row
Note that a single vocabulary map may contain multiple rows for a given code/code system pair if the implementers want to translate the code to multiple codings in the FHIR resource
* For each matching line in the vocabulary map, a new occurrence of CodeableConcept.coding is created with coding.code populated from Column G, coding.display populated from Column I and coding.system populated from Column J

#### Example (Marital Status)
* Marital Status (PID-16) uses User-defined table HL70002 which includes the code S for Single
* Patient.maritalStatus uses an extensible value set using codes from a v3 code system
* A given implementation may use the HL70002 table but also have a set of local codes (using the code system of “L”) including “UN” for Unmarried (a synonym of single)
* PID-16 in a given message may look like:
   * S^Single^HL70002^UN^Unmarried^L
   * In this case, the first and second triplets are populated with codes from two different code systems
* The implementers must make a decision if the base mapping of HL70002 to the FHIR value set is sufficient or if they also want to either persist one or both of the v2 codes or map either code to an alternate FHIR coding occurrence
   * Note that the decision to retain the original codes or not is an implementation decision, this implementation guide does not provide a recommendation one way or the other
   * As well, the transformation engine shouldn’t have to be coded to retain (or not retain) the original codes, we recommend that this be determined by the contents of the mapping files
* For the remainder of this example, let’s assume that the implementers want to translate the HL70002 code to the FHIR value set and retain the original values from both triplets
   * The implementers enhance the existing base vocabulary map to include new lines for mapping the HL70002 code to v2-0002 code system and the local code to an appropriate local FHIR value set by adding the two new rows in yellow (the rows in red font are all the rows relevant to the concept of “single” regardless of the code used to represent that concept)
* The transformation engine takes the first triplet from PID-16 (S^Single^HL70002) and compares it to the values in Columns A and C and find 2 relevant rows (Rows 6 and 7), for each row, a new occurrence of CodeableConcept.coding is created using the content of Columns G, I and J
   * The transformation engine then takes the second triplet from PID-16 (UN^unmarried^L) and performs the same comparison to the map and finds one relevant row (Row 10) and creates a third occurrence of CodeableConcept.coding
* If instead the implementers had decided to only preserve the original HL70002 code and discard the local code (UN), they would not have created Row 10 and when the transformation engine searched the table, it would have found no matching row and not created an occurrence of CodeableConcept.coding
   * It would be up to the transformation engine to determine if the lack of a matching row warrants the logging of a warning or error

![Vocabulary Mapping Sample](CWE_Guidance_Sample.png) 

#### Edge Cases
If the implementers know that the v2 CWE field will not be fully populated (e.g., there will be a code but not a code system), the vocabulary map will need to be updated accordingly to include a row where Column A is populated but not Column C is not populated.
Note that in this case, column J should remain populated so that the FHIR resource that is created contains both a code and a system
If the triplet does not contain a code but does contain text (in either the text field of the triplet (e.g., CWE.2 or CWE.5) or the original text (CWE.9)) then it is unsuitable for discrete mapping and the text should be used to populate CodeableConcept.text

### Open Issues
<ol>
<li>The PRT to DeviceUseStatement (DeviceUsage in R5) is only relevant for certain OBX entries where device usage is documented outside of a procedure or observations (e.g., surgery, therapy, lab test).  For example, known presence of an implantable device without having the implant procedure available, use of a wheelchair without its dispense date or actual use documentation.  If you use OBX for those general use statements where the observation is not the result where the device used is recorded or a procedure where the device used or implanted is recorded, please submit a JIRA to consider adding a PRT[DeviceUseStatement] mapping.</li>
 <li>When the OBX Observation is followed by a PRT Participation segment that indicates the location where the observation was performed, the mapping currently does not include a mapping of PRT-11 Begin Date/Time and PRT-12 End Date/Time.  If you are using these fields, please submit a JIRA to consider the necessary mapping.<li>
</ol>
