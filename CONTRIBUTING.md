# Contributing

This repository is an archival mono-repo of university coursework. Favor preservation and clear indexing over heavy refactoring.

## Workflow

1. Add new material only to the correct course directory.
2. Keep course directory names in the existing `<CODE>-<Full_Course_Title>` format.
3. Update the top-level `README.md` when adding a new course or changing the visible course index.
4. Add or update a course-level `README.md` when the directory contents are not self-explanatory.
5. Use a focused Conventional Commit such as `docs: add CSC580 project notes`.

## Content Standards

- Prefer additive changes. Do not rewrite historical submissions unless you are repairing a broken reference or improving buildability.
- Preserve original filenames and directory structure when possible.
- Keep generated artifacts out of version control unless they are already part of the archived record.
- Note course-specific build or dependency requirements close to the affected materials.

## Pull Requests

- Keep pull requests focused on one course, cleanup theme, or fix.
- Fill out the PR template.
- Ensure any relevant checks pass before merging.
- Do not commit secrets, credentials, or sensitive data.

## Verification

- For LaTeX changes, run the course-appropriate compile command when practical.
- For code changes, follow any instructions documented in the affected course directory.
- If you fix links or references, verify that the referenced paths still resolve from the repository root.
