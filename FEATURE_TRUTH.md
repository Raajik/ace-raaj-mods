# Immutable Source of Truth - Feature Registry

This file is the canonical reference for which mod owns which gameplay feature and where its immutable defaults live.

## Legend
- **Owner Mod**: mod containing the authoritative implementation
- **Immutable File(s)**: template/default file(s) that should not be overwritten on test/live servers
- **Design Doc**: wiki or markdown with intent, formulas, and examples
- **Test File**: canonical test config on the server (`C:\ACE\Mods\<Mod>\Settings.json`) — **never overwrite this with repo copy unless operator explicitly requests reset**
- **Live File**: same for live (`C:\ACE-WB\Mods\<Mod>\Settings.json`) — only overwrite on explicit "push live"

---

## Core Systems (single owner each)

| Feature | Owner Mod | Immutable File(s) | Design Doc | Test File | Live File |
|---------|----------|-------------------|------------|-----------|-----------|
| Bank & Vendor Pricing (Buy/Sell multipliers, bank debit/deposit, packet rules) | LeyLineLedger | `Settings.json` (template) | `LeyLineLedger/Readme.md` | `C:\ACE\Mods\LeyLineLedger\Settings.json` | `C:\ACE-WB\Mods\LeyLineLedger\Settings.json` |
| Server Level Cap, Credit Interval, Level Cost, Challenge Mode integration | AureatePath | `Settings.json`, `ChallengeModes/Content/` | `AureatePath/Readme.md` | `C:\ACE\Mods\AureatePath\Settings.json` | `C:\ACE-WB\Mods\AureatePath\Settings.json` |
| Looter (corpse roll logic, item generation, rarity tiers) | BetterLootControl | `Settings.json`, `Content/` | `BetterLootControl/Readme.md` | `C:\ACE\Mods\BetterLootControl\Settings.json` | `C:\ACE-WB\Mods\BetterLootControl\Settings.json` |
| Custom Spells (spell creation & balance) | CustomSpells | `Settings.json`, `Content/SQL/` | `CustomSpells/Readme.md` | `C:\ACE\Mods\CustomSpells\Settings.json` | `C:\ACE-WB\Mods\CustomSpells\Settings.json` |
| Quest/Lore progression, tier requirements, repeatables | Loremaster | `Settings.json`, `Content/` | `Loremaster/Readme.md` | `C:\ACE\Mods\Loremaster\Settings.json` | `C:\ACE-WB\Mods\Loremaster\Settings.json` |
| Crafting recipes, imbues, tinker behavior | Overtinked | `Settings.json`, `Content/` | `Overtinked/Readme.md` | `C:\ACE\Mods\Overtinked\Settings.json` | `C:\ACE-WB\Mods\Overtinked\Settings.json` |
| Item Enhancement & Materialization (MaterialType renaming, upgrades) | EmpyreanAlteration | `Settings.json`, `Content/SQL/` | `EmpyreanAlteration/Readme.md` | `C:\ACE\Mods\EmpyreanAlteration\Settings.json` | `C:\ACE-WB\Mods\EmpyreanAlteration\Settings.json` |
| Shared Loot / Cross-mod loot pool coordination | BetterLootControl (owner) | `Content/` | `BetterLootControl/Readme.md` | `C:\ACE\Mods\BetterLootControl\Settings.json` | `C:\ACE-WB\Mods\BetterLootControl\Settings.json` |
| Vendor loot rotation / approach vendor injection | QOL (VendorLootRotation) | `Settings.json` | `QOL/Readme.md` | `C:\ACE\Mods\QOL\Settings.json` | `C:\ACE-WB\Mods\QOL\Settings.json` |
| Vendor approach order (clears → statics → inject) | EmpyreanAlteration (coordinated) | N/A (Harmony priority) | `EmpyreanAlteration/Readme.md` | N/A | N/A |
| AutoSalvage (BetterSupportSkills) | BetterSupportSkills | `Settings.json` | `BetterSupportSkills/ClassPerks.md` | `C:\ACE\Mods\BetterSupportSkills\Settings.json` | `C:\ACE-WB\Mods\BetterSupportSkills\Settings.json` |
| AutoLoot coordination (AutoSalvage integration) | AutoLoot (delegates to BetterSupportSkills) | `Settings.json` | `AutoLoot/Readme.md` | `C:\ACE\Mods\AutoLoot\Settings.json` | `C:\ACE-WB\Mods\AutoLoot\Settings.json` |
| Class perks, combat feats, hybrid rules | BetterSupportSkills | `Settings.json`, `ClassPerks.md` | `BetterSupportSkills/ClassPerks.md` | `C:\ACE\Mods\BetterSupportSkills\Settings.json` | `C:\ACE-WB\Mods\BetterSupportSkills\Settings.json` |
| Challenge Modes (per-mode rules, scaling) | ChallengeModes | `Settings.json`, `Content/` | `ChallengeModes/Readme.md` | `C:\ACE\Mods\ChallengeModes\Settings.json` | `C:\ACE-WB\Mods\ChallengeModes\Settings.json` |
| World Events (tournaments, hunts, sales) | WorldEvents | Multiple internal templates | `WorldEvents/Readme.md` | `C:\ACE\Mods\WorldEvents\Settings.json` | `C:\ACE-WB\Mods\WorldEvents\Settings.json` |
| Lockboxes / Treasure containers | Lockboxes | `Settings.json`, `Content/` | `Lockboxes/Readme.md` | `C:\ACE\Mods\Lockboxes\Settings.json` | `C:\ACE-WB\Mods\Lockboxes\Settings.json` |
| Keys & keyring behavior | BetterKeys | `Settings.json`, `Content/` | `BetterKeys/Readme.md` | `C:\ACE\Mods\BetterKeys\Settings.json` | `C:\ACE-WB\Mods\BetterKeys\Settings.json` |
| Spell Siphon (charging/imbue mechanics) | SpellSiphon | `Settings.json`, `Content/` | `SpellSiphon/Readme.md` | `C:\ACE\Mods\SpellSiphon\Settings.json` | `C:\ACE-WB\Mods\SpellSiphon\Settings.json` |
| Glyph of Extraction (tiered spell extract) | SpellSiphon | `Settings.json`, `Content/SQL/GlyphExtraction_Tools_Create.sql` | `SpellSiphon/Readme.md` | `C:\ACE\Mods\Spellsiphon\Settings.json` | `C:\ACE-WB\Mods\Spellsiphon\Settings.json` |
| Swarmed (creature type tagging) | Swarmed | `Settings.json`, `Content/` | `Swarmed/Readme.md` | `C:\ACE\Mods\Swarmed\Settings.json` | `C:\ACE-WB\Mods\Swarmed\Settings.json` |
| Numbersmith (numerics, rounding) | Numbersmith | `Settings.json` | `Numbersmith/Readme.md` | `C:\ACE\Mods\Numbersmith\Settings.json` | `C:\ACE-WB\Mods\Numbersmith\Settings.json` |
| Gemcrafter (gem behavior) | Gemcrafter | `Settings.json`, `Content/` | `Gemcrafter/Readme.md` | `C:\ACE\Mods\Gemcrafter\Settings.json` | `C:\ACE-WB\Mods\Gemcrafter\Settings.json` |
| Windblown trophies & custom turn-ins | Windblown | `Content/SQL/`, `docs/` | `Windblown/docs/` | `C:\ACE\Mods\Windblown\Settings.json` | `C:\ACE-WB\Mods\Windblown\Settings.json` |
| EasyServerSettings (server config UI/defaults) | EasyServerSettings | `Settings.json` | `EasyServerSettings/Readme.md` | `C:\ACE\Mods\EasyServerSettings\Settings.json` | `C:\ACE-WB\Mods\EasyServerSettings\Settings.json` |

## Mod Interaction Rules

1. **Single Owner Per Feature**: If Feature X is owned by Mod A, no other mod should reimplement X. Instead, it should call Mod A's API (if public) or use reflection bridges defined by Mod A.

2. **Reflection Bridges**: For cross-mod calls where direct references are undesirable, use `AccessTools.TypeByName` with `Prepare()` returning `false` if the target mod is absent. Log resolution once.

3. **Harmony Priority**: When patching the same method for different purposes, use `Priority` (First, Last, etc.) to guarantee ordering. Document the ordering in each mod's Readme.

4. **Settings Overwrites**: Never overwrite a server's active `Settings.json` on deploy unless the operator explicitly requests a reset. New keys from repo `Settings.json` should be merged manually into the server file.

5. **SQL Deployment**: World SQL changes must be applied to the target database (`ace_world` for test, `wb_ace_world` for live) during deploy. Biota cleanup scripts should accompany weenie changes.

6. **Immutable Documentation**: The `Design Doc` column should point to a markdown file in the repo (or wiki). That file should contain: intent, formulas, default values, examples, and links to related systems.

## Process for Adding/Changing a Feature

1. **Identify Owner**: If no owner, assign one (create new mod or designate existing).
2. **Create/Update Immutable Files**: Edit the mod's `Settings.json` template and design doc in the repo.
3. **Implement**: Code the feature in the owner mod. If cross-mod integration is needed, implement reflection bridge.
4. **Test**: Deploy to test server, verify behavior, ensure no overwrite of test `Settings.json`.
5. **Document**: Update `FEATURE_TRUTH.md` (this file) with any new entries or changes.
6. **Release**: Commit, tag, and push. Append dated entry to `COMPLETED.md`.

## Audit Trail

This file should be updated whenever:
- A new feature is added.
- Ownership of a feature changes.
- Immutable file locations change.
- Design docs are added/updated.

All changes must be committed with a clear message referencing the feature and reason.
