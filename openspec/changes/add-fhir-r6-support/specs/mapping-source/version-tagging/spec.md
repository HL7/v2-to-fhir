## Purpose

Carries forward, from every mapping row, which FHIR release(s) that row applies to, so
downstream conversion and publication steps can tell R4-targeted content apart from
R6-targeted content instead of treating every row as universally applicable.

## ADDED Requirements

### Requirement: Per-row version tags recognized across all artifact shapes
The system SHALL recognize a per-row set of version tags (at minimum, Core Version values
`F-R4` and/or `F-R6`, plus a distinct Incubator Version tag) in each of the four artifact
CSV shapes (Message, Segment, Data Type, Concept Map), and SHALL carry that set of tags
forward to whatever consumes the converted row.

#### Scenario: Row tagged for one release
- **WHEN** a mapping row's version tag identifies exactly one FHIR release
- **THEN** the row is treated as applying only to that release

#### Scenario: Row tagged for multiple releases
- **WHEN** a mapping row's version tag identifies more than one FHIR release
- **THEN** the row is treated as applying to every release it's tagged for

#### Scenario: Row with no version tag
- **WHEN** a mapping row carries no version tag at all (for example, a sheet that predates
  this tagging)
- **THEN** the row is still converted, consistent with prior (pre-tagging) behavior, rather
  than being rejected or silently dropped

### Requirement: Backward compatible with pre-tagging sheets
The system's recognition of version tags SHALL NOT break conversion when applied to a
sheet that does not yet carry the version-tag columns.

#### Scenario: Sheet without version-tag columns
- **WHEN** an artifact CSV that predates the version-tag columns is converted
- **THEN** conversion proceeds as it did before version tagging was introduced, with no
  version tag recognized for any row in that file
