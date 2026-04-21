# Overall TODO inventory (ace-raaj-mods)

Single index of tracked work. **Mod notes below were merged from former per-mod `TODO.md` files; greenfield ideas were merged from former `MOD_IDEAS.md`.** Implementation detail also lives in code / Readmes. There is no separate `TODO.md` or `MOD_IDEAS.md` in the repo anymore.

## Progress (recent)

- **Done (no longer in queue below):** LeyLineLedger / AutoLoot `CashProperty` ↔ `BankCashProperty` (39999) verified; QOL `AnimationSpeeds` + `Settings.json` `//` docs + Readme updates (2026-04-04).
- **Done:** Loremaster barkeeper parchments — weighted explore/kill/fetch pools (rare + 25–100 weight rules, effective kill count for rare targets), stack-based fetch turn-in, concise objective copy with weenie names (2026-04-04).
- **Done (2026-04):** QOL **Town Network toll** — `EnableTownNetworkToll`, bank `PropertyInt64` debit, level bands, Loremaster QP discount (`FakeFloat.QuestBonus`), portal matching, optional marketplace recall parity; see `QOL/TownNetworkToll.cs`, `Settings.TownNetworkToll`.
- **Done (2026-04):** Healing-kit **Recuperation** HoT (self-target + kit-type vital ticks) **removed from QOL**; it lives only in **BetterSupportSkills** (`EnableHealing`, `Recuperation` in `Settings.json`, `Skills/RecuperationHoT.cs`). QOL no longer registers a Healer hook for this.
- **Ongoing:** AureatePath / Overtinked = operator JSON tuning; maintenance = periodic `rg` / `/mod-audit`. **Xenology** — tune `Settings.json` for hunt intervals, popularity multipliers, and damage caps ([Xenology/Readme.md](Xenology/Readme.md)).
- **Backlog:** User idea list (**Idea backlog**, 2026-04) + **Idea routing** table captured under [§ Greenfield concepts](#greenfield-concepts) (2026-04-21).
- **Done (2026-04-21):** **Enlightenment pool + challenge quit + high-enlight QB (AureatePath / Loremaster / ChallengeModes)** — Shared **FakeFloat 11012** cumulative bonus: **+level÷10000** on each **AureatePath** enlightenment (`PreRemoveAbility` captures level; `PreAddPerks` adds to pool) and on **`/cm quit`** (ChallengeModes `CmQuit` / `Confirmation_CmQuit` / `DisableAllChallengeModesForQuit`). **Loremaster** uses **(1 + pool)** for the enlight term when `UseEnlightenmentPoolForXpMultiplier` is true (`GetEnlightenmentMultiplierFactor`). **AureatePath** `VerifyEnlightenmentEligibility` adds **total QB** (`FakeFloat.QuestBonus`) requirement for the **51st+** enlightenment by default: **5000 + 100 × (completed enlightenments − 49)** when completed count ≥ **50** (`EnableHighEnlightenmentQuestBonusRequirement`, `HighEnlightenmentQuestBonusBase`, `HighEnlightenmentQuestBonusPerStep`, `HighEnlightenmentQuestBonusFromCompletedCount`). Defaults also tuned: **LevelReqPerEnlightenment** 5, society/lum gate indices 25 / 10 (see each mod `Settings.json`).

## Suggested order (simplest → most complex)

Burn down from the top; later items need more design or ACE integration.

1. **AureatePath — tuning + shipped mechanics** — Core flow includes **enlightenment pool** (11012), **high-enlight QB gate**, eligibility in `VerifyEnlightenmentEligibility`, and existing luminance/society gates. Prefer **`Settings.json`** for gates, level curve, removes, QB formula, and pool-adjacent behavior; see [§ AureatePath](#aureatepath) and [§ Loremaster](#loremaster) / [§ ChallengeModes](#challengemodes) for cross-mod **11012** alignment.
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
| XP per species killed | **Xenology** (shipped) / **ChallengeModes** or **Numbersmith** | **Xenology** tracks global + per-player species kills, xXP, hunt rotations, and damage/trophy hooks ([Xenology/](Xenology/)). |

---

## Merged mod notes (former `TODO.md` content)

### QOL

- **Recall / animation** — `AnimationSettings` in [QOL/Animations.cs](QOL/Animations.cs): shipped `AnimationSpeeds` defaults align with [QOL/Settings.json](QOL/Settings.json) — recalls, loot pickups (`Pickup` / `StoreInBackpack` / `Pickup5`–`20`), first aid (`SkillHealSelf` / `SkillHealOther`); plus `DieSeconds` for `/die`. Add more `MotionCommand` keys in JSON if you need combat/reload overrides. Optional `// …` keys in [QOL/Settings.cs](QOL/Settings.cs) document toggles and nested settings (see Readme).
- **Town Network toll** — When `EnableTownNetworkToll` is true, TN-matched portals and optionally `/market` recall debit banked pyreals per `TownNetworkToll` ([QOL/TownNetworkToll.cs](QOL/TownNetworkToll.cs)).
- **Fellowship stop-at-max** — Implemented; [QOL/Fellowships.cs](QOL/Fellowships.cs) (`FellowshipSettings`).

### BetterSupportSkills

- **Healing (Recuperation)** — Healing-kit HoT and Healer `HandleActionUseOnTarget` hook live here only (`EnableHealing`, `Recuperation` settings, [BetterSupportSkills/Skills/RecuperationHoT.cs](BetterSupportSkills/Skills/RecuperationHoT.cs)); not in QOL.

### Loremaster

**Enlightenment pool (FakeFloat 11012) — Loremaster ↔ AureatePath ↔ ChallengeModes**

- **Property:** `LMFloat.EnlightenmentPoolBonus` = **11012** (same numeric ID as AureatePath `SharedXpPoolIds` and ChallengeModes `CmFloat`; do not fork the ID per shard without updating all three).
- **XP / luminance:** When `UseEnlightenmentPoolForXpMultiplier` is **true** (default), the enlight factor is **(1 + pool)** via `GetEnlightenmentMultiplierFactor` / `GetTotalXpMultiplier`; when **false**, the legacy linear term uses `EnlightenmentBonusPercentPer × enlightenment` count.
- **QB for enlight:** High-enlight **quest bonus floor** is enforced in **AureatePath** `VerifyEnlightenmentEligibility` against **`FakeFloat.QuestBonus`** (Loremaster maintains this total for QP scaling).

**Barkeeper parchments (v2)**

- **One** active contract per character; `CooldownSeconds` default **0** (off). Explore/Fetch turn-in: **Town Crier** WCIDs in settings; bartender vendors inject **five** rows via `BartenderContractBoards`.
- **Gem** starters: `Gem.UseGem` — set `ParchmentActivation` to `Gem` (default). **Book** starters: `Book.ActOnUse` — set `ParchmentActivation` to `Book`; item is consumed (no read UI). Optional `TemplateMatchInscription` disambiguates same WCID + different `PropertyString.Inscription`.
- **Explore landblock:** `ExploreLandblockRaw` single destination, **or** legacy `ExploreLandblockRawPool` (uniform random `uint`), **or** **`ExploreLandblockWeightedPool`** — entries with `LandblockRaw`, `Weight`, `Rare`. Non-rare weights are clamped to **25–100** at validation; at most **one** `Rare` entry per pool. Weighted pick via `ParchmentWeightedPick`.
- **Kill target:** `TargetCreatureWcid` fixed, **or** legacy `KillTargetCreatureWcidPool` (uniform), **or** **`KillTargetWeightedPool`** — `CreatureWcid`, `Weight`, `Rare`. Same rare/weight rules. If the rolled target is **rare** and template `KillCount > 1`, **effective kill count is 1** for that contract (`RuntimeKillTargetRare` on player).
- **Fetch:** `FetchItemWcid` (legacy, count 1) **or** **`FetchItemWeightedPool`** — `Wcid`, `Weight`, `Rare`, `StackMin` / `StackMax` (rolled at start). Runtime `RuntimeFetchItemWcid` + `RuntimeFetchItemCount` on player; Town Crier consumes that stack.
- **Objective text:** Short player-facing lines: creature/item **names** where possible (weenie lookup), clear **where** and **what**; avoid raw WCID-only lines except as fallback.
- Tier XP + `GrantRepeatSolveLoot` (keys `LMParchmentTierEasy` / `Average` / `Challenging` — loot uses `Mods/Loremaster/LootConfig.json`, same default as BetterChestLoot).
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

- **Enlightenment pool (11012):** `PreRemoveAbility` records **character level**; `PreAddPerks` adds **level ÷ 10000** to **`SharedXpPoolIds.EnlightenmentPoolBonus`** before incrementing enlightenment (Loremaster reads the same property for the XP multiplier when enabled).
- **High-enlight QB:** When `EnableHighEnlightenmentQuestBonusRequirement` and completed enlightenments ≥ `HighEnlightenmentQuestBonusFromCompletedCount` (default **50**), require **`FakeFloat.QuestBonus`** ≥ `HighEnlightenmentQuestBonusBase + HighEnlightenmentQuestBonusPerStep × (completed − (FromCompletedCount − 1))` — e.g. **5100** QB for the **51st** enlightenment, **5200** for the **52nd** with defaults **5000** / **100**.
- **Tuning:** Level curve (`LevelReq`, `LevelReqPerEnlightenment` default **5**), society/lum first-gate indices (**25** / **10**), removes, pass-up suppress, luminance aug sums: `RequireAllLuminanceAuras`, `BaseLumAugmentationsRequired`, `RequireMinimumPerLumAugContributor`, `ShowLumAugVerificationCounts` in `Settings.json` / `Settings.cs`.

### ChallengeModes

- **`/cm quit`:** Exits **all** active challenge tracks with optional **Yes/No** (`CmQuitRequiresConfirmation`); applies **same pool bump** as enlightenment (**+level÷10000** on `CmFloat.EnlightenmentPoolBonus` = **11012**), configurable **`CmQuitRemove*`** strips (delegate to `Enlightenment.Remove*` where applicable), optional **unequip-to-pack**, then **`DisableAllChallengeModesForQuit`** (SSF/HC flags, declined prefs, alternate leveling + aptitude prefs) and **`CmCommands.RefreshChallengeRadar`**. See `CmQuit.cs`, `ConfirmationCmQuit.cs`, `Settings` / `Settings.json`.
- **Radar:** `RefreshChallengeRadar` is **internal** for use from `CmQuit`.
- **Milestone XP/lum (`ChallengeMilestoneRewardsEnabled`):** Segment-based bonus via `ChallengeBonusPercentPerLevel` × levels toward `ChallengeBonusSegmentCapLevel`; **`ChallengeRunMaxLevel` (furthest in current segment) never decreases on death** — only segment completion at the cap resets it. Skill credits at `ChallengeMilestoneLevels` are per challenge track (SSF / hardcore / alternate / aptitude), once each per milestone. Detail + manual tests: `ChallengeModes/Readme.md`.
- **Titles:** `ChallengeModeDefaultTitles` is **wishlist only** (ACE `CharacterTitle` is dat-driven); not applied on `/cm`. See `Features/ChallengeModeTitles.cs`.

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

The detailed per-mod audit tables that used to follow (multiple mods through Swarmed) tracked **null-safety, Harmony lifecycle, settings reload, divide-by-zero, and formula edge cases**. Those findings have been worked through in the codebase (including Numbersmith `func` null guards and session-safe XP sends, AureatePath OnWorldOpen timeout / luminance requirement overflow / enlightenment activation `Session` checks, Loremaster `OverrideCheckUseRequirements` + settings reload vs `SettingsContainer`, ChallengeModes XP table and Ironman/alt-leveling guards, AutoLoot `GenerateTreasure` unpatch on `Stop`, LeyLineLedger unpatch-before-patch with logged failures, Gemcrafter `TryMutate` hooks applied from `PatchClass`, Overtinked `Stop` logging and stable Harmony category names, etc.).

For a **new** snapshot before a release, run `/mod-audit` on a specific mod or a fresh `rg` pass; do not rely on old line numbers from the removed tables.

---

## Code review findings — AureatePath, ChallengeModes — cleared (2026-03-22)

The prior snapshot for those mods (AureatePath `Stop` unpatch for `WieldRequirements` / `PassupSuppress`, enlightenment object use with non-player or null `Session` defers to vanilla, `nameof(Player.CheckWieldRequirements)`, `ApplyBonuses` cleanup; ChallengeModes SSF give message placement, hardcore `Session?.LogOffPlayer`, `/cm refund` vital filter aligned with `/cm levels`, one-time log when `Proficiency.OnSuccessUse` is unresolved, `/cm off hardcoressf` requires an active mode, SSF POI cache cleared on mod `Stop`) is addressed in code.

For a **new** snapshot before a release, run `/mod-audit` on a specific mod or a fresh `rg` pass.

---

## Code review findings — ChallengeModes — cleared (2026-03-22 follow-up)

Prior audit items addressed: `/cm off aptitude` guards null `Session`; prefs reload uses file `LastWriteTimeUtc` (replacing one-shot `LoadedPlayers`) with retry on failure and stamp update on save; Harmony targets use `nameof(Proficiency.OnSuccessUse)` / `nameof(Player.DoCastSpell_Inner)`; unused settings and orphaned XP-rate keys removed from `Settings` / `Settings.json`; `LevelCost` polynomial sums avoid unsafe `(int)` spans via long loop fallback.

---

## Inline `*.cs` markers (case-insensitive sweep)

Pass: `rg -i "todo|fixme|hack" --glob "*.cs"` with manual filtering (exclude substrings like `Convert.ToDouble`).

Previous stray markers were cleaned up or reworded to `NOTE` / descriptive comments. Re-run the search when refreshing this section.
