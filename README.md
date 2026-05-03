# ace-raaj-mods

Server-side mods for **[ACEmulator](https://github.com/ACEmulator/ACE)** using **[ACE.BaseMod](https://github.com/aquafir/ACE.BaseMod)** and Harmony patches. Each folder in this repo is a self-contained, deployable mod with its own `Meta.json`, `Settings.cs` defaults, and runtime `Settings.json` overrides.

## Quick Start

1. Build a mod: `dotnet build ModName/ModName.csproj` (outputs to `C:\ACE\Mods\ModName` by default).
2. Enable/disable mods in each folder's **`Meta.json`** (`Enabled: true/false`).
3. Tune behavior in each mod's **`Settings.json`** without recompiling.
4. Restart the server or use hot-reload if the mod supports it.

> **Do not edit `Meta.json` `Enabled` without understanding the dependency chain.** Some mods (e.g., `BetterLootControl`, `QOL`) are depended on by others.

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
- **Learned scroll summary** — after a successful learn, the mod does not echo the scroll name again in the aggregated loot line (vanilla message only).
- `/autoloot` toggles and profile selection.
- **Close-time material salvage** — after closing a corpse or non-house chest (house storage excluded), optional pass sends **material-type items and raw salvage bags** (WCID 20981–21089) through BetterSupportSkills auto-salvage into the material bank; other loot stays in the container. Coalesced Mana can still bank to LeyLineLedger on loot/close without a profile match.
- **Loot stack consolidation** — merges duplicate same-WCID stackable rows in freshly generated corpses (e.g. multiple drudge charm create-list entries).

### BetterLootControl
Consolidated loot-table control (former `SharedLoot` library + `BetterChestLoot` chest mod; those folders removed from the repo).
- **Chest guaranteed drops** — adds salvage, trade notes, healing kits, keys, crystals, and gear to treasure chests.
- **Global rare drops** — SpellSiphon tool and Mana Lattice have a small chance to drop from any creature with a treasure profile. Mana Lattice can pre-roll bonus spells from SpellSiphon's gem pool when that mod is loaded; lattice uses gem-style self-cast when the item spellbook is non-empty (SpellSiphon hook + client refresh after bootstrap).
- **Salvage bag shaping** — auto-shapes dropped salvage bags to 100-unit stacks.
- **Loot rolling** — pooled rarity system (common/uncommon/rare/extremely rare) with independent salvage and gear rolls.
- **Gear ratings** — all gear tiers can spawn with ratings (Damage Rating, Crit Damage Rating, Resist Rating, etc.). Higher tiers = higher values and better odds.
- **Gear equipment sets** — all gear tiers can roll as part of an equipment set (Carraidas, Noble Relic, Ancient Relic, etc.).
- **Rating level-up scaling** — ratings on gear grow as the item levels up via EmpyreanAlteration's awakening system (every N levels, existing ratings increase).
- **Runtime config** — `LootConfig.json` (shared with Loremaster) controls all pools without recompiling.

### ChallengeModes
A challenge-hub mod for alternate playstyles:
- **SSF (Solo Self-Found)** — restricted trading, storage, and buff access.
- **Hardcore** — permadeath with optional legacy storage.
- **Alternate Leveling** — milestone-based XP/luminance where your furthest segment does not regress on death.
- **Aptitude** (WIP) — skill-restriction challenge framework.

Use `/cm` in-game to view and enroll in challenges. See `ChallengeModes/Readme.md` for full flows.

### EmpyreanAlteration
A mutator pipeline for loot, corpses, generators, and player-driven item awakening.
- **Point-based item leveling** — ALL creature kills grant +1 leveling point; QB-eligible quest completions grant +100. Items level up via discrete points instead of raw XP, decoupling from billion-XP/hour endgame player XP.
- **Coalesced Mana awakening + upgrading** — All three tiers (Lesser 42516, Greater 42517, Aetheric 42518) can both awaken new items AND upgrade existing awakened items. QuickStart is the single configurable default profile.
- **Loot-time item XP** (`LootGrowthItem`) — items can drop with XP progress already applied.
- **Pre-awakened drops** (~0.2%) — Living-style tiered awakening with XP profiles (QuickStart/Steady/Brutal/Casual), "Living" rename, and visual glow.
- **Quest equipment guaranteed pre-awaken** — all NPC-given gear gets auto-awakened + workmanship + imbue.
- **Pre-imbued loot** (~5%) — random elemental rend, slayer, cleave, or secondary imbue on weapons; defense imbue on armor.
- **Wield requirement capping** — all loot items get `tier × 50` wield caps so drops match source creature difficulty.
- **Slayer / ShinyPet-style mutators** — chance-based cosmetic and functional overrides.
- **Optional Harmony extras** — additional patches for edge-case loot behaviors.
- **Item growth on level-up** — equippables can gain bonuses as the player levels.
- **Awakened cloaks + item sets** — after point-based level gains on awakened cloaks, `OnItemLevelUp` runs when the item has an equipment set so cloak proc spell tiers stay aligned; cloak loot-upgrade / kill-point gating matches item XP curve Harmony when those features are on.
- **DisableAttunedGlobally** — server-wide QOL toggle making ALL items tradeable/sellable (including quest rewards and Coalesced Mana).
- **Awaken workmanship** — first awakening sets sensible `ItemWorkmanship` / `NumTimesTinkered` when missing. Optional **bonus spells** from SpellSiphon's pool when that mod is present (`EnableAwakenRandomSpells`).

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
- **Mana Lattice (850201)** — `OnCastSpell` prefix applies every spell in the lattice spellbook to the activator for both Endless and BLC-pre-rolled lattices (see `Content/SQL/ManaLattice_Create.sql`).

> **Status:** Disabled by default. Enable in `Meta.json` when ready to deploy.

### LeyLineLedger
Banking and ledger system for items, currency, luminance, and denominated commodities.
- **Item banking** — deposit/withdraw stackables and individual items.
- **Denominated banking** — pyreal chain (mote→ingot), crystal shards (cracked→fragment), and shadow shards (speck→fragment) deposit as unified base-unit pools. Withdraw auto-denominates largest-first.
- **Pyreal/trade-note storage** — `/cash` commands for wallet-style banking.
- **Luminance ledger** — `/lum` commands to track and transfer luminance.
- **Vendor integration** — bankers and vendors can act as ledger access points.
- **Vendor sell rate reduction** — configurable multiplier (default 3%) on vendor payouts to combat inflation.
- **Vendor sell payout floor** — optional minimum pyreals when selling items to vendors (`VendorMinSellPayoutPyreals`), applied after other vendor patches.
- **Salvage bank metadata** — Nether Rending credits **Salvaged Onyx (21064)**; **Salvaged Obsidian (21063)** is junk (`Useless`), matching Overtinked. Do not reorder `DepositRules` rows without shifting bank `PropertyInt64` indices.
- **Skeleton key appraisal** — optional `AppraiseInfo` postfix appends lock-cap suffixes `(1kD)` / `(1kC)` / `(5kD)` / `(5kC)` for Windblown key WCIDs (aligned with BetterKeys).

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

### LivingEquipment *(absorbed into EmpyreanAlteration, 2026-05-01)*
Player-driven item awakening system using Coalesced Mana consumables.
- **Awaken equippables** — use Lesser (max 25), Greater (max 50), or Aetheric (max 75) Coalesced Mana to unlock item leveling.
- **Named XP profiles** — QuickStart, Steady, Brutal, or Casual curves randomly assigned per awakening.
- **MaterialType-based naming** — `Steel Longsword` becomes `Awakened Longsword` (player-driven) or `Living Longsword` (loot drops).
- **Academy auto-awaken** — starter Academy weapons automatically awaken to Tier 1 when picked up.
- **Visual indicator** — awakened items glow red outline (`BoostHealth|BoostStamina = 20`).

> **Standalone `LivingEquipment` mod deleted.** All functionality (Coalesced Mana use-on-target, auto-awaken on inventory add, custom XP curves, property tracking) now lives in **EmpyreanAlteration**. Enable `EmpyreanAlteration` to use these features.

### Overtinked
Extended tinkering system.
- **Extra tries and imbues** — beyond vanilla tinkering limits.
- **Custom salvage rules** — define which materials map to which bonuses.
- **Item XP curves** — tinkering can contribute to item growth.
- **Quest/loot init for equippables** — special handling for quest-reward and loot-drop items.
- **Level-up growth hooks** — items can improve when the player levels.
- **Custom imbue examine text** — Hemorrhage / Cleaving / Nether Rending use a full appraisal `LongDesc` replace (and strip `AppraisalLongDescDecoration`) so the client does not splice workmanship/material lines into custom imbue stats.
- **World SQL for custom imbue bags** — yellow garnet / tiger eye / onyx need `Content/SQL/` on **each** database (`ace_world` and live `wb_ace_world`); JSON + DLL alone do not set `ItemUseable` / `TargetType` on those WCIDs (see `Overtinked/Readme.md` § Push live).

### QOL
Toggleable convenience patches (no single defining feature — pick what you want).
- **Recall speeds** — faster casting/recall animations.
- **Augmentation caps** — raise or remove aug spending limits.
- **Fellowship improvements** — XP sharing, range, and formation tweaks.
- **Tailoring** — easier dye/clothing interactions.
- **Vendor improvements** — buy/sell rate adjustments (see **LeyLineLedger** for pricing); **VendorLootRotation** in QOL only rolls **equipment sale stock** on vendor approach (interval = `min` of rotation vs cooldown minutes in `Settings.json`).
- **Stackables** — custom stack size overrides (`StackableWcids.json`).
- **Swear filter** — `/oath` toggle; friends and allegiance bypass.
- **Questgiver auras** — NPC glow when they have a quest for you.
- **Town Network toll** — configurable cost or free TN access.
- **Generous Benefactor** — track cumulative TN toll spend; unlock `/tn` instant teleport after donating 1 billion pyreals.
- **Facility Hub** — successful Facility Hub Portal Gem (49563) summons count toward **AchievementUnlocked** `FacilityFrequenter`; `/fac` teleports to the hub after unlock (stock ACE uses configurable `FacilityHub` fallback position in `Settings.json`).
- **Pet-related toggles** — pet XP, buff sharing, and command tweaks.

> Many QOL features are individually toggled in `Settings.json`. Enable only what fits your server.

### Swarmed
CreatureEx champion variants and reinforcement spawning.
- **`/cex` factory roll** — spawn CreatureEx variants with custom stats and loot.
- **SpecialCreatureLoot** — CreatureEx specials can drop guaranteed salvage, uncommon+ gear, and random auto-imbued loot (see `Settings.json`).
- **Duelist** — frontal cone reduces damage taken instead of negating it entirely.
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
| `BetterLootControl/` | Consolidated loot-table system (chest drops, rare drops, salvage shaping). Ships the `SharedLoot` namespace inside this assembly for Loremaster / WorldEvents / CommonGoals. Must be enabled if any dependent mod is active. |

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
