## MODIFIED Requirements

### Requirement: FHIR artifact link resolution
The system SHALL resolve a referenced FHIR resource, data type, or resource/data-type field
name to the correct published FHIR documentation link for the FHIR release(s) that mapping
row's version tag identifies it with — not a single, IG-wide target release.

#### Scenario: Recognized FHIR resource or field reference
- **WHEN** a mapping row references a FHIR resource, data type, or field that the system
  recognizes under the release(s) that row is tagged for
- **THEN** the generated content links to that artifact's page in the FHIR specification
  for each release the row is tagged for

#### Scenario: Reference valid under one tagged release but not another
- **WHEN** a mapping row is tagged for more than one FHIR release, and its referenced
  name is recognized under one of those releases but not another
- **THEN** the reference resolves successfully for the release(s) under which it is
  recognized, and is treated as unrecognized only for the release(s) under which it isn't

#### Scenario: Unrecognized FHIR reference
- **WHEN** a mapping row references something the system cannot resolve to any known FHIR
  resource, data type, field, or code system under any release it is tagged for
- **THEN** the system reports an error identifying the row and target, and renders the
  reference as a visibly broken link rather than a normal one
