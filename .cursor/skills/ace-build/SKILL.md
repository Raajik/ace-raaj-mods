---
name: ace-build
description: Run dotnet build for all mod projects inside the ace-raaj-mods repository. Use when the user types /ace-build or asks to rebuild all mods for this repo.
---

## Co-active skill: mcp2cli

Whenever this work involves **MCP servers**, **OpenAPI/REST** specs, **GraphQL** endpoints, or **CLI or skill generation for external APIs**, read and follow `.cursor/skills/mcp2cli/SKILL.md` in addition to this skill (same scope as `/mcp2cli`). Prefer `uvx mcp2cli` for discovery and execution per that file.

# ACE Mod Build Helper

## When to use this skill

Use this skill in this repository when:

- The user types `/ace-build`.
- The user asks to "build all mods" or "rebuild all current mods" within the `ace-raaj-mods` repo.

## Core behavior

- Treat the workspace root as the `ace-raaj-mods` repository root.
- Build every mod project that lives **inside this repo** (including `LeyLineLedger` and `Numbersmith`, which now live under `ace-raaj-mods`).
- Use `dotnet build` so that normal restore and compilation behavior runs.

## Step-by-step instructions

1. **Identify mod projects**
   - Assume each mod lives in its own subdirectory under this repo (for example `AutoLoot`, `AureatePath`, `LeyLineLedger`, `Numbersmith`, etc).
   - Look for `.csproj` files whose paths are **within** this repository root / workspace (no `../` segments).
   - **Primary targets:** gameplay mods at repo root (one folder per deployable mod). See step 4 for the canonical list.
   - **Optional:** `AceModQa/` and `tools/*` (e.g. `DecalQaRunner`, `LinearSync`, `AceServerStringRef`) — build only if the user asks for a full tree, QA, or tooling build.

2. **Build each project**
   - For each `.csproj` file you identify:
     - Run the `Shell` tool with:
       - `working_directory`: the directory that contains the `.csproj`.
       - `command`: `dotnet build`.
       - A generous `block_until_ms` (for example, 600000 or higher) so the build can complete.
   - You may build multiple projects in parallel with the `parallel` tool wrapper when appropriate.

3. **Commit and push after successful builds**
   - After all targeted projects build successfully:
     - Run `git status` (in the repo root) and confirm there are no unexpected changes.
     - Stage changes with `git add .` (or a narrower path if appropriate).
     - Create a commit with a concise message, for example:
       - `git commit -m "Build all mods via /ace-build"`
     - Push to the current branch’s upstream with:
       - `git push`
   - Skip commit/push if there are no changes to commit, or if any build failed.

4. **Current known project layout (gameplay mods)**
   - Build these when the user wants “all mods” (each folder is a deployable server mod):
     - `AethericWeaver/AethericWeaver.csproj`
     - `ChallengeModes/ChallengeModes.csproj`
     - `AureatePath/AureatePath.csproj`
     - `AutoLoot/AutoLoot.csproj`
     - `BetterLootControl/BetterLootControl.csproj`
     - `EmpyreanAlteration/EmpyreanAlteration.csproj`
     - `EasyServerSettings/EasyServerSettings.csproj`
     - `Gemcrafter/Gemcrafter.csproj`
     - `LeyLineLedger/LeyLineLedger.csproj`
     - `Loremaster/Loremaster.csproj`
     - `Numbersmith/Numbersmith.csproj`
     - `Overtinked/Overtinked.csproj`
     - `QOL/QOL.csproj`
     - `Swarmed/Swarmed.csproj`
     - `WorldEvents/WorldEvents.csproj`

5. **Reporting results**
   - After running the builds, summarize succinctly:
     - Which mod projects built successfully.
     - Which failed, along with the first relevant error message for each failure.
   - Keep the summary high level; avoid pasting large build logs unless the user explicitly asks.

## Examples

- If the user types:

  - `/ace-build`

  Then:

  - Use this skill to:
    - Detect `AethericWeaver/AethericWeaver.csproj` as a mod inside this repo.
    - Run `dotnet build` in the `AethericWeaver` directory.
    - Report the success or failure back to the user.

