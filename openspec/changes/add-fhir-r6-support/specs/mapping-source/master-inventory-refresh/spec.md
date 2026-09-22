## Purpose

Lets the four master inventory CSVs be refreshed directly from the master Google Sheets
workbook as a repeatable, scriptable step, instead of a manual per-tab export that is easy
to get wrong (stale spreadsheet IDs, stray data left in a cell) and easy to forget to redo.

## ADDED Requirements

### Requirement: Refresh master inventory files from the master workbook by tab name
The system SHALL be able to fetch the current content of a named tab in the master
inventory Google Sheets workbook and write it as a local CSV file, without requiring a
manual export step or workbook-specific authentication.

#### Scenario: Refreshing all four inventory tabs
- **WHEN** the system is invoked to refresh the master inventory from the workbook
- **THEN** the current content of the Message, Segment, Data Type, and Code System tabs
  is written to their respective local inventory CSV files, reflecting whatever the
  workbook contains at the time of the request

#### Scenario: Tab content unavailable
- **WHEN** a requested tab cannot be fetched (the workbook is unavailable, or the request
  does not return usable CSV content)
- **THEN** the system reports an error identifying the tab and does not overwrite the
  existing local file with corrupted or empty content
