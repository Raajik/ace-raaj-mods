# ace-raaj-mods

Server-side mods for **[ACEmulator](https://github.com/ACEmulator/ACE)** using **[ACE.BaseMod](https://github.com/aquafir/ACE.BaseMod)** and Harmony patches. Each folder in this repo is a self-contained, deployable mod with its own `Meta.json`, `Settings.cs` defaults, and runtime `Settings.json` overrides.

## Quick Start

1. Build a mod: `dotnet build ModName/ModName.csproj` (outputs to `C:\ACE\Mods\ModName` by default).
2. Enable/disable mods in each folder's **`Meta.json`** (`Enabled: true/false`).
3. Tune behavior in each mod's **`Settings.json`** without recompiling.
4. Restart the server or use hot-reload if the mod supports it.

> **Do not edit `Meta.json` `Enabled` without understanding the dependency chain.** Some mods (e.g., `SharedLoot`, `QOL`) are depended on by others.

---

## Gameplay Mods

### AethericWeaver
Spreadsheet-driven custom spells and equipment sets. Define new spell effects, proc chains, and item sets in JSON/CSV; the mod wires them into the server at runtime. Main customization hooks stay inactive while `InTesting` is `true` in `Settings.json`.

**Player-facing:** New spells and equipment sets appear organically in loot and on vendors.

### AureatePath
Enlightenment and wield-path tuning for endgame characters.
- **Enlightenment pool bonuses** — repeatable enlightenment with configurable stat pools.
- **Raise-style alternate leveling** — `/raise` commands to increment specific attributes/skills without full level-ups.
- **XP curve control** — flatten or steepen the post-275 curve per server preference.

### AutoLoot
Server-side corpse autoloot using `.utl` profiles (compatible with Decal UT classic profiles).
- Auto-loot corpses on kill or on approach.
- Optional vendor-trash pass (sell greys automatically).
- Optional unknown-scroll pass (keep or destroy untrained scrolls).
- `/autoloot` toggles and profile selection.

### ChallengeModes
A challenge-hub mod for alternate playstyles:
- **SSF (Solo Self-Found)** — restricted trading, storage, and buff access.
- **Hardcore** — permadeath with optional legacy storage.
- **Alternate Leveling** — milestone-based XP/luminance where your furthest segment does not regress on death.
- **Aptitude** (WIP) — skill-restriction challenge framework.

Use `/cm` in-game to view and enroll in challenges. See `ChallengeModes/Readme.md` for full flows.

### EmpyreanAlteration
A mutator pipeline for loot, corpses, and generators.
- **Loot-time item XP** (`LootGrowthItem`) — items can drop with XP progress already applied.
- **Pre-awakened drops** (~0.2%) — Living-style tiered awakening (Lesser/Greater/Aetheric) with XP profiles (QuickStart/Steady/Brutal/Casual), "Living" rename, and visual glow.
- **Quest equipment guaranteed pre-awaken** — all NPC-given gear gets auto-awakened + workmanship + imbue.
- **Pre-imbued loot** (~5%) — random elemental rend, slayer, cleave, or secondary imbue on weapons; defense imbue on armor.
- **Wield requirement capping** — all loot items get `tier × 50` wield caps so drops match source creature difficulty.
- **Slayer / ShinyPet-style mutators** — chance-based cosmetic and functional overrides.
- **Optional Harmony extras** — additional patches for edge-case loot behaviors.
- **Item growth on level-up** — equippables can gain bonuses as the player levels.

### EasyServerSettings
Applies shard-wide `PropertyManager` presets from a single configuration file.
- Mirrors SQL settings via `ModifyBool`/`ModifyLong`/`ModifyDouble`.
- Includes a reference SQL dump at `EasyServerSettings/Sql/ace-shard-settings.sql`.
- `/essapply` re-runs the preset without a restart.
- Safe to leave enabled; idempotent on repeated applies.

### SpellSiphon
Extract spells from any spell-bearing item and infuse them into equipment.
- **Crush gems** (or any item, if `EnableAnyItemCrushing` is on) with a mortar to capture their spells.
- **Infuse equipment** by using the charged mortar on armor, weapons, or jewelry.
- **Skill-based success rate** — Magic Item Tinkering skill improves crush success (`20% + skill × 0.05%`).
- **Level penalty** — higher-level spells reduce success rate (configurable).
- **Attuned/bonded support** — can be allowed or blocked via `AllowAttunedAndBonded`.
- **Vendor sales** — SpellSiphon tool sold at spell component vendors (mages/scriveners) for 50,000 pyreals. Toggle: `EnableVendorSales`; price: `VendorPrice`.
- `/spellsiphon` or `/ss` commands to list crushable items in your pack.

> **Status:** Disabled by default. Enable in `Meta.json` when ready to deploy.

### LeyLineLedger
Banking and ledger system for items, currency, and luminance.
- **Item banking** — deposit/withdraw stackables and individual items.
- **Pyreal/trade-note storage** — `/cash` commands for wallet-style banking.
- **Luminance ledger** — `/lum` commands to track and transfer luminance.
- **Vendor integration** — bankers and vendors can act as ledger access points.
- **Vendor sell rate reduction** — configurable multiplier (default 3%) on vendor payouts to combat inflation.

### Loremaster
Quest-progress bonuses and first-solve rewards.
- **First-solve rewards** — bonus XP/pyraels for the first completion of a quest on the server.
- **Account-wide repeat cooldown** — per-quest 10-hour cooldown shared across all characters on an account. Alts see repeat rewards but share the same timer. Standard ACE cooldown message when blocked. WorldEvents bonus quests bypass cooldown.
- **Milestone bonuses** — repeatable quest rewards scale with solve count.
- **Portal/repeat-solve hooks** — custom behavior on portal usage and repeat quest turn-ins.
- **Rested XP** — offline time accumulates into a temporary XP multiplier based on enlightenment gap versus server max.
- **Pre-unlock luminance banking** — luminance earned before unlocking the quest is banked to LeyLineLedger instead of silently lost.
- **Optional barkeeper parchment contracts** — configurable in `Settings.json`.

### Numbersmith
Formula-driven server balance via [AngouriMath](https://github.com/asc-community/AngouriMath).
- **Damage, crit, healing formulas** — replace hardcoded calculations with configurable expressions.
- **XP and level costs** — tune curves without recompiling.
- **Extensible expression set** — add new formula overrides in `Settings.json`.

### LivingEquipment
Player-driven item awakening system using Coalesced Mana consumables.
- **Awaken equippables** — use Lesser (max 25), Greater (max 50), or Aetheric (max 75) Coalesced Mana to unlock item leveling.
- **Named XP profiles** — QuickStart, Steady, Brutal, or Casual curves randomly assigned per awakening.
- **MaterialType-based naming** — `Steel Longsword` becomes `Living Longsword`.
- **Academy auto-awaken** — starter Academy weapons automatically awaken to Tier 1 when picked up.
- **Vendor sales** — Academy weapons/Pathwarden armor sold at starter-town vendors with dynamic economy pricing.
- **Visual indicator** — awakened items glow yellow/gold (`BoostHealth|BoostStamina` shader).

> **Loot mutation (pre-awakened/pre-imbued drops) absorbed into EmpyreanAlteration** to eliminate double-processing. LivingEquipment now handles Coalesced Mana interaction + vendor injection only.

### Overtinked
Extended tinkering system.
- **Extra tries and imbues** — beyond vanilla tinkering limits.
- **Custom salvage rules** — define which materials map to which bonuses.
- **Item XP curves** — tinkering can contribute to item growth.
- **Quest/loot init for equippables** — special handling for quest-reward and loot-drop items.
- **Level-up growth hooks** — items can improve when the player levels.

### QOL
Toggleable convenience patches (no single defining feature — pick what you want).
- **Recall speeds** — faster casting/recall animations.
- **Augmentation caps** — raise or remove aug spending limits.
- **Fellowship improvements** — XP sharing, range, and formation tweaks.
- **Tailoring** — easier dye/clothing interactions.
- **Vendor improvements** — buy/sell rate adjustments, rotation hooks.
- **Stackables** — custom stack size overrides (`StackableWcids.json`).
- **Swear filter** — `/oath` toggle; friends and allegiance bypass.
- **Questgiver auras** — NPC glow when they have a quest for you.
- **Town Network toll** — configurable cost or free TN access.
- **Generous Benefactor** — track cumulative TN toll spend; unlock `/tn` instant teleport after donating 1 billion pyreals.
- **Pet-related toggles** — pet XP, buff sharing, and command tweaks.

> Many QOL features are individually toggled in `Settings.json`. Enable only what fits your server.

### Swarmed
CreatureEx champion variants and reinforcement spawning.
- **`/cex` factory roll** — spawn CreatureEx variants with custom stats and loot.
- **Call-for-help reinforcements** — champions can summon adds on aggro or at health thresholds.
- **Dungeon population manager** — maintains ~30 living mobs inside occupied dungeons, spawning outside player radar range.
- **Dynamic scaling** — mobs scale to highest player level in landblock (past 275 for high-level servers) with ±15 level variance for flavor.
- **Landscape vs dungeon behavior** — separate tuning for open-world and dungeon spawns.
- **Optional online-player scaling** — spawn counts or stats scale with server population.

### WorldEvents
Rotating world events with automated scheduling, broadcast messaging, and participation tracking.

| Event | What Happens |
|-------|-------------|
| **Invasion** — Monsters assault a town in waves. Players defend to earn QB (quest bonus points). Bosses spawn at wave thresholds. |
| **Cull** — A specific creature type is marked for extermination. Server-wide kill count tracked; thresholds trigger rewards. |
| **Sale** — Global vendor buy/sale rate adjustments for a limited time. |
| **BonusQuest** — QB payout multiplier for all event participation. |
| **Hunt** — Target specific creatures or players for bounties; leaderboard tracked. |
| **POI Hunt** — A narrator NPC gives riddles leading to Points of Interest. First to arrive advances the round. Narrators persist until event end. |
| **Scavenger Hunt** — Turn in specific hot items (drawn from recent loot tables) to a collector NPC. Auto-advances after a timeout if no winner. |

**Cross-event systems:**
- **Unified QB Ledger** — `ParticipationLedger` tracks account-wide event participation across all event types.
- **Solo Competitor Bonus** — When exactly 1 player participates, they receive +1 loot tier and 1.5× XP.
- **Unified Scheduler** — Optional centralized event timer (`UseUnifiedScheduler`). When enabled, legacy per-event reminders are silenced.

Use `/worldevents` or `/we` in-game for status and schedules.

---

## Support / Utility Projects

| Path | Role |
|------|------|
| `AceModQa/` | Shared QA and test helpers referenced by some mod projects. Not loaded as a server mod. |
| `tools/` | Standalone utilities: `DecalQaRunner`, `LinearSync`, `AceServerStringRef`. Not server mods. |
| `SharedLoot/` | Shared loot-table helpers used by multiple mods. Must be enabled if any dependent mod is active. |

---

## Configuration Conventions

- **`Meta.json`** — Controls whether the mod loads at all. `Enabled: true/false`. **Do not change without understanding dependencies.**
- **`Settings.cs`** — C# defaults. Use `JsonPropertyName("// ...")` doc bands + values bands. Safe to read; changes require recompile.
- **`Settings.json`** — Runtime overrides. Edit freely; reloads on server restart or hot-reload.

## Build & Deploy

```powershell
# Build a single mod
dotnet build SpellSiphon/SpellSiphon.csproj

# Build all mods (PowerShell)
Get-ChildItem -Directory | Where-Object { Test-Path "$($_.FullName)/$($_.Name).csproj" } | ForEach-Object { dotnet build "$($_.FullName)/$($_.Name).csproj" }
```

Release zips are auto-generated by `.csproj` `ZipOutputPath` targets in Release configuration.

## Credits

- Mod loading and patterns follow **[ACE.BaseMod](https://github.com/aquafir/ACE.BaseMod)** by **[aquafir](https://github.com/aquafir)**.
- **Overtinked** extends the Tinkering sample from that project (see mod `Meta.json`).
- **AngouriMath** powers formula evaluation in **Numbersmith**.
- Per-mod notes, authors, and attribution may also appear in each mod's own readme and `Meta.json`.

## License

Per-mod licenses are specified in their respective `Meta.json` files where applicable. The repository as a whole follows the license terms of ACE.BaseMod and ACEmulator where derivative works are concerned.
