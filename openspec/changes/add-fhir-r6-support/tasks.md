## 1. Stage 1 — Master-inventory refresh automation

- [x] 1.1 Add named constants for the master workbook ID and the four tab names
  (Message/Segment/Data Type/Code System) near the top of `Convert.java`.
- [x] 1.2 Implement a new `Convert` download mode that fetches each tab via
  `gviz/tq?tqx=out:csv&sheet=<name>` and writes it to its expected
  `mappings/v2-to-FHIR Map Inventory - <Tab>.csv` path, reusing the existing
  fetch/validate/write scaffolding (reject HTML/error responses; don't overwrite on
  failure). Also added a header-echo check: `gviz/tq` silently falls back to the
  workbook's first tab on an unrecognized tab name instead of erroring, discovered while
  verifying 1.3 — guarded against directly in this task rather than deferred.
- [x] 1.3 Add a test/verification step exercising the new download mode against the real
  master workbook, confirming all four inventory files download and pass the existing
  "not HTML" validation — done alongside 1.2, not deferred. Verified live: happy path (all
  four tabs downloaded, 0 errors) and the failure path (an injected invalid tab name is
  reported as an error and does not write/overwrite its output file).
- [x] 1.4 Fix the stale `.lst` references in `get.cmd`/`downloadsheets.cmd` to `.csv`, and
  verify both scripts run end to end against the new download mode. Verified by running
  the fixed Message-inventory download command against a scratch output directory
  (17 files, 0 errors).
- [x] 1.5 Update `mappings/README.md` to document the new refresh command, replacing the
  manual "File → Download" instructions — written alongside 1.2–1.4, not as a follow-up.
  Also corrected a stale master-workbook URL and a package-name typo (`v2toFHIR` →
  `v2tofhir`) found in the existing doc while editing it.
- [x] 1.6 Temporarily guard `.github/workflows/update-csvs.yaml`'s commit/push step (see
  design.md's mitigation) before this branch exercises a real inventory refresh, so a
  premature CI auto-commit can't land broken FSH ahead of Stage 3. Implemented as
  `if: false` on the "Commit and Push changes" step, with a comment pointing to task 3.7
  for re-enabling.

## 2. Stage 2 — Restore a clean build against current data

- [x] 2.1 Review and commit the in-progress dependency-currency changes already on this
  branch (opencsv 5.12.0, commons-io, commons-text, junit, the resulting
  `CsvValidationException` catch-clause fixes in `Convert.java`/`ConverterMap.java`).
  Expanded beyond the branch's original bumps after checking every dependency and plugin
  for currency, not just the four already touched: commons-io → 2.22.0, commons-text →
  1.15.0, junit-jupiter-engine → 5.14.4 (staying on 5.x; 6.x exists but is a separate
  migration), opencsv confirmed already latest (5.12.0, 0 known CVEs) — no change.
  `commons-lang3` added as an explicit direct dependency (3.20.0): it's imported directly
  throughout (`StringUtils`, `Triple`, `WordUtils`) but was only resolving transitively via
  commons-text, which is fragile. Plugin versions brought current too: maven-compiler-plugin
  → 3.15.0, maven-jar-plugin → 3.5.1, maven-surefire-plugin → 3.5.4, maven-javadoc-plugin →
  3.12.0. Consolidated onto a single execution path in the process: removed
  `maven-assembly-plugin` (its `jar-with-dependencies` fat jar was used by only
  `downloadsheets.cmd`) in favor of the plain `v2-to-fhir.jar` + `target/lib/` pattern
  `build.bat` and CI already used — `java -jar target/v2-to-fhir.jar <args>` now works
  standalone via the jar's own manifest `Class-Path`/`Main-Class`, no `-cp` or explicit
  main class needed anywhere. Updated `build.bat`, `update-csvs.yaml`, `downloadsheets.cmd`,
  `get.cmd` (which previously ran `-cp target\classes` with no dependencies on the
  classpath at all — broken as found), and `mappings/README.md` to match.
- [x] 2.2 Run `mvn compile package` and confirm a clean build with the updated
  dependencies. Verified via `mvn clean package` after every version/plugin change, and
  re-verified the master-inventory refresh and artifact-sheet download end to end against
  the consolidated jar (identical results to the pre-consolidation runs: 4/4 tabs, 0
  errors; 17 files, 0 errors, 1 warning).
- [ ] 2.3 Run a full `build.bat` against the current (pre-E2) `mappings/` data and confirm
  the IG still builds and publishes successfully — this is Stage 2's definition of done.
- [ ] 2.4 Note the dependency bump rationale (opencsv's `CsvValidationException` API
  change) in the commit message covering 2.1 — no separate doc needed for a routine
  version bump.

## 3. Stage 3 — Per-row version-tag parsing

- [ ] 3.1 Add a per-file layout-detection check in `ConverterImpl.load()` (does row 2's
  expected Core Version column literally read `"Core Version"`?) that selects between the
  old and new (+2-shifted) fixed position sets for that file, per design.md.
- [ ] 3.2 Update `MessageInput`, `SegmentInput`, `DatatypeInput`, `ConceptMapInput` to add
  a `versionTags` field (Core Version + Incubator Version, comma-split and trimmed) and
  support both detected position sets.
- [ ] 3.3 Thread `versionTags` through to `ConverterImpl.Row`.
- [ ] 3.4 Add tests using the real sample files pulled during this change as fixtures:
  (a) an old-layout file parses identically to current behavior (empty tag set, every
  other field unchanged), (b) a new-layout (E2) file parses `F-R4`/`F-R6`/both correctly
  and every subsequent field still lands in the right place.
- [ ] 3.5 Update `CLAUDE.md`/`mappings/README.md` to document the `versionTags` field and
  the dual-layout detection mechanism, so a future reader understands why two position
  sets exist — written alongside 3.1–3.4, not deferred.
- [ ] 3.6 Re-run the Stage 1 master-inventory refresh for real and pull a full corpus
  refresh; confirm no misparsing/regressions across the whole mapping corpus with the new
  layout-detection logic in place.
- [ ] 3.7 Remove the Stage 1.6 CI guard on `update-csvs.yaml` now that `Convert` safely
  handles both old- and new-layout sheets, and confirm a real push exercises it cleanly.

## 4. Stage 4a — R6 name data and version-aware link resolution

- [ ] 4.1 Add a version dimension to `mappings/chapterdata.csv`'s `FHIR Resource`/
  `FHIR Data Type` rows; populate the new R6 rows from design.md's confirmed FHIR R4→R6
  type-system diff (authoritative source: `metadatatypes.html`'s "Changes from R4 to R6"
  table).
- [ ] 4.2 Update `ConverterMap.load()`/`getMap()` to filter/select entries by requested
  FHIR version.
- [ ] 4.3 Add a test confirming a known R6-added name (e.g. `NutritionIntake`) resolves
  under R6 lookup, and a known-removed one (`SupplyRequest`) is correctly reported as
  absent from FHIR R6 core.
- [ ] 4.4 Document the `chapterdata.csv` version-column convention in `mappings/README.md`
  — alongside 4.1–4.3, not deferred.
- [ ] 4.5 Parameterize `FHIR_BASE` and the link-building methods (`makeFhirLink` and
  friends) in `ConverterImpl` to take a release parameter instead of the static R4
  constant.
- [ ] 4.6 Update call sites to pass each row's version tag(s); for a row tagged with more
  than one release, resolve independently per release per the modified
  `mapping-conversion/link-resolution` spec's new scenario.
- [ ] 4.7 Add tests covering: an R4-only row resolves against R4, an R6-only row resolves
  against R6, and a dual-tagged row whose name is valid under only one release resolves
  correctly for that release while flagging for the other.
- [ ] 4.8 File the residual content task for the mapping-sheet owners: tag ORM_O01's
  `SupplyRequest` rows with an Incubator Version value pointing at the OO Incubator IG,
  once the sheet owners confirm the exact tag format that column expects.

## 5. Stage 4b — One-build-vs-two-builds spike and final verification

- [ ] 5.1 Spike: with `sushi-config.yaml` still declaring `fhirVersion: 4.0.1`, build a
  minimal test `ConceptMap` FSH whose `target.code`/`group.target` references an R6-only
  name (e.g. `NutritionIntake`) and run SUSHI + the IG Publisher; observe whether it
  soft-warns (as with today's unresolvable V2/V3 terminology references) or hard-fails.
- [ ] 5.2 Record the spike's outcome and decision in `design.md`, resolving the
  "explicitly not decided here" section with the actual result.
- [ ] 5.3 Depending on the outcome: either (a) confirm the single existing
  `sushi-config.yaml`/build handles both R4- and R6-tagged content, or (b) scaffold a
  second `sushi-config.yaml`/build directory for the R6 edition per design.md's mechanics
  question — whichever the spike calls for.
- [ ] 5.4 Full build verification, step (a): with only R4-tagged rows exercised, confirm
  the existing R4 IG output is unchanged and still builds cleanly.
- [ ] 5.5 Full build verification, step (b): exercising R6-tagged rows from the refreshed
  corpus, confirm acceptable output — correct R6 links/names, no unexpected validation
  failures — completing Stage 4's two-step definition of done.
- [ ] 5.6 Record the verified R4/R6 build results in `design.md` (or a short build log
  referenced from it), closing out Stage 4 and this change.
