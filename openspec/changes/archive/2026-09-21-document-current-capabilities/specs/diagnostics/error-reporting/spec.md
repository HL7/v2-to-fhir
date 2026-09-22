## Purpose

Gives conversion runs a consistent, reviewable diagnostic trail — what failed, where, and
whether the overall run should be considered trustworthy — instead of silent data loss or
an opaque pass/fail.

## ADDED Requirements

### Requirement: Persistent, located diagnostics
The system SHALL record every error and warning to a persistent log as well as the console,
each identified by a sequential number, its source file, and (when available) the specific
line in the source file it relates to, including the literal content of that line.

#### Scenario: Error during conversion
- **WHEN** the system reports an error or warning during a run
- **THEN** the message, its source file and line, and the literal source line content (if
  resolvable) are written to both the console and the persistent log

### Requirement: Run summary
At the end of a run, the system SHALL report the total number of files processed, the
total number of errors, and the total number of warnings.

#### Scenario: Run completes
- **WHEN** a conversion run finishes
- **THEN** a summary line reporting files processed, error count, and warning count is
  printed

### Requirement: Exit status reflects cross-reference validity, not raw error count
The system's success/failure exit status SHALL be determined by whether every generated
cross-reference resolves to an artifact that was actually produced in the run (and whether
unexpected internal failures occurred), not by the raw count of logged errors or warnings.

#### Scenario: Errors logged but all cross-references valid
- **WHEN** a run logs one or more errors (for example, unresolved FHIR resource/field
  references) but every Segment/Data-Type/Concept-Map cross-reference resolves to a
  generated artifact
- **THEN** the run exits successfully

#### Scenario: A cross-reference is unresolved
- **WHEN** any Segment/Data-Type/Concept-Map cross-reference does not resolve to a
  generated artifact
- **THEN** the run exits unsuccessfully, regardless of how few errors were otherwise logged
