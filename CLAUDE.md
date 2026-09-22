# v2-to-fhir — Project Notes

This is the source repository for the HL7 **V2 to FHIR** Implementation Guide.
Published guide: https://hl7.org/fhir/uv/v2mappings/
Continuous build:  https://build.fhir.org/ig/HL7/v2-to-fhir/ (TOC: https://build.fhir.org/ig/HL7/v2-to-fhir/toc.html)
GitHub origin: https://github.com/HL7/v2-to-fhir/

## What this repo produces

A FHIR IG (built via SUSHI + the HL7 IG Publisher, `publisher.jar`) that maps HL7 V2
messages, segments, data types, and code systems to FHIR resources — expressed as
`ConceptMap` (and related) resources in FHIR Shorthand (`.fsh`).

The `.fsh` source under `input/fsh/` is **generated**, not hand-authored. It is produced
by a small Java tool (`org.hl7.v2tofhir.Convert`) from CSV files exported from a set of
Google Sheets, which are the actual source of truth for the mapping content.

## The Google Sheets pipeline

- **Master inventory sheet**: https://docs.google.com/spreadsheets/d/1yb1AJXyDsyCvLFb67UFtz6g4UeeKUoaUWp04tDxvg2E
  Tabs: **Message**, **Segment**, **Data Type**, **Code System**. Each row in a tab has:
  artifact name (col 0), Status, Owner, Comment, Link (URL to that artifact's own sheet).
- Each linked artifact sheet (one Google Sheet per Message/Segment/Data Type/Concept Map)
  is downloaded as CSV into `mappings/{messages,segments,datatypes,codesystems}/`.
- `Convert` then reads those CSVs and emits one `.fsh` file per artifact into `input/fsh/`,
  plus intro/notes markdown fragments into `input/includes/`.

**As of 2026-09, the source Google Sheets have gained two new header columns** under the
existing "FHIR Version" column header, for every artifact tab: a **Core Version** column
whose value is `F-R4`, `F-R6`, or both, indicating which FHIR release(s) that row's mapping
applies to. The local CSV snapshots in `mappings/` do **not** yet reflect this — they were
downloaded before the sheets changed. This is the trigger for the R4/R6 work described below.

## Convert.java — command reference

`Convert` (`src/main/java/org/hl7/v2tofhir/Convert.java`) is the entry point for every
build/download operation. Build it first: `mvn compile package` (or use the prebuilt
`target/v2-to-fhir.jar` / `target/v2-to-fhir-jar-with-dependencies.jar`).

```
java -cp target/classes org.hl7.v2tofhir.Convert [options] [file-or-dir ...]
```

Options (parsed left-to-right in `main()`):

| Flag | Meaning |
|---|---|
| `-o<dir>` | Output directory for generated `.fsh`/`.md` (default `.`). Creates the dir if missing. |
| `-d<inventory.csv>` | **Download all** linked artifact sheets referenced by the given inventory CSV (Message/Segment/Data Type/Code System list), regardless of Status. Writes each to `-o<dir>`, plus a `filetourl.properties` map of filename→source URL. |
| `-r<inventory.csv>` | Same as `-d`, but **only rows whose Status column contains "ready"** (case-insensitive) are downloaded. |
| `-e...` | Stop processing arguments (early exit marker). |
| bare `<file>` or `<dir>` | Queue for **conversion** (CSV → `.fsh`). A directory adds every `*.csv` inside it. Conversion always runs after all `-d`/`-r`/plain args are parsed, via `convertAll()`. |

Conversion dispatches by filename substring (see `Convert.getType()`):
`*Inventory*` → skipped, `*Data Type*` → `DatatypeConverter`, `*Segment*` → `SegmentConverter`,
`*Message*` → `MessageConverter`, `*ConceptMap*`/`*HL7 Concept*` → `ConceptMapConverter`.

### The three real-world invocations

1. **Refresh the CSV snapshots from Google Sheets** (`downloadsheets.cmd` / `get.cmd`):
   ```
   java -cp target\v2-to-fhir-jar-with-dependencies.jar org.hl7.v2tofhir.Convert ^
     -omappings/codesystems "-dmappings/v2-to-FHIR Map Inventory - Code System.lst" ^
     -omappings/datatypes   "-dmappings/v2-to-FHIR Map Inventory - Data Type.lst" ^
     -omappings/messages    "-dmappings/v2-to-FHIR Map Inventory - Message.lst" ^
     -omappings/segments    "-dmappings/v2-to-FHIR Map Inventory - Segment.lst"
   ```
   Run this whenever the Google Sheets have changed and you want a fresh local snapshot.
   Use `-r` instead of `-d` to pull only rows marked "ready" in the inventory tab.

2. **Regenerate `.fsh` from the local CSV snapshot** (part of `build.bat`):
   ```
   java -cp target\v2-to-fhir.jar;target\lib\* org.hl7.v2tofhir.Convert ^
     -oinput/fsh mappings/messages mappings/segments mappings/datatypes mappings/codesystems
   ```
   Pure CSV→FSH conversion, no network access. This is what "Stage 1: build with the
   current data" exercises.

3. **Full guide build** (`build.bat`): clean `output/`, `fsh-generated/`, and previously
   generated `input/fsh/*.fsh`; `mvn compile package`; run invocation 2; then `_genonce.bat`
   (SUSHI + IG Publisher) to produce the actual IG site under `output/`.

### Supporting scripts

- `build.bat` — full local build (clean → compile → convert → publish). Entry point for
  "does the guide still build."
- `get.cmd` — like invocation 1, but against `target/classes` and `.lst` inventory files
  rather than the jar-with-dependencies; used during dev iteration.
- `downloadsheets.cmd` — invocation 1 exactly, against the built jar.
- `_genonce.bat` / `_gencontinuous.bat` — wrap the SUSHI + HL7 IG Publisher run (`publisher.jar`,
  fetched/updated via `_updatePublisher.bat`). `_gencontinuous.bat` watches for changes.
- `compare.bat` — diff-oriented helper (check before relying on it; not yet reviewed in depth).

## Java source map (`src/main/java/org/hl7/v2tofhir/`)

| File | Role |
|---|---|
| `Convert.java` | CLI entry point: arg parsing, download orchestration, conversion dispatch, chapter/index generation (`message_maps.md` etc.), FHIR-artifact link resolution (`getFhirLocation`). |
| `Converter` / `Convertible` | Interfaces: `Converter` = one source file's conversion session (load/store/getters); `Convertible` = one CSV row's `convert()` into a `ConverterImpl.Row`. |
| `ConverterImpl.java` | Abstract base for all converters. **This is where FHIR-version-specific behavior lives**: hardcoded `FHIR_BASE = "https://hl7.org/fhir/R4/"`, all link-building (`makeFhirLink`, `makeSegmentLink`, `makeDataTypeLink`, `makeTableLink`), and **FSH emission for `ConceptMap` instances** (`store()`, `writeHeader()`, `addConstraints()` — the latter emits the `dependsOn` extensions for ANTLR/FHIRPath/Narrative conditions). |
| `MessageConverter`, `SegmentConverter`, `DatatypeConverter`, `ConceptMapConverter` | Thin `ConverterImpl<T>` subclasses per artifact type; mostly just wire up the right `Convertible` bean type and `writeIntro()`. |
| `MessageInput`, `SegmentInput`, `DatatypeInput`, `ConceptMapInput` | **Positional CSV row beans** (`@CsvBindByPosition`), all still bound to the original (pre-E2) column positions — see "Dual-layout CSV parsing" below for how newer (E2) sheets are handled without changing these. Each implements `convert()` → `ConverterImpl.Row`, including `r.versionTags = parseVersionTags()` (from `Convertible`'s default method) to carry forward the row's Core/Incubator Version tags, if any. |
| `ConverterMap.java` | Loads `mappings/chapterdata.csv` into lookup tables (FHIR Resource/Data Type names, V2 chapter/section numbers, etc.) used to build TOC entries and resolve link targets. Currently a single flat table with no FHIR-version dimension. |

### Dual-layout CSV parsing (Core Version / Incubator Version columns)

Sheets migrated to the new (E2) format carry two extra columns — **Core Version** and
**Incubator Version** — inserted right after `Cardinality - Max` (Message/Segment/Data
Type, column index 6) or `Code System` (Concept Map, column index 3), shifting every later
column by +2. Rather than maintaining two sets of `@CsvBindByPosition` indices per bean
class, `ConverterImpl.loadBeans()` detects the layout per file (does row 2's column at that
index literally read `"Core Version"`?) and, for a migrated file, **splices those two
columns out of every row** (capturing their combined value) before handing the row to the
unchanged, original-position bean binding. So a not-yet-migrated file and a migrated file
both parse through the exact same `@CsvBindByPosition` indices — the four `*Input.java`
classes never needed to change. The captured value is set on each bean via
`Convertible.setVersionTagsRaw()` after parsing, then split/trimmed into
`ConverterImpl.Row.versionTags` by each bean's `convert()` (via the shared
`Convertible.parseVersionTags()` default method). A file with no Core Version column at
all (not yet migrated) gets an empty tag set for every row — same behavior as before this
existed.

## Key files outside `src/`

- `mappings/v2-to-FHIR Map Inventory - {Message,Segment,Data Type,Code System}.csv` / `.lst` —
  local snapshots of the master inventory tabs.
- `mappings/{messages,segments,datatypes,codesystems}/*.csv` — one CSV per artifact sheet
  (current 2-header-row, positional-column format — see column layout in each `*Input.java`).
- `mappings/chapterdata.csv` — static structural/TOC data (not sheet-derived).
- `mappings/*/filetourl.properties` — generated map of downloaded filename → source Google
  Sheet URL, used to stamp a `RelatedArtifact` "derived-from" extension into each `.fsh`.
- `sushi-config.yaml` — IG metadata; **`fhirVersion: 4.0.1`, single value** — the whole IG
  currently targets exactly one FHIR release.
- `ig.ini`, `fsh.ini`, `template/` — IG Publisher/SUSHI plumbing.
- `input/fsh/` — generated FSH (do not hand-edit; regenerated by `Convert`).
- `input/includes/ConceptMap-*-intro.md` / `-notes.md` — generated intro/notes fragments,
  one pair per ConceptMap, included by the corresponding narrative page.
- `input/pagecontent/*.md` — hand-authored + partially-generated chapter/index pages
  (`message_maps.md`, `segment_maps.md`, `datatype_maps.md`, `coding_system_maps.md` have a
  `[//End]:` marker below which `Convert.generateMapTables()` rewrites content on every run).

## Current branch: `r6_build`

Work in progress on this branch (uncommitted at time of writing) is dependency-currency
maintenance ahead of the R6 effort: bumping `opencsv` 4.5→5.12.0 (and the resulting
`CsvValidationException` catch-clause changes in `Convert.java`/`ConverterMap.java`),
`commons-io`/`commons-text`/`junit` version bumps in `pom.xml`, and pinning the IG template
to `1.0.0`. This is groundwork for Stage 1, not R6-specific logic yet.

## R4/R6 dual-support effort — status

**Goal:** support generating both FHIR R4 and FHIR R6 mapping content from the same V2
source data, driven by the new **Core Version** (`F-R4` / `F-R6` / both) column being added
to every Google Sheet tab.

Full plan (proposal/specs/design/tasks): `openspec/changes/add-fhir-r6-support/`. Status
per `tasks.md`:
1. **Stage 1 (done)** — automated master-inventory refresh from the master Google Sheets
   workbook (`Convert -m`), replacing manual per-tab export.
2. **Stage 2 (done)** — dependency/plugin/CI currency; confirmed a full `build.bat`
   (including SUSHI + IG Publisher) still builds cleanly against current data.
3. **Stage 3 (in progress)** — per-row Core/Incubator Version tag parsing. See "Dual-layout
   CSV parsing" above.
4. **Stage 4 (not started)** — version-aware link resolution (`ConverterMap`/`makeFhirLink`
   need an R6 name dimension) and the one-build-vs-two-builds IG Publisher spike.

**Do not assume the R4 `ConceptMap` shape can be reused unmodified for a future,
genuinely-R6-shaped emitter** — R6 renames `equivalence`→`relationship`,
`source`/`target`→`sourceScope[x]`/`targetScope[x]`, and replaces `dependsOn.property` (a URI)
with `dependsOn.attribute` (a `code` resolved against a new top-level `property`/
`additionalAttribute` declaration on the ConceptMap) — which is exactly the mechanism
`ConverterImpl.addConstraints()` uses today for the ANTLR/FHIRPath/Narrative condition
extensions. **This change deliberately does not do that** (see the proposal's "Why") — R6
output stays inside the existing R4-shaped `ConceptMap`; only target names/links vary by
tag. A genuinely R6-shaped emitter is scoped as a separate, future change.
