## Context

See `proposal.md` (Why) for motivation. Constraints that shape this design:
- CSV parsing throughout `Convert` is positional (`@CsvBindByPosition`), with a "skip first
  two header rows" convention — not header-name-based. See `mapping-conversion/csv-to-fsh`
  baseline spec.
- `ConverterImpl`/`ConverterMap` hardcode a single FHIR release (R4) for every generated
  link and every resource/data-type name lookup.
- `.github/workflows/update-csvs.yaml` already auto-refreshes artifact sheets and
  auto-commits/pushes whenever `mappings/*.csv` changes — including a "continue on
  conversion failure" step that still commits and pushes.
- Existing consumers (including downstream V2-to-FHIR codegen tooling) already parse this
  project's R4-shaped `ConceptMap` output; per the proposal's key design decision, that
  shape does not change in this change.

## Goals / Non-Goals

**Goals:**
- Stage 1: automate master-inventory-tab refresh from the master workbook.
- Stage 2: restore a clean build against current data (dependency currency).
- Stage 3: parse per-row version tags across all four artifact CSV shapes.
- Stage 4: make link/name resolution version-aware; verify R4 build still works; verify
  R6-tagged rows produce acceptable output inside the existing `ConceptMap` shape.

**Non-Goals:**
- Emitting a genuinely R6-shaped `ConceptMap` (deferred; see proposal's captured
  translation notes for whoever picks that up).
- Deciding, in this design, whether Stage 4 ships as one IG build or two — that's resolved
  by the spike in proposal.md's Open Question #1, not assumed here.
- Building generalized tab-gid discovery — the by-name `gviz/tq` endpoint makes that
  unnecessary for the four known tabs.
- Fixing sheet data-entry issues (already resolved at the source, per proposal.md).

## Decisions

### Master-inventory refresh via `gviz/tq?tqx=out:csv&sheet=<name>`, not `export?format=csv&gid=<gid>`
Verified live against all four tabs during this change's research. Chosen over the
`gid`-based export because it needs no gid discovery step (tab names — "Message",
"Segment", "Data Type", "Code System" — are already known and stable, whereas the
`PatientClass[EncounterClass]` incident this session showed gids/spreadsheet IDs can
change when a sheet is recreated). The official Sheets API v4 was considered and rejected:
it requires an API key/OAuth credential, adding secret management to what is otherwise an
anonymous, link-shared-only pipeline end to end.

Implementation surface: a new `Convert` download mode (e.g. a `-m<masterSheetId>` flag)
reusing the existing fetch/validate/write scaffolding (`downloadFile`-style: reject
HTML/error responses, don't overwrite on failure), writing each tab to its expected
`mappings/v2-to-FHIR Map Inventory - <Tab>.csv` path. The master workbook ID and the four
tab names become named constants near the top of `Convert.java` rather than buried inline,
since there has only ever been one master workbook.

While in this area: `get.cmd`/`downloadsheets.cmd` currently reference `.lst` files that
don't exist in the repo (a stale extension from an old renaming; `.github/workflows/
update-csvs.yaml` already correctly uses `.csv`). Fix both scripts to reference `.csv` as
part of this same stage — small, low-risk, and otherwise a standing trap for anyone who
tries to use the documented local dev workflow.

### Version tags: fixed positional column updates, not header-name-based binding
The four `*Input.java` classes get their `@CsvBindByPosition` indices updated for the
confirmed uniform +2 shift, rather than switching to header-name-based CSV binding.
Header-based binding was considered and rejected for this change: every sheet shape has
**duplicate header text within the same row** (`Code` and `Code System` each appear twice
in Concept Map sheets — once for the V2 side, once for the FHIR side; `Data Type`,
`Cardinality - Min`, and `Cardinality - Max` each appear twice in Segment/Data Type
sheets). `opencsv`'s header-name binding has no built-in notion of "the 2nd column named
`Code`" — plain header-name binding is ambiguous on this real data, not more reliable than
positions.

**Backward compatibility with not-yet-migrated sheets is a per-file layout switch, not a
per-field fallback.** The two new columns are inserted in the *middle* of the row (after
`Cardinality - Max`/`Code System`), so a not-yet-migrated sheet read with the *new*
positions wouldn't just have blank version-tag fields — every field after that point would
be shifted left by 2 and silently misread as something else. A single fixed position set
cannot correctly read both layouts. Instead, `ConverterImpl.load()` makes one cheap check
per file — does row 2's expected Core Version column (position 6 for Message/Segment/Data
Type, position 3 for Concept Map) literally read `"Core Version"`? — and picks the
matching one of two known, fixed position sets (old/un-migrated vs. new/+2-shifted) for
that whole file. This is not header-name binding: it's a single boolean gate between two
hardcoded schemas, not a per-field dynamic lookup, so it doesn't reintroduce the
duplicate-header ambiguity above.

A `versionTags` field (parsed by splitting the Core Version and Incubator Version cells on
comma and trimming) is added to each Input bean and threaded into `ConverterImpl.Row`. A
file detected as the old (un-migrated) layout has no version-tag columns to read at all, so
every row in it gets an empty tag set, preserving current behavior exactly for those files.

### Version-aware resolution: a per-call FHIR-release parameter, not a second code path
`ConverterImpl`'s link-building methods (`makeFhirLink` and friends) and `ConverterMap`'s
resource/data-type name lookup take the row's release tag(s) as a parameter instead of
reading the static `FHIR_BASE` constant. When a row is tagged for multiple releases,
resolution is attempted independently per release (per `mapping-conversion/link-resolution`
delta spec's new scenario), so a name valid in R4 but not R6 (or vice versa) resolves
correctly for the release(s) it's actually valid under. `ConverterMap` needs an R6
resource/data-type name data set to check against — see the resolved decision immediately
below for where that data set comes from.

### Source of the FHIR R6 resource/data-type name list: FHIR's own R4→R6 type-system diff
`ConverterMap` needs an R6 counterpart to the R4 resource/data-type name lists it loads
from `mappings/chapterdata.csv`. Resolved during this design, not deferred, using FHIR's
own authoritative changelog rather than manually diffing category pages (which turned out
to have real gaps — `Meta`/`Narrative`/`Extension`/`Reference`/`BackboneElement` all
initially looked "missing from R6" simply because they live on different pages than the
ones first checked).

**Source:** https://hl7.org/fhir/6.0.0-snapshot1/metadatatypes.html contains a
"Changes from R4 to R6" table diffing `http://hl7.org/fhir/ValueSet/all-types|4.0.0` (R4)
against R6's "All FHIR Types" — HL7's own combined resource+data-type code system diff,
generated by their build process, not inferred. Verified by direct fetch during this
design.

**Result:** confirmed removed between R4 and R6 (resources and data types together):
`Contributor`, `MoneyQuantity`, `Population`, `ProdCharacteristic`, `SimpleQuantity`,
`SubstanceAmount`, `CatalogEntry`, `ChargeItem`, `ChargeItemDefinition`,
`ClinicalImpression`, `Contract`, `DeviceUseStatement`, `DocumentManifest`,
`EffectEvidenceSynthesis`, `EnrollmentRequest`, `EnrollmentResponse`, `GraphDefinition`,
`ImmunizationEvaluation`, `ImmunizationRecommendation`, `InsurancePlan`, `Invoice`,
`Linkage`, `Media`, `MedicationKnowledge`, `MedicinalProduct` (and its 9
`MedicinalProduct*` sub-family members), `MolecularSequence`, `RequestGroup`,
`ResearchDefinition`, `ResearchElementDefinition`, `RiskEvidenceSynthesis`,
`StructureMap`, `SubstanceNucleicAcid`, `SubstancePolymer`, `SubstanceProtein`,
`SubstanceReferenceInformation`, `SubstanceSourceMaterial`, `SubstanceSpecification`,
`SupplyDelivery`, `SupplyRequest`, `TestReport`, `TestScript`, `VerificationResult`,
`Type`, `Any`. Confirmed added: `Base`, `DataType`, `Availability`, `BackboneType`,
`DosageCondition`, `DosageDetails`, `DosageSafety`, `RelativeTime`, `CodeableReference`,
`ExtendedContactDetail`, `MonetaryComponent`, `PrimitiveType`, `integer64`, `RatioRange`,
`VirtualServiceDetail`, `ActorDefinition`, `AdministrableProductDefinition`,
`ArtifactAssessment`, `CanonicalResource`, `ClinicalUseDefinition`, `DeviceAlert`,
`DeviceAssociation`, `ImagingSelection`, `Ingredient`, `ManufacturedItemDefinition`,
`MedicinalProductDefinition`, `MetadataResource`, `NutritionIntake`, `NutritionProduct`,
and (per the earlier, independently-scraped resource list, consistent with this table)
`PackagedProductDefinition`, `RegulatedAuthorization`, `RequestOrchestration`,
`Requirements`, `SubscriptionStatus`, `SubscriptionTopic`, `SubstanceDefinition`.

**The one finding that actually matters for this repo, checked against every name this
project's mapping content currently targets (extracted directly from generated FSH
`target.code` values, not guessed):** exactly one target resource is on the removed list —
**`SupplyRequest`**, used in `Message ORM_O01 to Bundle.fsh` (confirmed independently via a
direct HTTP 404 against `https://hl7.org/fhir/6.0.0-snapshot1/supplyrequest.html`).
`Contributor` is also confirmed removed but is not currently used as a target anywhere in
this repo. Nothing else this project targets is affected — every other resource and data
type actually referenced by current mapping content (`Account`, `AllergyIntolerance`,
`Appointment`, `Basic`, `Bundle`, `CareTeam`, `Condition`, `Coverage`, `Device`,
`DocumentReference`, `Encounter`, `EpisodeOfCare`, `Immunization`, `MedicationRequest`,
`MessageHeader`, `Observation`, `Patient`, `PractitionerRole`, `Procedure`, `Provenance`,
`RelatedPerson`, `ServiceRequest`, `Specimen`, `Task`, plus the complex/primitive data
types in use) is confirmed present in R6.

**Where this data lives:** extend `mappings/chapterdata.csv`'s existing `FHIR Resource`/
`FHIR Data Type` rows with a version dimension (a column marking which release(s) each row
applies to, mirroring the same `F-R4`/`F-R6` tag concept already landing in the mapping
sheets) rather than a parallel file — so `ConverterMap.load()` only needs to filter by
requested version, not merge two files. Populate the new R6 rows from the confirmed
add/remove lists above.

**Residual task, for mapping content owners, not code:** `SupplyRequest` isn't gone from
FHIR R6 — it moved to the **OO (Orders & Observations) Incubator Implementation Guide**
as an "Additional Resource"
(https://build.fhir.org/ig/HL7/oo-incubator/en/StructureDefinition-SupplyRequest.html),
confirmed live during this design. Notably, this V2-to-FHIR IG is itself published by the
HL7 Orders and Observations workgroup (per `sushi-config.yaml`'s `publisher`/`contact`) —
the same workgroup that owns that incubator IG. So the fix isn't "no replacement exists,"
it's a sheet content update: ORM_O01's `SupplyRequest`-targeting rows should get an
Incubator Version tag pointing at the OO Incubator IG, once the mapping sheet owners
confirm the exact tag value/format that column expects (not yet observed in a real sample
— none of the four sample sheets pulled during this change happened to carry a populated
Incubator Version value). Not a decision to make in code; `ConverterMap`'s R6 name lookup
should still treat `SupplyRequest` as absent from *FHIR R6 core* (per the diff above) —
whether/how Incubator-tagged rows resolve differently is part of the future, separately-
scoped Incubator support this proposal already treats as analogous-but-deferred.

### Stage 4's one-build-vs-two-builds question: resolved by spike - one build
Per proposal.md's Open Question #1, this was resolved by actually running the real SUSHI +
IG Publisher build (`sushi-config.yaml` still declaring `fhirVersion: 4.0.1`) against a
scratch `ConceptMap` whose `target.code` referenced `NutritionIntake` - a resource
confirmed R6-only, absent from the loaded R4 core package.

**Result: the Publisher neither hard-fails nor soft-warns - it doesn't validate the value
at all.** `ConceptMap.group.element.target.code` has no terminology binding in FHIR's own
`ConceptMap` StructureDefinition (R4 or R6), so a value the loaded R4 package can't resolve
is simply never checked against anything. Confirmed twice: once against the scratch
resource directly (zero mentions of `NutritionIntake` anywhere in the generated
`qa.html`, despite the resource itself being confirmed processed - 6 mentions of its own
instance name), and again on a from-scratch rerun without the scratch resource, to confirm
the qa.html/error-count baseline (Errors: 7, matching Stage 2.3's historical baseline
exactly) was unaffected either way.

**Decision: one build.** No second `sushi-config.yaml`/build directory is needed - the
existing single R4-declared build already tolerates R6-tagged `target.code`/`group.target`
values with no validation friction at all, exactly the outcome this design's emission and
link-resolution code was already written to support without further changes.

**A real finding from running the actual build, not from the spike question itself:**
this same build run surfaced that FHIR R6 reorganized its documentation - several data
types that share R4's single combined `datatypes.html` catalog page now live on dedicated
topic pages in R6 (`CodeableReference` on `references.html`, several others on
`metadatatypes.html`/`dosage.html`). `ConverterImpl`'s link resolution assumed R4's
one-page convention held for R6 too, producing a broken link for `CodeableReference` (the
one R6-only data type any current mapping content actually targets). Fixed with a small,
explicitly-scoped page-override table (see `ConverterImpl.R6_DATATYPE_PAGE_OVERRIDES`) -
verified via another live build that the resulting `qa.html` error count dropped to 6
(one *below* the historical baseline, since this was a pre-existing-shaped defect exposed
by giving `CodeableReference` a resolvable name at all in Stage 4a, not a new one). Only
the data types actually exercised were verified against the live R6 snapshot build; other
R6-only additions in `chapterdata.csv` (e.g. `integer64`, `CanonicalResource`,
`MetadataResource`) were checked and NOT found on `datatypes.html` either, but their real
page wasn't tracked down since nothing currently targets them - verify and extend the
override table first if a future mapping row does.

## Risks / Trade-offs

- **Pushing a refreshed master inventory before Stage 3 lands could let
  `update-csvs.yaml` auto-commit broken/misaligned FSH** (its conversion step tolerates
  failure and still commits/pushes) → Mitigation: don't exercise/push Stage 1's refresh for
  real against this branch until Stage 3's Input-class updates are in the same set of
  changes, or temporarily disable the workflow's commit/push step while iterating.
- **The IG Publisher might hard-fail rather than soft-warn on R6-named targets inside an
  R4-declared build** → Mitigation: exactly what the Stage 4 spike (proposal.md Open
  Question #1) determines before committing to one build vs. two.
- **`gviz/tq` is an unofficial, undocumented Google endpoint, not the formal Sheets API** →
  Mitigation: acceptable — `Convert` already depends on the equally-unofficial
  `export?format=csv` trick for every other download in this pipeline; same risk profile as
  existing, working behavior.
- **Trade-off:** keeping `ConceptMap` R4-shaped for R6-targeted content means the published
  R6 content isn't a "real" R6 resource yet. Deliberate, per proposal.md's reasoning
  (protects existing consumers) — not the end state, and should be remembered as such when
  the future R6-native-emission change is scoped.

## Migration Plan

No runtime/deployed system to migrate — this is build tooling. Land in stage order (1 → 2
→ 3 → 4); each stage is independently buildable and verifiable, matching the proposal's
staged definition of done. No feature flag needed. Rollback is a normal `git revert` per
stage if a stage's own build verification fails; stages are sequenced so later stages
depend on earlier ones landing cleanly, not the reverse.

## Open Questions

1. Exact mechanism for pausing `update-csvs.yaml`'s auto-commit during this branch's
   development (comment out the step vs. some other guard) — an implementation detail.
