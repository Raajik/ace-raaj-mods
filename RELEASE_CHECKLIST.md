# Release checklist (ace-raaj-mods)

Use this when you’re about to ship a new build / test drop of one or more mods.

## Code & build

- [ ] `dotnet build` succeeds for the mod(s) you changed
- [ ] The updated `*.dll` is present in `C:\ACE\Mods\<ModName>\`
- [ ] Server starts cleanly and the mod loads (no “Failed to start”, no “Missing IHarmonyMod Type”)
- [ ] Quick smoke test in-game for the changed behavior (1–2 minutes)

## Settings & compatibility

- [ ] Any new knobs are added to the mod’s `Settings.cs` with sane defaults
- [ ] `Settings.json` template updated (if you ship one with the mod)
- [ ] New custom properties (IDs > 40000) are recorded somewhere discoverable (searchable in code / docs)

## Docs & knowledge base (do this for major behavior changes)

- [ ] Updated `.cursor/skills/ace-mod/SKILL.md` if the “how we do it here” guidance changed
- [ ] Updated any mod-facing docs (`Readme.md`, `Settings.json` comments) affected by the change
- [ ] Added/updated a short “what changed” note (commit message or PR description) that explains **why**, not just what

## Packaging (optional)

- [ ] If you distribute zipped mods, confirm the zip contents match a known-good mod folder layout
- [ ] Confirm no secrets or local-only files are included (e.g., `.env`, machine paths, large `obj/` outputs)

