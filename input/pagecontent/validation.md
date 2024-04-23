Validation of mappings is an important step in the process to ensure the v2-FHIR mapper deployed is fit to purpose.  This means not only that the mappings are reflecting the agreed to mappings in this guide, but also that it considers local variations in use of HL7 v2 that may not be fully conformant to the standard, as well as local extensions using z-segments.  For that reason, and the complexities and efforts required, HL7 is not provider a transform validator, although it will provide a set of HL7 v2 test messages with corresponding HL7 FHIR Bundles that reflect the defined mappings.

This section is informative and describes key characteristics of a transform validator that is based on the basic premise that the HL7 v2 message being validated is a correct, HL7 v2 conformant message.  Any variations in conformance need to be addressed, which may include updates to the mappings to accommodate any remaining variances.

To <b>validate</b> a transform means: to check that it is correct, and to note any discrepancies between its inputs and its outputs. 
‘correct’ means: ‘the output of the transform is consistent with a set of V2 to FHIR mappings’. These can either be the ‘canonical’
mapping tables produced by the V2-to-FHIR mapping project, or some local variants of those tables (e.g., mappings from UK V2 to UK
FHIR profiles). Validation is a <b>semantic</b> check of the output of a transform against the input of that transform – i.e., it
checks that each data value in the FHIR output is derived correctly from the V2 input (or vice versa, for a FHIR to V2 transform).

A transform validator could be made available by anybody as open source or a service from any FHIR server – typically using local variants of the mapping tables, to reflect local usage of HL7 V2 and FHIR.  However, HL7 has no plans to either create, nor certify any transform validator at this time.

### Use Cases
Three use cases of transform validation are described here:

* <b>Validating a Direct Transform (by an integration engine or transform engine):</b>

Here, someone already has a V2-FHIR transform – provided by an integration engine or transform software – and they need to check
that it operates correctly. For a small test set of V2 input messages, they use their transform engine to produce the FHIR outputs,
and they submit the transform pairs (V2 message + FHIR bundle) to the validator. It notes any errors and gaps it finds in the FHIR
outputs. This is shown below:

![Validation_1](Validation_1.png)

* <b>Validating an Indirect transform (by a healthcare application):</b>

Many healthcare applications receive data as V2 messages, store the information internally (e.g. in a relational database), and
later produce FHIR outputs. This is an indirect transform – and its correctness can be checked in the same way as a direct transform
can be checked.

![Validation_2](Validation_2.png)

* <b>Cross-checking healthcare data across an organisation:</b>

A typical hospital or cluster of healthcare providers has many V2 messages in circulation. Increasingly, it also has FHIR bundles
and resources. Both V2 and FHIR will be in widespread use for the foreseeable future, and there is a risk that separate V2 and
FHIR worlds will be out of step – and even if they only differ in a few details, this matters. There is a need to check that some
set of FHIR bundles and resources (e.g. from a FHIR server) is semantically consistent with a set of V2 messages. This may not be
just a set of individual validations of (V2, FHIR) pairs, but may also involve data quality techniques such as record matching, and
summary reporting across sets of records. Still the underlying cross-check of a V2 message against a FHIR bundle or resource is
required, and the validator will do this.

![Validation_3](Validation_3.png)

### Current Status and Intentions
A prototype of a validator, developed by Robert Worden, was used during a Connectathon and subsequent validations of the mapping tables to identify a series of issues during the definitional phase, although it has not been used for all mappings to date. Its inputs are:

* A set of V2-FHIR mapping tables – typically with one message level mapping table, with segment-level mapping tables for all the
segments in the message, data type mapping tables, and code value mapping tables
* One or more pairs, of a V2 message and the FHIR bundle produced from it by a transform

The mapping tables are csv files, derived from the Google sheets in which the V2-FHIR mapping project is making mappings. In future
the validator will read mapping tables as ConceptMap resources.

The validator operations and outputs are:

* First it checks the mapping tables, noting any ways in which they are syntactically or otherwise invalid – giving a table of warning
messages about the mappings
* Then for each V2-FHIR pair, it checks that the FHIR output bundle is what should be produced by a transform from the V2 input.
This includes checking each data value in the bundle (against a value in the V2 message, or against an expected fixed value, or code
conversion), and checking that no data values are missing from the bundle. In future, resource references will be checked.
Discrepancies are noted in an output table.

Typical entries in the table of warnings about problems in the mappings are:

![Validation_4](Validation_4.png)

It is best to resolve the mapping issues before validating transform pairs.

Typical entries in the table of discrepancies in a transform result are:

![Validation_5](Validation_5.png)

When a validator is operating as a service on a FHIR server, all its inputs and outputs should be FHIR resources. This will require
some way to wrap a V2 message in a FHIR resource (in a Basic or Binary resource?), and the validator result tables may be profiled
OperationOutcome resources. It may also be useful to be able to specify (in a Parameters resource?) what kinds of validation output
are required – e.g. what fields in the FHIR outputs need to be checked; or to combine validation of the transform with validation of
the transform output FHIR against profiles.

### Outlook
A transform validator can be an important deliverable of the V2-FHIR mapping project, as well as implementations, enabling
users of HL7 V2 and FHIR to check that V2 messages and FHIR resources are correctly related to one another.  It will be of interest to
healthcare providers, and to national and regional healthcare authorities, to help them ensure the data quality of their applications.

Any regional healthcare authority may wish to use the mapping tables developed by the V2-to-FHIR mapping project, to develop local
variant mapping tables which reflect the ways in which V2 and FHIR are used in their region (local profiles and usages), and then to
offer a local validation service using those mapping tables. Suppliers of transform services may wish to use the validator to test and
demonstrate the quality of their offerings.

Once such a transform validator is available and used in this way, then feedback from its local deployments will help to refine and improve the
centrally-developed mapping tables.

Improved healthcare data quality reduces costs and improves patient care. An important part of data quality is consistency between
v2 data and FHIR data.  Since HL7 is the source of these two widely-used standards, HL7 has the opportunity (and perhaps an obligation)
to help organisations use them together consistently and effectively. A V2-FHIR transform validator will help meet this need –
providing a valuable service to healthcare providers worldwide.

Providing a strong cross-check between HL7 V2 and FHIR – where they overlap – will go a long way to make them a coherent and unified
offering, helping to unify HL7’s product set. Over time, similar cross-checks could be provided for CDA and for OpenEHR.

As stated, currently HL7 does not provide such a validator as part of the IG and has no plans to develop and support one but remains interested to learn more from others who may be pursuing this opportunity.
