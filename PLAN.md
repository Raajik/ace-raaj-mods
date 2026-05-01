# Overall TODO inventory (ace-raaj-mods)

Single index of tracked work. **Mod notes below were merged from former per-mod `TODO.md` files; greenfield ideas were merged from former `MOD_IDEAS.md`.** Implementation detail also lives in code / Readmes. There is no separate `TODO.md` or `MOD_IDEAS.md` in the repo anymore.

## Progress (recent)

- **Done (2026-04-26):** **AGENTS.md** — Repo guide covering mandatory skills, workflow, conventions, permissions, build notes, server log access, `.references/` directory, changelog requirements, and self-improvement rules.
- **Done (2026-04-26):** **GitHub Release Automation** — `.github/workflows/release.yml` triggers on `v*.*.*` tags, builds all mods against ACEmulator/ACE, creates release with per-mod zip artifacts.
- **Done (2026-04-26):** **v1.0.0 Release** — Comprehensive mod pack including Swarmed crash fix, global HP gate, CommonGoals personal loot, LeyLineLedger economy features, QOL v2, WorldEvents, and ValheelContent.
- **Done (no longer in queue below):** LeyLineLedger / AutoLoot `CashProperty` ↔ `BankCashProperty` (39999) verified; QOL `AnimationSpeeds` + `Settings.json` `//` docs + Readme updates (2026-04-04).
- **Done:** Loremaster barkeeper parchments — weighted explore/kill/fetch pools (rare + 25–100 weight rules, effective kill count for rare targets), stack-based fetch turn-in, concise objective copy with weenie names (2026-04-04).
- **Done (2026-04):** QOL **Town Network toll** — `EnableTownNetworkToll`, bank `PropertyInt64` debit, level bands, Loremaster QP discount (`FakeFloat.QuestBonus`), portal matching, optional marketplace recall parity; see `QOL/TownNetworkToll.cs`, `Settings.TownNetworkToll`.
- **Done (2026-04):** Healing-kit **Recuperation** HoT (self-target + kit-type vital ticks) **removed from QOL**; it lives only in **BetterSupportSkills** (`EnableHealing`, `Recuperation` in `Settings.json`, `Skills/RecuperationHoT.cs`). QOL no longer registers a Healer hook for this.
- **Ongoing:** AureatePath / Overtinked = operator JSON tuning; maintenance = periodic `rg` / `/mod-audit`. **WorldEvents Hunt** — tuning for hunt intervals, popularity multipliers, and damage caps.
- **Backlog:** User idea list (**Idea backlog**, 2026-04) + **Idea routing** table captured under [§ Greenfield concepts](#greenfield-concepts) (2026-04-21).
- **Done (2026-04-21):** **Enlightenment pool + challenge quit + high-enlight QB (AureatePath / Loremaster / ChallengeModes)** — Shared **FakeFloat 11012** cumulative bonus: **+level÷10000** on each **AureatePath** enlightenment (`PreRemoveAbility` captures level; `PreAddPerks` adds to pool) and on **`/cm quit`** (ChallengeModes `CmQuit` / `Confirmation_CmQuit` / `DisableAllChallengeModesForQuit`). **Loremaster** uses **(1 + pool)** for the enlight term when `UseEnlightenmentPoolForXpMultiplier` is true (`GetEnlightenmentMultiplierFactor`). **AureatePath** `VerifyEnlightenmentEligibility` adds **total QB** (`FakeFloat.QuestBonus`) requirement for the **51st+** enlightenment by default: **5000 + 100 × (completed enlightenments − 49)** when completed count ≥ **50** (`EnableHighEnlightenmentQuestBonusRequirement`, `HighEnlightenmentQuestBonusBase`, `HighEnlightenmentQuestBonusPerStep`, `HighEnlightenmentQuestBonusFromCompletedCount`). Defaults also tuned: **LevelReqPerEnlightenment** 5, society/lum gate indices 25 / 10 (see each mod `Settings.json`).
- **Done (2026-04-23):** **AutoLoot simplification** — Removed VendorTrash from menu (functionality hidden), menu now shows numbered profiles only. Added `Rares.utl` default profile (auto-enabled with `/autoloot on`). Strict scroll learning: requires trained magic skill + skill ≥ spellLevel × 50 − 50.
- **Done (2026-04-23):** **BetterSupportSkills tuning** — Shield thorns damage halved to 2.5%/5% (trained/specialized). `/b d` (deposit) now auto-deposits salvage by default (`/b d no` to skip). `EnableSalvage` + `Salvage` settings added to `Settings.json`.
- **Done (2026-04-23):** **QOL Town Network toll v2** — Complete overhaul: variable random fees (10k–50k below L50, 50k–100k L50–100, 1–5 MMD notes above L100). Component-first payment system: takes 9–25% of Prismatic Tapers (WCID 20631) or 5% of a random scarab type (Copper, Gold, Silver, Iron, Pyreal, Lead, Diamond, Platinum, Mana). Never takes components if it would leave player below threshold (50 tapers / 5 scarabs). Falls back to cash. 51 immersive Arcanum mage names + 80+ flavor messages. Per-player `/qol toll components|cashonly` toggle. Server logging for all payments. Diagnostic bank debit verification with `SaveBiotaToDatabase`.
- **Done (2026-04-23):** **QOL BypassPortalRestrictions** — Granular bypass system for all portal/recall restrictions: portal use requirements (level, quest, race, gender, bitmask), dungeon recall, busy recall, PK timer recall, olthoi recall. **Town Network toll is NOT bypassed** — fees still enforced. All default to `true` (bypassed) via `EnableBypassPortalRestrictions` and `BypassPortalRestrictions` settings object.
- **Done (2026-04-23):** **Swarmed messaging** — Call-for-help reinforcement text color changed from `Combat` (red) to `Magic` (purple) for better visibility.
- **Done (2026-04-26):** **QOL VendorPriceInflation crash fix** — `PostGetMerchandiseBuyRate` used a string-based patch targeting `Vendor.get_MerchandiseBuyRate`, which doesn't exist in ACE v1.76.4751. With `EnableVendorPriceInflation: true` in Settings.json, this caused "Patching exception in method null" on startup, killing all QOL patches (PetKillSummary, KillXpMessage, AutoBuff, VendorLootRotation). Fixed by replacing with two `nameof`-based patches on `Vendor.GetBuyCost(WorldObject)`: `PostGetBuyCostBase` (applies `VendorBuyRateMultiplier`) and `PostGetBuyCostSpecial` (applies `VendorSpecialItemMultiplier` for imbued/cantripped items). QOL now starts clean; pet kill XP notifications and all other features are live.
- **Done (2026-04-26):** **LeyLineLedger EconomyBalancer + LootTracker intervals** — Both scan intervals reduced from 60 min to 5 min in the deployed `Settings.json` (`EconomyBalancer.ScanIntervalMinutes`, `LootTracker.ScanIntervalMinutes`). `MinScanIntervalMinutes` reduced from 15 to 1. Hot-reload confirmed live.
- **Done (2026-04-26):** **Swarmed expansion** — BuddySpawns (timed auto-reinforcements: 2min idle → 25% roll, threshold doubles, cap 10/landblock, 10m radius, reset on death), Wild CreatureEx (1% landscape / 0.5% dungeon chance for random champion replacement), global CreatureVariation (±8–21% on all creature stats via deferred 0.5s ActionChain to avoid AddWorldObjectInternal rejections). See `Swarmed/Features/BuddySpawns.cs`, `CreatureVariation.cs`, `Settings.BuddySpawns` / `WildCreatureEx` / `CreatureVariation`.
- **Done (2026-04-26):** **WorldEvents unified scheduler** — `EventScheduler.cs` rotates through enabled event types (Invasion, Cull, Sale, BonusQuest, Hunt, POI Hunt, Scavenger Hunt) on a fixed timer. Events start every 45 minutes, run for 60 minutes, overlap by 15 minutes, and never run back-to-back. Each event type has scheduler-compatible start/end hooks (`TryStartWaveBypassCooldown`, `TryStartScheduledSale`, `TryStartCull` returning `bool`, `TryStartScheduledRotation`). `PatchClass.cs` wires `EventScheduler.Initialize()` and a 30s background timer. Settings: `UseUnifiedScheduler`, `EventDurationMinutes`, `EventStartIntervalMinutes`, `EventFiveMinuteWarning`.
- **Done (2026-04-26):** **BetterSupportSkills ArcaneLore + MissileDefense rework** — Spell dodge moved from Arcane Lore to Missile Defense (`MissileDefenseBuffs.cs`: 10% trained / 15% spec spell dodge, 75% cap). Arcane Lore now has "Adaptation": taking magic damage applies `-10% of buffed skill` as elemental damage reduction for 60s, capped at 99%. Settings: `EnableAdaptation`, `AdaptationReductionPerSkill`, `AdaptationDurationSeconds`, `AdaptationMaxReduction`.
- **Done (2026-04-26):** **CommonGoals NoSplitXp / NoSplitLuminance** — Prefixes on `Fellowship.SplitXp` and `SplitLuminance` grant full credit to each fellowship member. Toggle: `EnableNoSplitXp`.
- **Done (2026-04-30):** **QOL NpcStackTurnIn** — Replaces `GiveNpcSingleFromStack`. Full-stack NPC quest turn-ins: rewards scale by stack size (XP, items, currencies), bankable rewards auto-deposit via LeyLineLedger reflection bridge, equipment rewards check main-pack space with graceful single-reward fallback. `StackableWcids.json` populated with 24 quest/trophy WCIDs. Old `GiveNpcSingleFromStack` enum/toggle deprecated but preserved for backward compatibility.
- **Done (2026-04-30):** **Xenology → Hunt name cleanup** — PLAN.md and all skill docs (`ace-mod`, `ace-build`) updated to reference WorldEvents Hunt instead of Xenology. Greenfield backlog renumbered (fixed duplicate item numbers).
- **Done (2026-04-30):** **PLAN.md maintenance** — ValheelContent Segmentation Plan marked DONE (was already implemented). All `TODO`/`FIXME`/`HACK` markers in `.cs` files converted to `NOTE:` descriptions.
- **Done (2026-05-01):** **QuestSalvageAutoBank (LeyLineLedger)** — Unified quest salvage bag auto-deposit for all Clutch of Kings quest bags (13 WCIDs: 29571-29582, 30260) + Pathwarden bags (33620 Granite, 33621 Steel). Intercepts `Player.GiveFromEmote` to deposit 100 material units per bag to the bank without creating the item in inventory. Uses regular salvage WCID mapping for bank property resolution. New `EnableQuestSalvageAutoBank` toggle; `PathwardenAutoBank` refactored to keep only Sturdy Iron Key handling. Container.TryAddToInventory postfix removed due to Harmony `out Container` patching failure (emote interception covers all real acquisition paths).

### 2026-04-29 Multi-Mod Batch (All DONE)

| Mod | Feature | Summary |
|-----|---------|---------|
| **WorldEvents** | Sale wording fix | Detects mage-name towns (Celdiseth, Shoyanen, Fadsahil) and rewords broadcast to avoid implying a mage is a location. |
| **WorldEvents** | Hunt timer scaling | `EventScheduler.TryStartHunt` passes `EventDurationMinutes` to `HuntRuntime.BeginNewHuntWindow(..., customDurationMinutes)` so scheduled hunt windows match the unified scheduler's event window. |
| **Swarmed** | Auto-attack fix | Reinforcement spawns and BuddySpawns set `creature.AttackTarget = nearestPlayer` immediately after `LandblockManager.AddObject`. |
| **Swarmed** | Dungeon scaling past 275 | `ApplyScaling` raises `maxLevel` to the highest player level present in the landblock, preventing the 275 cap from clamping mobs for level 999 admins. Added `AdminLevelOverrideProperty` (default 0) for `/god` players to set custom effective level without changing `player.Level`. |
| **Swarmed** | Dungeon population manager | New `DungeonPopulationManager` maintains `TargetMobCount` (default 30) living creatures inside dungeon landblocks with players. Spawns use existing dungeon creature WCIDs placed 50–120m from players. |
| **Swarmed** | Level variance (+flavor) | Added `LevelVariance = 15`. Mobs vary ±15 levels from the computed target so they're not all identical. |
| **Swarmed** | Scaling debug logging | `DebugScaling` toggle (default false) logs target/max/highest-player level per scaled mob. |
| **QOL** | Generous Benefactor | `TownNetworkToll.cs` tracks total toll fees spent in `PlayerProfile.TotalTownNetworkTollSpent`. New `/tn` command teleports to Town Network (`0x0007010B`) once 1,000,000,000 pyreals donated. Works for component and cash payments. |
| **Loremaster** | Rested XP system | `RestedXpSystem`: offline duration × `OfflineToRestedConversionRate` (default 0.5) added to rested pool (capped at `MaxRestedHours`). While rested, XP gains multiplied by `BaseMultiplier` + `(serverMaxEnlightenment − myEnlightenment) × MultiplierPerEnlightenmentGap`. Hooks: `Player.PlayerEnterWorld`, `Player.LogOut_Final`, `PreGrantXP`. |
| **Loremaster** | Luminance banking (pre-unlock) | Harmony prefix on `Player.AddLuminance` detects `MaximumLuminance == null/0` and banks earned luminance to LeyLineLedger `LuminanceProperty` (39998) instead of silently dropping it. |
| **LivingEquipment** | Academy auto-awaken + vendor stock | `AutoAwakenTier1Wcids` (26 Academy WCIDs) auto-awaken to Tier 1 (max 25, Casual profile) on inventory entry. `AcademyWeapons_VendorStock.sql` adds them to T1 town blacksmiths, bowyers, and archmages. |
| **LivingEquipment** | Pre-awakened rarity | `PreAwakenedChance` reduced from 2.0% → 0.2%. |
| **LivingEquipment** | Visual glow (green) | `LivingItemUiEffects` changed from `9` (blue) → `256` (`Acid`, green glow) for better visibility. |
| **LivingEquipment** | Broadcast refresh | `DoAwaken`, `DoUpgrade`, `TryAutoAwaken` now broadcast all tracking properties + `CalculateObjDesc()` + `GameMessageUpdateObject` so client examine panel refreshes immediately. |
| **AutoLoot** | Quest-item stack fix | `QuestItem_StackFix.sql` changes `weenie.type` Generic (1) → Stackable (51) and adds stack properties for Drudge Charm (3669). `LootStackConsolidator` force-fixes items lacking `MaxStackSize` at loot time by inferring from burden/value. Biota cleanup SQL for `ace_shard` provided. |
| **AutoLoot** | Chest + corpse close-phase unified | Chest autoloot moved entirely to `Container.Close`. Player sees full contents on open; close runs: (1) silent banking/scroll destroy, (2) profile batch loot, (3) VendorTrash, (4) unknown scrolls, (5) salvage + clutter destroy. Corpse: kill-time autoloot → open → manual pick → close → salvage leftovers. |
| **EmpyreanAlteration** | MutatorHooks NRE fix | Null guard on `mutator` in `ShutdownMutators` inner loop. |
| **WorldEvents / ValheelContent** | Town Network Native Portals | Replaced custom platform (weenie 1000005) with native ACE portals in TN dungeon landblock 0x0007: Fort Tethana, Wai Jhou, Ayan Baqur, Abandoned Mines, Asheron's Castle. |
| **Swarmed** | HP Fix | `SetMaxVitals()` called after scaling `Health.Ranks` so reinforcements and CreatureVariation mobs spawn with full HP. |
| **Swarmed** | Boss broadcast spam fix | `Boss.VitalHeartBeat()` gates `UpdateWeakness()` and `SpamCasts()` behind `AttackTarget is Player`. |
| **Swarmed** | CreatureEx radar colors | All special mobs show as cyan/teal (`RadarColor.Cyan`) on the minimap. |
| **Swarmed** | Special creature loot | CreatureEx mbs drop 2–5 extra loot rolls (auto-imbued/awakened by LivingEquipment hook). |
| **BetterSupportSkills** | TrophyDrops creature filtering | Validates creature WCID before dropping quest trophies. Configurable `DropChance` (default 1%). Champion/special mobs drop stacks of 1–8. |
| **AutoLoot / SQL** | Stackable quest items | Olthoi Ichor (10864) and Dark Revenant Thighbone (7045) now stack to 100. Weenie + biota cleanup applied. |
| **LeyLineLedger** | Vendor sell rate reduction | `EnableVendorSellRateReduction` (default true) + `VendorSellRateMultiplier` (default 0.03). Harmony postfix on `Vendor.BuyPrice` getter reduces the property value itself — client sell UI (`GameEventApproachVendor`) and server payouts (`GetBuyCost`) both see the reduced rate. |
| **SharedLoot** | Trade note reorganization | Smaller denominations (100–25,000) added to `common` with stacks 1–10. Notes ≥50k moved to `rare` (50k–100k) and `extremelyRare` (150k–250k). All trade notes use `stackSizeMin=1, stackSizeMax=10`. |
- **Done (2026-04-27):** **LeyLineLedger robustness** — Startup weenie validation (`ValidateWeeniesAtStartup`), runtime null guards for missing weenies, and graceful skipping of missing vendor merchandise items.
- **Done (2026-04-27):** **Solo Competitor Bonus** *(WorldEvents)* — `SoloCompetitorBonus` settings and cross-event implementation granting bonus rewards when a single competitor dominates an event.
- **Done (2026-04-27):** **Unified QB Ledger** *(WorldEvents)* — Shared `ParticipationLedger` service unifying account participation tracking across BonusQuest and all event types.
- **Done (2026-04-27):** **SpellSiphon rename + expansion** — Renamed GemCrafter to SpellSiphon; added any-item crushing with skill-based success rates and expanded settings.
- **Done (2026-04-27):** **POI Hunt** *(WorldEvents)* — `PoiHunt` event type with auto-generated clues via `LandblockScanner`, Lorewalker Zahir turn-in NPC, runtime, broadcast, rewards, and scheduler integration.
- **Done (2026-04-27):** **Scavenger Hunt** *(WorldEvents)* — `ScavengerHunt` event type with `LootTracker` API, runtime, broadcast, rewards, persistence, scheduler integration, and turn-in NPC SQL.
- **Done (2026-04-27):** **BetterSupportSkills new classes** — `Healer` (Spec Healing + Spec Life Magic): AoE healing aura (15m, 3s tick, flat heal) + Smite melee proc (50% chance, Harm/Drain Health Other spell chain). `Adventurer` (no magic trained except Mana Conversion): +50 attributes/skills/vitals/resistances/burden via Harmony postfixes on `CreatureAttribute.GetCurrent`, `CreatureSkill.Current`, `CreatureVital.MaxValue`, `Creature.GetResistanceMod`, `Player.GetEncumbranceCapacity`. All virtual — no DB persistence.
- **Done (2026-04-27):** **Windwalker rebalance** — Spell tier formula changed from `skill/50+1` to `skill/SkillPerTier` (default 200). Tier 1 at 200 War Magic, tier 2 at 400. Configurable via `CombatClasses.Windwalker.SkillPerTier`.
- **Done (2026-04-27):** **Chaos Tinker fix** — Failures now increment `NumTimesTinkered` (toggleable). Per-item chaos failure cap (default 5) tracked via `PropertyInt 40120`. Item becomes immune to further chaos once cap reached. Uses `[ThreadStatic]` to communicate chaos state between prefix/postfix.
- **Done (2026-04-27):** **QOL verbose XP auto-spend** — `SpendForPlayer()` refactored to return `List<SpendResult>` with per-stat rank gains. Both manual `/xp spend` and auto-spend on `GrantXP` now show verbose breakdown: `"Spent 450,000 XP into 8 stats: ItemEnchantment (+13), Strength (+4)... Remaining: 12,000"`. Zero-gain stats omitted entirely. Fully standalone — no external mod dependencies.
- **Done (2026-04-27):** **SpellSiphon vendor integration** — SpellSiphon tool (WCID 850200) now sold at spell component vendors (mages/scriveners) for 50,000 pyreals. Filtered by `MerchandiseItemTypes` containing spell components (tapers, scarabs, powdered gems). Toggle: `EnableVendorSales`; price: `VendorPrice`.
- **Done (2026-04-27):** **Loremaster Account-Wide RepeatQB** — Per-quest 10-hour cooldown tracked across all characters on an account. Completing a quest on Character A blocks repeat rewards on Character B (same account) until cooldown expires. Shows standard ACE message: "You may complete this quest again in {time}!". WorldEvents bonus quests bypass cooldown (one-off quests). Settings: `EnableAccountWideRepeatCooldown`, `AccountRepeatCooldownSeconds`.
- **Done (2026-04-27):** **repeatQB Refactor** — Replaced legacy repeat stamp system with unique quest entries (`{baseName}#repeatQB{n}`). Each repeat completion creates a new ACE quest registry entry counted as +1 QP. Simplified `QuestBonus()` formula (removed stampFactor). Deprecated but preserved: `EnableRepeatStampSystem`, `RepeatStampBonusPerStamp`, `RepeatStampCooldownSeconds`, `LMFloat.RepeatStampMultiplier`.
- **Done (2026-04-27):** **Coalesced Mana Banking** — AutoLoot now banks Lesser (42516), Greater (42517), Aetheric (42518) Coalesced Mana to LeyLineLedger properties 41100–41102. Withdrawal aliases: `/b w lcm|lesser`, `/b w gcm|greater`, `/b w acm|aetheric`.
- **Done (2026-04-27):** **BonusQuest Daily Board** — Replaced interval-based rotation with daily 9pm CST reset. Board holds 10 quests: 2 top-tier (2× repeatQB), 5 mid-tier (5× repeatQB), 3 bottom-tier (10× repeatQB). Replaced bonus XP with direct repeatQB grant. 7-day lookback, generated quest exclusion, tier autofill.
- **Done (2026-04-27):** **Questgiver Blacklist** — WCIDs 22753 and 22754 blacklisted from awarding repeatQB. Tracked via `EmoteManager.ExecuteEmote` prefix → `LMInt.LastQuestgiverWcid`.
- **Done (2026-04-27):** **Kill Task Auto-Reaccept** — Max-solved kill tasks automatically reset to 0 after cooldown expires, granting +1 repeatQB on reaccept and +1 repeatQB on completion (+2 per full cycle). Tracked via `LMString.KillTaskAutoAcceptTimestamps`.
- **Done (2026-04-27):** **Log audit & interval fix** — LeyLineLedger repo + deployed `Settings.json` updated to 5 min scan intervals (was still 60). BSS ShieldThorns per-hit DEBUG spam removed. Empty `StackableWcids.json` created for QOL. Identified missing DB content: Shadowattack event, weenie 802138, treasure type 3112.

### Live Deployment (2026-04-29)

**Infrastructure:**
- **Port collision fixed** — Live server moved from 9001 → 9002 to avoid conflict with test server secondary listener (9000+1=9001). ACE binds `Port` and `Port+1`; servers must be ≥2 ports apart.
- **Full mod build + deploy** — All 22 mods rebuilt in Release, copied to `C:\ACE-WB\Mods\`, SQL applied to `wb_ace_world` and `wb_ace_shard`.
- **Deployed SQL:** AcademyWeapons_VendorStock, QuestItem_StackFix (world), QuestItem_BiotaCleanup (shard), Stackable_Trophies_Weenie (world), Stackable_Trophies biota cleanup (shard).
- **Verification:** Live server started cleanly on 9002; 0 errors in startup log; all 22 mods enabled.


## Suggested order (simplest → most complex)

Burn down from the top; later items need more design or ACE integration.

1. **Active bugs** — See [§ Active Bug Tracker](#active-bug-tracker). Fix verified issues before adding features.
2. **Immediate reworks** — See [§ Immediate Reworks](#immediate-reworks). Small scope, high impact.
3. **AureatePath — tuning + shipped mechanics** — Core flow includes **enlightenment pool** (11012), **high-enlight QB gate**, eligibility in `VerifyEnlightenmentEligibility`, and existing luminance/society gates. Prefer **`Settings.json`** for gates, level curve, removes, QB formula, and pool-adjacent behavior; see [§ AureatePath](#aureatepath) and [§ Loremaster](#loremaster) / [§ ChallengeModes](#challengemodes) for cross-mod **11012** alignment.
4. **Overtinked — JSON tuning only** — No open backlog. Tune `Settings.json` (splash caps, `CanDamage` gate, Nether multipliers / soft cap, imbue combat configs in `NewImbueConfig.cs`, etc.).
5. **Maintenance sweeps** — `rg -i "todo|fixme|hack" --glob "*.cs"` (filter false positives like `Convert.ToDouble`). Before a release, run `/mod-audit` on a mod or a fresh targeted `rg` pass; cleared audit sections below are historical only.
6. **Loremaster — Barkeeper parchments** — ~~Weighted pools, fetch stacks, messaging~~ **shipped**; tune `Settings.json` / templates on your shard. Spec in [§ Loremaster](#loremaster).
7. **Swarmed (deprioritized)** — *CreatureEx per-landblock* is **not on the near-term roadmap**; theoretically possible via post-placement / `EnterWorld` / landblock hooks, but unlikely to receive attention. Landblock-aware **reinforcement** scaling is already implemented (see [§ Swarmed](#swarmed)).
8. **EmpyreanAlteration — active priority** — Gear or mutators for high-tier effects (e.g. level 9/10 spells). **Design lock:** gate **only** on AureatePath **`ItemWieldRequirementEnlightenments`** (wield / item fake int count)—no additional gates unless policy changes.
9. **Greenfield concepts** — Uncommitted mod ideas in [§ Greenfield Backlog](#greenfield-backlog); start one when you pull it into scope.

---

## Active Bug Tracker

*All currently tracked bugs are fixed. Historical entries are preserved in prior sections above (most recent fixes: 2026-04-29). The last fixed bugs were: QOL VendorLootRotation clearing quest stock, LivingEquipment imbue stacking, DynamicMobScaling low-level HP overflow, AutoBuff wrong spell IDs, SpellSiphon TargetType/Unicode issues, AutoSalvage material mapping, and BSS SummoningClasses thread-safety.*

*If new bugs surface, add them here immediately with priority, root cause, and status. Repeat bugs automatically escalate to HIGH.*

---

## Active Work

*No active work in progress. All tracked items are below in Completed Work or Greenfield Backlog.*

---

## Completed Work (2026-04-30)

### WorldEvents Placement QP Rewards — **DONE (2026-04-30)**

**Goal:** Add unique repeatQB rewards to placement-based WorldEvents (Hunt, Cull, Invasion).

- ✅ Scales: 1st=5, 2nd=3, 3rd=2, 4th+=1. Solo participant = 10.
- ✅ `WorldEvents/PlacementQuestPoints.cs` — unified `ComputeAmount` + `GrantByRank`
- ✅ **Hunt** — `HuntRuntime.cs` grants QP inside `ActionChain` reward loop
- ✅ **Cull** — `CullRewards.cs` grants QP to all sorted participants after loot
- ✅ **Invasion** — `InvasionLootRewards.cs` grants QP to ranked participants
- ✅ Reflection bridge: `WorldEvents/LoremasterBridge.cs` → `Loremaster.CrossModBridge.GrantWorldEventsQuestPoints`

### Loremaster Loot Tier Delay — **DONE (2026-04-30)**

**Goal:** Clamps spell tier on creature treasure by killer level.

- ✅ New `Loremaster/LootTierDelay.cs` with `LootTierDelaySettings` (configurable threshold list)
- ✅ Patching private `Creature.GenerateTreasure` via `TargetMethod()` + `AccessTools.Method`
- ✅ Prefix on `SpellLevelChance.Roll` clamps treasure profile tier before roll
- ✅ Default thresholds: L1→T1, L20→T2, L40→T3, L60→T4, L80→T5, L100→T6, L125→T7, L150→T8

### Lottery System + `/donate` Command — **DONE (2026-04-30)**

**Goal:** Weekly lottery (pyreal + QB prize pools), funded by exchange taxes, sale spending, and voluntary `/donate`.

**Architecture:**
- **Dual pools:** `_pool` (pyreals) + `_qbPool` (QB) — independently tracked, independently distributed
- **Pyreal pool sources:** Exchange sell tax (with destruction), Sale vendor spending (`100%` to pool), `/donate pyreals|luminance`
- **QB pool sources:** `/donate qb` (player's `DonatedQuestPoints` offset increases, exact QB goes to pool)

**QP contribution tracking (server-side match):**
- `Loremaster/PatchClass.cs` `PendingLotteryContribution` — `10%` of every `AddExtraQuestPoints` accrues
- `CrossModBridge.DrainPendingLotteryContributions()` — called by LeyLineLedger before each draw
- **Players lose zero QP** — the `10%` is a server-side match, not a player deduction

**`/donate` command:**
- `/donate pyreals <amount>` — from banked pyreals → pyreal pool
- `/donate luminance <amount>` — from banked luminance → pyreal pool (rate: `DonateLuminanceRate`)
- `/donate qb <amount>` — from player's effective QB → QB pool (uses `DonatedQuestPoints` offset, no conversion rate)

**Anti-duping:** `DonateQuestPoints` adds to `DonatedQuestPoints` offset, reducing effective QB. `GrantLotteryQbPrize` bypasses `AddExtraQuestPoints` (and its 10% tracker) by directly setting `QuestPointsExtra`. No infinite loop.

**Draw mechanics:**
- `WinnerCount` = 3, `WinnerSplits` = `[0.50, 0.30, 0.20]`
- No duplicated winners across placements
- Pyreal prizes credited to bank; QB prizes granted via `GrantLotteryQbPrize`
- Offline QB prizes currently not persisted (online-only; can be added later)

**Sale integration:**
- `WorldEvents/Sale/PatchClass.SalePatches.cs` captures `totalCost` from `FinalizeBuyTransaction`
- `LeyLineLedgerBridge.AddToLotteryPool()` pushes pyreals directly
- `SaleBroadcast` announces next draw time and total collected on end
- `ActiveSaleData.LotteryContribution` tracks per-event total for end broadcast

**Files:** `LeyLineLedger/Lottery.cs`, `LeyLineLedger/PatchClass.cs` `HandleDonate`, `LeyLineLedger/LoremasterBridge.cs`, `Loremaster/CrossModBridge.cs`, `Loremaster/LoremasterExtensions.cs`, `WorldEvents/LeyLineLedgerBridge.cs`, `WorldEvents/Sale/SaleBroadcast.cs`

---

## Completed Work (2026-04-28 → 2026-04-30)

### XP Consolidation + Leveling Rebalance + Loot Tier Delay — **DONE (2026-04-30)**

**Goal:** Move all XP rate control under Loremaster. Keep live feel (`StandardBaseXpRetentionPercent = 5.0` feels good). Delay loot spell tiers by killer level.

**Phase 1 — Remove scattered XP prefixes:**
- ✅ **EasyServerSettings:** `XpModifier = 1.0` already live.
- ✅ **Numbersmith:** Deleted `GrantExperience.cs` (formula patch was not enabled on live and conflicted with Loremaster retention).
- ✅ **WorldEvents Hunt:** Removed `PreGrantXpKill` prefix. Hunt multiplier now set via `PendingKillXpMultiplier` player property (`PropertyFloat 40121`) in `PreDieHunt`; consumed by Loremaster `PreGrantXP`. Post-multiplier kill XP tracked in `PropertyInt64 40126` for hunt point calculation in `PostDieHunt`.
- ✅ **WorldEvents Cull:** Removed `PreGrantXpCull` prefix. `_pendingCullXpMult` ThreadStatic replaced with `PendingCullXpMultiplier` player property (`PropertyFloat 40125`) set on all player damagers in `PreDieCull`; consumed and removed by Loremaster `PreGrantXP`. Safety cleanup in `PostDieCull`.
- ✅ **ChallengeModes:** No GrantXP prefix existed that modified XP amount (only snapshots levels for achievements). `cmF` and `msF` already consumed in Loremaster `GetTotalXpMultiplier`.
- ✅ **BetterSupportSkills:** Removed dead `PreOnDeathGrantXP` from `LoyaltyHealingAura` (ThreadStatic `LoyaltyXpMultiplier` was set but never consumed). Luminance boost via `PrefixGrantLuminance` retained.
- ✅ **EmpyreanAlteration:** Removed dead `PreOnDeathGrantXP` from `FakeXpBoost` (ThreadStatic `ItemXpBoostPercent` was redundant — Loremaster `eqF` already reads equipped items' `FakeFloat.ItemXpBoost`). Luminance boost via `PreGrantLuminance` retained.
- ✅ **Swarmed:** Removed dead `PreOnDeathGrantXP` from `PatchClass.CallForHelp` (ThreadStatic `ReinforcementXpMultiplier` was set but never consumed). Reinforcement call-for-help skip logic retained.
- ✅ **QOL FullKillXpPerDamager:** Kept (distribution, not rate).
- ✅ **CommonGoals NoSplitXp:** Kept (distribution, not rate).

**Phase 2 — Loremaster unified formula:**
- ✅ `Loremaster/PatchClass.cs` `PreGrantXP` now reads `PropertyFloat 40121` (Hunt) and `PropertyFloat 40125` (Cull) and multiplies them into the chain alongside existing `baseF × qpF × eqF × augF × enF × cmF × msF`.
- ✅ Hunted kill XP amount stored to `PropertyInt64 40126` for WorldEvents hunt point tracking.

**Phase 3 — Balance preserved:**
- ✅ Live values retained (`StandardBaseXpRetentionPercent = 5.0`, `BonusXpBaseRetentionPercent = 10`, `BonusPerQuestPoint = 0.1`). No formula changes — only architectural consolidation.

**Phase 4 — Loot spell tier clamping:**
- ✅ New `Loremaster/LootTierDelay.cs` with `LootTierDelaySettings` (`Enable`, configurable `Thresholds` list).
- ✅ Patching private `Creature.GenerateTreasure(DamageHistoryInfo, Corpse)` via `TargetMethod()` + `AccessTools.Method` to set `ThreadStatic` killer level.
- ✅ Prefix on `SpellLevelChance.Roll` clamps treasure profile tier passed to the roller based on killer level.
- ✅ Default thresholds: L1→T1, L20→T2, L40→T3, L60→T4, L80→T5, L100→T6, L125→T7, L150→T8.
- ✅ Settings + JSON defaults added to Loremaster.

**Phase 5 — Build & deploy**
- ✅ All affected mods build clean: Loremaster, WorldEvents, Numbersmith, BetterSupportSkills, EmpyreanAlteration, Swarmed.

---

## Completed Work (2026-04-28 → 2026-04-29)

### Multi-Mod Feature Batch — **COMPLETED**

### Post-Batch Completed Items

6. **~~Move MaxLevel / XP Table Extension → AureatePath~~** — **DONE**
   - **Owner:** AureatePath now owns server level cap (`MaxLevel`, `CreditInterval`, `LevelCost`).
   - `AureatePath/PatchClass.cs` extends `DatManager.PortalDat.XpTable.CharacterLevelXPList` on world open.
   - `ChallengeModes` deprecated its own `MaxLevel`/`CreditInterval`/`LevelCost` settings (preserved in `Settings.cs` for JSON compatibility, marked DEPRECATED).
   - `AGENTS.md` updated: AureatePath owns server level cap convention.

7. **~~Dynamic Mob Scaling~~** *(Swarmed)* — **DONE**
   - Scales mob level/difficulty/loot/XP to nearby players within same landblock.
   - Solo → player's level; Group → average level.
   - Landscape soft caps per tier; dungeons scale fully.
   - Max level reads `DatManager.PortalDat.XpTable.CharacterLevelXPList.Count` at runtime.
   - `/xp mob_scaling` toggle in QOL (sets `PropertyBool 40151`).
   - Files: `Swarmed/Features/DynamicMobScaling.cs`, `Swarmed/Settings.cs`, `Swarmed/Settings.json`, `QOL/XpTracker.cs`.

1. **~~DruidPetThorns Batching~~** *(BetterSupportSkills)* — **DONE**
   - Replace per-hit messages with 15-second aggregated window.
   - Batch both AoE attack procs and defense reflection procs.
   - Output: `"Your pets' thorns lash out, dealing {total} total damage to {count} nearby {enemy/enemies} over 15 seconds."`
   - Pattern: replicate `QOL/PetKillSummary.cs` (`Task.Delay` + `CancellationTokenSource` reschedule).

2. **~~TrophyDrops Stack Consolidation + Quest Integration~~** *(BetterSupportSkills)* — **DONE**
   - **Physical stacking:** Non-equippable bonus items (keys, potions, etc.) merge into single stacks on the corpse. Equippables never stack.
   - **Message consolidation:** Sum quantities by name before formatting.
   - **Quest item daily cap:** High-value quest items (tusker tusks, olthoi pincers, eater jaws) added as TrophyDrops bonus rolls with daily cap of 10 per item type.
   - **Cap mechanics:** Rolling 20h window from first turn-in + fixed daily reset at 9pm CST. After 10 turn-ins, items still drop but XP reward is suppressed.
   - **WCID list:** 22419, 22423, 22424, 22427, 22428, 22431 (Tusker Tusks); 10843, 10844, 10845, 10846, 10847, 27589, 27590, 27591, 51211, 51214 (Olthoi Pincers); 28718, 28725, 28726, 28727, 42104 (Eater Jaws).
   - **Creature filtering (2026-04-29):** Added `IsValidTrophySource()` to prevent wrong creatures from dropping trophies. Configurable `DropChance` (default 0.01). Champion stack size 1-8.

3. **~~Overtinked Context-Aware Chaos~~** *(Overtinked)* — **DONE**
   - Before applying `DamageMod`/`ElementalDamageMod` overcharges, check if target can benefit.
   - Caster without elemental damage type → reroll to `ManaSurge`, `SpellWhisper`, or `LightAsAFeather`.
   - Jewelry/shield without damage property → reroll to armor-relevant effect.
   - Implemented in `ChaosFailureEffects.cs` via `IsDamageEffectApplicable()` + `ApplyFallbackChaos()`.

4. **~~AutoLoot Chest + Salvage Sweep~~** *(AutoLoot)* — **DONE**
   - **Chest auto-loot:** Patch `Container.Open` postfix. Runs full AutoLoot logic (profiles, VendorTrash, UnknownScrolls, key banking, LLL currency) on chest inventory.
   - **Delayed salvage sweep:** 15-second timer starts when player opens a corpse or chest. Timer expires → remaining items auto-salvaged via BSS bridge, or destroyed if un-salvageable.
   - **Settings:** `EnableChestAutoLoot`, `EnableDelayedSalvageSweep`, `SalvageSweepDelaySeconds`.
   - Implemented in `Autoloot.cs` (`OnContainerOpened`, `ProcessContainerLootImmediate`, `ProcessContainerLootClose`, `StartSalvageTimer`, `ExecuteSalvageSweep`).

5. **~~Invasion Portal Storms~~** *(WorldEvents)* — **DONE**
   - Rename unthemed invasions (`ChaosMode = true`) to **"Portal Storm"** in all broadcasts/logs.
   - Spawn 3–9 random portals per town (scales with tier + pulse count).
   - Portals shuffle every 45 seconds (`PortalExit` animation → destroy → respawn with `PortalEntry`).
   - **Destinations:** Override to random point within active invasion landblocks, weighted toward town center (replicates live portal storms).
   - **Filters:** Exclude Town Network and marketplace portals from random pool.
   - **Settings:** `PortalStormMaxPortals`, `PortalStormMinPortals`, `PortalStormShuffleIntervalSeconds`.
   - Implemented in `InvasionRuntime.cs` (`SpawnPortalStormPortals`, `ShuffleStormPortals`, `SpawnStormPortal`, `GenerateStormPortalDestination`).

### Recently Fixed (2026-04-26 → 2026-04-28)

| Bug | Fix Commit |
|-----|-----------|
| Loremaster crash on quest stamp | `Loremaster/PatchClass.cs`: `Settings` initialized before `base.Start()`; `PreExecuteEmote` signature fixed to `ExecuteEmote(PropertiesEmote, PropertiesEmoteAction, WorldObject)`; null guard added to `CheckQuestEligibilityChange`. |
| EmpyreanAlteration ChaosTriggeredGrowth patch failure | `EmpyreanAlteration/ChaosTriggeredGrowth.cs`: `TargetMethod()` wrapped in `try/catch` to return `null` gracefully when cross-mod type is absent. |
| QOL StackableWcids.json missing | Added `StackableWcids.json` to QOL source and deployed build output. |
| Assess Creature bonus "chances instead of stacked items" | `TrophyDrops.cs`: extra rolls now loop `for (roll = 0; roll < extraRolls; roll++)` with guaranteed stacks 2–5. |
| Cull event not counting Swarm-generated kills | Removed `if (IsSpawnedAdd) return;` guard before `RecordKill`. Swarm kills now count. |
| Offlineswear filter affects friends | Added `Character.HasAsFriend` and `MonarchId` allegiance checks to `OfflineSwear.cs`. |
| Lucky Gold Letter stack minimum | `Lockboxes` now respects `stackSizeMin` from loot config instead of hardcoding `stackSize = 1`. |
| Event reminders fire too often | Legacy event runtimes silenced when `UseUnifiedScheduler=true`; only scheduler broadcasts remain. |
| LeyLineLedger intervals stale (repo + deployed) | Updated `EconomyBalancer.ScanIntervalMinutes` → 5, `LootTracker.ScanIntervalMinutes` → 5, `MinScanIntervalMinutes` → 1 in repo and deployed `Settings.json`. |
| BSS ShieldThorns DEBUG log bloat | Removed 5 per-hit `DebugLog` calls from `PostfixCalculateDamage` in `BetterSupportSkills/Skills/ShieldThorns.cs`. |
| QOL StackableWcids.json missing | Created empty `{}` file at `C:\ACE\Mods\QOL\StackableWcids.json` to silence startup warning. |
| VendorPriceInflation decimal truncation | `QOL/VendorPriceInflation.cs` postfixes now use `(int)Math.Round(__result * multiplier)` instead of `(int)` truncation. |
| MaterialBankPropertyBase hardcoded | `BetterSupportSkills/Skills/SalvageAutoDeposit.cs` and `AutoLoot/Autoloot.cs` now use configurable `MaterialBankPropertyBase` (default 40201) instead of hardcoded 40201. |
| BSS SummoningClasses crash | `BetterSupportSkills/Skills/SummoningClasses.cs`: Replaced `HashSet<uint> TrackedPetGuids` with `ConcurrentDictionary<uint, byte>` and updated all `Add`/`Remove`/`Contains` calls to `TryAdd`/`TryRemove`/`ContainsKey`. Build verified. |
| AutoSalvage not working | Phase 1: `AutoLoot/Autoloot.cs` — Added `MaterialTypeFallback` for category types; raised `materialIndex` cap 70→108; expanded `GetSalvageMaterialName` to 109 entries; removed equippable-item destruction in Pass 5. `BetterSupportSkills/Skills/SalvageAutoDeposit.cs` — Raised `GetMaterialIndex` cap 70→108; expanded `GetMaterialName` to 109 entries. Phase 2 (consolidation): Moved ALL auto-salvage logic into BSS (`TryAutoSalvageItem`, `GetSalvageRate`, skill gate 25%/50%, least-banked category fallback). AutoLoot now delegates via `BetterSupportSkillsBridge.TryAutoSalvage`. Removed obsolete helpers (`TryAutoSalvageMaterial`, `MaterialTypeFallback`, `GetSalvageMaterialName`, `MaybeSendAutoSalvageMessage`, `IsSalvageItem`, `IsEquippableItem`) from AutoLoot. Both built and deployed. |
| Challenge quit invisible gear | `ChallengeModes/CmQuit.cs` rewrote `UnequipAllToPack` to use `TryAddToInventory` + manual `GameMessagePublicUpdateInstanceID`/`GameEventItemServerSaysContainId` instead of `TryCreateInInventoryWithNetworking`. |
| EmpyreanAlteration not loading | `EmpyreanAlteration/EmpyreanAlteration.csproj` changed `Meta.json` `CopyToOutputDirectory` from `Never` to `PreserveNewest`. |
| Treasure type 3112 invalid | `ValheelContent/Content/05-treasure/300392 Empowered Only.sql` updated `item_Treasure_Type_Selection_Chances` 12→9 and `mundane_Item_Type_Selection_Chances` 9→7. Applied to live DB. |
| Weenie 802138 missing | Cloned from Amelia's Pet Gargoyle (35930) with name "Queenie" and inserted into live DB. |
| EasyServerSettings 4 bools rejected | Removed `equipmentsetid_enabled`, `equipmentsetid_name_decoration`, `legacy_loot_system`; renamed `olthoi_play_enabled` → `olthoi_play_disabled` (inverted value). |
| Missing weenies 801155, 801173, 801182, 801191, 801200, 801209 | Created placeholder invisible generic objects in `ValheelContent/Content/03-weenie/Placeholders/801155-801209 Missing Landblock Objects.sql` and applied to live DB. |
| Spell.Init(spellID = 0) DEBUG spam | `EmpyreanAlteration/Features/MutatorHooks.cs` added `PostRollSpellLevels` postfix to filter `SpellId.Undef` from `LootGenerationFactory.RollSpellLevels` result. Root cause: ACE vanilla blast spell progressions have `Undef` at levels 1–2. |
| SpellSiphon not charging Coalesced Mana | `Spellsiphon_Tool_Create.sql`: `TargetType` 33569 → 35215 (adds `Misc | Gem | Jewelry | Armor | Clothing`). `CoalescedMana_Update.sql`: replaced em-dashes with hyphens; updated `Use` strings; added `TargetType = 128 (Misc)` to all three tiers. `UseOnTargetHooks.cs`: added bidirectional Step 1b (`Coalesced Mana → Spellsiphon`). |

### Completed Features (2026-04-28)

| Feature | Description |
|---------|-------------|
| **ValheelContent Segmentation** | Disabled all Valheel content except Adventurer's Haven + Town Network portals. Stripped Valheel NPCs from `0007.sql`. Generated and executed cleanup SQL for 4,778 weenies across 63 disabled folders. Added `EnabledContentFiles` exception for `03-weenie/Buildings/1000005 townnetworkplatform.sql`. |
| **Chaos-Tinker Leveling Disabled** | Set `EmpyreanAlteration.Settings.ChaosTriggeredGrowth = false`. Chaos tinkers no longer grant item XP/levels. |
| **LivingEquipment Mod (v0.1.0)** | New mod: tiered item awakening with Coalesced Mana. Lesser→25, Greater→50, Aetheric→75. Named XP profiles (QuickStart/Steady/Brutal/Casual) with tier-weighted assignment. MaterialType-based renaming (`Steel Longsword` → `Living Longsword`). Pre-awakened (2%) and pre-imbued (2%) loot drops. Custom `ExperienceSystem` prefixes with `[HarmonyPriority(Priority.First)]`. |
| **Coalesced Mana SQL** | Updated `LongDesc` for WCIDs 42516/42517/42518 to include LivingEquipment usage hints. |
| **LeyLineLedger Bank Labels** | Coalesced Mana bank items renamed to include tier info: `Lesser Coalesced Mana (Awaken I, Lv.25)`, etc. |
| **SettingsContainer List Deserialization Fix** | `ValheelContent/PatchClass.cs`: Added manual `JsonSerializer.Deserialize<Settings>()` fallback when `SettingsContainer.Settings` returns empty `List<string>` properties (affects `DisabledContentFolders` and `EnabledContentFiles`). Prevents accidental re-import of disabled content on hot-reload. |

### Completed Work (2026-04-29 Evening Session)

| Feature | Description |
|---------|-------------|
| **Gear Pool in SharedLoot** *(SharedLoot / BetterChestLoot)* | New `gear` category in `DefaultLootConfig.cs` with 25 verified base item WCIDs (melee, missile, casters, armor, shields, jewelry incl. Elysa's Favor 14452-14487 and Baron's Amulet 7886). `GearChance = 0.25` independent roll. `LootRoller.TryCreateGearItem` reflection-bridges to `LivingEquipment.LootMutator.ApplyToLootItem` if loaded. BetterChestLoot adds gear as bonus item on top of normal 1-3 guaranteed drops. |
| **LivingEquipment Imbue Fixes** *(LivingEquipment)* | `ApplyWeaponImbue`: checks `AllRendingFlags` first (no multiple rends), handles `DamageType` bitmasks via bitwise AND, converts `DamageType` to match rend imbue after application. `UpdateUiEffectsForImbue`: now reads actual `PropertyInt.ImbuedEffect` instead of `DamageType` so Fire=Fire glow, Cold=Frost glow, Acid=Acid glow, Electric=Lightning glow. `ApplyToLootItem`: idempotency guard via `PreImbuedCount > 0`. |
| **QOL AutoBuff Spell ID Fix** *(QOL)* | `GemBuffSpellIds` had wrong IDs: `2244` (Web of Defense, not Blackmoor's Favor) and `31001` (non-existent). Corrected to `3811` (Blackmoor's Favor) and `3810` (Asheron's Benediction). Root cause: comment and code had drifted from actual DB spell IDs. |
| **QOL VendorLootRotation Selective Clear** *(QOL)* | `RotateVendorInventory` no longer calls `vendor.DefaultItemsForSale.Clear()`. Instead: removes previously rotated items (tracked in `_vendorRotatedItems`), strips any equipment (Armor/Melee/Missile/Caster) that slipped through `VendorInventoryFilter`, leaves all vanilla non-equipment stock (healing kits, arrows, quest items, etc.) intact. |
| **ProtectedVendorItems — Oil of Rendering** *(QOL)* | New `ProtectedVendorItems` dictionary in `VendorLootRotation`. Academy Researcher (WCID 30997) always has Oil of Rendering (WCID 12711) restored after each rotation cycle. Pattern extensible for any quest-critical vendor stock. |
| **DynamicMobScaling HP Fix** *(Swarmed)* | `LevelVariance` now capped relative to target level: `effectiveVariance = Min(LevelVariance, Max(1, targetLevel/4))`. Hard cap: baseLevel ≤ 5 mobs can't exceed `baseLevel × 3`. `ScaleVitals` now splits on baseLevel: ≤10 use flat additive (+3 HP/stamina/mana per level diff); >10 use sqrt curve on `Ranks` (not `MaxValue`) to avoid double-counting `StartingValue`. |
| **Loremaster XP Rate Tuning** *(Loremaster)* | `StandardBaseXpRetentionPercent` bumped from `0.2` → `0.3` → `0.5` on live to improve early-game feel. Note: value is divided by 100 in formula (0.5 = 0.5% of raw ACE XP). |
| **Bulk Quest Turn-In — Drudge Charms** *(BetterSupportSkills)* | `QuestTurnInCap.cs` extended with `BulkQuestWcids` (drudge charm 3669 + extensible). `PreGiveObjectToNPC` tracks stack size when bulk item given. `PreGrantXP` multiplies XP by total count (1 given + remaining removed from inventory). Message: `"You turn in {N} drudge charms for {XP} experience!"` |
| **QOL VendorLootRotation Rebalance** *(QOL)* | `VendorProfile` enum (Blacksmith/Bowyer/Archmage/Jeweler/Tailor/General) reads `MerchandiseItemTypes`. Items retry 8× until matching profile. `RollTier` tightened to `vendorTier..vendorTier+1`. `ApplyWieldRequirementCap(vendorTier × 50)`. Cleanup strip includes Clothing+Jewelry. Loot volume 3× (12-27 items, 50% magic, 30% mundane). `/qol vendor rotate` command. |
| **LivingEquipment → EA Pre-Awaken Absorption** *(both)* | LivingEquipment's `LootGenerationHook` removed. Pre-awaken/pre-imbue logic moved to EA `LootGrowthItem.TryMutateLoot`. LE's XP profiles (QuickStart/Steady/Brutal/Casual) and tiered max levels (25/50/75) preserved. LE now only handles Coalesced Mana use-on-target + vendor injection. |
| **EA Quest Item Guaranteed Pre-Awaken** *(EmpyreanAlteration)* | `TryMutateEmoteGive` on `LootGrowthItem`: all quest equippable gear gets guaranteed Tier 1 (Lesser, Casual) pre-awaken + workmanship + imbue (elemental rend on weapons, defense imbue on armor). |
| **EA Monster Loot Wield Cap** *(EmpyreanAlteration)* | `ApplyWieldRequirementCap(tier × 50)` applied in `TryMutateLoot` so monster drops match source creature difficulty. |
| **EA Settings.QuestItemGrowth** *(EmpyreanAlteration)* | Pre-awaken config added: `EnableLootItemPreAwaken`, `PreAwakenChance`, `PreAwakenTierWeights`, `PreAwakenMaxLevels`, `LootItemPreAwakenXpProfiles`, profile weights per tier, prefix, UiEffects. |
| **LE PreAwakenedChance Fix** *(LivingEquipment)* | JSON `PreAwakenedChance` 2.0→0.2. `PreAwakenedTierWeights` `[1.0, 0.3, 0.01]`. |

### Completed Work (2026-04-29 Session)

| Feature | Description |
|---------|-------------|
| **Academy Weapon Vendor Injection** *(LivingEquipment)* | Academy starter weapons auto-injected into town blacksmiths, bowyers, and archmages via `VendorApproachPrefix` (priority=Last). Detects vendor type by WCID. Pre-awakened to Tier 1 (Casual, max level 25). Price: 1000 pyreals base, scaled by LLL economy multiplier. |
| **VendorLootRotation + Academy Coexistence** *(QOL)* | QOL VendorLootRotation (priority=First) clears default inventory and generates random loot. LivingEquipment (priority=Last) adds Academy/Pathwarden items on top. Academy vendors removed from VendorLootRotation blacklist — they get both random loot AND static Academy/Pathwarden items. |
| **Dynamic Vendor Pricing via LLL Economy** *(LeyLineLedger)* | New `GetVendorBuyPriceMultiplier()` public static method in `EconomyBalancer`. Formula: `baseMultiplier * (1 + log10(totalPyreals / divisor))`. Base=5.0, Divisor=100M. Clamped 1x-50x. Used by LivingEquipment vendor injection and QOL VendorLootRotation via reflection bridge. |
| **Pathwarden Armor Auto-Awaken + Vendor Sales** *(LivingEquipment)* | Pathwarden armor/robes/trinket (WCIDs 33597-33607, 40439/40454-40456, 41513) added to `AutoAwakenTier1Wcids`. Sold at appropriate vendors: robes→clothiers, armor→armorers, trinket→jewelers. Detected via `MerchandiseItemTypes` flags. |
| **Visual UiEffects Overlay** *(LivingEquipment)* | Default `LivingItemUiEffects` changed from `256` (Acid=green) to `20` (BoostHealth\|BoostStamina=yellow/gold). Applied to vendor-injected items via `PropertyInt.UiEffects` + broadcast. `ItemAwakener.TryAutoAwaken` applies same overlay to looted items. |
| **QOL VendorPriceInflation Disabled** *(QOL)* | `EnableVendorPriceInflation` set to `false` in QOL Settings.json. LLL now sole source of vendor pricing control. Prevents double-pricing conflicts. |
| **SpellSiphon Weenie Creation** *(SQL)* | Applied `Spellsiphon_Tool_Create.sql` and `ManaLattice_Create.sql` to test server `ace_world`. WCIDs 850200/850201 now exist with proper `TargetType=35215` for bidirectional use-on-target. |
| **AGENTS.md Deployment Instructions** | Added "push test" convention for test server deployment. Added MySQL connection details (path, host, port, username, password, database names). Added server startup preference (visible windows, not background processes). |
| **LivingEquipment Readme** | Updated with vendor integration, Pathwarden armor support, UiEffects, and LLL economy pricing details. |

## Repeat Bug Escalation

If a bug resurfaces after being marked fixed, it **automatically escalates to HIGH priority** and requires:
1. Root cause analysis documented in this section
2. Link to previous fix commit
3. Explanation of why the fix failed
4. New fix approach before closing

*Currently no repeat bugs tracked.*

---

## Immediate Reworks (Next Session)

1. **~~BetterLootControl (BLC) Mod Creation~~** — **DONE (2026-05-01)**
   - **Goal:** Consolidate all loot-table logic into one mod — `BetterLootControl`.
   - **Absorb:** `SharedLoot` (models, roller, config store, salvage bag shaper) + `BetterChestLoot` (chest injection, `SelectAProfile`/`Reset`/`Close` hooks, GlobalRareDrops).
   - **Keep calling into:** `EmpyreanAlteration` for item mutation (pre-awaken, pre-imbue) via existing reflection bridge. Do NOT absorb EA.
   - **New callers:** Any mod needing bonus loot pools (Loremaster repeat-solve, Lockboxes, WorldEvents placement rewards) references `BetterLootControl` instead of `SharedLoot`.
   - **Migration completed:** Scaffolded folder, migrated SharedLoot files (preserved `namespace SharedLoot` for zero C# changes in dependents), merged BCL patches into `BetterLootControl/PatchClass.cs` + `GlobalRareDrops.cs`, updated `Loremaster.csproj`, `CommonGoals.csproj`, `WorldEvents.csproj`, disabled old mods in `Meta.json`. Built + deployed to test server; verified clean startup (BLC Active, BCL Disabled).
   - **Remaining (Phase 8):** Delete `SharedLoot/` and `BetterChestLoot/` folders after live migration period.

2. **LivingEquipment → EmpyreanAlteration Full Absorption** — **IN PROGRESS**
   - **Goal:** Delete `LivingEquipment/` mod entirely. All remaining functionality (Coalesced Mana use-on-target awakening, vendor injection, auto-awaken on inventory add) absorbed into `EmpyreanAlteration`.
   - **Current state:** Pre-awaken/pre-imbue loot logic already moved to EA (`LootGrowthItem.TryMutateLoot`). LE now only handles Coalesced Mana use-on-target + vendor injection + auto-awaken on pickup.
   - **Remaining LE files to migrate:** `ItemAwakener.cs` (awakening engine), `PatchClass.cs` (use-on-target hooks, auto-awaken on inventory entry), `Settings.cs` (LE-specific settings), vendor injection logic.
   - **Cross-mod references to clean:**
     - ~~`SharedLoot/LootRoller.cs` `TryApplyLivingEquipment` reflection bridge → redirect to EA's mutator.~~ **DONE** — `BetterLootControl/LootRoller.cs` `TryApplyEmpyreanAlteration` now prefers EA, falls back to LE.
     - `QOL/PatchClass.cs` vendor approach priority comment → update to reference EA.
     - `EmpyreanAlteration/Mutators/LootGrowthItem.cs` comments → update/remove LE references.
     - `Swarmed/Settings.cs` doc comments → update LE references.
   - **Property ownership:** `LivingEquipmentProperties.IsAwakened` (FakeBool 40130), `AwakenedTier` (FakeInt 40131), `PreImbuedCount` (FakeInt 40132), `OriginalName` (FakeString 11033), `ProfileName` (FakeString 11034) — already documented in `AGENTS.md` as cross-mod shared IDs. EA should own these property constants after migration.

3. **Salvage Pool Split + Guaranteed Chest Drops** *(SharedLoot/BetterChestLoot)* — **DONE (2026-05-01)**
   - Split `salvage` into `salvage` (regular), `imbueSalvage`, `foolproofImbueSalvage` pools.
   - `DefaultLootConfig.cs`: Moved imbue WCIDs to new pools. Removed foolproof from `rare`. Added 46441 Boxed Augmentation Gem to `extremelyRare`.
   - `LootRoller.cs`: `TryCreateSalvageItem` (guaranteed), `TryCreateImbueSalvageItem` (25%), `TryCreateFoolproofImbueSalvageItem` (5%). Foolproof stacking bug fixed — foolproof items never get `MaxStackSize` set.
   - `BetterChestLoot/PatchClass.cs`: Guaranteed 1 regular salvage + 1-3 common+ items + 25% imbue + 5% foolproof + 25% gear.
   - `Loremaster/LootConfig.json`: Synced runtime config with all new pools and chances.
   - Built, deployed to test server, verified.

4. **Overtinked Salvage Weenie Edits Visibility** *(Overtinked)* — **BACKLOG**
   - **Problem:** Tinkering formula changes (increased armor from steel, increased damage from iron, increased protection/bane from armoredillo hide, etc.) implemented via Harmony patches may not be visible in-game because ACE caches weenie properties at startup or because the recipe system reads from weenie DB tables directly rather than from patched runtime values.
   - **Investigation needed:** Check if `RecipeManager` / `TinkeringRules` reads from weenie `weenie_properties_int` / `weenie_properties_float` at runtime, and whether those queries bypass Harmony patches. If so, we may need SQL weenie updates alongside Harmony patches.
   - **Plan before implementation:** Audit Overtinked's tinkering patches, identify which formulas are patched in-memory vs. which would need DB-level property changes, document findings.

4. **~~Vendor Rend/UiEffects Loss + Unlimited Supply Bug~~** *(QOL / SpellSiphon)* — **DONE**
   - All mod-generated vendor items now inject into `UniqueItemsForSale` (actual WO transferred + auto-removed after purchase).
   - **Problem:** `Vendor.ItemProfileToWorldObjects()` recreates purchased items from the weenie template (`WorldObjectFactory.CreateNewWorldObject(wcid)`). Custom runtime properties — `UiEffects`, `ImbuedEffect`, `IconUnderlayId`, `Name`, `ItemMaxLevel`, `ItemTotalXp`, workmanship, spells — are lost. Default items are never removed from `DefaultItemsForSale`, giving infinite supply (free duplication of pre-imbued / pre-awakened gear).
   - **Fix approach (recommended):** Centralized Harmony patch in **EmpyreanAlteration** (already patches `FinalizeBuyTransaction` for mutators).
     - **Postfix on `Vendor.ItemProfileToWorldObjects`** — looks up original vendor item in `DefaultItemsForSale` by `itemProfile.ObjectGuid`. If found and original has any modded properties (`UiEffects != 0` || `ImbuedEffect != 0` || `IconUnderlayId != null` || custom Name), deep-copies all Biota properties (bool/int/int64/float/string/DID/spellbook) to the newly created WO. Stores original GUID in a temporary `PropertyInt` (e.g. `40200`) on the clone.
     - **Postfix on `Player.FinalizeBuyTransaction`** — for each `genericItems` entry, if it carries the temp property, finds the original in `vendor.DefaultItemsForSale` by GUID and removes it. This makes modded vendor items truly one-off without touching vanilla infinite-supply stock (healing kits, arrows, etc.).
   - **Alternative (simpler but requires injection changes):** Move mod-injected items to `UniqueItemsForSale` instead of `DefaultItemsForSale`. ACE already transfers actual WOs for unique items (properties preserved + auto-removed after purchase). Requires LivingEquipment and QOL injection code changes.
   - **Settings:** `EnableVendorItemPreservation` (default true), `EnableVendorOneOffModdedItems` (default true).

2. **~~BetterChestLoot → BetterLootControl Migration + Rare Global Drops~~** *(BetterChestLoot)* — **DONE**
   - `BetterChestLoot/Features/GlobalRareDrops.cs`: 0.5% chance for SpellSiphon tool (850200) and Mana Lattice (850201) on creature corpses with DeathTreasure.
   - **Goal:** Evolve BetterChestLoot from a chest-only guaranteed-drop system into an immutable "loot editing" mod that modifies ALL loot sources (chests, creatures, vendors).
   - **Rename:** Mod folder stays `BetterChestLoot` for now; document rename to `BetterLootControl` in backlog. After rewrite, `.csproj` AssemblyName changed, new `Meta.json` added, old folder deprecated.
   - **Feature: Global Rare Drops** — Add SpellSiphon tool (WCID 850200) and Mana Lattice (WCID 850201) as rare drops on creature corpses.
     - Roll once per `Creature.GenerateTreasure` when creature has a valid `DeathTreasure` profile (i.e. anywhere an Encapsulated Spirit could drop).
     - Chance: configurable `RareDropChance` default **0.005** (0.5%). Each item rolls independently.
     - Items drop directly into corpse inventory via `corpse.TryAddToInventory()`.
     - Both items remain vendor-purchasable for players with excess cash.
   - **File:** `BetterChestLoot/Features/GlobalRareDrops.cs` (new), patch via postfix on `Creature.GenerateTreasure`.

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
9. **House Chest Upgrades** *(Lockboxes/BetterChestLoot)* — +10 slots via MMDs + writs
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

### LivingWeapons (Greenfield)

- **Concept:** Coalesced Mana tiers (Lesser 42516, Greater 42517, Aetheric 42518) repurposed from SpellSiphon v1. Used to "awaken" weapons, granting them leveling stats (HP, damage, elemental bonus, etc.). Higher tiers = more potential levels or faster growth.
- **Mechanic:** Use Coalesced Mana on a weapon → weapon gains `ItemTotalXp = 0` and a custom XP curve. Kills grant XP. Level-ups apply random stat growth (similar to EmpyreanAlteration's ChaosTriggeredGrowth but without chaos requirement).
- **Placeholder name:** LivingWeapons — may change.
- **Status:** Backlog. No code written. Requires: weapon weenie update SQL, XP tracking system, level-up stat engine, UI for showing current level/progress.

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
