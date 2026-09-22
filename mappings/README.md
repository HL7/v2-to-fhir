This folder contains CSV source files for all mapping tables.

## Refreshing the master inventory

The four master inventory files (`v2-to-FHIR Map Inventory - Code System.csv`,
`- Data Type.csv`, `- Message.csv`, `- Segment.csv`) are pulled directly from the
[master workbook](https://docs.google.com/spreadsheets/d/1yb1AJXyDsyCvLFb67UFtz6g4UeeKUoaUWp04tDxvg2E)
using Convert, rather than a manual File > Download > CSV export per tab:

    java -jar target\v2-to-fhir.jar -omappings -m

This overwrites the four inventory files in this folder with the current content of the
workbook's Message, Segment, Data Type, and Code System tabs.

## Downloading the linked artifact sheets

Download the CSV files linked from those four inventory files using Convert as follows:

    java -jar target\v2-to-fhir.jar -omappings "-dmappings/v2-to-FHIR Map Inventory - Code System.csv"
    java -jar target\v2-to-fhir.jar -omappings "-dmappings/v2-to-FHIR Map Inventory - Data Type.csv"
    java -jar target\v2-to-fhir.jar -omappings "-dmappings/v2-to-FHIR Map Inventory - Message.csv"
    java -jar target\v2-to-fhir.jar -omappings "-dmappings/v2-to-FHIR Map Inventory - Segment.csv"

Note: To download only those that are ready, change `-d` to `-r` in the above command.

`downloadsheets.cmd` and `get.cmd` run these same download steps for you.

Next, generate the mappings using Convert as follows:

    java -jar target\v2-to-fhir.jar mappings

`target/v2-to-fhir.jar` is built by `mvn package` and carries a manifest `Class-Path`
into `target/lib/` (populated by the same build), so no `-cp` flag or explicit main class
is needed - this is the one supported way to run `Convert` from a built jar.

## `chapterdata.csv`'s Version column

`chapterdata.csv`'s `FHIR Resource`/`FHIR Data Type` rows carry a fifth column (`Version`)
tagging which FHIR release(s) that resource/data-type name is valid under - the same
`F-R4`/`F-R6` tag vocabulary used by the per-row Core Version column in the artifact
sheets (see `CLAUDE.md`'s "Dual-layout CSV parsing" section). A row with no Version value
is treated as valid under every release - this is what every pre-existing row not yet
reviewed against the R4/R6 diff defaults to, and matches this file's behavior before the
column existed.

The `F-R4`/`F-R6` population itself is a one-time snapshot of FHIR's own R4->R6 type-system
diff (`openspec/changes/add-fhir-r6-support/design.md`'s "Source of the FHIR R6
resource/data-type name list" decision, sourced from
`https://hl7.org/fhir/6.0.0-snapshot1/metadatatypes.html`'s "Changes from R4 to R6" table)
- not re-derived automatically, so it will go stale if FHIR's R6 type list changes again
before this IG's R6 support ships. Re-run that same source lookup and regenerate the
Version column if that happens.

`ConverterMap.getMap(release)` filters lookups to entries valid for `release` (entries with
no Version tag always pass through); `ConverterMap.getMap()` with no argument returns the
full, unfiltered map, used by chapter/TOC index generation in `Convert.java`, which has no
per-row release to filter by. `ConverterImpl.makeFhirLink()` resolves a row's *primary*
release (its `F-R4` tag if present, else whichever other tag it has) first, and - only if
the FHIR name isn't recognized under that release - independently retries any other release
the row is also tagged with, emitting a warning when a name resolves under one tagged
release but not another (e.g. `CodeableReference`, valid under R6 but not R4, on a
dual-tagged `F-R4, F-R6` row: resolves against the R6 base URL and warns that R4 doesn't
recognize it).
