# mapping-conversion/link-resolution Specification

## Purpose
Turns the free-text V2 and FHIR artifact references inside mapping rows into working
cross-reference links in the published IG, and surfaces the cases where that resolution
fails instead of publishing a silently-broken reference.
## Requirements
### Requirement: FHIR artifact link resolution
The system SHALL resolve a referenced FHIR resource, data type, or resource/data-type field
name to the correct published FHIR documentation link for the IG's target FHIR release.

#### Scenario: Recognized FHIR resource or field reference
- **WHEN** a mapping row references a FHIR resource, data type, or field that the system
  recognizes
- **THEN** the generated content links to that artifact's page in the FHIR specification
  for the IG's target release

#### Scenario: Unrecognized FHIR reference
- **WHEN** a mapping row references something the system cannot resolve to any known FHIR
  resource, data type, field, or code system
- **THEN** the system reports an error identifying the row and target, and renders the
  reference as a visibly broken link rather than a normal one

### Requirement: V2 table special cases
The system SHALL apply documented special-case handling for specific V2 tables whose
FHIR mapping does not follow the general table-to-code-system pattern.

#### Scenario: Table 0360 (multiple code systems across V2 versions)
- **WHEN** a mapping row references V2 table 0360
- **THEN** the system keeps the existing external terminology reference rather than
  synthesizing a single FHIR R4 code system link

#### Scenario: Table 0399 (country codes)
- **WHEN** a mapping row references V2 table 0399
- **THEN** the system links it to the ISO 3166-1 value set instead of a generic V2 table
  value set

#### Scenario: Table 0078 (interpretation codes)
- **WHEN** a mapping row references V2 table 0078
- **THEN** the system links it to the V3 ObservationInterpretation value set instead of the
  deprecated V2 value set

#### Scenario: Table 0136 (yes/no indicator)
- **WHEN** a mapping row references V2 table 0136
- **THEN** the system links its source code system to V2 table 0532 instead of 0136

### Requirement: Cross-artifact reference validation
After all artifacts in a run are converted, the system SHALL verify that every Segment,
Data Type, and Concept Map cross-reference produced during conversion actually points to
an artifact that was generated in the same run, and SHALL treat any that don't as a build
validation failure.

#### Scenario: Reference to a generated artifact
- **WHEN** a generated cross-reference points to an artifact page that was produced in the
  same run
- **THEN** validation for that reference passes

#### Scenario: Reference to a missing artifact
- **WHEN** a generated cross-reference points to an artifact page that was not produced in
  the same run
- **THEN** the system reports the missing mapping, generates a placeholder stub file for
  the missing artifact so it is visible in the source tree, and the overall run is reported
  as unsuccessful

### Requirement: Unresolved FHIR link does not block the build
An unresolved FHIR resource/field/data-type reference (as opposed to a missing
Segment/Data-Type/Concept-Map artifact) SHALL be reported as an error but SHALL NOT, by
itself, cause the overall run to be reported as unsuccessful.

#### Scenario: Broken FHIR reference in otherwise-complete run
- **WHEN** a run contains one or more unresolved FHIR resource/field/data-type references
  but every Segment/Data-Type/Concept-Map cross-reference resolves successfully
- **THEN** the run is still reported as successful, with the unresolved FHIR references
  visible only as logged errors

