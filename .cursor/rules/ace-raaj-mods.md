---
name: ace-raaj-mods-default-ace-mod
description: In the ace-raaj-mods repository, treat all conversations as ACE mod development by default, using ACE.BaseMod and Harmony patterns and the ace-mod guidance.
---

## Project-wide defaults for ace-raaj-mods

- Always assume this repository is for **ACE mod development** targeting ACEmulator with **ACE.BaseMod** and **Harmony**.
- Apply the behavior and guidance from the `ace-mod` skill automatically, even if the user does not explicitly invoke `/ace-mod`. Full skill content: `.cursor/skills/ace-mod/SKILL.md`.
- **mcp2cli (co-active):** While following any project skill from `.cursor/skills/` (`ace-mod`, `ace-build`, `ace-log`, `ace-mod-team`, `doc`), if the task involves **MCP servers**, **OpenAPI/REST** specs, **GraphQL** endpoints, **MCP tool discovery or invocation**, or **CLI/skill wrappers for external APIs**, also read and follow `.cursor/skills/mcp2cli/SKILL.md` as if the user invoked `/mcp2cli`. Prefer `uvx mcp2cli` for `--list`, `<command> --help`, and execution per that skill.
- Favor:
  - Keeping source projects under `C:\Users\jeremy\source\repos\ace-raaj-mods\...` (or your workspace root on Linux/WSL)
  - Output paths pointing into `C:\ACE\Mods\<ModName>\`.
  - Using `BasicMod`, `BasicPatch<TSettings>`, and JSON-backed `Settings` classes.

## Consolidated mods in this repo

- Treat as first-class mods any project with a `.csproj` directly under the repo root (one folder per deployable mod). Known gameplay mods include:
  - `AethericWeaver`, `BetterLootControl`, `BetterSupportSkills`, `ChallengeModes`, `AureatePath`, `AutoLoot`, `EmpyreanAlteration`, `Gemcrafter`, `LeyLineLedger`, `Loremaster`, `Numbersmith`, `Overtinked`, `QOL`, `Swarmed`, `WorldEvents` (healing-kit Recuperation HoT is in **BetterSupportSkills**, not QOL)
- Also present for tooling/QA (not typical server mods): `AceModQa`, `tools/DecalQaRunner`, `tools/LinearSync`, `tools/AceServerStringRef`
- When the user asks to build or rebuild mods in this repo:
  - Discover all `.csproj` files within the repo (no `../` segments) and build each, or
  - Use the `/ace-build` skill to build every mod and summarize results.

## Build and tooling conventions

- Prefer `dotnet build` with:
  - `working_directory` set to the specific mod folder (for example `AethericWeaver`, `LeyLineLedger`, `Numbersmith`).
  - Output paths configured in each `.csproj` to `C:\ACE\Mods\$(AssemblyName)`.
- When the user runs `/ace-build` in this repo:
  - Discover all `.csproj` files **within** this repository root (no `../` segments).
  - Build each mod project and summarize results (success, warnings, first error per failure).

## Patterns learned from this project

- **System.Drawing.Common conflicts**
  - Prefer explicitly pinning `System.Drawing.Common` as a `PackageReference` (for example `Version="8.0.0"`), allowing NuGet to resolve to a compatible patch version (such as `8.0.8`) when ACE binaries reference that version.
- **Nullable and safety patterns**
  - Use nullable reference types (`string?`, `Mod?`, `WorldObject?`, etc.) where values are conceptually optional.
  - Prefer `Player?` and null checks (`if (session?.Player is not Player p) return;`) in command handlers and helpers to guard against race-y server states.
  - Avoid returning `null` for value-type-like ACE entities such as `CreatureSkill`; provide a sensible default instead when needed.
- **Patch and settings loading**
  - Prefer keeping `PatchClass` as a regular class with an explicit constructor (no primary constructor) inheriting from `BasicPatch<TSettings>`, and load settings in both the constructor and `OnWorldOpen`.
  - If using primary constructor syntax, you **must** override `Start()` and set `Settings = SettingsContainer.Settings ?? new Settings()` there too — `OnWorldOpen()` runs only at server startup, so after a hot-reload it never runs and Settings would stay null otherwise.
  - Load settings in both the `PatchClass` constructor (or `Start()`) and `OnWorldOpen` using `SettingsContainer.Settings`, with safe fallbacks to a new `Settings` instance when necessary.
- **Mod folder path**
  - `ModManager.ModPath` returns the parent `C:\ACE\Mods`, not the mod’s folder. For the current mod directory use `Path.Combine(ModManager.ModPath, "YourModName", ...)` or `Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location)`.

