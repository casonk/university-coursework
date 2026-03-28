# Contributor Architecture Blueprint

This document is the starter architecture map for `university-coursework`.
Keep it aligned with the real repository layout and execution flow as the repo evolves.

## Standard Architecture Assets

- PlantUML source: `docs/diagrams/repo-architecture.puml`
- Draw.io source: `docs/diagrams/repo-architecture.drawio`
- Expected renders after `archility render`:
  - `docs/diagrams/repo-architecture.puml.svg`
  - `docs/diagrams/repo-architecture.puml.png`
  - `docs/diagrams/repo-architecture.drawio.svg`
  - `docs/diagrams/repo-architecture.drawio.png`
- Shared toolchain owner: `../../util-repos/archility` from this repo

## Architecture Authoring Paths

- Programmatic path: `archility generate` builds this starter strictly from repository code and folder markers. This path is deterministic.
- Agentic path: an AI agent should inspect the full repository, understand the real execution and dependency boundaries, then rewrite or extend this starter into a repo-specific architecture. This path is intentionally non-deterministic.
- Keep the standard filenames and folder layout even when the agentic path replaces the starter content with a more unique architecture.

## Regeneration

```bash
cd ../../util-repos/archility
PYTHONDONTWRITEBYTECODE=1 PYTHONPATH=src python3 -m archility generate ../../doc-repos/university-coursework
PYTHONDONTWRITEBYTECODE=1 PYTHONPATH=src python3 -m archility render ../../doc-repos/university-coursework
```

## Current Course Taxonomy

- This archive groups 24 course directories under 5 subject prefixes.
- Subject prefixes are the primary navigation layer for the repository.

### `CIS/` — 2 course directories

- `CIS517-Social_Computing/`
- `CIS562-Enterprise_Computing_and_Systems_Integration/`

### `CSC/` — 10 course directories

- `CSC310-Human_Computer_Interaction/`
- `CSC335-Computer_Networks/`
- `CSC382-Software_Engineering/`
- `CSC384-Database_Design/`
- `CSC487-Data_Mining/`
- `CSC535-Advanced_Computer_Networking/`
- `CSC565-Computer_System_Architecture/`
- `CSC575-Algorithm_and_Complexity_Analysis/`
- `CSC580-Advanced_Software_Engineering/`
- `CSC582-Advanced_Database_Concepts_and_Applications/`

### `ECN/` — 3 course directories

- `ECN360-International_Economics/`
- `ECN370-Public_Finance/`
- `ECN480-Quantatative_Methods_for_Public_Administration/`

### `INB/` — 1 course directory

- `INB385-International_Business/`

### `MTH/` — 8 course directories

- `MTH200-Proofs_and_Structures/`
- `MTH357-Advanced_Calculus/`
- `MTH372-Advanced_Probability/`
- `MTH374-Numerical_Analysis/`
- `MTH375-Mathematical_Statistics/`
- `MTH385-History_of_Mathematics/`
- `MTH402-Mathematics_Capstone/`
- `MTH470-Theory_of_Functions_of_a_Complex_Variable/`

## Common Nested Deliverable Families

- `HW/`, `Project/`, `Assignments/`, `Exam/` or `Exams/`, `Final/`, `Notes/`, `Labs/`, `Presentations/`, and `Deliverables/` appear under individual course directories depending on course format.

## Automation

- `.github/workflows/` is the standard automation directory for repo validation.

## Contributor Notes

- Treat this file and the paired `docs/diagrams/` sources as the default architecture handoff surface.
- Expand this starter blueprint with repo-specific flow, dependency, and deployment details when the repository grows beyond the generated baseline.
- Update the blueprint and diagram sources together when folder structure, execution flow, or integration boundaries change.
