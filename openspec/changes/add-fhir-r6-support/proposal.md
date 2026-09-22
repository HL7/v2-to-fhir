## Why

The V2-to-FHIR mapping source data (Google Sheets, linked from the master inventory at
https://docs.google.com/spreadsheets/d/1yb1AJXyDsyCvLFb67UFtz6g4UeeKUoaUWp04tDxvg2E) is being
updated so that every mapping row is tagged with a new **Core Version** column indicating
whether it applies to FHIR R4, FHIR R6 (6.0.0), or both — plus a second, currently-unused
**Incubator Version** column for the same kind of tagging against FHIR Incubator resources
(resources not in FHIR core, published in a separate incubator IG until they mature). These
are two instances of one underlying concept: a per-row set of target-version tags. This is in
preparation for the V2-to-FHIR IG (https://hl7.org/fhir/uv/v2mappings/) supporting FHIR R6 as
a second target release. Today `Convert` and the generated IG hardcode FHIR R4 everywhere —
positional CSV columns with no version awareness, a hardcoded `https://hl7.org/fhir/R4/` link
base in `ConverterImpl`, and a single `fhirVersion: 4.0.1` in `sushi-config.yaml` — so there is
currently no way to produce or publish R6-targeted mapping content even as the source data
starts to carry the tag that would drive it.

**Key design decision:** "R4 vs. R6" for this change is about *which FHIR resource, field,
and code-system names a mapping row's target references* — not about the `ConceptMap`
resource's own structural shape (`equivalence` vs. R6's `relationship`, etc.). The generated
`ConceptMap` FSH stays in its current, R4-oriented shape regardless of which release a row
targets. This is deliberate: consumers who already parse today's R4-shaped `ConceptMap`
output to drive their own tooling (e.g. downstream V2-to-FHIR code generators) can pick up
R6-targeted mapping content without changing their parsing at all — only the referenced
names/links change. Emitting a genuinely R6-shaped `ConceptMap` (`relationship`,
`dependsOn.attribute`, `sourceScope[x]`, etc.) is real, separately-scoped work, deliberately
**deferred to a future, separate change request** — not part of this one.

Earlier tooling research (SUSHI 3.20.1, HL7 IG Publisher) found that a single IG cannot
natively emit resources shaped for two different FHIR releases at once, and that R6 IG builds
are still "proof of concept" upstream. Under the container-format decision above, that
limitation is largely moot for *this* change: every resource this project emits is a
structurally valid FHIR R4 `ConceptMap`, whether its target content describes R4 or R6
concepts — so the IG itself may still only need to declare `fhirVersion: 4.0.1`. Whether that
holds in practice (i.e. whether the IG Publisher tolerates `target.code`/`group.target`
values it can't resolve against the R4 core package) is the key open question below.

## What Changes

- **Stage 1 (new, first step):** automate refreshing the four master inventory CSVs
  (`v2-to-FHIR Map Inventory - {Message,Segment,Data Type,Code System}.csv`) directly from
  the master Google Sheets workbook
  (https://docs.google.com/spreadsheets/d/1yb1AJXyDsyCvLFb67UFtz6g4UeeKUoaUWp04tDxvg2E),
  replacing today's manual "File → Download → CSV" per tab. Verified feasible: Google
  Sheets' `gviz/tq?tqx=out:csv&sheet=<Tab Name>` endpoint exports a specific tab by name,
  with no authentication, for a link-shared workbook — confirmed live against all four
  target tabs during this change's research. This is motivated directly by errors this
  change's own research hit from stale manually-exported data (a mis-copied/outdated
  spreadsheet ID for `PatientClass[EncounterClass]` and a stray typo'd header cell), and is
  a small addition to `Convert` (a new download mode alongside the existing `-d`/`-r`
  per-artifact download, reusing its existing fetch/validate/write scaffolding).
- **Stage 2:** restore a clean build against the current (pre-Core-Version-column) mapping
  data set — dependency currency (opencsv, commons-io/commons-text, junit) and IG template
  pinning. This groundwork is already underway, uncommitted, on the `r6_build` branch. No
  behavior change; this is a prerequisite for everything below.
- **Stage 3:** `Convert`'s CSV row parsing (`MessageInput`, `SegmentInput`, `DatatypeInput`,
  `ConceptMapInput`) recognizes and records the new per-row version tags — confirmed from
  real sample sheets to be two new columns, **Core Version** and **Incubator Version**,
  inserted immediately after `Cardinality - Max` (Message/Segment/Data Type) or `Code System`
  (Concept Map), shifting every subsequent column position by +2. Modeled as one generic
  "version tags" concept (comma-separated values per cell, e.g. `F-R4, F-R6`) rather than two
  special-cased columns, so Incubator tags can be consumed later without another rewrite.
  Parsing must not break on sheets that don't yet carry the new columns.
- **Stage 4:** `Convert` continues to emit the same R4-shaped `ConceptMap` FSH it emits
  today — **no change to `writeHeader()`/`addConstraints()`'s output shape**. What changes
  is that link resolution and FHIR resource/field/data-type name lookup (`makeFhirLink` and
  friends, `ConverterMap`) become aware of a row's Core Version tag, so an R6-tagged row's
  target resolves to the correct R6 resource/field name and links into R6 documentation,
  while an R4-tagged row continues to resolve against R4 as today.
- **Stage 4's definition of done, verified in two steps:** (a) confirm the existing
  R4-targeted build still works end-to-end after the version-tag-aware parsing changes land,
  then (b) confirm R6-tagged rows produce acceptable output — correct R6 resource/field names
  and links, still inside the existing R4-shaped `ConceptMap` container. Whether step (b)'s
  output ships as more `ConceptMap`s within the existing single IG build, or requires a
  second, separate build, is resolved by the validation-tolerance spike in Open Questions
  below — it is **not** assumed up front.
- **Explicitly out of scope for this change (deferred to a future, separate change
  request):** emitting a genuinely R6-shaped `ConceptMap` resource (`relationship`,
  `dependsOn.attribute`+`additionalAttribute`, `sourceScope[x]`/`targetScope[x]`). Doing it
  now would force every current consumer of the R4-shaped output (including downstream
  V2-to-FHIR codegen tooling) to change their parsing before they're ready to. This is real,
  bounded, separately valuable work — captured here so the future change doesn't have to
  rediscover it:
  - `target.equivalence` is only ever emitted today as one of two values (`equivalent` when
    there's a target code, `unmatched` when there isn't). R6's `target.relationship`
    replacement value set (`related-to`/`equivalent`/`source-is-narrower-than-target`/
    `source-is-broader-than-target`/`not-related-to`) needs only a 2-row lookup:
    `equivalent`→`equivalent`, `unmatched`→`not-related-to`.
  - `dependsOn.property` is only ever one of three fixed constants (ANTLR condition,
    FHIRPath condition, narrative condition) — never row-dependent. R6 replaces
    `dependsOn.property` (a URI) with `dependsOn.attribute` (a `code` matching a
    `ConceptMap.additionalAttribute.code` declared once on the resource) plus a polymorphic
    `dependsOn.value[x]`; since these three conditions are always text, that's
    `valueString`. Declare the 3 fixed `additionalAttribute` entries once, the same way the
    existing shared `PublicationData` FSH RuleSet is inserted into every generated
    `ConceptMap` today, then remap `property`→`attribute` via the fixed 3-entry table and
    `value`→`valueString`.
  - The `type`/`cardinalityMin`/`cardinalityMax`/`assignment`/`mappedVia` info is carried in
    a custom `TypeInfo` extension, which is untouched by any R4/R6 core resource change —
    extensions work identically regardless of core version. That's most of
    `addConstraints()`'s code, and none of it needs to change.
  - Net effect: a future R6-native emitter is a second, parallel implementation sharing the
    same in-memory `Row` data `ConverterImpl` already builds — not a rewrite. Only the
    ~25 lines in `writeHeader()`/`addConstraints()` that touch `equivalence`/`sourceUri`/
    `targetUri`/`dependsOn` need a version-specific counterpart.
  - Still unverified (flag for whoever picks up that future change): whether
    `ConceptMap.group.source`/`group.target` (the per-group code-system reference, distinct
    from the top-level `sourceScope`/`targetScope` value-set reference confirmed above)
    also renamed in R6 — not confirmed one way or the other during this change's research.
- **Already resolved, no code change needed:** two source Google Sheets (`DiagnosisType`,
  `PatientClass[EncounterClass]`) had FHIR Display text mis-entered into the wrong column
  (confirmed a data-entry issue in those two sheets, not a `Convert` parsing bug — 4,676 of
  4,704 originally-sampled Concept Map rows parsed correctly). Both have since been corrected
  at the source and were re-verified live: `DiagnosisType` and the current E2-migrated
  `PatientClass[EncounterClass]` sheet (a new spreadsheet ID as of the E2 migration — the
  ID recorded in this repo's `mappings/codesystems/filetourl.properties` is now stale and
  points at the pre-migration document) both now populate the `Display` column correctly.

## Capabilities

### New Capabilities
- `mapping-source/master-inventory-refresh`: pulling the four master inventory CSVs
  directly from the master Google Sheets workbook by tab name, so refreshing them is a
  repeatable, scriptable step instead of a manual per-tab export.
- `mapping-source/version-tagging`: parsing, validating, and carrying forward the new
  per-row Core Version (`F-R4` / `F-R6` / both) and Incubator Version tags from each of the
  four artifact CSV shapes (Message, Segment, Data Type, Concept Map) into the conversion
  pipeline, as one generic version-tag concept.
- `ig-generation/r6-targeted-content`: producing R6-targeted mapping content — correct FHIR
  R6 resource/field names and documentation links — from version-tagged source rows, emitted
  inside the existing R4-shaped `ConceptMap` FSH container (no new resource shape). Success
  for this capability, in this change, means R6-tagged rows resolve and publish correctly;
  whether that requires a second build or fits in the existing one is a design.md decision,
  not part of this capability's contract.

### Modified Capabilities
- `mapping-conversion/link-resolution`: the "FHIR artifact link resolution" requirement
  currently resolves every reference against a single, IG-wide "target FHIR release."
  Resolution becomes per-row: a row's Core Version tag determines which release's
  resource/field names and documentation links it resolves against, independent of which
  release(s) the IG itself is built/declared for.

## Impact

- `src/main/java/org/hl7/v2tofhir/Convert.java` — needs a new download mode that fetches
  the four master inventory tabs by name via `gviz/tq?tqx=out:csv&sheet=<name>`, alongside
  the existing `-d`/`-r` per-artifact-sheet download mode (which uses a different, gid-0-only
  export URL pattern and is unaffected).
- `.github/workflows/update-csvs.yaml` — already triggers on any push touching
  `mappings/*.csv` and auto-downloads every "ready" linked artifact sheet, then commits and
  pushes the result. Once the master inventory files are refreshed (manually now, or via
  the new Stage 1 automation), pushing them will fire this workflow. Worth deciding
  deliberately whether that's wanted mid-change or should be held off until Stage 3/4 land
  (see design.md).
- `src/main/java/org/hl7/v2tofhir/*Input.java` — all four use fixed `@CsvBindByPosition`
  column indices with no version awareness. Confirmed from real E2-format samples: Core
  Version + Incubator Version are inserted as a uniform +2 shift in every sheet shape;
  positions need updating accordingly (mechanical, not a layout redesign).
- `src/main/java/org/hl7/v2tofhir/ConverterImpl.java` — `writeHeader()`/`addConstraints()`
  need **no shape changes**. `FHIR_BASE = "https://hl7.org/fhir/R4/"` and the link-building
  methods (`makeFhirLink`, `makeSegmentLink`, `makeDataTypeLink`, `makeTableLink`) need to
  become version-aware per row instead of hardcoded to R4.
- `src/main/java/org/hl7/v2tofhir/ConverterMap.java` / `mappings/chapterdata.csv` — static
  FHIR Resource/Data Type name lookup has no per-FHIR-version dimension; R4 and R6 resource
  and data type name sets differ, and this lookup needs a version dimension added.
- `sushi-config.yaml` — currently pins `fhirVersion: 4.0.1`. Whether a second config/IG
  Publisher run is needed at all depends on the validation-tolerance spike (Open Questions);
  if the spike succeeds, this file may not need a version-related change at all.
- `mappings/**/*.csv` snapshots — will need re-downloading once the sheets fully migrate to
  the new (E2) format; local snapshots are currently pre-migration.
- Consumers of the published R4 IG at https://hl7.org/fhir/uv/v2mappings/, and any downstream
  tooling that already parses its R4-shaped `ConceptMap` resources, are unaffected by this
  change's container format — only the set of available target content grows.

## Open Questions Carried Into design.md

1. ~~**The central open question:** does the IG Publisher, with the IG still declaring
   `fhirVersion: 4.0.1`, tolerate a `ConceptMap.group.target`/`element.target.code` value that
   references a FHIR R6 resource/field/code-system name or canonical URL it cannot resolve
   against the loaded R4 core package (soft warning, as with today's arbitrary V2/V3
   terminology references) — or does it hard-fail?~~ **Resolved via a real spike build
   (design.md): neither - the field has no terminology binding at all, so an unresolvable
   value is never even checked.** One existing IG build handles both releases; no second
   build needed.
2. ~~If the spike in #1 shows a second build is required: exact mechanics of running it from
   this repo...~~ **Moot** - the spike showed a second build isn't required.
3. ~~Given the FHIR R6 `ConceptMap` shape changes, does R6 output require a parallel
   `ConceptMapConverter`/emission path?~~ **Resolved, out of scope:** no — this change does
   not emit R6-shaped `ConceptMap`s at all (see "Why"/"What Changes"). That work is deferred
   to a future change request.
4. ~~What does the Core Version column actually look like in an individual artifact sheet?~~
   **Resolved:** confirmed via real samples (+2 column shift, uniform across all four shapes).
