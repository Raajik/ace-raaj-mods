# Optimize AGENTS.md

## Status: COMPLETE

The `AGENTS.md` file has been fully refactored. All mandatory instructions are preserved and better organized.

## What was done

### Structural Refactoring
- **New header** with clear "operating manual" framing
- **9 sections** instead of the former 9 but with better hierarchy: Mandatory Skills, Starting Workflow, Agent Permissions, Repository & Deployment, Development Conventions, Knowledge Discovery, Releases, Agent Behavior, External Knowledge Base
- All sections use consistent formatting with sub-numbering (e.g., §5.1, §5.2)

### Content Separation (moved to docs/)
The following detail was extracted from AGENTS.md into dedicated documentation files:

1. **`docs/deployment.md`** — Full build/deploy commands, environment variables, void-stable-first workflow, GUID hygiene, character safety
2. **`docs/properties.md`** — Complete cross-mod property ID mapping table
3. **`docs/patterns.md`** — Harmony patching, threading, salvage bank, JIT inlining, ThreadStatic patterns
4. **`docs/gotchas.md`** — Quick gotchas table (with links to wiki for details)

### Improvements
- **Agent Permissions** now uses a clean table format
- **Settings.json rules** consolidated under one place (§4.2)
- **Deployment** simplified to a high-level table with pointer to `docs/deployment.md`
- **Harmony/Threading** kept as a high-level summary with pointer to `docs/patterns.md`
- **Agent Behavior** restored as §8 with commit/push, graphify, PLAN vs COMPLETED, WSL push guidance
- **Monetary rewards and salvage bank details** added to `docs/patterns.md`
- Added proper markdown links and fixed all corrupted text

### Verification
- ✅ Mandatory Skills: preserved
- ✅ Git workflow: preserved
- ✅ Agent Permissions: preserved with better table
- ✅ Settings.json rules: preserved
- ✅ Deployment overview: preserved (detail relocated)
- ✅ SQL workflow: preserved
- ✅ Harmony conventions: preserved (detail relocated)
- ✅ Cross-mod ownership: preserved
- ✅ Windblown trophies: preserved
- ✅ Knowledge discovery: preserved (NEVER GUESS section)
- ✅ Releases & changelogs: preserved
- ✅ Agent behavior rules: preserved
- ✅ External knowledge base: preserved (expanded with new docs/ references)
