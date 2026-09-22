## Purpose

Converts the downloaded per-artifact CSV mapping sheets (Message, Segment, Data Type,
Concept Map) into FHIR Shorthand `ConceptMap` instances that the IG build compiles into
published FHIR resources.

## ADDED Requirements

### Requirement: Artifact type dispatch
The system SHALL determine which of the four supported conversions to apply to a CSV file
from its filename, and SHALL skip files it does not recognize as one of the supported
types (reporting them rather than failing the whole run).

#### Scenario: Recognized artifact file
- **WHEN** a CSV file's name identifies it as a Message, Segment, Data Type, or Concept Map
  sheet
- **THEN** the system applies the matching conversion to it

#### Scenario: Inventory file passed for conversion
- **WHEN** a CSV file's name identifies it as a master inventory file rather than an
  artifact sheet
- **THEN** the system skips it without error

#### Scenario: Unrecognized file
- **WHEN** a CSV file's name does not match any known artifact type
- **THEN** the system reports that it does not know how to convert the file and continues
  processing the rest of the batch

### Requirement: Deterministic conversion order
When converting a batch of files together, the system SHALL convert all Concept Map
(vocabulary/code system) files before converting any Data Type, Message, or Segment file,
so that vocabulary cross-references are available when later conversions need them.

#### Scenario: Mixed batch conversion
- **WHEN** a batch containing Concept Map, Data Type, Message, and Segment files is
  converted in one run
- **THEN** every Concept Map file finishes converting before any Data Type, Message, or
  Segment file begins converting

### Requirement: Header and blank-row handling
The system SHALL treat the first two rows of every artifact CSV as headers, not data, and
SHALL silently discard data rows that carry no usable FHIR mapping.

#### Scenario: Header rows skipped
- **WHEN** an artifact CSV is converted
- **THEN** the first two rows are never treated as mapping data

#### Scenario: Row with no FHIR target
- **WHEN** a data row's FHIR target value is blank or is explicitly marked not applicable
  (e.g. "N/A")
- **THEN** the row produces no output and no error

#### Scenario: Row with no source code
- **WHEN** a data row has a FHIR target but no V2 source code
- **THEN** the system reports a warning identifying the row and produces no output for it

### Requirement: One FSH file per mapped artifact
The system SHALL emit one `ConceptMap` FSH file per V2 artifact that has at least one row
mapping to a recognized FHIR target, and SHALL NOT emit a file for an artifact that maps to
nothing recognized.

#### Scenario: Artifact with at least one real mapping
- **WHEN** a converted artifact has one or more rows mapping to a recognized FHIR target
- **THEN** a `ConceptMap` FSH file is written for that artifact

#### Scenario: Artifact with no recognized FHIR target at all
- **WHEN** every row for a converted artifact fails to resolve to a recognized FHIR target
- **THEN** no FSH file is written for that artifact

### Requirement: Grouped ConceptMap output
Within one generated `ConceptMap`, the system SHALL group mapped elements by their target
FHIR code system, and SHALL only publish a single `targetUri` metadata value when all
elements in the map share one target code system.

#### Scenario: Single target code system
- **WHEN** every mapped element in an artifact targets the same FHIR code system
- **THEN** the generated `ConceptMap` declares that single system as its `targetUri`

#### Scenario: Multiple target code systems
- **WHEN** mapped elements in one artifact target more than one FHIR code system
- **THEN** the generated `ConceptMap` groups elements by target system and omits a single
  top-level `targetUri`

### Requirement: Conditional mapping metadata preserved
When a mapping row carries a computable condition (ANTLR expression, FHIRPath expression,
or narrative description) or type/cardinality/assignment/vocabulary constraints, the system
SHALL carry that information into the generated `ConceptMap` element rather than discarding
it.

#### Scenario: Conditional mapping row
- **WHEN** a mapping row includes a computable condition
- **THEN** the generated element for that row records the condition alongside its target

### Requirement: Companion narrative content generated per artifact
For each generated `ConceptMap`, the system SHALL also generate matching introductory and
notes narrative content, and SHALL attribute the artifact to its original source sheet when
that source is known.

#### Scenario: Source sheet known
- **WHEN** an artifact's source Google Sheet URL is known at conversion time
- **THEN** the generated FSH records that URL as the artifact's origin
