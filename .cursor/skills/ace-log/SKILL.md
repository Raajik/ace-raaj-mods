---
name: ace-log
description: Troubleshoot ACE server log warnings/errors. Use when the user types /ace-log, mentions Ace_Log.txt, startup crashes, "Missing IHarmonyMod Type", mod load failures, or wants help interpreting ACE.Server logs. Assumes the ACE server folder is exposed inside the workspace via a junction/symlink (e.g. ACE-Server -> C:\\ACE\\Server).
---

## Co-active skill: mcp2cli

Whenever this work involves **MCP servers**, **OpenAPI/REST** specs, **GraphQL** endpoints, or **CLI or skill generation for external APIs**, read and follow `.cursor/skills/mcp2cli/SKILL.md` in addition to this skill (same scope as `/mcp2cli`). Prefer `uvx mcp2cli` for discovery and execution per that file.

# ACE Log Troubleshooter

This skill helps troubleshoot ACE server issues by reading `Ace_Log.txt` (and related log/config files) and mapping warnings/errors to likely causes and fixes in ACE mods, settings, and build output.

## Preconditions (workspace access)

The agent can only read files that are inside the current repo workspace. To allow log access, expose your ACE server folder inside the repo using a junction (recommended):

```cmd
cd C:\Users\jeremy\source\repos\ACEmulator-Mods
mklink /J ACE-Server C:\ACE\Server
```

Expected log path in workspace after that:
- `ACE-Server\Ace_Log.txt`

If the junction doesn’t exist, instruct the user to create it (or paste the relevant log excerpt).

## Workflow

### 1) Collect the evidence

- Read the full log (or the most recent section if very large).
- If present, also look for companion logs in `ACE-Server\Logs\` and any crash dump notes.
- Note the **timestamp** and whether the issue happens:
  - at startup
  - when loading mods
  - when a player logs in / enters world
  - when a specific command runs

### 2) Triage: categorize by signature

For each distinct WARN/ERROR block, group and rank by severity:

- **Crash / fatal**
  - process exits
  - unhandled exception
  - repeated exception spam every tick
- **Mod load failures**
  - missing IHarmonyMod type
  - missing dependency DLLs
  - bad `Meta.json`
- **Config / settings parse failures**
  - JSON parse errors
  - missing required keys
  - type mismatch (string vs number)
- **Content/data issues**
  - missing WCIDs, invalid weenie references
  - dat loader errors
- **Network/session issues**
  - null session/player references
  - packet serialization errors

### 3) Apply known ACE/BaseMod fixes (quick hits)

Check for these common issues and apply the standard remediation:

#### A) “Missing IHarmonyMod Type …”

Most common causes:
- `*.deps.json` present in `C:\ACE\Mods\<ModName>\`
- `ACE.Shared.dll` missing from the mod output folder
- conflicting Harmony assemblies or duplicated runtime deps

Fixes:
- Ensure the mod `.csproj` deletes `*.deps.json`, `*runtimeconfig.json`, `*.pdb`, and `runtimes/` on **all builds** (not only Release).
- Ensure `ACEmulator.ACE.Shared` is bundled (do **not** exclude runtime assets for ACE.Shared).
- Ensure Harmony runtime is not bundled (it should be excluded as runtime).

#### B) Settings not loading / stale settings after hot-reload

If the mod relies on `OnWorldOpen()` only, settings can be null or stale after hot-reload.

Fix pattern:
- Load settings in the **PatchClass constructor or Start()**, and also in `OnWorldOpen()` for hot reload of JSON edits.

#### C) JSON settings parse errors

Fixes:
- Verify `Settings.json` is valid JSON (comments are only safe if your loader supports JSONC-style; prefer documented templates that remain valid JSON).
- Match JSON types to C# (`bool`, `int`, `double`, arrays, dictionaries).

### 4) Identify the owning mod / subsystem

For each log block:
- Extract the **assembly/mod name** and **class/method** from stack traces.
- If it’s a mod, locate the corresponding project in the repo and inspect the referenced file.
- If it’s ACE core, determine whether a mod patch is involved (Harmony patched methods often appear in stack traces).

### 5) Produce an actionable fix plan

For each issue, output:
- **Symptom** (exact log line(s))
- **Likely cause**
- **Fix** (specific file(s) and what to change)
- **Verification** (what log lines should disappear, and what to test in-game)

Keep the output concise and prioritize the first root cause; secondary warnings can be handled after stability is restored.

## Usage examples

- User: `/ace-log`  
  Agent: reads `ACE-Server\Ace_Log.txt`, summarizes top errors/warnings, proposes fixes.

- User: “I’m getting ‘Missing IHarmonyMod Type’ after rebuilding”  
  Agent: checks mod output cleanup targets, ACE.Shared presence, Harmony runtime exclusion; proposes `.csproj` fixes.

- User: “My mod settings aren’t updating after /mod f …”  
  Agent: ensures settings are loaded in constructor/Start(), not only `OnWorldOpen()`.

