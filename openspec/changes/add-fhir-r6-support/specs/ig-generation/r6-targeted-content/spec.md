## Purpose

Lets rows tagged for FHIR R6 produce correct, published mapping content — right resource
and field names, right documentation links — without requiring any change to the
`ConceptMap` container format that existing consumers of this IG's output already parse.

## ADDED Requirements

### Requirement: R6-tagged rows resolve against FHIR R6 naming and documentation
A mapping row tagged for FHIR R6 SHALL have its target resource, field, and code-system
references resolved against FHIR R6 names and documentation, independent of what release
an R4-tagged row in the same artifact resolves against.

#### Scenario: R6-tagged row with a valid R6 target
- **WHEN** a mapping row tagged for FHIR R6 references a resource, field, or code system
  that exists in FHIR R6
- **THEN** the generated content links to that artifact's page in the FHIR R6
  specification, and the reference is not treated as unresolved just because it doesn't
  exist under that name in FHIR R4

#### Scenario: Row tagged for both R4 and R6 with the same name in both releases
- **WHEN** a mapping row is tagged for both FHIR R4 and FHIR R6, and its target name is
  valid in both releases
- **THEN** the row resolves successfully under both releases' rules

### Requirement: R6-targeted content published without changing the ConceptMap container
R6-targeted mapping content SHALL be published using the same `ConceptMap` resource shape
used for R4-targeted content today. No row's version tag SHALL change the shape of the
generated resource.

#### Scenario: R6-tagged row generates a ConceptMap element
- **WHEN** a mapping row tagged for FHIR R6 is converted
- **THEN** the resulting generated element uses the same resource shape as an R4-tagged
  row's generated element, differing only in which names/links it references
