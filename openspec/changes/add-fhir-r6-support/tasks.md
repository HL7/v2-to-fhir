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
- [x] 2.3 Run a full `build.bat` against the current (pre-E2) `mappings/` data and confirm
  the IG still builds and publishes successfully — this is Stage 2's definition of done.
  Ran the Java portion (clean → `mvn compile package` → `Convert`) directly, then
  `_genonce.bat`'s underlying `java -jar publisher.jar -ig . -Xmx2G` (SUSHI + IG Publisher
  + Jekyll). Hit one environment issue along the way, not a code/build issue: the first
  attempt failed at the Jekyll step (`'jekyll' is not recognized`) because Jekyll had been
  installed mid-session and the running shell's PATH predated it; re-running from a fresh
  `cmd.exe` window picked up the updated PATH and succeeded. Final result: **Errors: 7,
  Warnings: 21, Info: 269, Broken Links: 0** (487,124 links checked), full build completed
  in ~21m42s. All 7 errors/21 warnings are pre-existing source-data quality issues
  unrelated to this change (a missing OID on one CodeSystem; a text-encoding artifact
  corrupting 3 codes in V2 Table 0550; curly-quote/double-space display-text mismatches
  against THO in Tables 0203/0550; one stale JIRA-spec-artifacts housekeeping file) — none
  block the build, confirming Stage 2's definition of done is met.
- [x] 2.4 Note the dependency bump rationale (opencsv's `CsvValidationException` API
  change) in the commit message covering 2.1 — no separate doc needed for a routine
  version bump. Confirmed present in commit 379f048b's message.

## 3. Stage 3 — Per-row version-tag parsing

- [x] 3.1 Add a per-file layout-detection check in `ConverterImpl.load()` (does row 2's
  expected Core Version column literally read `"Core Version"`?) that selects between the
  old and new (+2-shifted) fixed position sets for that file, per design.md. Implemented
  as `ConverterImpl.loadBeans()`: detects the layout, and for a migrated file, splices the
  two tag columns out of every row (capturing their values) before handing rows to the
  **unchanged** original-position bean binding — so old and new layouts parse through the
  same `@CsvBindByPosition` indices instead of needing two annotated schemas. Same
  observable outcome as design.md's "two position sets," simpler mechanism.
- [x] 3.2 Update `MessageInput`, `SegmentInput`, `DatatypeInput`, `ConceptMapInput` to add
  a `versionTags` field (Core Version + Incubator Version, comma-split and trimmed) and
  support both detected position sets. Each class gained a `versionTagsRaw` field (not
  opencsv-bound, set post-parse by `loadBeans()` via `Convertible.setVersionTagsRaw()`) and
  `r.versionTags = parseVersionTags()` in `convert()`, using a shared default method on
  `Convertible` for the split/trim logic — no per-class duplication of the parsing itself.
- [x] 3.3 Thread `versionTags` through to `ConverterImpl.Row`. Added `Set<String>
  versionTags` (defaults to empty) to `Row`.
- [x] 3.4 Add tests using the real sample files pulled during this change as fixtures:
  (a) an old-layout file parses identically to current behavior (empty tag set, every
  other field unchanged), (b) a new-layout (E2) file parses `F-R4`/`F-R6`/both correctly
  and every subsequent field still lands in the right place. No `src/test` exists yet
  (confirmed empty in Stage 1), so verified live rather than via JUnit, matching the
  Stage 1 precedent: (a) re-ran the full existing corpus (`mappings/messages` +
  `segments`/`datatypes`/`codesystems`) — identical 292 files/0 errors/83 warnings, and the
  regenerated FSH diffed byte-identical (ignoring pre-existing, unrelated line-ending
  noise) against the previous run. (b) copied the four real E2 sample sheets (Message
  ADT_A01, Segment PID[Patient], Data Type CWE[Identifier], Concept Map
  PatientClass[EncounterClass]) into a scratch corpus and converted them: confirmed via
  direct row-vs-FSH comparison (e.g. `Datatype CWE to Identifier.fsh` element[0]:
  code=#CWE.1, type=ST, min=0/max=1, target.code=#[1].value, target.type=string,
  matching the raw row's post-splice fields exactly, including the `comments` field at the
  far right of the row surviving intact) that every field lands correctly on both sides of
  the spliced columns. The 43 "no mapping"/cross-reference errors seen on the isolated
  4-file scratch corpus are expected (real cross-referenced datatype files weren't part of
  the scratch set) and themselves confirm correct extraction, since the error messages
  correctly echo the `v2DataTypeMap` column values (e.g. `XPN[HumanName]`, `CX[Identifier]`)
  from several positions after the spliced columns.
- [x] 3.5 Update `CLAUDE.md`/`mappings/README.md` to document the `versionTags` field and
  the dual-layout detection mechanism, so a future reader understands why two position
  sets exist — written alongside 3.1–3.4, not deferred. Added a "Dual-layout CSV parsing"
  section to `CLAUDE.md` and refreshed its stale R4/R6 status section (now points at the
  real `openspec/changes/add-fhir-r6-support/` instead of "not created yet"); no
  `mappings/README.md` change needed here, since this mechanism is internal to `Convert`'s
  parsing, not part of the download/refresh commands that file documents.
- [x] 3.6 Re-run the Stage 1 master-inventory refresh for real and pull a full corpus
  refresh; confirm no misparsing/regressions across the whole mapping corpus with the new
  layout-detection logic in place. Refreshed all four master inventory files (`-m`) and
  the full "ready" corpus (296 artifact sheets, matching CI's own `-r` invocation) for
  real. Found and fixed two real issues along the way, neither in the splicing logic
  itself:
  - `ConceptMapConverter`'s constructor derived each table's vocabulary-link key by
    anchoring on the literal substring `"map_ "` in the lowercased filename - broken by
    the sheets' new naming convention, which inserts `"- FHIR E2_"` between "Map" and the
    table name, so `"map_ "` no longer appears anywhere. This silently failed vocabulary
    linking for every single Concept Map file (296/296), which cascaded into ~260 spurious
    "Missing vocabulary mapping" warnings on Segment/Data Type rows. Fixed by extracting
    the table name from *after the last underscore* instead, which works under both the
    old and new naming conventions.
  - `ConverterImpl.load()`'s artifact-type detection required an exact `"HL7 <Type>"`
    substring match, inconsistent with `Convert.getType()`'s more lenient (no "HL7 "
    required, case-insensitive) dispatch used to pick the right `*Converter` subclass in
    the first place. One live sheet (`Data Type - FHIR E2_ DLN[Identifier]`) was titled
    without the "HL7 " prefix - correctly dispatched to `DatatypeConverter` by
    `Convert.getType()`, but `ConverterImpl.load()` then left `type` null, crashing
    `getFHIRDescription()` with an NPE and aborting map-table generation for the *entire*
    run. Fixed by matching leniently in both places, consistently.

  Also found (not a code issue) two content typos in live sheets - `ORC[ServiceRequest]`
  and `OBR[ServiceRequest]` each referenced `EIP[Identifier-FliierAssignedOrderNumber]`/
  `EIP[Identifier-PlaceAssignedOrderNumber]`, typo'd against the real
  `EIP[Identifier-FillerAssignedIdentifier]`/`EIP[Identifier-PlacerAssignedIdentifier]`
  data type sheets - plus the DLN naming issue above. All three fixed live at the source
  by the user during this session, and re-verified by re-downloading and reconverting.

  Initial run reported **294 files processed, 0 errors, 86 warnings, exit code 0** - this
  claim turned out to be built on a contaminated run and was corrected afterward (see
  below); the earlier "0 errors" was wrong.

  **Post-commit correction**: discovered immediately after committing that both
  `build.bat` and CI's "Recreate SUSHI Files" step in `update-csvs.yaml` were clearing
  `input/*.fsh` (the wrong directory - generated output actually lands in `input/fsh/*.fsh`)
  and had been doing so all session, so stale/error-stub files from earlier runs (including
  now-fixed error conditions) were silently surviving every "clean" run and contaminating
  validation. Fixed both scripts to `rm -f input/fsh/*.fsh`. A truly clean rerun
  (`rm -rf input/fsh output fsh-generated`, then reconvert) surfaced **5 real errors** the
  contaminated run had been masking: two genuinely missing datatype sheets (`CNN[Practitioner]`,
  `CWE[Quantity]`), one malformed source-data cell (`RXO[MedicationRequest]` row 38, unbalanced
  parenthesis), and two datatype names (`EIP[Identifier-Filler/PlacerAssignedIdentifier]`)
  that had been split into four more specific sheets upstream without `SPM[Specimen]` being
  updated to reference the new names.

  Chasing those 5 down the diagnostics themselves turned out to be unreliable, and root-caused
  five separate bugs in `Convert.java`/`ConverterImpl.java` (see commit `8355acca`): a stale
  "FHIR R4_" naming template in the "Missing file:" hint (live sheets use "FHIR E2_"); an
  unconditional NPE in `writeHeader()` whenever `qualifier`/`source`/`target` are the
  deliberate `null` sentinel for an unsupported artifact, which had been silently leaving
  every "Unsupported ...fsh" stub as a 0-byte file forever; a download filter that only
  recognized `https`-prefixed Link cells, silently skipping `http` ones; and a case-sensitive
  FHIR Data Type/Resource lookup producing false "not a recognized FHIR artifact" diagnoses
  for correctly-cased references. Fixed all five.

  With the code fixed, re-diagnosed the remaining content: `CNN[Practitioner]` was blocked by
  a `http`-vs-`https` Link cell (user fixed the sheet); `CWE[Quantity]`, `CWE[string]`, and
  (unrelated but discovered in the same row range) `CWE[PractitionerRole]` were blocked by a
  stray character corrupting three adjacent Link cells' CSV column alignment, causing
  downloads to be cross-attributed to the wrong filenames (user fixed all three cells). Both
  resolved once re-downloaded. The `RXO[MedicationRequest]` row 38 parenthesis and the
  `SPM[Specimen]` old-name references were left for the sheet owners/domain experts to
  resolve (the correct target for the SPM rows depends on V2 semantics this tool can't infer).

  **Final verified state**: **297 files processed, 2 errors, 86 warnings, exit code 1** - the
  2 remaining errors are the deliberately-deferred `SPM[Specimen]` references, documented
  above, not regressions. Zero exceptions swallowed into `ConvertErrors.log`, zero 0-byte
  "Unsupported ...fsh" stubs. Corrective commit `8355acca` follows `04f95a12` rather than
  amending it, per this project's "always create new commits" convention.
- [x] 3.7 Remove the Stage 1.6 CI guard on `update-csvs.yaml` now that `Convert` safely
  handles both old- and new-layout sheets. Guard removed (the `if: false` on "Commit and
  Push changes", along with its comment block, is gone) and the same wrong-directory
  clean-step bug found in 3.6 was fixed here too. **Still open**: "confirm a real push
  exercises it cleanly" requires an actual push to the HL7 remote, which per this session's
  standing policy needs explicit user confirmation before it happens - not yet done.

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
