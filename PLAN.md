# Overall TODO inventory (ace-raaj-mods)

Single index of **active** work and backlog. **Finished milestones belong in [COMPLETED.md](COMPLETED.md)** (append by date, then shorten this file). Mod notes below were merged from former per-mod `TODO.md`; greenfield from `MOD_IDEAS.md`. There is no separate `TODO.md` or `MOD_IDEAS.md`.

## ACTIVE ISSUE: Defense Imbue Client Hourglass (2026-05-03)

After defense imbue on **armor**, client shows **persistent hourglass** on appraise (E). Appraisal can still show data; **not** server hang. **Overtinked disabled still reproduces** — not mod-only.

**Detail + matrix + open leads:** Obsidian **[[Defense Imbue Appraisal Hourglass]]**. Rollback SQL in repo: `WindblownContent/Content/zzz_Salvage_Defense_Bonus_Rollback.sql`. Description update SQL (reverted in DB): `WindblownContent/Content/zzz_Salvage_Defense_Bonus_Update.sql`.

## Progress (recent)

Keep this section **short**. When something ships, **append [COMPLETED.md](COMPLETED.md)** (dated subsection) and **remove** the matching bullet here so PLAN stays scannable.

- **Ongoing:** AureatePath / Overtinked JSON tuning; periodic `/mod-audit`. **WorldEvents Hunt** — intervals, popularity multipliers, damage caps.
- **Backlog:** Idea routing lives under [Greenfield Backlog](#greenfield-backlog-prioritized).
- **Done (2026-05-03):** AutoLoot — close-time material-only auto-salvage. Immediate sweep on container/corpse close (excluding house storage); only items with `MaterialType` (or raw salvage bag WCID 20981–21089) are removed and banked via BSS. Non-material items stay in the container — no clutter destruction. Removed deferred-timer infrastructure (`_salvageTimers`, `SalvageTimerState`, `Schedule/RunDeferredSalvageSweep`, `CancelSalvageTimer`) and `SalvageSweepDelaySeconds` setting. → **COMPLETED.md § 2026-05-03**.
- **Done (2026-05-02):** WorldEvents persistence — Cull/Sale/Invasion JSON under Mods/WorldEvents/Data/... (legacy paths migrated once). BLC-only repo; removed BetterChestLoot / SharedLoot folders. → **COMPLETED.md § 2026-05-02**.
- **Done (2026-05-02):** QOL VendorLootRotation — effective approach interval uses **`min(VendorLootRotationMinutes, VendorLootCooldownMinutes)`** (each floored at 1); per-vendor cooldown advances only after a **successful** rotation; `_originalValues` cleanup per removed guid (no global clear). Docs: `AGENTS.md`, `README.md`, `QOL/Readme.md`, wiki **[[ace-raaj-mods Conventions]]**, `COMPLETED.md`.
- **Done (2026-05-01):** Radi TN vendor, Pathwarden vendor SQL, BLC Coalesced Mana, point-based mana leveling, DisableAttunedGlobally, trophy stacking + pet fixes, LLL denominated banking + fuzzy withdraw, QOL VendorLootRotation hard-disable, CreatureEx loot rewrite, AGENTS consolidation — → **COMPLETED.md § 2026-05-01**.
- **Done (2026-04-21–04-30):** Enlightenment pool + QB gate, release CI, unified scheduler, Swarmed expansion, QOL toll v2 + portal bypass + VendorPriceInflation fix + NpcStackTurnIn, LLL scan intervals, BSS Arcane/Missile rework, CommonGoals no-split, April multi-mod batch — → **COMPLETED.md** (search ## 2026-04).

### Live deployment (2026-04-29 snapshot)

Windblown **9002**, test **9000**; full mod zip deploy + Academy/quest/trophy SQL — one-liner audit trail in **COMPLETED.md** § Live Deployment.

**2026-05-03 addendum:** Full mod DLL/`Settings.json` copy to `C:\ACE-WB\Mods\` is not enough for **Overtinked custom imbue salvage weenies** — apply the same `Overtinked/Content/SQL/*.sql` to **`wb_ace_world`** as on `ace_world`, then restart (weenie cache). Details in **COMPLETED.md** § 2026-05-03 “Windblown live”.

## Suggested order (simplest → most complex)

Burn down from the top; later items need more design or ACE integration.

1. **Active bugs** — See [§ Active Bug Tracker](#active-bug-tracker). Fix verified issues before adding features.
2. **Immediate reworks** — See [§ Immediate Reworks](#immediate-reworks). Small scope, high impact.
3. **AureatePath — tuning + shipped mechanics** — Core flow includes **enlightenment pool** (11012), **high-enlight QB gate**, eligibility in `VerifyEnlightenmentEligibility`, and existing luminance/society gates. Prefer **`Settings.json`** for gates, level curve, removes, QB formula, and pool-adjacent behavior; see [§ AureatePath](#aureatepath) and [§ Loremaster](#loremaster) / [§ ChallengeModes](#challengemodes) for cross-mod **11012** alignment.
4. **Overtinked — JSON + per-world SQL** — Tune `Settings.json` (splash caps, `CanDamage` gate, Nether multipliers / soft cap, imbue combat configs in `NewImbueConfig.cs`, etc.). **Custom imbue salvage bags** (yellow garnet / tiger eye / onyx) also require `Overtinked/Content/SQL/*.sql` on **each** `ace_world` / `wb_ace_world` so `ItemUseable` / `TargetType` / long desc match tinkering salvage; DLL deploy alone is not enough (see `COMPLETED.md` § 2026-05-03 Windblown live).
5. **Maintenance sweeps** — `rg -i "todo|fixme|hack" --glob "*.cs"` (filter false positives like `Convert.ToDouble`). Before a release, run `/mod-audit` on a mod or a fresh targeted `rg` pass; cleared audit sections below are historical only.
6. **Loremaster — Barkeeper parchments** — ~~Weighted pools, fetch stacks, messaging~~ **shipped**; tune `Settings.json` / templates on your shard. Spec in [§ Loremaster](#loremaster).
7. **Swarmed (deprioritized)** — *CreatureEx per-landblock* is **not on the near-term roadmap**; theoretically possible via post-placement / `EnterWorld` / landblock hooks, but unlikely to receive attention. Landblock-aware **reinforcement** scaling is already implemented (see [§ Swarmed](#swarmed)).
8. **EmpyreanAlteration — active priority** — Gear or mutators for high-tier effects (e.g. level 9/10 spells). **Design lock:** gate **only** on AureatePath **`ItemWieldRequirementEnlightenments`** (wield / item fake int count)—no additional gates unless policy changes.
9. **Greenfield concepts** — Uncommitted mod ideas in [§ Greenfield Backlog](#greenfield-backlog); start one when you pull it into scope.

---

## Active Bug Tracker

*All currently tracked bugs are fixed. Historical bug-fix tables moved to **[COMPLETED.md](COMPLETED.md)** (2026-04-26–04-28 and dated sections). Recent classes of fixes: vendor rotation / vendor stock, mob scaling HP, AutoBuff spell IDs, SpellSiphon TargetType, AutoSalvage consolidation, SummoningClasses concurrency.*

*If new bugs surface, add them here immediately with priority, root cause, and status. Repeat bugs automatically escalate to HIGH.*

---

## Active Work

*No active work in progress. Next items: **Immediate Reworks** and **Greenfield Backlog** below; shipped history in **COMPLETED.md**.*

---

## Shipped work (archive)

Long-form **done** write-ups that used to live here (placement QP, lottery, XP consolidation, loot tier delay, April–May 2026 tables, multi-mod batches) are **not duplicated** in this file. See **[COMPLETED.md](COMPLETED.md)** — search by ## YYYY-MM-DD or mod name. **Workflow:** when a milestone ships, append to COMPLETED.md, then remove matching bullets from **Progress (recent)** and **Immediate Reworks** here.



---

## Immediate Reworks (Next Session)

1. **~~BetterLootControl (BLC) Mod Creation~~** — **DONE (2026-05-01)**
   - **Goal:** Consolidate all loot-table logic into one mod — `BetterLootControl`.
   - **Absorb:** `SharedLoot` (models, roller, config store, salvage bag shaper) + `BetterChestLoot` (chest injection, `SelectAProfile`/`Reset`/`Close` hooks, GlobalRareDrops).
   - **Keep calling into:** `EmpyreanAlteration` for item mutation (pre-awaken, pre-imbue) via existing reflection bridge. Do NOT absorb EA.
   - **New callers:** Any mod needing bonus loot pools (Loremaster repeat-solve, Lockboxes, WorldEvents placement rewards) references `BetterLootControl` instead of `SharedLoot`.
   - **Migration completed:** Scaffolded folder, migrated SharedLoot files (preserved `namespace SharedLoot` for zero C# changes in dependents), merged BCL patches into `BetterLootControl/PatchClass.cs` + `GlobalRareDrops.cs`, updated `Loremaster.csproj`, `CommonGoals.csproj`, `WorldEvents.csproj`, disabled old mods in `Meta.json`. Built + deployed to test server; verified clean startup (BLC Active, BCL Disabled).
   - **Phase 8 (2026-05-02):** Removed `SharedLoot/` and `BetterChestLoot/` from the repository; only `BetterLootControl/` ships the loot stack.

2. **LivingEquipment → EmpyreanAlteration Full Absorption** — **DONE (2026-05-01)**
   - **Goal:** Delete `LivingEquipment/` mod entirely. All remaining functionality absorbed into `EmpyreanAlteration`.
   - **Migrated files:**
     - `LivingEquipmentProperties.cs` → `EmpyreanAlteration/LivingEquipmentProperties.cs` (named constants for FakeBool 40130, FakeInt 40131/40132, FakeString 11033/11034).
     - `ItemAwakener.cs` → `EmpyreanAlteration/Features/LivingItemAwakener.cs` (manual awakening engine + auto-awaken + profile rolling + curve math).
     - `PatchClass.cs` hooks → `EmpyreanAlteration/Features/LivingItemHooks.cs` (`AcademyAutoAwakenHook` + `LivingEquipmentUseOnTarget` for bidirectional Coalesced Mana use-on-target).
     - `LivingEquipmentXpCurve` → integrated into `QuestItemGrowthHarmony.cs` `PrefixItemTotalXPToLevel` / `PrefixItemLevelToTotalXP` (profile-based curve check before Geometric/CharacterTable fallthrough).
   - **Settings absorbed:**
     - Reused EA existing: `LootItemPreAwakenMaxLevels`, `LootItemPreAwakenXpProfiles`, `LootItemPreAwakenProfileWeights`, `LootItemPreAwakenUiEffects`.
     - Added to EA: `Lesser/Greater/AethericCoalescedManaWcid`, `ManualAwakenPrefix` ("Awakened"), `AutoAwakenTier1Wcids`, `ArcaneLoreDifficulty`.
   - **Cross-mod references cleaned:**
     - `BetterLootControl/LootRoller.cs` — removed LE fallback bridge.
     - `BetterLootControl/LootModels.cs` — updated comment.
     - `QOL/PatchClass.cs` — updated vendor priority comment.
     - `Swarmed/Features/SpecialCreatureLoot.cs` + `Swarmed/Settings.cs` — updated comments.
   - **`LivingEquipment/` folder deleted.** All affected mods build clean (EA, BLC, QOL, Swarmed).
   - **Property ownership:** EA now owns all 40130/40131/40132/11033/11034 constants.

3. **Salvage Pool Split + Guaranteed Chest Drops** *(BetterLootControl)* — **DONE (2026-05-01)**
   - Split `salvage` into `salvage` (regular), `imbueSalvage`, `foolproofImbueSalvage` pools.
   - `DefaultLootConfig.cs`: Moved imbue WCIDs to new pools. Removed foolproof from `rare`. Added 46441 Boxed Augmentation Gem to `extremelyRare`.
   - `LootRoller.cs`: `TryCreateSalvageItem` (guaranteed), `TryCreateImbueSalvageItem` (25%), `TryCreateFoolproofImbueSalvageItem` (5%). Foolproof stacking bug fixed — foolproof items never get `MaxStackSize` set.
   - `BetterLootControl/PatchClass.cs`: Guaranteed 1 regular salvage + 1-3 common+ items + 25% imbue + 5% foolproof + 25% gear.
   - `Loremaster/LootConfig.json`: Synced runtime config with all new pools and chances.
   - Built, deployed to test server, verified.

4. **BetterLootControl Gear Ratings + Equipment Sets** — **DONE (2026-05-01)**
   - **Goal:** All tiers of gear loot can spawn with ratings and equipment sets; ratings scale with awakened item leveling.
   - **BLC `Settings.cs` + `Settings.json`:** Added `EnableLootRatings`, `GearTierWeights`, `RatingChancePerTier`, `RatingValueMin/MaxPerTier`, `RatingRollCountMin/Max`, `RatingTypes`, `EnableLootEquipmentSets`, `EquipmentSetChancePerTier`, `EquipmentSetIds`.
   - **BLC `LootRoller.cs`:**
     - `RollGearTier()` — synthetic tier 1-8 roll using configurable weights (bell curve default).
     - `ApplyGearEnhancements(item)` — called after every gear item creation. Rolls ratings (chance + value based on tier) and equipment sets (chance based on tier).
     - `ApplyRating()` — uses reflection against `WorldObject` properties (e.g., `DamageRating`) with `PropertyInt` fallback.
   - **EA `QuestItemGrowthLevelEngine.cs`:**
     - Added `EnableGenericRatingLevelUp` (default true), `RatingLevelUpInterval` (5), `RatingLevelUpAmount` (1) to `Settings.QuestItemGrowth.cs`.
     - `TryScaleExistingRatings()` — runs for ALL item types after category-specific level-up effects. Increments any existing non-zero ratings by `RatingLevelUpAmount` every `RatingLevelUpInterval` levels. Ensures BLC-generated ratings on weapons, armor, and jewelry all scale consistently.
   - **Build:** Both BLC and EA compile clean (0 warnings, 0 errors).

4. **Overtinked Salvage Weenie Edits Visibility** *(Overtinked)* — **PARTIAL (2026-05-03)**
   - **Resolved for:** Hemorrhage / Cleaving / Nether **imbue salvage WCIDs** — confirmed `ItemUseable` / `TargetType` / palette must live in world SQL per shard; live `wb_ace_world` was synced from repo scripts (see `COMPLETED.md` same date).
   - **Still backlog:** Other numeric / formula tweaks driven only by Harmony may differ from what clients show if ACE reads cached weenie floats/ints; audit `RecipeManager` / tinkering paths when tuning those.

5. **~~Vendor Rend/UiEffects Loss + Unlimited Supply Bug~~** *(QOL / SpellSiphon)* — **DONE**
   - All mod-generated vendor items now inject into `UniqueItemsForSale` (actual WO transferred + auto-removed after purchase).
   - **Problem:** `Vendor.ItemProfileToWorldObjects()` recreates purchased items from the weenie template (`WorldObjectFactory.CreateNewWorldObject(wcid)`). Custom runtime properties — `UiEffects`, `ImbuedEffect`, `IconUnderlayId`, `Name`, `ItemMaxLevel`, `ItemTotalXp`, workmanship, spells — are lost. Default items are never removed from `DefaultItemsForSale`, giving infinite supply (free duplication of pre-imbued / pre-awakened gear).
   - **Fix approach (recommended):** Centralized Harmony patch in **EmpyreanAlteration** (already patches `FinalizeBuyTransaction` for mutators).
     - **Postfix on `Vendor.ItemProfileToWorldObjects`** — looks up original vendor item in `DefaultItemsForSale` by `itemProfile.ObjectGuid`. If found and original has any modded properties (`UiEffects != 0` || `ImbuedEffect != 0` || `IconUnderlayId != null` || custom Name), deep-copies all Biota properties (bool/int/int64/float/string/DID/spellbook) to the newly created WO. Stores original GUID in a temporary `PropertyInt` (e.g. `40200`) on the clone.
     - **Postfix on `Player.FinalizeBuyTransaction`** — for each `genericItems` entry, if it carries the temp property, finds the original in `vendor.DefaultItemsForSale` by GUID and removes it. This makes modded vendor items truly one-off without touching vanilla infinite-supply stock (healing kits, arrows, etc.).
   - **Alternative (simpler but requires injection changes):** Move mod-injected items to `UniqueItemsForSale` instead of `DefaultItemsForSale`. ACE already transfers actual WOs for unique items (properties preserved + auto-removed after purchase). Requires LivingEquipment and QOL injection code changes.
   - **Settings:** `EnableVendorItemPreservation` (default true), `EnableVendorOneOffModdedItems` (default true).

2. **~~BetterChestLoot → BetterLootControl Migration + Rare Global Drops~~** — **DONE**
   - Implemented in `BetterLootControl/GlobalRareDrops.cs`: configurable chance for SpellSiphon tool (850200) and Mana Lattice (850201) on creature corpses with DeathTreasure (postfix on `Creature.GenerateTreasure`).
   - Legacy `BetterChestLoot/` and `SharedLoot/` repo folders removed 2026-05-02; only `BetterLootControl` ships.

3. **~~Arcane Lore → Adaptation Rework~~** *(BetterSupportSkills)* — **DONE**
   - Spell dodge moved to `MissileDefenseBuffs.cs` (50% trained / 100% spec skill value).
   - Adaptation implemented in `ArcaneLoreBuffs.cs`: element-specific damage reduction (`skill * AdaptationReductionPerSkill`, 60s duration, cap 99%).
   - Settings: `EnableAdaptation`, `AdaptationReductionPerSkill`, `AdaptationDurationSeconds`, `AdaptationMaxReduction`.

2. **Enlightenment Pool Expansion** *(AureatePath / Loremaster / ChallengeModes)* — **DONE**
   - ✅ Base pool: `+level÷10000` on enlighten (AureatePath / ChallengeModes `/cm quit`).
   - ✅ Achievement bonus: `+0.001f` per unlock added to FakeFloat 11012 (`AchievementManager.cs`).
   - ✅ Augment bonus: `player.AugmentationBonusXp * 0.05f` (Quick Learner) added to `GetEnlightenmentMultiplierFactor`.
   - ✅ Equipment bonus: `player.EnchantmentManager.GetXPBonus()` (Augmented Understanding trinkets, 3×2%) added to `GetEnlightenmentMultiplierFactor`.
   - Formula: `1 + enlightPool + augmentBonus + achievementBonus + equipmentBonus`

3. **repeatQB System** *(Loremaster)* — **DONE**
   - ✅ Unique quest entries: `{baseName}#repeatQB{n}` creates new ACE registry entry per repeat solve.
   - ✅ Account-wide cooldown via `RepeatQbTracker` (migrated from `AccountRepeatQuestTracker`).
   - ✅ Questgiver blacklist (22753, 22754) prevents exploit.
   - ✅ Kill task auto-reaccept: +2 repeatQB per full cycle (reaccept + completion).
   - ✅ BonusQuest integration: daily 9pm CST board with tiered multipliers (2×/5×/10×).
   - ✅ Deprecated stamp system preserved in `Settings.cs` for backward compatibility.

4. **CommonGoals Expansion** *(CommonGoals mod — shipped)*
    - ✅ PersonalLoot (instanced corpses per player)
    - ✅ NoSplitXp / NoSplitLuminance — full credit per killer, no XP/lum division in groups
    - Verify integration with AutoLoot personal corpse hooks (ongoing maintenance)

5. **Valheel Crypto Tracking Agent Spam Fix** *(LeyLineLedger + ValheelContent)* — **DONE**
   - **Problem:** WCID 801687 (`Crypto Tracking Agent`) has `HeartbeatInterval = 60` with 13 HeartBeat emotes. Every 60s it fires 5× `StopEvent` + 1× `StartEvent` for `CryptoUp1–5`, producing 15–30 DEBUG log lines per minute.
   - **Phase 1a (SQL):** `ValheelContent/Content/03-weenie/ValHeel Exchange/801687 Crypto Tracking Agent.sql` — changed `HeartbeatInterval` 60 → 3600. Applied UPDATE to live DB.
   - **Phase 1b (LLL Integration):** Added `ValheelCryptoIntegrationSettings` to `LeyLineLedger/Settings.cs` + `Settings.json`. `EconomyBalancer.ManageValheelCryptoEvents` auto-detects Valheel currencies and manages `CryptoUp1–5` event states based on AshCoin:Credit supply ratio. Built and deployed successfully.
   - **Files:** `801687 Crypto Tracking Agent.sql`, `LeyLineLedger/EconomyBalancer.cs`, `LeyLineLedger/Settings.cs`, `LeyLineLedger/Settings.json`.

6. **Chaos-Triggered Item Leveling Redesign** *(EmpyreanAlteration)* — **DONE**
   - **Goal:** Replace random `Augment` enum growth with intelligent, chaos-tinker-triggered item leveling. Items spawn with `ItemTotalXp = 0`. Chaos failure triggers direct level-up.
   - **Implementation:**
     - `EmpyreanAlteration/ChaosTriggeredGrowth.cs` — Harmony postfix on `Overtinked.ChaosFailureEffects.ApplyContextualChaos`. Uses `AccessTools.TypeByName` for cross-mod patching without assembly reference. When chaos fires on a `GrowthItem`:
       - Increments `ItemLevel` by setting `ItemTotalXp` via `ExperienceSystem.ItemLevelToTotalXP` (with `ItemXpCurveContext` for custom curves).
       - Calls `QuestItemGrowthLevelEngine.ApplyLevelUp` for intelligent weapon/armor/shield/jewelry growth.
       - Every 5 levels: guaranteed free imbue via `QuestItemGrowthLevelEngine.TryGrantImbue`.
       - Rare cap expansion: 1% → +50, 0.1% → +75, 0.001% → +100 max level.
     - `EmpyreanAlteration/ItemLevelUpGrowth.cs` — `TryGrowItem` now routes to `QuestItemGrowthLevelEngine.ApplyLevelUp` when `ChaosTriggeredGrowth` is enabled; old random `Augment` path preserved as fallback.
     - `EmpyreanAlteration/Mutators/LootGrowthItem.cs` — Explicit `ItemTotalXp = 0` after `ApplyItemLevelProfile` for clarity.
     - Settings: `ChaosTriggeredGrowth` bool added to `Settings.cs` and `Settings.json` (default `true`).
   - **Files:** `ChaosTriggeredGrowth.cs`, `ItemLevelUpGrowth.cs`, `LootGrowthItem.cs`, `Settings.cs`, `Settings.json`.

---

## Greenfield Backlog (Prioritized)

### TIER 1 — High Interest / Feasible

0. **~~Momentum & Parity System~~** *(Loremaster — replaces RestedXp)* — **DONE**
   - **Replaced:** `RestedXpSystem.cs` deleted; replaced by `Loremaster/Features/MomentumSystem.cs`.
   - **Account-wide momentum pool** (no cap):
     - Accrues as `% of next-level requirement` while **zero** account characters are online (`AccrualPercentPerHour`, default 5%/hr).
     - Decays slowly while any character is online (`DecayPercentPerHour`, default 1%/hr).
     - On XP grant: consumed fraction gets matched as bonus XP (mult = 1.0 + consumedFraction). Full level's worth of pool = next level effectively doubled.
   - **Level Parity (optional anti-snowball):**
     - Compute `ServerMedianLevel` hourly from online players L50+.
     - Below median: catch-up bonus (`1 + delta * ParityBonusPerLevelDelta`).
     - Above median: diminishing returns (`Max(ParityMinimumMultiplier, 1 - delta * ParityPenaltyPerLevelDelta)`).
   - **Hooks:** `Player.PlayerEnterWorld` (replenish from offline time), `Player.LogOut_Final` (track last character offline), `PreGrantXP` (apply parity then momentum).
   - **Settings:** `MomentumSettings` in `Loremaster/Settings.cs` + `Settings.json` (default `Enabled: false` for safe migration; set to `true` when ready).
   - **Persistence:** `Data/MomentumState.json` stores per-account `MomentumPool` and `LastCharOfflineUtc`.

1. **Town Network Toll v3** *(QOL)* — Variable mage pricing, fake `@tells`, reagent bypass, portal gem
2. **Loremaster Zahir** *(Loremaster)* — Quest item turn-in economy (XP/pyreal rewards)
3. **Seasonal ChallengeModes** *(ChallengeModes)* — 90-day reset, bigger permanent bonuses
4. **Dungeon/Landblock Leveling** *(New mod: LandblockLeveling)* — XP up to 1000%, loot tier up, creature scale, decay 72-168h
5. **~~Auto-Kill Task Automation~~** *(Loremaster)* — **PARTIAL** — Basic auto-reaccept implemented (kill tasks reset after cooldown, +2 repeatQB per cycle). Future: tie to AchievementUnlocked milestones for enhanced rewards.
6. **~~NpcStackTurnIn~~** *(QOL)* — **DONE** — Full stack NPC turn-ins with reward scaling, auto-bank, and equipment space checks. Replaces `GiveNpcSingleFromStack` with unified system.

### TIER 2 — Medium Complexity

7. **Global Invasion Counter / World Boss** *(WorldEvents)* — Track cumulative kills across ALL towns in a wave. If the wave timer expires and all per-town bosses were killed (full defense success), spawn a rare world boss at a random central location with unique loot. If the wave expires with bosses still alive (failed defense), apply a temporary global debuff or spawn extra-hard reinforcements. Requires per-town kill tracking (Phase 1) as prerequisite.
8. **Loyalty Void Streak** *(BetterSupportSkills)* — Minions auto-cast on hit (L1 trained / L4 spec)
9. **House Chest Upgrades** *(Lockboxes / BetterLootControl)* — +10 slots via MMDs + writs
10. **Burden-% Backpacks** *(EmpyreanAlteration/Numbersmith)* — Worn bags reduce burden by percentage
11. **Catlons Currency** *(LeyLineLedger or new mod)* — Tradeable XP/lum multiplier + augment purchase
12. **Global XP Bank** *(LeyLineLedger or new mod)* — Common cause contributions + unused passup
13. **Awesome Loot Lowbie Quests** *(ValheelContent/Loremaster)* — Token vendor, expanded to L50, guaranteed imbues
14. **Living Economy Vendor System** *(LeyLineLedger or new mod)* — Dynamic vendor stock + pricing that shifts over time to simulate supply/demand.
    - **Randomized stock quantities:** Default vendor items (unlimited in retail ACE) get random per-item stock caps (e.g. 1–20 potions, 1–5 weapons) that vary by vendor type. Stock depletes on purchase and slowly regenerates over time.
    - **Price fluctuation:** Per-item buy price varies by ±10–30% each vendor restock. Higher server demand (total purchases in last hour) = higher prices. Lower demand = lower prices.
    - **Stock recovery:** Items restock gradually (e.g. +1 per hour) rather than instantly. When stock hits zero, item disappears from vendor until next restock tick.
    - **ACE research needed:** `Vendor.DefaultItemsForSale` is recreated on each `ApproachVendor`. Without VendorLootRotation, items persist until vendor unloads. Need to understand how to persist stock counters across approaches (either per-item `PropertyInt` or static dict). `GameEventApproachVendor` sends item list to client — removing sold-out items may require re-sending or the client might cache.
    - **Dependencies:** Should integrate with LLL `EconomyBalancer` (use same supply scan data). Should NOT conflict with QOL VendorLootRotation (which clears inventory). LivingEquipment vendor injection also needs awareness of stock limits.
    - **Settings:** `EnableLivingEconomy`, `StockVarianceMin`, `StockVarianceMax`, `PriceJitterPercent`, `RestockIntervalMinutes`, `DemandLookbackHours`.

15. **EconomyBalancer Integration** *(LeyLineLedger)* — Vendor price decimal variance
15. **Return-to-Sender System** *(New mod or QOL)* — Allow players to turn ANY item back into the NPC that originally gave it to them. Track giver NPC on item via `PropertyString` or custom property. Intercept use-on-target or trade with NPC. If item is equipment → grant scaled XP reward. If non-equipment → no XP (prevents quest exploit). UI/Chat command: `/return` or automatic via trade. Requires NPC identification at quest grant time and persistent item tagging.

### TIER 3 — Large / Experimental

16. **Landgrab** *(New mod)* — Player-owned landblocks with decay + global buffs
17. **Windsong AOE** *(CustomSpells)* — Martial weapon + War/Void spell behavior
18. **Chaos Mode** *(ChallengeModes + Swarmed)* — 3-5× QB, escalated Swarm spawns
19. **Spell Discovery** *(CustomSpells/QOL)* — Remove scriveners, usage-based learning
20. **+50 Permanent Skill** *(EmpyreanAlteration/AureatePath)* — Creature/item grants
21. **Living Armor / Pathwarden Revamp** *(ValheelContent)* — Living gem activation system
22. **Leagues** *(ChallengeModes)* — Daily speedrun, 1w/1m/3m with unique perks
23. **~~Dynamic Mob Scaling~~** *(Swarmed)* — **DONE** — Scale mob level/difficulty/loot/XP to nearby players. Solo → player's level; Group → average level. Loot tier scales with mob level. Landscape soft caps; dungeons scale fully. See [§ Swarmed](#swarmed) above.

### Previously Tracked (Still Valid)

- ~~Dungeons recallable~~ — **Done** via QOL `BypassPortalRestrictions`
- **Combos** — Track kill streaks
- **Follow through Portals** — Creature behavior: pursue players through portals
- **Shared Flags** — Quest flags shared across all characters on one account
- **Chat Filter** — ML.NET toxicity classification; shadow-ban or filter toxic chat
- **Extra storage (house chests)** — Up to 10 extra backpack-equivalent house storage slots purchased with a mix of MMDs and writs

---

## New Mods Table

| Mod | Description | Status |
|-----|-------------|--------|
| **CommonGoals** *(shipped)* | Personal loot + no split XP | Maintenance only |
| **LandblockLeveling** | Dungeon/landblock XP scaling, loot tier, mob scaling | Greenfield |
| **Landgrab** | Player-owned landblocks with decay + global buffs | Greenfield |

---

## Achievement Ideas (Consolidated)

- **Server Wipe Survivor** — Character existed before reset
- **Arcanum Donor** — Donate X comps + Y pyreals to TN mages
- **Beyond Broke** — Try to donate with insufficient funds
- **Can't Read** — Enter restricted dungeon outside level range (unlocks restricted portals)
- **Drudge Charm Hoarder** — Loot 50 drudge charms (enables auto-loot + stacking)

---

## Event Ideas (Consolidated)

- **Hot Dungeon** — Temporary dungeon boost
- **World Boss** — Spawned global threat
- **Faerie Ring** — Zephyr gathering
- **Gathering of Golems** — Mote farm
- **Fragment Farm** — Material event
- **Evergreen** — Task suggestions from completed tasks
- **House Looting** — Storage unit sale style

---

## Custom Content (ValheelContent)

- **Hollow Minion** — Loot heart or resurrects after 30s
- **Fake Olthoi (Skin Bandits)** — Humanoid olthoi with swords/daggers
- **Lowbie Quest Gear** — Leveling path to L50 with guaranteed imbues

---

## Merged mod notes (former `TODO.md` content)

### QOL

- **Recall / animation** — `AnimationSettings` in [QOL/Animations.cs](QOL/Animations.cs): shipped `AnimationSpeeds` defaults align with [QOL/Settings.json](QOL/Settings.json) — recalls, loot pickups (`Pickup` / `StoreInBackpack` / `Pickup5`–`20`), first aid (`SkillHealSelf` / `SkillHealOther`); plus `DieSeconds` for `/die`. Add more `MotionCommand` keys in JSON if you need combat/reload overrides. Optional `// …` keys in [QOL/Settings.cs](QOL/Settings.cs) document toggles and nested settings (see Readme).
- **Town Network toll** — When `EnableTownNetworkToll` is true, TN-matched portals and optionally `/market` recall debit banked pyreals per `TownNetworkToll` ([QOL/TownNetworkToll.cs](QOL/TownNetworkToll.cs)). v2 adds variable random fees, component-first payment (tapers/scarabs), immersive Arcanum mage messaging, per-player `/qol toll` payment mode toggle, and MMD display for high-level cash payments.
- **Bypass portal restrictions** — `EnableBypassPortalRestrictions` with granular `BypassPortalRestrictions` settings: portal use requirements, dungeon recall, busy recall, PK timer recall, olthoi recall. All default `true`. Town Network toll is NOT bypassed — fees still enforced ([QOL/BypassPortalRestrictions.cs](QOL/BypassPortalRestrictions.cs)).
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
- Tier XP + `GrantRepeatSolveLoot` (keys `LMParchmentTierEasy` / `Average` / `Challenging` — loot uses `Mods/Loremaster/LootConfig.json`, same default pool as BetterLootControl).
- Do not reuse **LeyLineLedger** luminance gem WCIDs for parchment **gems**.

### Swarmed

**Current behavior**

- **Call for help:** Separate toggles and roll chances for **landscape** (`LandscapeEnabled`, `LandscapeChance`, spawn min/max) and **dungeon** (`DungeonEnabled`, `DungeonChance`, spawn min/max). Defaults in `Settings.cs`; sample `Settings.json` may override.
- **Reinforcement stats:** New spawns roll HP between `ReinforcementHealthMin`–`ReinforcementHealthMax` × caller max HP; visual scale between `ReinforcementScaleMin`–`ReinforcementScaleMax` × caller scale.
- **XP tuning:** `ReinforcementXpBonusMin` / `ReinforcementXpBonusMax` bias reinforcement kill XP.
- **CreatureEx champions:** `CreatureFeatures` lists which `CreatureExType` variants can replace normal spawns. `/cex` spawns a specific type for testing; optional `AllowPartialCreatureExTypeMatch` allows unique substring match on the enum name.
- **Messaging:** `CallForHelpMessages` — random `{0}` template when reinforcements trigger.
- **Admin debug:** `/swarmed debug` — last call-for-help evaluation and session counters.

**Buddy spawns (timed auto-reinforcements)**

- Background timer (30s) checks landblocks with players. After idle threshold (default 2min, no kills), living original creatures roll 25% chance to spawn a buddy within 10m. Threshold doubles each successful round (2×), capped at 30min. Max 10 buddy-spawned creatures per landblock. Reset on any death. Buddies inherit same WCID, get tagged (`FakeInt 40113`), and receive CreatureVariation. See `Swarmed/Features/BuddySpawns.cs`, `Settings.BuddySpawns`.

**Wild CreatureEx**

- Independent factory chance: 1% landscape, 0.5% dungeon for random `CreatureEx` champion replacement. Separate from admin `CreatureChance` (default 0). See `Swarmed/Features/CreatureExSpawn.cs`, `Settings.WildCreatureEx`.

**Global creature variation**

- Applies ±8–21% to **ALL** creature spawns: health, stamina, mana, visual scale (`ObjScale`), damage rating, level. Deterministic per-creature GUID. **Critical:** Uses deferred `ActionChain` (0.5s delay) — modifying vitals during `WorldObjectFactory.CreateWorldObject` causes `AddWorldObjectInternal` rejections. See `Swarmed/Features/CreatureVariation.cs`, `Settings.CreatureVariation`.

**Scaling (implemented)**

- **Online density:** Optional scaling of `CreatureChance` and reinforcement roll chances by shard-wide online player count (`CreatureChanceScalesWithOnlinePlayers` / `ReinforcementChanceScalesWithOnlinePlayers` + bonus/cap in `Settings`).
- **Reinforcement per-landblock:** `ReinforcementChanceScalesWithLandblockPlayers` / `ReinforcementChanceBonusPerLandblockPlayer` — uses players on the dying creature's landblock; takes precedence over shard-online reinforcement scaling when enabled and `CurrentLandblock` is present. Same cap as `ReinforcementChanceMaximumAfterScaling`.

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
- **Tuning & Feature Expansion (Backlog):** While core features are shipped, major future work involves expanding `Settings.json` to document and allow tuning of advanced properties (Mutators, Odds, TargetGroups, WeenieTypeGroups, Spell/proc tables, Loot-growth knobs, etc.). This requires careful implementation across `Settings.cs` / `Settings.Mutators.cs` to maintain serialization consistency. (Ref: Item 167)

### ChallengeModes

- **`/cm quit`:** Exits **all** active challenge tracks with optional **Yes/No** (`CmQuitRequiresConfirmation`); applies **same pool bump** as enlightenment (**+level÷10000** on `CmFloat.EnlightenmentPoolBonus` = **11012**), configurable **`CmQuitRemove*`** strips (delegate to `Enlightenment.Remove*` where applicable), optional **unequip-to-pack**, then **`DisableAllChallengeModesForQuit`** (SSF/HC flags, declined prefs, alternate leveling + aptitude prefs) and **`CmCommands.RefreshChallengeRadar`**. See `CmQuit.cs`, `ConfirmationCmQuit.cs`, `Settings` / `Settings.json`.
- **Radar:** `RefreshChallengeRadar` is **internal** for use from `CmQuit`.
- **Achievement XP/lum (`ChallengeAchievementRewardsEnabled`):** Segment-based bonus via `ChallengeBonusPercentPerLevel` × levels toward `ChallengeBonusSegmentCapLevel`; **`ChallengeRunMaxLevel` (furthest in current segment) never decreases on death** — only segment completion at the cap resets it. Skill credits at `ChallengeAchievementLevels` are per challenge track (SSF / hardcore / alternate / aptitude), once each per achievement. Detail + manual tests: `ChallengeModes/Readme.md`.
- **Titles:** `ChallengeModeDefaultTitles` is **wishlist only** (ACE `CharacterTitle` is dat-driven); not applied on `/cm`. See `Features/ChallengeModeTitles.cs`.

### Overtinked

**Done (reference)**

- **Cleaving / Nether combat** — `NewImbueConfig.cs` (`CleavingImbueCombatConfig`, `NetherRendingImbueCombatConfig`) and `CleavingNetherImbueCombat.cs`; `Settings.json` mirrors tunables.
- **Quest-item perk chat** — `Container.TryAddToInventory` postfix for nested-pack / corpse loot.

- No open backlog beyond `Settings.json` tuning (see suggested order item 4).

### EmpyreanAlteration

- **Active priority / design** — See suggested order item 8 (AureatePath `ItemWieldRequirementEnlightenments` gate only).
- **Settings.json — expand shipped config (backlog)** — Today the repo ships a **minimal** two-band `Settings.json` (Enabled, Verbose, ItemLevelUpGrowthEnabled, GrowthAugments, GrowthFixedLevelAugments); the rest of tuning stays on C# defaults until keys are added. **Future:** optionally grow the file to document **Mutators**, **Odds**, **TargetGroups**, **WeenieTypeGroups**, spell/proc tables, loot-growth knobs, etc., in the same QOL-style `//` doc band + values band—expect a **large** diff and careful ordering across `Settings.cs` / `Settings.Mutators.cs` partials so serialization stays predictable.

### SpellSiphon

- **v2.1 Native ACE Integration (in progress)** — Recipe-based extraction with confirmation dialog.
  - **Extraction:** Native ACE recipe (900001) with skill popup. 33% base success (matches imbue), +5% Charmed Smith augment (29273 / AugmentationBonusSalvage), +MIT skill bonus (0.05% per point, scales to ~2× base at 600 skill, capped at 80%).
  - **Recipe flow:** `GetRecipe` injects recipe 900001 when Spellsiphon (850200) is used on spell-bearing item. `GetRecipeChance` calculates custom formula. `HandleRecipe` executes native roll + destruction. On success: charged Spellsiphon created with extracted spells (max 10).
  - **Success:** Both items destroyed via `RecipeManager.CreateDestroyItems`. New charged Spellsiphon created (unstackable, magical overlay, spells visible in info panel, name shows count).
  - **Failure:** Both items destroyed. No charged Spellsiphon.
  - **Apply:** Charged Spellsiphon on equipment/gem/Mana Lattice = 100% success via Harmony prefix on `HandleActionUseOnTarget`, spells transferred, Spellsiphon destroyed with proper client notification.
  - **Endless Mana Lattice:** WCID 850201 — dedicated reusable buff gem base. `ActivationResponse = CastSpell`. Double-click casts all spells from spellbook via `OnCastSpell` prefix patch. Bonded (no drop on death), NOT attuned (tradeable). Prismatic stone icon (0x060026BC). Vendor price 50,000 pyreals at jewelers + mages.
- ~~3-tier extraction system~~ (deprecated) — Coalesced Mana tiers repurposed for LivingWeapons (see below).
- **Infinite gem reuse** (shipped) — ALL gems are reusable on use, not consumed. Transforms gems into infinite buff items for magic-less characters.
- **Mana pool for newly spelled items** (shipped) — Items that receive spells but had no mana pool get 2000 max mana at 1 point per 30 seconds drain rate.
- **Vendor integration** (shipped v1.2.1) — SpellSiphon tool sold at spell component vendors for 50,000 pyreals.
- **Bidirectional charging** (fixed 2026-04-28) — Both `Spellsiphon → Coalesced Mana` and `Coalesced Mana → Spellsiphon` now trigger the charge step. C# patch added in `UseOnTargetHooks.cs` Step 1b.
- **TargetType fix** (fixed 2026-04-28) — Spellsiphon `TargetType` was `33569` (missing `Misc`, `Gem`, `Jewelry`, `Armor`, `Clothing`). ACE `Player_Use.cs:139` enforces `(sourceItem.TargetType & target.ItemType) != 0` before calling `HandleActionUseOnTarget`, so the interaction was silently blocked. Updated to `35215` (`Misc | Gem | Jewelry | Armor | Clothing | MeleeWeapon | MissileWeapon | Caster`).
- **Coalesced Mana text fix** (fixed 2026-04-28) — Em-dashes (`—`, U+2014) in `weenie_properties_string` values rendered as garbled characters because the AC client uses Windows-1252 encoding. Replaced with regular hyphens.
- **Custom spell conversion** (backlog) — Portal/Recall/Summon spells extracted via SpellSiphon should convert to custom spells to avoid bypassing quest/level restrictions. Requires AethericWeaver integration or custom spell ID mapping.

### LivingWeapons (Greenfield) → ABSORBED into EmpyreanAlteration

- **Status:** **DONE (2026-05-01)** — Fully absorbed into `EmpyreanAlteration`. See "Immediate Reworks #2: LivingEquipment → EmpyreanAlteration Full Absorption" and "Point-based Coalesced Mana leveling" in Done section.
- **Concept:** Coalesced Mana tiers (Lesser 42516, Greater 42517, Aetheric 42518) used to "awaken" items, granting them leveling stats. Kill points (+1) and quest points (+100) drive growth instead of XP.
- **What was implemented:**
  - `LivingItemAwakener.cs` — manual Coalesced Mana use-on-target awakening + auto-awaken on inventory entry
  - `CreatureDeathItemLeveling.cs` — ALL creature kills award +1 point to all awakened items
  - `QuestCompletionItemLeveling.cs` — QB-eligible quest completions award +100 points
  - `LoremasterBridge.cs` — reflection bridge to check QB eligibility without side effects
  - `ItemLevelingPoints.cs` — point math and curve application
  - Profile-based custom XP curves via `QuestItemGrowthHarmony` (integrated into EA)
  - QuickStart as single configurable default profile
  - `DisableAttunedGlobally` for trading Coalesced Mana and all awakened items

### BetterSupportSkills

- **Healer class** (shipped) — Spec Healing + Spec Life Magic. AoE healing aura (15m, 3s tick, flat heal), Smite melee proc (50% chance, Harm/Drain Health Other spell chain). Settings: `CombatClasses.Healer`.
- **Adventurer class** (shipped) — No magic schools trained (except Mana Conversion). +50 all attributes/skills via Harmony patches on `CreatureAttribute.GetCurrent`, `CreatureSkill.Current`, `CreatureVital.MaxValue`. +20% vitals, +10 resistances (`Creature.GetResistanceMod` patch), +2 burden limit ranks (`Player.GetEncumbranceCapacity` patch). All virtual — no DB persistence.
- **Windwalker rebalance** (shipped) — Spell tier formula changed from `skill/50+1` to `skill/SkillPerTier` (default 200). Tier 1 at 200 War Magic, tier 2 at 400. Configurable via `CombatClasses.Windwalker.SkillPerTier`.
- **Chaos Tinker fix** (shipped) — Failures now increment `NumTimesTinkered` (toggleable). Per-item chaos failure cap (default 5) tracked via `PropertyInt 40120`. Item becomes immune to further chaos once cap reached.
- **AutoSalvage** (shipped 2026-04-28) — Cross-mod feature with AutoLoot. All logic consolidated in BSS (`Skills/SalvageAutoDeposit.cs`). Skill-gated rates: 25% if any tinkering trained, 50% if specialized. Category MaterialTypes fallback to least-banked material. AutoLoot calls via `BetterSupportSkillsBridge.TryAutoSalvage`.
- **Magic-less class design** (backlog) — Reusable gem buff system (via SpellSiphon infinite gems) enables melee/archer characters to have a "spell system" without training magic schools. Design around gem loadouts, buff rotations, and cooldown management.

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

## ValheelContent Segmentation Plan

**Goal:** Reduce ValheelContent to only Adventurer's Haven + Town Network portals (Fort Tethana, Wai Jhou, Ayan Baqur, Abandoned Mines access).
**Status:** **DONE** — All 4,778 weenies across 63 disabled folders cleaned up. `DisabledContentFolders` populated; `EnabledContentFiles` exception for `03-weenie/Buildings/1000005 townnetworkplatform.sql`. Cleanup SQL applied to live DB. See Completed Work 2026-04-28.

### Phase 1: Inventory and Categorization
1. Scan all `03-weenie/` folders and categorize each as:
   - **KEEP:** Adventurer's Haven (entire folder)
   - **KEEP:** Buildings/1000005 townnetworkplatform.sql
   - **KEEP:** Any portal gem/item in Adventurer's Haven that links to Abandoned Mines
   - **EVALUATE:** Landblock files that contain TN portal placements (may also contain unwanted quest NPCs/spawns)
   - **DISABLE:** Everything else (z1-z10 chapters, raids, classes, events, quests, etc.)

2. For landblock files with TN portals (`06-landblock/0007.sql`, `01AC.sql`, `2581.sql`, `3F31.sql`):
   - Read each file and document what ELSE is in the landblock besides the TN portal
   - Decide: keep full file (accept extra content) or manually extract TN portal rows into a separate SQL file

3. For Abandoned Mines access:
   - Verify Adventurer's Haven portal gems (Munch questline) already provide access
   - Check if any dungeon landblocks need to be kept for Abandoned Mines to function

### Phase 2: Update DisabledContentFolders
1. Populate `Settings.json` `DisabledContentFolders` with the full list of folders to skip
2. Keep `03-weenie/Adventurer's Haven` and `03-weenie/Buildings` off the disable list
3. For landblocks: either keep the 4 files as-is or create a new `06-landblock-keep/` folder with extracted TN-only rows

### Phase 3: Cleanup SQL for Already-Imported Content
1. For each disabled category, generate a cleanup SQL script that deletes:
   - All weenies defined in that category's SQL files
   - All landblock instances for those weenies
   - Any quest/registry entries tied to those weenies
2. Execute cleanup SQL against `ace_world`
3. Handle biota cleanup for `ace_shard` if items are already in player inventories

### Phase 4: Verification
1. Restart server
2. Verify `/valheel import` only imports Adventurer's Haven + TN content
3. Verify Town Network portals are functional at all 4 locations
4. Verify Adventurer's Haven NPCs/vendors/gear are present
5. Verify disabled content (chapters, raids, etc.) is NOT present in the world

### LeyLineLedger Currency Safety Verification
**Decision:** Option A — verify existing behavior is safe, no code changes.

**Findings:**
- LeyLineLedger stores account bank balances in `Data/AccountBanks/{account}.json` as a flat `Dictionary<string, long>`
- When a currency is removed from `Settings.Items`, it disappears from `/bank` display but the balance **remains in the JSON file forever**
- When re-added to `Settings.Items`, `MirrorDataToPlayerAndAccountAlts()` restores the old balance on next login
- No code path deletes JSON files or biota rows on mod disable

**Conclusion:** Disabling and re-enabling mods that add currencies to LeyLineLedger is already safe. Balances are preserved. No implementation work needed.

## Inline `*.cs` markers (case-insensitive sweep)

Pass: `rg -i "todo|fixme|hack" --glob "*.cs"` with manual filtering (exclude substrings like `Convert.ToDouble`).

Previous stray markers were cleaned up or reworded to `NOTE` / descriptive comments. Re-run the search when refreshing this section.
