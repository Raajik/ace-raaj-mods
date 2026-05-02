# Completed Tasks Archive

Archived completed work from PLAN.md. Move items here when done to keep PLAN.md readable.

---

## 2026-05-01

### BetterLootControl Mod Creation
- **Goal:** Consolidate all loot-table logic into one mod — `BetterLootControl`.
- **Absorbed:** `SharedLoot` (models, roller, config store, salvage bag shaper) + `BetterChestLoot` (chest injection, `SelectAProfile`/`Reset`/`Close` hooks, GlobalRareDrops).
- **Keep calling into:** `EmpyreanAlteration` for item mutation (pre-awaken, pre-imbue) via existing reflection bridge.
- **Migration completed:** Scaffolded folder, migrated SharedLoot files, merged BCL patches, updated references, disabled old mods.
- **Folder cleanup (2026-05-02):** `SharedLoot/` and `BetterChestLoot/` removed from the repository; loot types live only in `BetterLootControl/` (still `namespace SharedLoot` for dependents). Delete stale `Mods/BetterChestLoot` and `Mods/SharedLoot` on servers if they remain from older deploys.

### LivingEquipment → EmpyreanAlteration Full Absorption
- **Goal:** Delete `LivingEquipment/` mod entirely. All remaining functionality absorbed into `EmpyreanAlteration`.
- **Migrated files:** `LivingEquipmentProperties.cs`, `ItemAwakener.cs`, `PatchClass.cs` hooks, `LivingEquipmentXpCurve`.
- **Settings absorbed:** Reused EA existing + added new LE-specific settings.
- **Cross-mod references cleaned:** BLC, QOL, Swarmed updated.
- **`LivingEquipment/` folder deleted.** All affected mods build clean.

### Salvage Pool Split + Guaranteed Chest Drops
- Split `salvage` into `salvage`, `imbueSalvage`, `foolproofImbueSalvage` pools.
- Added foolproof stacking bug fix — foolproof items never get `MaxStackSize` set.
- Guaranteed chest drops: 1 regular salvage + 1-3 common+ items + 25% imbue + 5% foolproof + 25% gear.

### BetterLootControl Gear Ratings + Equipment Sets
- All tiers of gear loot can spawn with ratings and equipment sets.
- Ratings scale with awakened item leveling via `EnableGenericRatingLevelUp`.

### Vendor Rend/UiEffects Loss + Unlimited Supply Bug
- All mod-generated vendor items now inject into `UniqueItemsForSale` (actual WO transferred + auto-removed after purchase).
- Fix in EmpyreanAlteration via postfixes on `Vendor.ItemProfileToWorldObjects` and `Player.FinalizeBuyTransaction`.

### QOL VendorLootRotation hard-disable
- Root cause of three live vendor bugs (duplicate inventory, SpellSiphon missing, price desync).
- Settings.json had an illegal trailing comma causing deserialization failure.
- Fixed by removing trailing comma AND hardcoding `return` in `TryApplyVendorLootRotationPatch()`.
- Vendor inventory management now belongs exclusively to LeyLineLedger.

### Radi vendor (WCID 800039)
- New vendor "Radi" in Town Network (cell `0x00070132`) selling enlightenment, forgetlessness, and attribute gems.
- Protected from loot rotation via `_protectedVendorWcids`. Moved from ValheelContent to WindblownContent.

### CreatureEx loot rewrite
- `Swarmed/Features/SpecialCreatureLoot.cs` replaced flat random pool with 3-tier system: salvage (1-3 items, tier+1), uncommon+ (tier+1 rarity), guaranteed special (tier+2 with forced imbue + awakening).

### Trophy stacking fix
- Added 41 missing whitelist items to SQL. Includes Drudge Charms (24835/24836) and all body parts/pelts/charms.
- Biota cleanup applied to existing items.

### Pathwarden vendor restoration
- WorldEvents Pathwarden vendor weenies (850300–850303) re-applied to live DB.
- ValheelContent disabled to prevent landblock-wide DELETE from wiping them again.

### BetterLootControl Coalesced Mana takeover
- Moved Coalesced Mana drops from ACE vanilla to BLC.
- New `DisableVanillaCoalescedMana.cs` blocks native drops.
- Settings: `CoalescedManaDropChance` (1.5%).

### AGENTS.md consolidation
- Grouped 80+ bullet points into categorized sections.
- Removed duplicate cross-mod property entries.
- Added server launch zombie-process conventions.

### Point-based Coalesced Mana leveling (EmpyreanAlteration)
- Replaced XP-based item leveling with discrete point system: +1 point per creature kill, +100 points per QB-eligible quest completion.
- All three Coalesced Mana tiers can both awaken AND upgrade items.

### DisableAttunedGlobally (EmpyreanAlteration)
- Server-wide QOL override making ALL items tradeable/sellable.
- Two patches: `WorldObject.Attuned` getter + `AppraiseInfo.BuildProperties` (client visual).

### Trophy stacking fix (BetterSupportSkills + EmpyreanAlteration SQL)
- Changed 30+ trophy weenies from `Generic` (type 1) → `Stackable` (type 51).
- Fixed `MaxStackSize` SQL to use `type = 11` (was incorrectly `type = 16`).

### Druid pet targeting fix (BetterSupportSkills)
- `IsInvalidPetTarget` helper prevents pets from attacking: owner, same-owner pets, non-hostile/passive creatures, undamageable players.

### BetterSupportSkills heartbeat patch fix
- `Creature.Heartbeat` is an `override`; fixed by patching `WorldObject.Heartbeat` (virtual base) and filtering with `is CombatPet`.

### LeyLineLedger denominated banking
- Unified deposit/withdraw for pyreal chain (mote→ingot), crystal shards (cracked→fragment), shadow shards (speck→fragment).
- `/bank deposit all` auto-sweeps all denominations into base-unit pools.
- Consolidated single-message deposit feedback.

### LeyLineLedger fuzzy matching improvements
- `TryResolveDepositRuleIndex` now strips spaces from material names.
- `SuggestClosest` uses Levenshtein distance for typo correction.

---

## 2026-04-30

### XP Consolidation + Leveling Rebalance + Loot Tier Delay
- **Phase 1:** Removed scattered XP prefixes from EasyServerSettings, Numbersmith, WorldEvents Hunt/Cull, ChallengeModes, BetterSupportSkills, EmpyreanAlteration, Swarmed.
- **Phase 2:** Loremaster unified formula reads PropertyFloat 40121 (Hunt) and 40125 (Cull).
- **Phase 3:** Balance preserved (5% retention, etc.).
- **Phase 4:** Loot spell tier clamping via `Loremaster/LootTierDelay.cs`.

### Lottery System + `/donate` Command
- **Dual pools:** `_pool` (pyreals) + `_qbPool` (QB) — independently tracked.
- **Sources:** Exchange sell tax, Sale vendor spending, `/donate` (pyreals/luminance/qb).
- **QP contribution:** 10% of every `AddExtraQuestPoints` accrues.
- **Draw mechanics:** 3 winners at 50%/30%/20% splits.

### Loremaster Loot Tier Delay
- Clamps spell tier on creature treasure by killer level.
- Default thresholds: L1→T1, L20→T2, L40→T3, L60→T4, L80→T5, L100→T6, L125→T7, L150→T8.

### WorldEvents Placement QP Rewards
- Scales: 1st=5, 2nd=3, 3rd=2, 4th+=1. Solo participant = 10.
- Implemented in Hunt, Cull, Invasion via reflection bridge to Loremaster.

### Xenology → Hunt name cleanup
- PLAN.md and all skill docs updated to reference WorldEvents Hunt instead of Xenology.

### PLAN.md maintenance
- ValheelContent Segmentation Plan marked DONE.
- All `TODO`/`FIXME`/`HACK` markers in `.cs` files converted to `NOTE:` descriptions.

---

## 2026-04-29

### Multi-Mod Feature Batch — All COMPLETED

| Mod | Feature |
|-----|---------|
| **WorldEvents** | Sale wording fix — detects mage-name towns |
| **WorldEvents** | Hunt timer scaling — unified scheduler integration |
| **Swarmed** | Auto-attack fix — reinforcement spawns set AttackTarget |
| **Swarmed** | Dungeon scaling past 275 — raises maxLevel to highest player |
| **Swarmed** | Dungeon population manager — TargetMobCount 30 |
| **Swarmed** | Level variance +15 flavor |
| **Swarmed** | Scaling debug logging |
| **QOL** | Generous Benefactor — 1B pyreal TN teleport |
| **Loremaster** | Rested XP system |
| **Loremaster** | Luminance banking (pre-unlock) |
| **LivingEquipment** | Academy auto-awaken + vendor stock |
| **LivingEquipment** | Pre-awakened chance 2%→0.2% |
| **LivingEquipment** | Visual glow (green) — UiEffects 256 |
| **LivingEquipment** | Broadcast refresh |
| **AutoLoot** | Quest-item stack fix |
| **AutoLoot** | Chest + corpse close-phase unified |
| **EmpyreanAlteration** | MutatorHooks NRE fix |
| **WorldEvents/ValheelContent** | Town Network Native Portals |
| **Swarmed** | HP Fix — SetMaxVitals after scaling |
| **Swarmed** | Boss broadcast spam fix |
| **Swarmed** | CreatureEx radar colors (cyan) |
| **Swarmed** | Special creature loot |
| **BetterSupportSkills** | TrophyDrops creature filtering |
| **AutoLoot/SQL** | Stackable quest items |
| **LeyLineLedger** | Vendor sell rate reduction |
| **BetterLootControl** (`LootConfig.json`) | Trade note reorganization |

### Live Deployment (2026-04-29)
- Port collision fixed — live server 9002
- Full mod build + deploy — all 22 mods
- Deployed SQL: AcademyWeapons_VendorStock, QuestItem_StackFix, Stackable_Trophies

---

## 2026-04-28 → 2026-04-29

### LeyLineLedger robustness
- Startup weenie validation, runtime null guards, graceful skipping.

### Solo Competitor Bonus (WorldEvents)
- Settings and cross-event implementation for bonus rewards.

### Unified QB Ledger (WorldEvents)
- Shared `ParticipationLedger` service across all event types.

### SpellSiphon rename + expansion
- Renamed GemCrafter to SpellSiphon; added any-item crushing.

### POI Hunt (WorldEvents)
- Auto-generated clues via `LandblockScanner`, Lorewalker Zahir turn-in.

### Scavenger Hunt (WorldEvents)
- `LootTracker` API integration, runtime, broadcast, rewards.

### BetterSupportSkills new classes
- **Healer:** AoE healing aura + Smite melee proc.
- **Adventurer:** +50 attributes/skills/vitals/resistances/burden.

### Windwalker rebalance
- Spell tier formula: `skill/SkillPerTier` (default 200).

### Chaos Tinker fix
- Failures increment NumTimesTinkered, per-item cap (default 5).

### QOL verbose XP auto-spend
- Refactored to return `List<SpendResult>` with per-stat rank gains.

### SpellSiphon vendor integration
- Sold at spell component vendors for 50,000 pyreals.

### Loremaster Account-Wide RepeatQB
- Per-quest 10-hour cooldown tracked across account characters.

### repeatQB Refactor
- Unique quest entries `{baseName}#repeatQB{n}`.

### Coalesced Mana Banking
- AutoLoot banks Lesser/Greater/Aetheric to LLL properties 41100–41102.

### BonusQuest Daily Board
- Daily 9pm CST reset, 10 quests: 2×/5×/10× repeatQB.

### Questgiver Blacklist
- WCIDs 22753 and 22754 blacklisted.

### Kill Task Auto-Reaccept
- Max-solved reset after cooldown, +2 repeatQB per cycle.

### Log audit & interval fix
- 5 min scan intervals (was 60).

---

## 2026-04-27

### ValheelContent Segmentation
- Disabled all content except Adventurer's Haven + Town Network portals.
- Cleanup SQL for 4,778 weenies across 63 folders.

### Chaos-Tinker Leveling Disabled
- Set `ChaosTriggeredGrowth = false`.

### LivingEquipment Mod (v0.1.0)
- Tiered item awakening with Coalesced Mana.

### Coalesced Mana SQL
- Updated LongDesc for WCIDs 42516/42517/42518.

### LeyLineLedger Bank Labels
- Coalesced Mana renamed with tier info.

### SettingsContainer List Deserialization Fix
- Manual fallback when SettingsContainer.Settings returns empty.

---

## 2026-04-26

### AGENTS.md — Repo guide
- Mandatory skills, workflow, conventions, permissions, build notes.

### GitHub Release Automation
- `.github/workflows/release.yml` triggers on `v*.*.*` tags.

### v1.0.0 Release
- Comprehensive mod pack.

### QOL Town Network toll
- Variable random fees, component-first payment, 51 mage names, 80+ flavor messages.

### Healing-kit Recuperation HoT
- Moved from QOL to BetterSupportSkills.

### WorldEvents Hunt
- Tuning for hunt intervals, popularity multipliers, damage caps.

### Enlightenment pool + challenge quit + high-enlight QB
- Shared FakeFloat 11012 cumulative bonus across AureatePath/Loremaster/ChallengeModes.

### AutoLoot simplification
- Removed VendorTrash from menu, Rares.utl default profile.

### BetterSupportSkills tuning
- Shield thorns halved, salvage auto-deposit.

### QOL Town Network toll v2
- Complete overhaul with components/cash system.

### QOL BypassPortalRestrictions
- Granular bypass for all portal/recall restrictions.

### Swarmed messaging
- Call-for-help color changed from Combat to Magic.

### QOL VendorPriceInflation crash fix
- Replaced string-based patch with `nameof`-based patches.

### LeyLineLedger EconomyBalancer + LootTracker intervals
- Reduced from 60 min to 5 min.

### Swarmed expansion
- BuddySpawns, Wild CreatureEx, global CreatureVariation.

### WorldEvents unified scheduler
- EventScheduler rotates through event types.

### BetterSupportSkills ArcaneLore + MissileDefense rework
- Spell dodge moved to Missile Defense, Arcane Lore gets Adaptation.

### CommonGoals NoSplitXp / NoSplitLuminance
- Full credit to each fellowship member.

### Loremaster Loot Tier Delay
- Clamps spell tier by killer level (see 2026-04-30).

---

## Older (2026-04-23 and earlier)

### QOL NpcStackTurnIn
- Full-stack NPC quest turn-ins with reward scaling.

### Dynamic Mob Scaling (Swarmed)
- Scale mob level/difficulty/loot/XP to nearby players.

### DruidPetThorns Batching (BetterSupportSkills)
- 15-second aggregated window.

### TrophyDrops Stack Consolidation (BetterSupportSkills)
- Physical stacking, quest item daily cap.

### Overtinked Context-Aware Chaos
- Caster/target benefit checking before applying.

### AutoLoot Chest + Salvage Sweep
- Chest autoloot + delayed salvage sweep.

### Invasion Portal Storms (WorldEvents)
- Renamed unthemed invasions to "Portal Storm".

### Auto-Kill Task Automation (Loremaster)
- Basic auto-reaccept implemented.

---

*End of Archive*