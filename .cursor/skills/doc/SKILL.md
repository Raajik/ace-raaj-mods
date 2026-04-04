---
name: doc
description: Document durable findings (patterns, gotchas, recipes) during development and update the project's /ace-mod skill so future ACE mod work benefits. Use when the user invokes /doc or asks to document findings, write up discoveries, or codify learnings into the ACE mod workflow.
---

## Co-active skill: mcp2cli

Whenever this work involves **MCP servers**, **OpenAPI/REST** specs, **GraphQL** endpoints, or **CLI or skill generation for external APIs**, read and follow `.cursor/skills/mcp2cli/SKILL.md` in addition to this skill (same scope as `/mcp2cli`). Prefer `uvx mcp2cli` for discovery and execution per that file.

# /doc — Document findings + update /ace-mod

Use this skill when the user says `/doc` (or asks you to “document what we learned”).

## Goal

Turn the current conversation’s **durable learnings** into:
- A concise “Findings” write-up the user can paste into issues/PRs.
- A **small, high-signal update** to `.cursor/skills/ace-mod/SKILL.md` so the repo’s ACE mod workflow improves over time.

## What counts as a “durable finding”

Capture items that are likely to recur:
- ACE/BaseMod/Harmony **gotchas** (events that don’t fire on hot-reload, patch signature traps, load-order issues).
- **Known-good patterns** (how to load settings safely, how to resolve player from a hook, how to avoid ghost items).
- **Operational constraints** specific to this repo (build output quirks, packaging, settings template expectations).
- **Debugging heuristics** tied to real log messages.

Avoid documenting:
- One-off values (temporary IDs, single-player anecdotes).
- Trivial reminders (“remember to null check”).
- Anything that would bloat `ace-mod` or duplicate existing sections.

## Workflow

1. **Extract findings**
   - List 3–10 bullets maximum.
   - Each bullet should include:
     - The **symptom / trigger** (what you see)
     - The **cause** (why it happens)
     - The **fix / pattern** (what to do)

2. **Choose the correct destination**
   - If it’s a general ACE/BaseMod workflow rule → add/adjust a section in `ace-mod/SKILL.md`.
   - If it’s narrow to one mod (e.g. Overtinked-only behavior) → add under `## Patterns from ace-raaj-mods repo` (or create a new short subsection there).
   - If it’s large/verbose → create a one-level-deep reference file next to the skill (e.g. `.cursor/skills/ace-mod/<topic>.md`) and link to it from `ace-mod/SKILL.md`.

3. **Edit `ace-mod/SKILL.md` safely**
   - Keep changes **small** and **additive**.
   - Prefer adding a new bullet to an existing section over creating a new large section.
   - Preserve existing terminology and formatting.
   - Keep the skill concise; do not add long essays.

4. **Output a paste-ready report**
   - Provide a short markdown section the user can copy:
     - `## Findings`
     - `## Actions taken` (which files updated)
     - `## Follow-ups` (optional, only if needed)

## Template (paste-ready)

Use this format in your response when `/doc` is invoked:

```markdown
## Findings
- **[Finding title]**: Symptom → cause → fix/pattern.
- **[Finding title]**: Symptom → cause → fix/pattern.

## Actions taken
- Updated `...`
- Added `...`

## Follow-ups
- (Optional) ...
```

