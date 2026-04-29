# BACKLOG.md

Portfolio backlog for this repository. Pending items are candidates for execution —
manually or via crew-chief. Entries sourced from archility audit are tagged
`[archility:YYYY-MM-DD]`; manual entries use `[manual:YYYY-MM-DD]`.

The archility twice-weekly job populates this file automatically via `archility audit --write-backlog`.
To execute a backlog item with crew-chief: `crew-chief agent "Work on item: <item text>"`.
Mark items `[x]` when complete and move them to Done.

## Pending

- [ ] Add course description to `CSC580-Advanced_Software_Engineering/README.md` — currently only has the h1, no catalog text [manual:2026-04-24]
- [ ] Consider adding Holly High School as a node in the mindmap for completeness of educational history (zero UMF transfer credits; dual enrollment coursework appears under OCC) [manual:2026-04-27]

## In Progress

## Done

- [x] Standardize assignment file naming convention to `konzer_cason_COURSE_type_N` across all 23 courses — 229 files renamed, 10 bibliography references updated in `.tex` files [manual:2026-04-25]
- [x] Generate `docs/course-timeline.drawio` — Gantt chart of all 24 UM-Flint courses across 12 semesters (Fall 2020 → Winter 2024), grouped by CSC/CIS, MTH, ECN/INB; sourced from official transcript [manual:2026-04-25]
- [x] Generate `docs/course-mindmap.tex` / `.pdf` / `.png` — TikZ mindmap of full curriculum: BS Mathematics (Applied Math, CS Minor, Econ & Business) and MS Computer Science (Info Systems, Core CS, Advanced Apps) [manual:2026-04-26]

- [x] Create gitignored `transcripts/courses.json` covering all 37 UM-Flint institution-credit courses (24 with repo folders + 13 without); rewrite `scripts/gen_timeline.py` to load from JSON, add GEN group, and dim bars for non-repo courses; update mindmap to include CSC 570/592 and add General Ed branch to BS [manual:2026-04-26]

- [x] Expand `transcripts/courses.json` to all 55 courses across 3 institutions (37 UMF + 14 Westminster + 6 OCC); add "Trnsfr" column to timeline for transfer credits; update `gen_timeline.py` with institution-specific bar colors; add Pre-University branch to mindmap (WSTR/OCC sub-nodes); add grades and per-group GPAs to mindmap leaf nodes [manual:2026-04-26]

- [x] OCR-extract all 5 transcripts to `transcripts/transcript_*_ocr.md`; create structured individual transcript JSON files (`holly_hs.json`, `occ.json`, `westminster.json`, `umflint_ug.json`, `umflint_ms.json`); fix data inconsistency — BUS 110 and MTH 305 moved from erroneous HS group to OCC (confirmed via official UMF transcript); Holly High School contributes 0 direct UMF transfer credits (dual enrollment → OCC); OCC total corrected from 15 cr to 23 cr [manual:2026-04-27]

- [x] Centralize LaTeX templates from `CSC565/TeMpLaTeX` and `CSC575/TeMpLaTeX` to repo-root `_templates/latex/` with course-agnostic placeholders [manual:2026-04-24]
- [x] Create `_templates/pm/` pointing to CSC580 PM template collection [manual:2026-04-24]
- [x] Rename `TeMpLaTeX/` → `Templates/` in CSC565 and CSC575 [manual:2026-04-24]
- [x] Rename `WorkShop/` → `Workshop/` in CSC575 [manual:2026-04-24]
- [x] Rename `Assignments/` → `HW/` in CSC580 [manual:2026-04-24]
- [x] Fix exam/final folder casing: `EXAM/` → `Exam/` (MTH375), `Exams/` → `Exam/` (MTH372), `FINAL/` → `Final/` (MTH357) [manual:2026-04-24]
- [x] Split `MTH470/HW+EXAM/` into separate `HW/` and `Exam/` subdirectories [manual:2026-04-25]
- [x] Batch rename `Acalog ACMS™_ course Information.pdf` → `course-information.pdf` across 23 courses [manual:2026-04-25]
- [x] Normalize `.PNG` → `.png` for 32 uppercase-extension image files, update `.tex` references [manual:2026-04-25]
