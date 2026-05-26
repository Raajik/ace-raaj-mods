# Feature-to-Mod Matrix

Canonical mapping of every gameplay feature to its owning mod.
Single-owner rule: if Feature X is owned by Mod A, no other mod re-implements X.

---

## Legend

| Column | Meaning |
|--------|---------|
| Feature | User-facing or system behavior |
| Owner | Mod that owns the authoritative implementation |
| Has README | Mod has a README.md for design docs |
| Has Settings.json | Mod ships a template Settings.json in repo |
| Status | ✅ complete / ⚠️ partial / ❌ missing / 🟢 greenfield / 🔴 broken |

---

## Core Economy

| Feature | Owner | README | Settings | Status | Notes |
|---------|-------|--------|----------|--------|-------|
| Bank (deposit/withdraw/debit) | LeyLineLedger | ✅ | ✅ | ✅ | Single source of truth for ALL banking |
| Vendor pricing (buy/sell multipliers) | LeyLineLedger | ✅ | ✅ | ✅ | No other mod may touch BuyPrice/SellPrice |
| Salvage banking & redeem | LeyLineLedger | ✅ | ✅ | ⚠️ | Interop via `LeyLineLedgerSalvageInterop` (BSS) |
| Pyreal currency management | LeyLineLedger | ✅ | ✅ | ✅ | Core bank operations |
| Key display names in bank | LeyLineLedger | ✅ | ✅ | ✅ | Added lock-tier suffix (1kD, 5kC) |
| Auto-banking LLL items (general) | LeyLineLedger (logic) + AutoLoot (hook) | ✅ | ✅ | ✅ | Reflection bridge in AutoLoot |
| Lockpick auto-bank | LeyLineLedger | ✅ | ✅ | ✅ | `LockpickAutoBank.cs` |

## Vendor System

| Feature | Owner | README | Settings | Status | Notes |
|---------|-------|--------|----------|--------|-------|
| Vendor loot rotation | QOL (VendorLootRotation) | ✅ | ✅ | ✅ | Harmony First priority, clears then repopulates |
| Vendor static item injection | EmpyreanAlteration | ❌ | ✅ | ⚠️ | Harmony Last priority; cross-mod coordinated |
| Vendor approach order | EmpyreanAlteration (coordinator) | ❌ | ✅ | ⚠️ | CLEARS (QOL First) → ADDS static (empyrean Last) |

## Loot & Item Generation

| Feature | Owner | README | Settings | Status | Notes |
|---------|-------|--------|----------|--------|-------|
| Corpse loot rolling | BetterLootControl | ✅ | ✅ | ✅ | Single source of truth for all loot tables |
| Rarity tiers & item generation | BetterLootControl | ✅ | ✅ | ✅ | Global `LootRoller.cs` |
| Coalesced mana drops | BetterLootControl | ✅ | ✅ | ✅ | Custom WCIDs 42516-42518; blocks vanilla drops |
| Imbued items get spells | BetterLootControl | ✅ | ✅ | ✅ | `EnsureImbuedItemHasSpells()` |
| Shared loot pools | BetterLootControl | ✅ | ✅ | ✅ | Cross-mod coordination owner |
| Custom trophy lines | Windblown | ✅ | ❌ | ✅ | Per-CreatureType tiered drops |
| Trophy sibling replacement | Windblown | ✅ | ❌ | ✅ | Replaces colored variants with base WCID |
| Custom weenie injection (runtime JSON) | Windblown | ✅ | ❌ | ✅ | `WeenieRegistry` from JSON files |

## Item Enhancement

| Feature | Owner | README | Settings | Status | Notes |
|---------|-------|--------|----------|--------|-------|
| Mutators (prefix/suffix/auras) | EmpyreanAlteration | ❌ | ✅ | ✅ | `Features/MutatorHooks.cs` |
| Item level-up growth | EmpyreanAlteration | ❌ | ✅ | ✅ | XP-based item leveling |
| Chaos-triggered growth | EmpyreanAlteration | ❌ | ✅ | ✅ | Failure → level-up w/ free tinkers |
| Awakened (Living) prefix | EmpyreanAlteration | ❌ | ✅ | ✅ | Renamed from Living to Awakened |
| Cloak proc effects | EmpyreanAlteration | ❌ | ✅ | ✅ | Cloak mutator system |
| Aetheria proc effects | EmpyreanAlteration | ❌ | ✅ | ✅ | Aetheria mutator system |
| Augment/growth system | EmpyreanAlteration | ❌ | ✅ | ✅ | `AugmentSystem.cs` |
| Armor/jewelry rating growth | EmpyreanAlteration | ❌ | ✅ | ✅ | `ArmorJewelryRatingGrowth.cs` |

## Crafting & Imbues

| Feature | Owner | README | Settings | Status | Notes |
|---------|-------|--------|----------|--------|-------|
| Custom imbues (Hemorrhage/Shatter/Cleave) | Overtinked | ✅ | ✅ | ✅ | |
| Tinkering / salvage behavior | Overtinked | ✅ | ✅ | ✅ | |
| Defense imbues (armor) | Overtinked | ✅ | ✅ | ⚠️ | Known hang issue on armor targets |
| Lesser imbue upgrades | Overtinked | ✅ | ✅ | ✅ | `LesserImbueUpgrade.cs` |
| Custom imbue flags | Overtinked | ✅ | ✅ | ✅ | `OvertinkedImbueFlags.cs` |
| Spell Siphon (charging/imbue) | SpellSiphon | ✅ | ✅ | ✅ | Tool-on-target charging |
| Glyph of Extraction (tiered) | SpellSiphon | ✅ | ✅ | ✅ | WCIDs 850210–850219; jeweler vendors |

## Combat & Skills

| Feature | Owner | README | Settings | Status | Notes |
|---------|-------|--------|----------|--------|-------|
| Class perks & combat feats | BetterSupportSkills | ✅ | ✅ | ✅ | `ClassPerks.md` reference |
| Summoning classes & rules | BetterSupportSkills | ✅ | ✅ | ✅ | `SummoningClasses.cs` |
| Summoner cantrip bonus pets | BetterSupportSkills | ✅ | ✅ | ✅ | Minor=1..Legendary=7 |
| Chaos tinker mechanics | BetterSupportSkills | ✅ | ✅ | ✅ | `ChaosTinker.cs` |
| Auto-salvage on loot | BetterSupportSkills | ✅ | ✅ | ✅ | `SalvageAutoDeposit.cs` |
| Hybrid class rules | BetterSupportSkills | ✅ | ✅ | ✅ | Per `ClassPerks.md` |

## Creature & Spawning

| Feature | Owner | README | Settings | Status | Notes |
|---------|-------|--------|----------|--------|-------|
| Call-for-help reinforcements | Swarmed | ❌ | ✅ | ✅ | Landscape/dungeon spawning |
| CreatureEx champion variants | Swarmed | ❌ | ✅ | ✅ | Boss/Berserker/Duelist etc. |
| Buddy spawns (pairs/groups) | Swarmed | ❌ | ✅ | ✅ | `Features/BuddySpawns.cs` |
| Creature variation (scaling) | Swarmed | ❌ | ✅ | ✅ | `Features/CreatureVariation.cs` |
| Special creature loot | Swarmed | ❌ | ✅ | ✅ | `Features/SpecialCreatureLoot.cs` |
| Dungeon population manager | Swarmed | ❌ | ✅ | ✅ | `Features/DungeonPopulationManager.cs` |
| Imbue overlay backgrounds (creatures) | Swarmed | ❌ | ✅ | ✅ | Icon underlay for CreatureEx imbues |

## World Events

| Feature | Owner | README | Settings | Status | Notes |
|---------|-------|--------|----------|--------|-------|
| Hunt kill tracking & rotation | WorldEvents | ❌ | ✅ | ✅ | Popularity-based species rotation |
| Invasion events | WorldEvents | ❌ | ✅ | ✅ | |
| Bonus quest events | WorldEvents | ❌ | ✅ | ✅ | |
| Sale events (vendor discounts) | WorldEvents | ❌ | ✅ | ✅ | |
| Cull events | WorldEvents | ❌ | ✅ | ✅ | |
| Point-of-interest hunts | WorldEvents | ❌ | ✅ | ✅ | |
| Scavenger hunt events | WorldEvents | ❌ | ✅ | ✅ | |
| Unified event scheduler | WorldEvents | ❌ | ✅ | ✅ | Rotates through enabled events |
| Event claim inventory gating | WorldEvents | ❌ | ✅ | ✅ | `/claim` requires inventory space |
| Event loot delivery | WorldEvents | ❌ | ✅ | ✅ | `EventLootDelivery.cs` |

## Quests & Progression

| Feature | Owner | README | Settings | Status | Notes |
|---------|-------|--------|----------|--------|-------|
| Server level cap | AureatePath | ✅ | ✅ | ✅ | Single source of truth |
| Credit intervals & level cost | AureatePath | ✅ | ✅ | ✅ | |
| Challenge modes | ChallengeModes | ✅ | ✅ | ✅ | Reads AureatePath for MaxLevel |
| Quest/lore progression | Loremaster | ✅ | ✅ | ✅ | Tier requirements |
| Repeatable QB quests | Loremaster | ✅ | ✅ | ✅ | `#repeatQB{n}` suffix system |
| Achievement system | AchievementUnlocked | ❌ | ✅ | ✅ | `AchievementManager.cs` |
| Personal instanced loot | CommonGoals | ❌ | ✅ | ✅ | Per-player corpse on tag |
| No-split XP/Luminance | CommonGoals | ❌ | ✅ | ✅ | Fellowship full XP option |
| Kill task auto-reaccept | Loremaster | ✅ | ✅ | ✅ | QuestManager patch |

## Items & Inventory

| Feature | Owner | README | Settings | Status | Notes |
|---------|-------|--------|----------|--------|-------|
| Skeleton key behavior | BetterKeys | ❌ | ✅ | ✅ | Unlock-only (no auto-open) |
| Lockboxes | Lockboxes | ❌ | ✅ | ✅ | Tiered treasure containers |
| Auto-loot (corpse/container) | AutoLoot | ✅ | ✅ | ✅ | C# passes for currency/trophies |
| Auto-loot LLL item banking | AutoLoot | ✅ | ✅ | ✅ | `TryBankAnyLllItem()` bridge |
| Vendor loot rotation | QOL | ✅ | ✅ | ✅ | `VendorLootRotation.cs` |
| Facility hub portal | QOL | ✅ | ✅ | ✅ | `FacilityHubPortal.cs` |

## Server & Admin

| Feature | Owner | README | Settings | Status | Notes |
|---------|-------|--------|----------|--------|-------|
| Easy server settings | EasyServerSettings | ✅ | ✅ | ✅ | UI for server config |
| Custom spells | CustomSpells | ❌ | ✅ | ✅ | Workbook-driven spell creation |
| Numbersmith (numerics/rounding) | Numbersmith | ✅ | ✅ | ✅ | |
| World database weenie injection | Windblown | ✅ | ❌ | ✅ | JSON-based weenie overrides |

## Content Mods (Readiness)

| Mod | README | Settings.json | Status | Notes |
|-----|--------|---------------|--------|-------|
| AceModQa | ❌ | ❌ | 🔴 | QA testing mod, no docs |
| AchievementUnlocked | ❌ | ✅ | ⚠️ | Needs README |
| BetterKeys | ❌ | ✅ | ⚠️ | Needs README |
| CommonGoals | ❌ | ✅ | ⚠️ | Needs README |
| CustomSpells | ❌ | ✅ | ⚠️ | Needs README |
| Data | ❌ | ❌ | 🔴 | Shared data mod, needs docs |
| EmpyreanAlteration | ❌ | ✅ | ⚠️ | Needs README |
| Lockboxes | ❌ | ✅ | ⚠️ | Needs README |
| Shared | ❌ | ❌ | 🔴 | Shared library, needs docs |
| Swarmed | ❌ | ✅ | ⚠️ | Needs README |
| ValheelContent | ❌ | ✅ | ⚠️ | Needs README (blocked per AGENTS.md) |
| WorldEvents | ❌ | ✅ | ⚠️ | Needs README |
| Windblown | ✅ | ✅ | ✅ | Good shape; absorbed legacy WindblownContent trophy/content ownership |

## Gaps & Duplicates

| Gap | Severity | Action |
|-----|----------|--------|
| EmpyreanAlteration lacks README | HIGH | Create README documenting all mutators, features, and cross-mod integration |
| Swarmed lacks README | HIGH | Create README documenting CreatureEx, call-for-help, dungeon population |
| WorldEvents lacks README | HIGH | Document all event types, scheduler, and claim system |
| Data mod has no Settings.json or README | MEDIUM | Document as shared data dependency |
| AceModQa no docs/settings | LOW | QA tool, document minimally |
| Shared mod no docs/settings | LOW | Shared library, document interface contracts |
| Defense imbue hang on armor | HIGH | Known bug in Overtinked, needs investigation |
| Cross-mod feature mapping stale | MEDIUM | This matrix must be kept in sync with new features |
| FEATURE_TRUTH.md vs matrix overlap | LOW | Merge or cross-reference; FEATURE_TRUTH is canonical registry, matrix is the expansion |

---

## Maintenance Rules

1. **Add new features here** before coding — ensures ownership is assigned
2. **Update on ownership change** — if a mod takes over/releases a feature, update this matrix
3. **Cross-reference FEATURE_TRUTH.md** — the registry file is the source of truth for ownership; this matrix is the detailed expansion
4. **PR trigger** — any PR adding a new feature should update both this file and `FEATURE_TRUTH.md`
