---
name: ace-mod-team
description: Coordinate a team of parallel subagents specialized in ACE.BaseMod and Harmony mod development. Use when the user invokes /ace-mod and requests multiple tasks, faster iteration, or parallel work across design, code changes, builds, and log analysis.
---

## Co-active skills

- **mcp2cli** — When work involves **MCP servers**, **OpenAPI/REST**, **GraphQL**, or **CLI/skill generation**, read `.cursor/skills/mcp2cli/SKILL.md`.
- **ace-build** — For full rebuild workflow.
- **ace-log** — For ACE server log troubleshooting (`Ace_Log.txt`, startup crashes).
- **AGENTS.md** (repo root) — Full project conventions, deploy procedures, cross-mod properties.
- **ace-raaj-mods Patterns / Conventions** (wiki) — `A:\obsidian\jeremy\wiki\ace-raaj-mods Patterns.md` and `Conventions.md`.

# ACE Mod Parallel Team

## When to Use This Skill

**Default behavior:** When the user invokes `/ace-mod` in this repository, assume that this `ace-mod-team` skill should be applied for any **non-trivial or multi-step request** so that relevant work is automatically passed to the parallel dev team.

More specifically, use this skill whenever:

- The user invokes `/ace-mod` and:
  - Describes more than one feature, mod, or change
  - Mentions speed, parallel work, "team of devs", "subagents", or similar
  - Asks for end-to-end help (design, implementation, build, and troubleshooting)
- The work clearly splits into **2+ independent tasks** that can run concurrently:
  - Exploring ACE or existing mods
  - Designing/implementing patches
  - Running builds
  - Reading and interpreting server logs

If the `/ace-mod` request is a genuinely tiny, single focused change (for example: "add one simple command to this mod and nothing else"), you may skip spawning subagents and handle it as a single-agent flow.

## Core Principles

- **Project context**: This skill is for the `ace-raaj-mods` repo and assumes:
  - Mods follow the `ACE.BaseMod` + Harmony patterns
  - The `ace-mod` skill is available and should be applied for domain-specific decisions
### Parallelism Note

Subagent spawning (via `Task` tool, subagent types, `fast`/`sonnet` models) is **tool-dependent**:
- **Claude Code** supports `Task` tool for parallel subagents directly.
- **pi / Cursor / other agents** may not support parallel subagentry. In those environments, decompose the work into sequential focused phases instead.

When parallelism is available, use the `Task` tool to launch **multiple subagents** for independent workstreams. At most 4 concurrently.
- **Safety**:
  - Never modify ACE core DLLs; always patch via mods
  - Never run destructive git commands
  - Only build projects inside this repo; do not touch unrelated directories

## Subagent Roles

When appropriate, use these roles via the `Task` tool:

- **Explorer (subagent_type: explore, model: fast)**
  - Job: Quickly search the `ace-raaj-mods` repo to:
    - Locate relevant mods, patch classes, and settings
    - Find existing examples of similar behavior
  - Use when:
    - You need to understand how an existing mod works
    - You need a reference pattern before implementing a new feature

- **Implementer (subagent_type: generalPurpose, model: fast)**
  - Job:
    - Design and implement new mod logic using ACE.BaseMod + Harmony
    - Edit `PatchClass`, `Settings`, commands, and related files
  - Must:
    - Follow the ACE-specific conventions from the `ace-mod` skill
    - Prefer new Harmony patches over modifying ACE core

- **Shell / Build Runner (subagent_type: shell, model: fast)**
  - Job:
    - Run `dotnet build` for specific mod projects
    - Use the `/ace-build` skill pattern when the user wants to build all mods
  - Notes:
    - Only run builds in this repo's workspace root (`A:\ai\projects\ace-raaj-mods`)
    - Avoid long-running watchers; builds should terminate promptly

- **Log Analyst (subagent_type: generalPurpose or explore, model: fast)**
  - Job:
    - Read ACE server logs (e.g. `Ace_Log.txt`) exposed in the workspace
    - Use patterns from the `ace-log` skill to diagnose:
      - `Missing IHarmonyMod Type ...`
      - Load failures, startup crashes, or mod-specific errors

## Workflow: Spawning the Team

When the user asks for a "team" or parallel ACE mod work:

1. **Clarify tasks (internally)**
   - Decompose the request into concrete subtasks, for example:
     - T1: Research how an existing mod handles XP bonuses
     - T2: Implement a new XP-related patch in a specific mod
     - T3: Build the updated mod project
     - T4: Check ACE logs for related errors or warnings

2. **Decide which tasks can run in parallel**
   - Example:
     - T1 (explore) and T2 (implement) can often start together
     - T3 (build) must wait until edits are saved
     - T4 (logs) can often run in parallel with T1/T2 if logs already exist

3. **Launch appropriate subagents with the `Task` tool**
   - Use **at most 4 subagents concurrently**.
   - Typical pattern:
     - Explorer: subagent_type=`explore`, model=`fast`
     - Implementer: subagent_type=`generalPurpose`, model=`fast`
     - Shell/Build: subagent_type=`shell`, model=`fast`
     - Optional Log Analyst: subagent_type=`generalPurpose`, model=`fast`

4. **Provide each subagent with focused instructions**
   - Include:
     - The relevant files or folders
     - The specific goal (e.g. "find where auto-loot is implemented")
     - What result to return (e.g. "list files and methods to inspect")

5. **Aggregate results**
   - Wait for subagents to finish, then:
     - Summarize their findings for the user
     - Apply edits in the main agent based on Implementer/Explorer outputs
     - Re-run builds or log checks if necessary

## Example Usage Pattern

When the user says:

> "/ace-mod I want to add a new auto-loot rule and a separate XP tweak, and I want a team of devs to do this in parallel."

You should:

1. Apply the `ace-mod` skill for ACE-specific patterns.
2. Decompose into subtasks:
   - S1: Find current auto-loot implementation and patterns.
   - S2: Design and implement new auto-loot rule.
   - S3: Find current XP-related mods / patches.
   - S4: Design and implement new XP tweak.
   - S5: Build affected projects.
3. Launch:
   - Explorer (explore) for S1+S3.
   - Implementer (generalPurpose) for S2+S4, using Explorer results.
   - Shell (shell) for S5 after edits are ready.
4. Present a concise, high-level summary of:
   - What each "team member" did.
   - Where code was changed.
   - Any build or log issues that need attention.

## Interaction with Other Skills

- **ace-mod**
  - Always apply `ace-mod` for:
    - Mod structure decisions (`Mod.cs`, `PatchClass`, `Settings`, `.csproj`)
    - Harmony patch signatures and ACE patterns
- **ace-build**
  - When the user requests a full rebuild, follow the instructions in `ace-build`:
    - Use a shell subagent (or direct `Shell` tool) to run the prescribed `dotnet` commands
- **ace-log**
  - When the user mentions:
    - `Ace_Log.txt`
    - Startup crashes
    - `Missing IHarmonyMod Type`
  - Use the log analyst role and apply the `ace-log` patterns to interpret and fix issues.

## SQL Content Deployment

When a mod includes weenie changes (new items, NPCs, or updated properties):

- **Build output goes to `build/`, not the server directly.** The `.csproj` copies only DLL + JSON to `A:\ai\projects\ace-raaj-mods\build\$(AssemblyName)\`. SQL files in `Content/SQL/` are applied by deploy scripts.
- **Automated deploy (preferred):** `bash scripts/deploy-void-test.sh` (→ `void-test_world`) or `bash scripts/deploy-wb-test.sh` (→ `ace_world`). These run `Apply-RepoModSqlToMysql.ps1` to apply all `Content/SQL/*.sql` files. See AGENTS.md §5 for env vars, flags, and excludes.
- **ACE caches weenies at startup.** Changes to any weenie table require a **server restart**. No hot-reload for weenie data.
- **Use `INSERT ... ON DUPLICATE KEY UPDATE` for idempotent SQL.** `weenie_properties_int` has a `UNIQUE KEY` on `(object_Id, type)`. A plain `UPDATE` silently does nothing if the row is absent.
  ```sql
  INSERT INTO weenie_properties_int (object_Id, type, value) VALUES (42516, 94, 128)
  ON DUPLICATE KEY UPDATE value = 128;
  ```
- **Verify DB state after applying SQL.**
  ```sql
  SELECT type, value FROM weenie_properties_int WHERE object_Id = 850200 AND type = 94;
  ```
- **Workflow:** Build mod → deploy script (or manual SQL against target DB) → restart server → verify in-game.

## Notes and Limits

- Do not spawn subagents just to appear busy; default to a single-agent flow when:
  - The task is small or linear
  - Subtasks are tightly coupled and cannot proceed without each other
- Always keep the user informed with **short progress updates** when:
  - Launching multiple subagents
  - Receiving important findings or errors from them

