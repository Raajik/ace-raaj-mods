# Task Plan: Trim Pi Skill List

## Goal
Reduce the loaded Pi skills from ~1,328 to a curated ~25 high-signal skills that match the ace-raaj-mods workflow (C# ACE modding, Harmony, SQL deploy, git, bash, docs/wiki).

## Current Phase
Phase 2 — Implementation

## Phases

### Phase 1: Audit & Select (complete)
- [x] Identify skill sources: `.cursor/skills` (7 local) + `/mnt/c/Users/jeremy/.cursor/skills` (1,321 global)
- [x] No usage telemetry available in Pi by default; heuristics based on repo workflow
- [x] Selected 18 global skills to keep; everything else dropped

### Phase 2: Backup & Apply (in_progress)
- [ ] Backup `.pi/settings.json`
- [ ] Write curated `.pi/settings.json`
- [ ] Verify paths exist

### Phase 3: Document
- [ ] Record kept vs dropped skills in findings.md
- [ ] Note rationale and restore path

### Phase 4: Verify (pending)
- [ ] Confirm settings parse correctly
- [ ] Inform user of changes and how to revert

## Decisions
| Decision | Rationale |
|----------|-----------|
| Keep `.cursor/skills` intact | Local project skills (ace-mod, ace-build, mod-audit, doc, mcp2cli, ace-log, ace-mod-team) are all high-signal |
| Explicitly list global skill dirs | Prevents loading the entire global tree (~1,321 skills) while keeping the ones we need |
| Keep git/bash/wiki/debug skills | These map to daily workflow: branching, deploying, debugging, writing docs |
| Drop roleplay personas, niche frameworks, marketing, health analyzers | Never used in ACE mod repo |

## Errors
| Error | Attempt | Resolution |
|-------|---------|------------|
| ace-build/ace-log/mod-audit not in global tree | 1 | They are local only; no global path needed because `.cursor/skills` covers them |
