## Purpose

Pulls the authoritative V2-to-FHIR mapping content out of Google Sheets and into local CSV
files that the rest of the toolchain can process offline, while tracking where each file
came from.

## ADDED Requirements

### Requirement: Inventory-driven download
The system SHALL read a master inventory CSV (one row per artifact: name, status, owner,
comment, a source URL) and download each linked artifact sheet as CSV into a specified
output directory.

#### Scenario: Full download
- **WHEN** the system is invoked in "download all" mode against an inventory file
- **THEN** every row's linked sheet is downloaded regardless of its status value

#### Scenario: Ready-only download
- **WHEN** the system is invoked in "ready only" mode against an inventory file
- **THEN** only rows whose status or owner field contains "ready" (case-insensitive) are
  downloaded, and all other rows are skipped

#### Scenario: Wildcard inventory selection
- **WHEN** the inventory argument contains a wildcard (`*` or `?`)
- **THEN** the system downloads from every locally-present file matching that wildcard,
  applying the same status filtering to each

### Requirement: Downloaded content validation
The system SHALL detect when a download did not actually return sheet data and SHALL NOT
write a corrupted file to disk in that case.

#### Scenario: Sheet unavailable or access denied
- **WHEN** a download's response body is an HTML page (an access-denied or error page)
  rather than CSV content
- **THEN** the system reports an error for that row and does not write an output file for it

#### Scenario: Filename does not match expected artifact
- **WHEN** a downloaded file's resolved filename does not contain the inventory row's
  artifact name
- **THEN** the system reports a (non-fatal) warning identifying the mismatch, and still
  writes the file

### Requirement: Source provenance tracking
The system SHALL record, for every successfully downloaded file, the source URL it came
from, so later steps can attribute generated content back to its Google Sheet.

#### Scenario: Provenance map written after a download run
- **WHEN** a download run against an inventory completes
- **THEN** a provenance file mapping each downloaded filename to its source URL exists in
  the output directory
