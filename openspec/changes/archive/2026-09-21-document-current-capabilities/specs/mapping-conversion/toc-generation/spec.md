## Purpose

Builds the chapter-organized index pages of the IG (message, segment, data type, and code
system mapping listings) from the set of artifacts converted in a run, so readers get a
navigable table of contents instead of an alphabetical dump.

## ADDED Requirements

### Requirement: Chapter-organized index generation
For each of the four artifact types (Message, Segment, Data Type, Concept Map/Table), the
system SHALL regenerate that type's index page listing every converted artifact of that
type, grouped under the V2 specification chapter/section it belongs to.

#### Scenario: Artifacts converted in a run
- **WHEN** a conversion run produces one or more artifacts of a given type
- **THEN** that type's index page is regenerated to list every one of them, grouped by
  chapter/section

### Requirement: Hand-authored content preserved
Each index page SHALL preserve any hand-authored content that appears above its generated
section, and SHALL only replace the generated section itself on regeneration.

#### Scenario: Regenerating a page with prior hand-authored content
- **WHEN** an index page containing hand-authored introductory content above the generated
  marker is regenerated
- **THEN** the hand-authored content is unchanged and only the generated listing below the
  marker is replaced

### Requirement: Unresolvable chapter placement reported, not fatal
When an artifact cannot be matched to a known chapter/section (its identifier isn't found
in the chapter reference data), the system SHALL report that omission and continue
generating the rest of the index rather than failing the run.

#### Scenario: Artifact with no known chapter mapping
- **WHEN** a converted artifact's identifier has no corresponding chapter/section entry
- **THEN** the system reports the artifact as unrecognized and omits it from the generated
  index without stopping the run
