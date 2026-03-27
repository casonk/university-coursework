# AGENTS.md

## Project Purpose

Consolidated mono-repo of all university coursework spanning 25 courses across computer science, mathematics, economics, and business. Primarily contains LaTeX beamer presentations, Python/SQL/R projects, and Verilog hardware designs.

## Repository Layout

Each top-level directory is a single course, named `<CODE>-<Title>`:

- `CSC*` — Computer Science courses (networking, databases, algorithms, etc.)
- `CIS*` — Computer & Information Science (social computing, enterprise systems)
- `MTH*` — Mathematics courses (calculus, probability, statistics, proofs)
- `ECN*` — Economics courses (international, public finance)
- `INB*` — International Business
- `README.md` — Master index of all courses with links

## Operating Rules

- This is an archival repository. Prefer additive changes only.
- Do not modify existing coursework submissions unless fixing broken references.
- When adding new course material, follow the existing naming convention: `<CODE>-<Full_Course_Title>/`.
- Each course directory should contain its own README or description if not self-evident.
- LaTeX files should compile with standard `pdflatex` (two passes for beamer).
- Do not commit large binary datasets; reference external sources instead.

## Build Notes

- LaTeX presentations use beamer class and require two `pdflatex` passes.
- Python scripts may have varying dependency requirements per course — check individual course directories.
- Verilog test files are in `CSC565-Computer_System_Architecture/`.

## Portfolio Standards Reference

For portfolio-wide repository standards and baseline conventions, consult the control-plane repo at `./util-repos/traction-control` from the portfolio root.

Start with:
- `./util-repos/traction-control/AGENTS.md`
- `./util-repos/traction-control/README.md`
- `./util-repos/traction-control/LESSONSLEARNED.md`

Shared implementation repos available portfolio-wide:
- `./util-repos/auto-pass` for KeePassXC-backed password management and secret retrieval/update flows
- `./util-repos/nordility` for NordVPN-based VPN switching and connection orchestration
- `./util-repos/shock-relay` for external messaging across supported providers such as Signal, Telegram, Twilio SMS, WhatsApp, and Gmail IMAP

When another repo needs password management, VPN switching, or external messaging, prefer integrating with these repos instead of re-implementing the capability locally.

## Agent Memory

Use `./LESSONSLEARNED.md` as the tracked durable lessons file for this repo.
Use `./CHATHISTORY.md` as the standard local handoff file for this repo.

- `LESSONSLEARNED.md` is tracked and should capture only reusable lessons.
- `CHATHISTORY.md` is local-only, gitignored, and should capture transient handoff context.
- Read `LESSONSLEARNED.md` and `CHATHISTORY.md` after `AGENTS.md` when resuming work.
- Add durable lessons to `LESSONSLEARNED.md` when they should influence future sessions.
- Keep transient entries concise and focused on archival changes, fixes, and next steps.
- Redact private student or account data before writing to `CHATHISTORY.md`.
