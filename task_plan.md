# Mod Structure Refactor — Task Plan

**Goal:** Analyze current mod boundaries, identify cohesion problems, and design a cleaner division that improves maintainability without breaking existing deployments.

**Date:** 2026-05-09
**Scope:** Architecture design + phased extraction plan (no code changes yet)

---

## Phase 1: Current State Mapping ✅ COMPLETE
| Step | Status | Notes |
|------|--------|-------|
| Enumerate all 25 mod folders | ✅ | AceModQa, AchievementUnlocked, AureatePath, AutoLoot, BetterKeys, BetterLootControl, BetterSupportSkills, ChallengeModes, CommonGoals, CustomSpells, Data, EasyServerSettings, EmpyreanAlteration, Gemcrafter, LeyLineLedger, Lockboxes, Loremaster, Numbersmith, Overtinked, QOL, Shared, SpellSiphon, Swarmed, Windblown, WorldEvents |
| Read all Readme/README files | ✅ | Extracted feature descriptions |
| Count C# files per mod | ✅ | Range: 0 (Gemcrafter) to 109 (EmpyreanAlteration) |
| Map cross-mod dependencies | ✅ | Shared/ reflection bridges, FEATURE_MATRIX.md, README refs |
| Review FEATURE_MATRIX.md | ✅ | 80+ features mapped to owners |
| Review AGENTS.md conventions | ✅ | Single source of truth, cross-mod patterns, deployment rules |
| Review COMPLETED.md for pain points | ✅ | Identified accident-prone areas |

---

## Phase 2: Problem Diagnosis ✅ COMPLETE

### 2.1 Mega-Mod Anti-Patterns (high file count = low cohesion)
| Mod | Files | Domains Mixed |
|-----|-------|---------------|
| **EmpyreanAlteration** | 109 | Mutators, Item leveling, Fake properties (15+), Procs, Awakening, Loot growth, Corpse hooks, Quest hooks, Time-in-game |
| **WorldEvents** | 73 | Hunt, Invasion, Sale, Cull, BonusQuest, POI Hunt, Scavenger Hunt, Scheduler, Claims, Persistence |
| **BetterSupportSkills** | 45 | Healing HoT, Cooking, Cantrip pets, Salvage auto-deposit, Wisp combat, Class perks, Summoning, Hybrid classes, Chaos tinker, Weave buffs |
| **QOL** | 42 | Animation speeds, Aug caps, Stackables, Swear filter, Quest auras, TN toll, Facility Hub, Pet tweaks, VendorLootRotation |
| **Loremaster** | 35 | Quest XP scaling, Account-wide tracking, Repeat cooldowns, Milestones, Rested XP, Luminance banking, Kill task auto-reaccept |
| **Swarmed** | 56 | Call-for-help, CreatureEx (29 types), Buddy spawns, Dungeon population, Landscape scaling, Dynamic scaling |

### 2.2 Cross-Mod Tangle Analysis
```
EmpyreanAlteration <--reads--> Swarmed (CreatureEx enum via FakeInt)
BetterLootControl <--reflects--> Overtinked (imbue flags)
BetterSupportSkills <--reflects--> Overtinked (salvage wcids)
BetterSupportSkills <--reflects--> LeyLineLedger (bank properties)
AutoLoot <--reflects--> LeyLineLedger (bankable items)
QOL <--reflects--> LeyLineLedger (toll debits)
WorldEvents <--reflects--> LeyLineLedger (Hunt bank rewards)
AureatePath <--writes--> Loremaster (FakeFloat 11012 enlightenment pool)
AchievementUnlocked <--reads--> Loremaster (FakeInt 11050 tier)
CommonGoals <--reads--> AchievementUnlocked (tier for loot qualification)
ChallengeModes <--reads--> AureatePath (MaxLevel)
```

### 2.3 Dead / Ghost Mods
| Mod | Status | Action |
|-----|--------|--------|
| Gemcrafter | 0 C# files, obj/ only | 🔴 Delete or commit plan |
| Work-In-Progress | Unclear contents | 🔴 Audit and delete or promote |
| Data | No README, no Settings | 🔴 Document or absorb into Shared |
| ValheelContent | Excluded per AGENTS.md | 🟡 Already excluded |

---

## Phase 3: Target Architecture Design

**Principles:**
1. **One domain per mod** — a mod should have a single user-facing purpose
2. **Shared/ is the ONLY hard dependency** — all cross-mod calls via reflection bridge (already working)
3. **PatchCategory grouping** — each feature domain gets its own Harmony category for clean unpatch
4. **No mod > 40 C# files** without a VERY good reason
5. **Preserve existing deployments** — Meta.json enablement stays; Settings.json keys migrate gently

---

## Phase 4: Extraction Plan (Phased)

### Final Mod Names (user-approved 2026-05-09)
| New Mod | Source | Files (est) | Purpose |
|---------|--------|-------------|---------|
| `AutoSalvage` | BSS: `SalvageAutoDeposit` + `LeyLineLedgerSalvageInterop` + AutoLoot salvage passes | ~8 | Single mod owns WHEN, HOW, and WHERE of auto-salvage |
| `VendorTweaks` | BLC: `VendorLootRotation` + QOL rotation remnants + EA vendor injection | ~15 | ONE mod owns the full vendor equipment lifecycle |
| `Awakened` | EA: `ItemLevelingPoints`, `ItemLevelUpLootGrowth`, `ItemLevelingGrowthTrigger`, `QuestCompletionItemLeveling`, `CreatureDeathItemLeveling`, `LivingItemAwakener`, `LivingItemHooks` | ~20 | ALL item awakening/leveling in one place (branded "Awakened") |
| `FakeProperties` | EA: All 15+ `Fake*.cs` files | ~18 | Runtime pseudo-properties (leech, reflection, split/splash, etc.) |
| `ItemProcs` | EA: `ProcOnAttack`, `ProcOnHit`, `ProcRateOverride` | ~5 | On-attack and on-hit proc system |
| `HealingOverTime` | BSS: Recuperation system | ~3 | Healing kit HoT (already its own toggle) |
| `TownNetwork` | QOL: TN toll, Facility Hub, Generous Benefactor | ~6 | Town Network gameplay systems |
| `CreaturePopulation` | Swarmed: `CallForHelp` + `BuddySpawns` + `DungeonPopulation` + `CreatureVariation` | ~20 | Spawning systems (separate from champion combat) |
| `Champions` | Swarmed: Champion variants + scaling + special loot | ~25 | Champion combat variants (mod system being redone) |

### Mods to Dissolve / Absorb
| Source | Target | How |
|--------|--------|-----|
| Gemcrafter | — | Delete (empty) |
| Work-In-Progress | — | Audit contents → move to proper mod or delete |
| Data | Shared/ | Move shared constants, document in Shared/README |
| QOL VendorLootRotation | VendorTweaks (new) | Move to new mod; QOL keeps non-vendor features |
| EA Item Leveling / Awakening | Awakened (new) | Move all item XP/awakening files |
| EA Fake* | FakeProperties (new) | Move all fake property files |
| EA Procs | ItemProcs (new) | Move proc files |
| BSS Healing | HealingOverTime (new) | Move Recuperation files |
| BSS Salvage | AutoSalvage (new) | Move SalvageAutoDeposit + interop + AutoLoot salvage passes |
| Swarmed spawning | CreaturePopulation (new) | Move call-for-help, buddy spawns, dungeon pop |
| Swarmed champions | Champions (new) | Move champion variants + scaling + loot |

---

## Phase 5: Risk Mitigation

| Risk | Mitigation |
|------|-----------|
| Reflection bridges break during moves | Keep `LeyLineLedgerBankInterop` in Shared/ unchanged; only move the caller-side code |
| PatchCategory conflicts | Use consistent category naming: `Awakened.*`, `FakeProperties.*`, `ItemProcs.*` |
| Settings.json migration | New mods ship their own Settings.cs + Settings.json; old keys deprecated with `[Obsolete]` |
| Deployment complexity | Extract ONE mod at a time; deploy to void-test; verify; commit; next mod |
| FakeInt/Float collisions | AGENTS.md already documents shared IDs; no new collisions |
| Player data loss | No biota property IDs change — only assembly organization changes |

---

## Phase 6: Decision Record

**Decision: Split or keep existing mods?**
→ **SPLIT the mega-mods** (EA, BSS, QOL, Swarmed). Current file counts (~45-109) indicate multiple domains mashed together.

**Decision: Reflection vs project references?**
→ **KEEP reflection bridges.** Hard project references create build-order headaches and prevent optional loading.

**Decision: One big refactor or incremental?**
→ **INCREMENTAL.** Extract one domain at a time. Each extraction is a standalone PR with its own test cycle on void-test.

**Decision: Mod names**
→ User approved (2026-05-09):
- `Awakened` (item leveling — consistent branding after 3 renames)
- `VendorTweaks` (vendor lifecycle — friendlier than VendorSystem)
- `CreaturePopulation` (spawning — avoids confusion with existing CreatureEx enum)
- `Champions` (champion combat — signals mod system redo coming)
- Keep `AutoSalvage`, `FakeProperties`, `ItemProcs`, `HealingOverTime`, `TownNetwork`

---

## Phase 7: Execution Order

| Priority | Mod | Rationale | Effort |
|----------|-----|-----------|--------|
| 1 | `AutoSalvage` | Fixes property-mismatch bug class; simplest extraction; splits AutoLoot+BSS knot | Low |
| 2 | `VendorTweaks` | Eliminates 3-mod vendor fight; highest player-facing impact | Medium |
| 3 | `Awakened` | Largest domain in EA (109 files); consistent "Awakened" branding | High |
| 4 | `FakeProperties` | Isolated domain; no behavior changes; safe mid-size extraction | Medium |
| 5 | `HealingOverTime` | Single toggle feature; quick win; cleans up BSS | Low |
| 6 | `TownNetwork` | Cleans up QOL; makes TN features discoverable | Low |
| 7 | `CreaturePopulation` | Spawning logic separate from champion combat | Medium |
| 8 | `ItemProcs` | Small isolated domain from EA | Low |
| 9 | `Champions` | AFTER CreaturePopulation; Swarmed reduces to champion combat only | Medium |

---

## Progress Log
| Date | Phase | Notes |
|------|-------|-------|
| 2026-05-09 | 1 | Completed current state mapping |
| 2026-05-09 | 2 | Diagnosed cohesion problems; identified 9 mixed domains |
| 2026-05-09 | 3-6 | Designed target architecture; named mods; got user approval |
| 2026-05-09 | 7 | Starting AutoSalvage extraction (Phase 8) |
