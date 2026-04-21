# ace-raaj-mods

Server-side mods for **[ACEmulator](https://github.com/ACEmulator/ACE)** using **[ACE.BaseMod](https://github.com/aquafir/ACE.BaseMod)** and Harmony. Each folder under this repo is a deployable mod (DLL + `Meta.json` + settings).

## Gameplay mods

| Mod | What it does | `Meta.json` |
|-----|----------------|-------------|
| **AethericWeaver** | Spreadsheet-driven custom spells and equipment sets. Main customization hooks stay off while `InTesting` is true in `Settings.json`. | Enabled |
| **AureatePath** | Enlightenment and wield-path tuning, Raise-style alternate leveling hooks, XP curve control, and related `/raise` augmentation commands. | Enabled |
| **AutoLoot** | Corpse autoloot via server `.utl` profiles; optional vendor-trash and unknown-scroll passes; `/autoloot` toggles. | Enabled |
| **ChallengeModes** | Challenge hub: `/cm` flows for SSF, hardcore, alternate leveling, aptitude (WIP), milestone XP/luminance (segment furthest does not regress on death). See `ChallengeModes/Readme.md`. | Enabled |
| **EmpyreanAlteration** | Mutator pipeline (loot / corpse / generator), loot-time item XP (`LootGrowthItem`), Slayer/ShinyPet-style mutators, optional Harmony extras and item growth on level-up. | **Disabled** |
| **EasyServerSettings** | Applies shard `PropertyManager` preset (SQL mirror: `EasyServerSettings/Sql/ace-shard-settings.sql`) via `ModifyBool`/`Long`/`Double` + `ResyncVariables`; `/essapply` to re-run. | Enabled |
| **Gemcrafter** | Gem loot upgrades and mortar-based equipment infusion (in testing). | **Disabled** |
| **LeyLineLedger** | Banking and ledger for items, pyreals/trade notes, and luminance (`/bank`, `/cash`, `/lum`, vendor integration). | Enabled |
| **Loremaster** | Quest progress bonuses, first-solve rewards, milestones, portal/repeat-solve hooks, optional barkeeper parchment contracts (see `Settings.json`). | Enabled |
| **Numbersmith** | Formula-driven balance (AngouriMath): damage, crits, healing, XP, level costs, and more via configurable expressions. | Enabled |
| **Overtinked** | Extended tinkering (tries, imbues, salvage rules, custom imbues), item XP curves, quest/loot init for equippables, and level-up growth hooks. | Enabled |
| **QOL** | Toggleable convenience patches: recall speeds, aug caps, fellowships, tailoring, vendors, stackables, swear filter, questgiver auras, Town Network toll, and pet-related toggles. | Enabled |
| **Swarmed** | CreatureEx champion variants (`/cex`, factory roll) and call-for-help reinforcements; separate landscape vs dungeon behavior and optional online-player scaling. | Enabled |

Enable or disable each mod in its **`Meta.json`** before deployment. **`Settings.json`** (per mod) controls behavior and feature flags.

## Repo layout (non-mods)

| Path | Role |
|------|------|
| `AceModQa/` | Shared QA / test helpers referenced by some projects |
| `tools/` | Utilities (e.g. DecalQaRunner, LinearSync, AceServerStringRef) — not loaded as server mods |

## Credits

- Mod loading and patterns follow **[ACE.BaseMod](https://github.com/aquafir/ACE.BaseMod)** by **[aquafir](https://github.com/aquafir)**.
- **Overtinked** extends the Tinkering sample from that project (see mod `Meta.json`).

Per-mod notes and authors may also appear in each mod’s own readme and `Meta.json`.
