## Purpose

Describes how the generated FSH content is currently compiled and published as one
FHIR Implementation Guide targeting exactly one FHIR release. This is the baseline that
`add-fhir-r6-support` is expected to change.

## ADDED Requirements

### Requirement: Single FHIR release per build
The system SHALL target exactly one FHIR release for the entire published IG at a time,
declared once for the whole IG rather than per artifact or per page.

#### Scenario: Building the IG
- **WHEN** the IG is built
- **THEN** every generated resource in the output is valid against the single FHIR release
  declared for that build, and no page or resource targets a different release

### Requirement: Clean rebuild from source on each build
A full build SHALL regenerate all FSH mapping content from the current CSV mapping source
before invoking the FHIR tooling, rather than reusing FSH left over from a previous build.

#### Scenario: Full build invoked
- **WHEN** a full build is run
- **THEN** previously generated mapping FSH and previous build output are removed before
  new FSH is generated and the FHIR tooling runs

### Requirement: Stable publication metadata
Every generated `ConceptMap` instance SHALL carry the same publication metadata (version,
status, publisher, contact, copyright), generated fresh each build, so that only
substantive mapping changes are visible in a diff between builds beyond the publication
date.

#### Scenario: Two builds with no mapping changes
- **WHEN** the IG is built twice in a row from unchanged mapping source data
- **THEN** the only difference in generated publication metadata between the two builds is
  the publication date
