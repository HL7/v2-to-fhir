## Why

This repository has no baseline `openspec/specs/` — none of the existing behavior of
`Convert` or the generated IG is written down anywhere except the Java source. The
`add-fhir-r6-support` change needs a concrete baseline to diff its delta specs against
(especially for CSV parsing and link resolution, which it directly modifies), and the
rest of the pipeline is worth documenting on its own merits. This change captures that
baseline as-is, with no behavior change.

## What Changes

- Document six existing, currently-undocumented capabilities of the `v2-to-fhir` Convert
  tool and IG build, derived from the current codebase (see `src/main/java/org/hl7/v2tofhir/`,
  `build.bat`, `sushi-config.yaml`) via `openspec explore`.
- No code changes. This change exists purely to populate `openspec/specs/` with the
  current, real behavior so future changes (starting with `add-fhir-r6-support`) have a
  baseline to modify against.

## Capabilities

### New Capabilities
- `mapping-source/sheet-download`: downloading inventory-linked artifact sheets from
  Google Sheets to local CSV via `Convert -d`/`-r`, including the "ready"-only filter and
  the `filetourl.properties` provenance map.
- `mapping-conversion/csv-to-fsh`: converting downloaded CSV rows into FHIR Shorthand
  `ConceptMap` instances, per artifact type (Message, Segment, Data Type, Concept Map),
  using fixed positional column parsing.
- `mapping-conversion/link-resolution`: resolving V2 and FHIR artifact names referenced in
  mapping rows into IG cross-reference links, including known special-cased V2 tables, and
  flagging/stubbing broken links.
- `mapping-conversion/toc-generation`: generating the chapter/subchapter index content in
  `input/pagecontent/{message,segment,datatype,coding_system}_maps.md` from
  `mappings/chapterdata.csv` and the set of converted artifacts.
- `ig-publication/single-version-build`: building the published IG (SUSHI + HL7 IG
  Publisher) against exactly one FHIR release, as pinned in `sushi-config.yaml`.
- `diagnostics/error-reporting`: structured error/warning reporting during conversion
  (`ConvertErrors.log`, counts, exit code) and validation of generated link targets.

### Modified Capabilities
None — nothing currently specified exists to modify.

## Impact

- Adds `openspec/specs/mapping-source/sheet-download/spec.md`,
  `openspec/specs/mapping-conversion/csv-to-fsh/spec.md`,
  `openspec/specs/mapping-conversion/link-resolution/spec.md`,
  `openspec/specs/mapping-conversion/toc-generation/spec.md`,
  `openspec/specs/ig-publication/single-version-build/spec.md`,
  `openspec/specs/diagnostics/error-reporting/spec.md`.
- No source code, build script, or generated-content changes.
- `ig-publication/single-version-build` is written to describe *today's* reality (one
  FHIR release per build) precisely so `add-fhir-r6-support` can express its change as a
  clean MODIFIED delta against it, rather than starting from nothing.
