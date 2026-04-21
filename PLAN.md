# Overall TODO inventory (ace-raaj-mods)

Single index of tracked work. **Mod notes below were merged from former per-mod `TODO.md` files; greenfield ideas were merged from former `MOD_IDEAS.md`.** Implementation detail also lives in code / Readmes. There is no separate `TODO.md` or `MOD_IDEAS.md` in the repo anymore.

## Progress (recent)

- **Done (no longer in queue below):** LeyLineLedger / AutoLoot `CashProperty` ↔ `BankCashProperty` (39999) verified; QOL `AnimationSpeeds` expansion + `Settings.json` `//` docs + Readme updates (2026-04-04).
- **Done:** Loremaster barkeeper parchments — weighted explore/kill/fetch pools (rare + 25–100 weight rules, effective kill count for rare targets), stack-based fetch turn-in, concise objective copy with weenie names (2026-04-04).
- **Ongoing:** AureatePath / Overtinked = operator JSON tuning; maintenance = periodic `rg` / `/mod-audit`. **AethericWeaver** — spell customization failures at startup: log exception in `CustomizeSpells` + verify dat/DB alignment (see [§ AethericWeaver](#aethericweaver)).
- **Backlog:** User idea list (**Idea backlog**, 2026-04) + **Idea routing** table captured under [§ Greenfield concepts](#greenfield-concepts) (2026-04-21).

## Suggested order (simplest → most complex)

Burn down from the top; later items need more design or ACE integration.

1. **AureatePath — JSON tuning only** — No open features. Adjust enlightenment / luminance gates in `Settings.json` / `Settings.cs`: `RequireAllLuminanceAuras`, `BaseLumAugmentationsRequired`, `RequireMinimumPerLumAugContributor`, `ShowLumAugVerificationCounts`, plus scaling level req, enlightenment-index gates, lum aug sum, removes (see mod settings).
2. **Overtinked — JSON tuning only** — No open backlog. Tune `Settings.json` (splash caps, `CanDamage` gate, Nether multipliers / soft cap, imbue combat configs in `NewImbueConfig.cs`, etc.).
3. **Maintenance sweeps** — `rg -i "todo|fixme|hack" --glob "*.cs"` (filter false positives like `Convert.ToDouble`). Before a release, run `/mod-audit` on a mod or a fresh targeted `rg` pass; cleared audit sections below are historical only.
4. **Loremaster — Barkeeper parchments** — ~~Weighted pools, fetch stacks, messaging~~ **shipped**; tune `Settings.json` / templates on your shard. Spec in [§ Loremaster](#loremaster).
5. **Swarmed (deprioritized)** — *CreatureEx per-landblock* is **not on the near-term roadmap**; theoretically possible via post-placement / `EnterWorld` / landblock hooks, but unlikely to receive attention. Landblock-aware **reinforcement** scaling is already implemented (see [§ Swarmed](#swarmed)).
6. **EmpyreanAlteration — active priority** — Gear or mutators for high-tier effects (e.g. level 9/10 spells). **Design lock:** gate **only** on AureatePath **`ItemWieldRequirementEnlightenments`** (wield / item fake int count)—no additional gates unless policy changes.
7. **Greenfield concepts** — Uncommitted mod ideas in [§ Greenfield concepts](#greenfield-concepts); start one when you pull it into scope. See **Idea backlog (user list, 2026-04)** there for the latest captured list and **Idea routing** for default mod homes.

---

## Greenfield concepts (uncommitted mod ideas)

Ideas only—not active tasks until you schedule them (often harder than tuning existing mods; order here is not strict).

- **Combos** — Track kill streaks.
- **Follow through Portals** — Creature behavior: pursue players through portals.
- **Shared Flags** — Quest flags shared across all characters on one account.
- **Chat Filter** — ML.NET toxicity classification; shadow-ban or filter toxic chat.
- **Extra storage (house chests)** — Up to **10** extra backpack-equivalent house storage slots purchased with a mix of **MMDs** and **writs** (extends “additional house storage chest container slots”).

### Idea backlog (user list, 2026-04)

- **Dungeons recallable** — Allow recall from all dungeon landblocks (or configurable list) where vanilla blocks it.
- **Loremaster Zahir — quest item economy** — Turn in stray quest items for **XP and/or random pyreal rewards**; if an **NPC gave** you an item, allow **handing it back** for **bonus XP** when it is **equipment**, a **housing item**, or **specifically treated healing kits**.
- **CommonGoals (new mod)** — **Personal loot per killer/player**; **no split XP** when other players help kill (full credit rules TBD).
- **Burden-% backpacks** — Worn bags that reduce total burden by a configurable **percentage** (balance + stacking rules).
- **QOL stacking** — Refactor stacking rules to **categories or explicit WCIDs**; current name-based matching breaks **quest objects** and identically named items (bracelets, armor, weapons, etc.).
- **Custom content WCID base** — Use **101189990** as the starting range for custom weenies/WCIDs shard-wide (document in content pipelines; PLAN is the index of record).
- **Cantrip perks** — Cantrips grant **skill perks** (gameplay hooks), not only raw skill increases.
- **Salvage spell gems** — On **salvage success**, roll **random spell gems** into output (candidate: Gemcrafter).
- **Windsong-style AOE** — AoE spell behavior tied to **martial weapon** plus **War** and/or **Void** magics.
- **Mana Conversion / Life variants** — **Untrained Mana Conversion** behaves like **War/Void echo or doublecast**; **Life Hecatomb** echoes **×3** with **no HP drain** (major balance pass).
- **+50 permanent skill bonus** — Certain **creatures or items** grant **+50 permanent** skill (needs persistence and stack rules).
- **Life + melee AOE** — Life magic with melee could add **AoE drain**; **Raven’s Fury** interaction when specialized.
- **Bank salvage** — Credit based on **salvage units recovered**: every **100** points → **one** bag at **workmanship 10** (lower workmanship not granted as items but still **counts toward total** salvage credit).
- **Specialized Salvage → auto-salvage** — Auto-salvage chain when spec salvage (and settings) allow it.
- **Chaos mode** — **3–5× quest bonus (QB)**; **Swarmed**-style spawns **much more often**; optional escalation to **larger mobs** over time or per event.
- **Species kill XP** — Increase mob kill **XP** based on **how many of that species** the player has killed (lifetime or sliding window; design TBD).

### Idea routing (advisory)

Default mod homes for discussion; **first implementation pass may move an item** after an ACE spike or shard policy check.

| Idea | Default home | Notes |
|------|----------------|-------|
| Dungeons recallable | **New mod or QOL** | Landblock / `@recall` rules; not covered by current QOL recall *animation* tuning ([QOL/Animations.cs](QOL/Animations.cs)). |
| Zahir turn-in / return-for-XP | **Loremaster** | Fits barkeeper/contract-style hooks; needs custom NPC weenie + interaction design ([Loremaster/](Loremaster/)). |
| Personal loot + solo XP | **New mod: CommonGoals** | Loot generation + XP split; isolate from AutoLoot/Swarm where possible. |
| House chest +10 slots, MMD/writ | **Lockboxes / BetterChestLoot / new HouseStorage** | Same theme as **Extra storage (house chests)** above; pick one implementation home when scoped. |
| Burden-% backpacks | **EmpyreanAlteration** or **Numbersmith** | Item fake properties / augments vs skill tables. |
| QOL stacking by category/WCID | **QOL** | Regression list: quest items, same-name gear stacks. |
| WCID 101189990 | **Docs (PLAN + content)** | Optional later: `.cursor/skills/ace-mod/SKILL.md` / mod Readmes. |
| Cantrip perks | **BetterSupportSkills** or **CustomSpells** | Spell-driven vs proficiency/skill hooks. |
| Salvage → spell gems | **Gemcrafter** | Salvage mutation / success postfix hooks ([Gemcrafter/](Gemcrafter/)). |
| Windsong AOE (martial + War/Void) | **CustomSpells** (+ optional **ChallengeModes** gate) | New spell or proc; balance pass. |
| Mana Conversion / Hecatomb variants | **New mod TBD** or **ChallengeModes** | Large balance surface; may collide with `/cm` XP rules. |
| +50 perma skill from creature/item | **EmpyreanAlteration** / **AureatePath** | Persistence (character vs account) required before mod choice. |
| Life + melee AOE / Raven's Fury | **CustomSpells** / **Overtinked** | Spell + combat cross-cutting. |
| Bank salvage → work 10 bags | **LeyLineLedger** or **new mod** | Bank properties + salvage accounting ([LeyLineLedger/](LeyLineLedger/)). |
| Spec salvage = auto-salvage | **QOL** or **Gemcrafter** | Generic server autosalvage vs gem-centric pipeline. |
| Chaos mode (QB + Swarmed escalation) | **ChallengeModes** + **Swarmed** or **new ChaosMode** | Cross-mod settings if split. |
| XP per species killed | **ChallengeModes** or **Numbersmith** | Per-player species counters. |

---

## Merged mod notes (former `TODO.md` content)

### AethericWeaver

- **Spell customization failures at startup** — `ace_server.log` can show many lines like `Failed to customized SpearMasterySelf8 -> 70099` from [AethericWeaver/PatchClass.cs](AethericWeaver/PatchClass.cs) `CustomizeSpells`: the `catch` logs only template/id and **discards the exception**, so the real failure is unknown.
- **Follow-up: logging** — Log `ex` in that catch (at minimum `ex.Message`; preferably full `ToString()` or stack at `ModManager.LogLevel.Warn`) so the next launch shows whether the failure is e.g. `NullReferenceException` on `_spellBase.Clone()`, `Apply` validation, or dictionary assignment.
- **Follow-up: investigation** — After the exception is visible: confirm each **template** spell exists in both **world DB spell cache** and **portal.dat `SpellTable`** (dat/DB mismatch can leave `GetCachedSpell` succeeding while `new Spell(template)._spellBase` is null); review [AethericWeaver/Spells.xlsx](AethericWeaver/Spells.xlsx) and `Settings.CustomSpells` for bad enum/formula cells.

### QOL

- **Recall / animation** — `AnimationSettings` in [QOL/Animations.cs](QOL/Animations.cs): `AnimationSpeeds` includes recalls, loot (`Pickup` / `StoreInBackpack` / `Pickup5`–`20`), combat (`NonCombat`, `HandCombat`, `BowCombat`, `CrossbowCombat`), first aid (`SkillHealSelf` / `SkillHealOther`), `Reload`, plus `DieSeconds` for `/die`. Optional `// …` keys in [QOL/Settings.cs](QOL/Settings.cs) document toggles and nested settings (see Readme).
- **Fellowship stop-at-max** — Implemented; [QOL/Fellowships.cs](QOL/Fellowships.cs) (`FellowshipSettings`).

### Loremaster

**Barkeeper parchments (v2)**

- **One** active contract per character; `CooldownSeconds` default **0** (off). Explore/Fetch turn-in: **Town Crier** WCIDs in settings; bartender vendors inject **five** rows via `BartenderContractBoards`.
- **Gem** starters: `Gem.UseGem` — set `ParchmentActivation` to `Gem` (default). **Book** starters: `Book.ActOnUse` — set `ParchmentActivation` to `Book`; item is consumed (no read UI). Optional `TemplateMatchInscription` disambiguates same WCID + different `PropertyString.Inscription`.
- **Explore landblock:** `ExploreLandblockRaw` single destination, **or** legacy `ExploreLandblockRawPool` (uniform random `uint`), **or** **`ExploreLandblockWeightedPool`** — entries with `LandblockRaw`, `Weight`, `Rare`. Non-rare weights are clamped to **25–100** at validation; at most **one** `Rare` entry per pool. Weighted pick via `ParchmentWeightedPick`.
- **Kill target:** `TargetCreatureWcid` fixed, **or** legacy `KillTargetCreatureWcidPool` (uniform), **or** **`KillTargetWeightedPool`** — `CreatureWcid`, `Weight`, `Rare`. Same rare/weight rules. If the rolled target is **rare** and template `KillCount > 1`, **effective kill count is 1** for that contract (`RuntimeKillTargetRare` on player).
- **Fetch:** `FetchItemWcid` (legacy, count 1) **or** **`FetchItemWeightedPool`** — `Wcid`, `Weight`, `Rare`, `StackMin` / `StackMax` (rolled at start). Runtime `RuntimeFetchItemWcid` + `RuntimeFetchItemCount` on player; Town Crier consumes that stack.
- **Objective text:** Short player-facing lines: creature/item **names** where possible (weenie lookup), clear **where** and **what**; avoid raw WCID-only lines except as fallback.
- Tier XP + `GrantRepeatSolveLoot` keys: `LMParchmentTierEasy` / `Average` / `Challenging` in `RepeatSolveLoot.json`.
- Do not reuse **LeyLineLedger** luminance gem WCIDs for parchment **gems**.

### Swarmed

**Current behavior**

- **Call for help:** Separate toggles and roll chances for **landscape** (`LandscapeEnabled`, `LandscapeChance`, spawn min/max) and **dungeon** (`DungeonEnabled`, `DungeonChance`, spawn min/max). Defaults in `Settings.cs`; sample `Settings.json` may override.
- **Reinforcement stats:** New spawns roll HP between `ReinforcementHealthMin`–`ReinforcementHealthMax` × caller max HP; visual scale between `ReinforcementScaleMin`–`ReinforcementScaleMax` × caller scale.
- **XP tuning:** `ReinforcementXpBonusMin` / `ReinforcementXpBonusMax` bias reinforcement kill XP.
- **CreatureEx champions:** `CreatureFeatures` lists which `CreatureExType` variants can replace normal spawns. `/cex` spawns a specific type for testing; optional `AllowPartialCreatureExTypeMatch` allows unique substring match on the enum name.
- **Messaging:** `CallForHelpMessages` — random `{0}` template when reinforcements trigger.
- **Admin debug:** `/swarmed debug` — last call-for-help evaluation and session counters.

**Scaling (implemented)**

- **Online density:** Optional scaling of `CreatureChance` and reinforcement roll chances by shard-wide online player count (`CreatureChanceScalesWithOnlinePlayers` / `ReinforcementChanceScalesWithOnlinePlayers` + bonus/cap in `Settings`).
- **Reinforcement per-landblock:** `ReinforcementChanceScalesWithLandblockPlayers` / `ReinforcementChanceBonusPerLandblockPlayer` — uses players on the dying creature’s landblock; takes precedence over shard-online reinforcement scaling when enabled and `CurrentLandblock` is present. Same cap as `ReinforcementChanceMaximumAfterScaling`.

**Low priority / unlikely**

- **CreatureEx roll tied to spawn landblock density** (factory has no landblock at `CreateWorldObject`). Possible in theory with a later ACE hook; not prioritized vs. reinforcement landblock scaling above.

### LeyLineLedger

- **Bank transfer** — Done. `/bank transfer pyreals` supports online targets (`PlayerManager`) and offline targets (shard `Character` + `BiotaPropertiesInt64` for `Settings.CashProperty`). Sender debited only after offline DB update succeeds.
- **AutoLoot integration** — Satisfied in-repo: default `CashProperty` (39999) matches AutoLoot `BankCashProperty`; documented in `Settings.cs`. If you change one, change the other.
- **Death bank penalty** — Done. `DeathBankPyrealPercent` (0 = off) and optional `DeathBankPyrealMaxLossPerDeath` in `Settings.json`.
- **Luminance withdrawal gems** — Done. `/bank withdraw luminance` / `/b w l`; see `LeyLineLedger/Readme.md` (Luminance gems) and `Settings.LuminanceGemWeenieClassId` / `LuminanceGemStoredAmountProperty`.

### AureatePath

- No open feature backlog. Enlightenment luminance checks: `RequireAllLuminanceAuras`, `BaseLumAugmentationsRequired`, `RequireMinimumPerLumAugContributor`, `ShowLumAugVerificationCounts` in `Settings.json` / `Settings.cs`.

### Overtinked

**Done (reference)**

- **Cleaving / Nether combat** — `NewImbueConfig.cs` (`CleavingImbueCombatConfig`, `NetherRendingImbueCombatConfig`) and `CleavingNetherImbueCombat.cs`; `Settings.json` mirrors tunables.
- **Quest-item perk chat** — `Container.TryAddToInventory` postfix for nested-pack / corpse loot.

- No open backlog beyond `Settings.json` tuning (see suggested order item 2).

### EmpyreanAlteration

- **Active priority / design** — See suggested order item 6 (AureatePath `ItemWieldRequirementEnlightenments` gate only).
- **Settings.json — expand shipped config (backlog)** — Today the repo ships a **minimal** two-band `Settings.json` (Enabled, Verbose, ItemLevelUpGrowthEnabled, GrowthAugments, GrowthFixedLevelAugments); the rest of tuning stays on C# defaults until keys are added. **Future:** optionally grow the file to document **Mutators**, **Odds**, **TargetGroups**, **WeenieTypeGroups**, spell/proc tables, loot-growth knobs, etc., in the same QOL-style `//` doc band + values band—expect a **large** diff and careful ordering across `Settings.cs` / `Settings.Mutators.cs` partials so serialization stays predictable.

---

## Code review audit backlog — cleared (2026-03-22)

The detailed per-mod audit tables that used to follow (AethericWeaver through Swarmed) tracked **null-safety, Harmony lifecycle, settings reload, divide-by-zero, and formula edge cases**. Those findings have been worked through in the codebase (including Numbersmith `func` null guards and session-safe XP sends, AureatePath OnWorldOpen timeout / luminance requirement overflow / enlightenment activation `Session` checks, Loremaster `OverrideCheckUseRequirements` + settings reload vs `SettingsContainer`, ChallengeModes XP table and Ironman/alt-leveling guards, AutoLoot `GenerateTreasure` unpatch on `Stop`, LeyLineLedger unpatch-before-patch with logged failures, Gemcrafter `TryMutate` hooks applied from `PatchClass`, Overtinked `Stop` logging and stable Harmony category names, etc.).

For a **new** snapshot before a release, run `/mod-audit` on a specific mod or a fresh `rg` pass; do not rely on old line numbers from the removed tables.

---

## Code review findings — AethericWeaver, AureatePath, ChallengeModes — cleared (2026-03-22)

The prior snapshot for those three mods (chain projectile null `Spell`; `SpellCustomization(Spell)` validation; `Settings.cs` note for omitted JSON keys; AureatePath `Stop` unpatch for `WieldRequirements` / `PassupSuppress`, enlightenment object use with non-player or null `Session` defers to vanilla, `nameof(Player.CheckWieldRequirements)`, `ApplyBonuses` cleanup; ChallengeModes SSF give message placement, hardcore `Session?.LogOffPlayer`, `/cm refund` vital filter aligned with `/cm levels`, one-time log when `Proficiency.OnSuccessUse` is unresolved, `/cm off hardcoressf` requires an active mode, SSF POI cache cleared on mod `Stop`) is addressed in code.

For a **new** snapshot before a release, run `/mod-audit` on a specific mod or a fresh `rg` pass.

---

## Code review findings — ChallengeModes — cleared (2026-03-22 follow-up)

Prior audit items addressed: `/cm off aptitude` guards null `Session`; prefs reload uses file `LastWriteTimeUtc` (replacing one-shot `LoadedPlayers`) with retry on failure and stamp update on save; Harmony targets use `nameof(Proficiency.OnSuccessUse)` / `nameof(Player.DoCastSpell_Inner)`; unused settings and orphaned XP-rate keys removed from `Settings` / `Settings.json`; `LevelCost` polynomial sums avoid unsafe `(int)` spans via long loop fallback.

---

## Inline `*.cs` markers (case-insensitive sweep)

Pass: `rg -i "todo|fixme|hack" --glob "*.cs"` with manual filtering (exclude substrings like `Convert.ToDouble`).

Previous stray markers were cleaned up or reworded to `NOTE` / descriptive comments. Re-run the search when refreshing this section.
