# Findings — Mod Structure Refactor

## Discovery 1: File Count = Cohesion Proxy

File count correlates with domain mixing. The worst offenders:

```
EmpyreanAlteration    109 C# files  → 8+ domains (mutators, leveling, fake props, procs, awakening, loot hooks, corpse hooks, time tracking)
WorldEvents            73 C# files  → 7 event types + scheduler + claims + persistence
BetterSupportSkills    45 C# files  → 11 distinct features (healing, cooking, pets, salvage, wisps, classes, summoning, hybrid, chaos tinker, weave buffs)
QOL                    42 C# files  → 10 features (animations, augs, stackables, swear, auras, toll, hub, pets, vendor rotation, recall)
Swarmed                56 C# files  → 4 systems (call-for-help, CreatureEx, buddies, dungeon pop)
Loremaster             35 C# files  → 6 systems (quest XP, account tracking, cooldowns, milestones, rested XP, kill tasks)
```

**Conclusion:** Any mod with >40 files or >4 distinct feature domains is a extraction candidate.

---

## Discovery 2: Cross-Mod Dependency Pattern is Healthy

Current architecture uses two patterns:
1. **Shared/ linked files** (`LeyLineLedgerBankInterop.cs`, `PeaPyrealWcids.cs`, `SsfAutolootPickupContext.cs`)
2. **Runtime reflection** (BSS → Overtinked for salvage wcids, AutoLoot → LLL for bankable items)

Both work. No hard assembly references exist between gameplay mods. This is GOOD — it means we can reorganize without build graph changes.

**The ONE exception:** `SharedLoot` namespace ships inside BetterLootControl assembly and is referenced by Loremaster/WorldEvents/CommonGoals. This is a packaging decision, not an architectural coupling.

---

## Discovery 3: Single Source of Truth Already Documented

FEATURE_MATRIX.md and AGENTS.md §8.1 establish clear ownership:
- LeyLineLedger owns ALL banking, vendor pricing
- BetterLootControl owns ALL loot tables
- AureatePath owns level cap
- Vendor loot rotation already moved from QOL → BLC (2026-05-05)

The refactor should ENFORCE these boundaries in code structure, not just documentation.

---

## Discovery 4: Empty / Dead Mods Waste Mental Space

| Mod | Evidence |
|-----|----------|
| Gemcrafter | `obj/` only, 0 C# files, no README |
| Work-In-Progress | No README, contents unknown, name suggests detritus |
| Data | No README, no Settings.json, unclear purpose |

---

## Discovery 5: Pain Points from COMPLETED.md Indicate Boundary Violations

| Incident | Root Cause | How Better Architecture Helps |
|----------|-----------|-------------------------------|
| Academy weapon imbue patch abandoned (2026-05-09) | EA's `LivingItemHooks` + BLC's `AwakenVendorItems` fought over same method | Separate `ItemGrowth` mod with unified hook, or clearer priority contract |
| Conniving creature crash (ONGOING) | Multiple creature-affecting mods (Swarmed, EA, Windblown, QOL) all touch creature generation | CreatureSpawning mod owns ALL creature mutations; others read, don't write |
| BSS→LLL salvage property mismatch (2026-05-06) | Two mods independently computed property IDs | Single `AutoSalvage` mod owns the property mapping |
| Vendor loot rotation lag + mage robe loss (2026-05-07) | QOL strip → BLC add → EA inject, all uncoordinated | VendorSystem single mod handles the full vendor lifecycle |

---

## Discovery 6: EmpyreanAlteration is the Biggest Problem

EA has 109 files across ~8 domains. Breaking it down:

| Domain | Files | Should Live In |
|--------|-------|----------------|
| Mutator system (MutatorHooks, aura/prefix/suffix) | ~8 | **EmpyreanAlteration** (keep, rename to `ItemMutators?`) |
| Item leveling (points, growth, triggers, quest/creature hooks) | ~12 | **ItemGrowth** (new mod) |
| Fake properties (15+ Fake*.cs files) | ~18 | **FakeProperties** (new mod) |
| Proc system (attack, hit, rate override) | ~5 | **ItemProcs** (new mod) |
| Living/Awakened item hooks | ~8 | **ItemGrowth** (new mod) |
| Loot-time hooks (FakeItemLoot, pre-imbue, pre-awaken) | ~10 | **BetterLootControl** (move — BLC already owns loot) |
| Corpse/quest completion hooks | ~6 | **ItemGrowth** or **Loremaster** |
| Misc (TimeInGame, UnarmedWeapon, OverrideCreatePlayer, OverrideSpellProjectiles) | ~8 | Keep in EA or move to QOL |
| Settings infrastructure | ~4 | Move with each domain |

---

## Discovery 7: Vendor Loot Rotation is Still Split

Despite moving from QOL → BLC (2026-05-05), AGENTS.md still says:
- **QOL** `VendorLootRotation` regenerates sale stock (Harmony First)
- **EA** adds static items (Harmony Last)
- **BLC** sets pricing

Three mods touch the same vendor lifecycle. A `VendorSystem` mod should own the ENTIRE vendor equipment pipeline: clear → rotate → price → inject statics.

---

## Discovery 8: BetterSupportSkills Feature Sprawl

BSS started as "support skills bonuses" but accumulated:
- Healing HoT (Recuperation)
- Cooking regen
- Mana Conversion (Spell Cleave)
- Salvage auto-deposit + LLL interop
- Item Tinkering (Chaos Tinker)
- Weave buffs
- Class perks (perks system)
- Summoning classes (full class framework)
- Hybrid classes
- Wisp combat system (Artificer pets)
- Cantrip bonus pets

**Better division:**
- `HealingOverTime` — Recuperation only
- `AutoSalvage` — SalvageAutoDeposit + LLL interop
- `ClassPerks` — Class perks, summoning, hybrid (the class framework)
- `BetterSupportSkills` (shrunk) — Cooking, Spell Cleave, Chaos Tinker, Weave buffs
- `PetCombat` — Wisp combat, cantrip bonus pets (or merge into ClassPerks)

---

## Discovery 9: WorldEvents is 7 Event Types + Infrastructure

73 files for 7 event types = ~10 files each, but the infrastructure (scheduler, claims, persistence, broadcast, LED display, interop) is shared. The event types themselves (Hunt, Invasion, Cull, Sale, BonusQuest, POI Hunt, Scavenger) could each be a `Feature/` folder within WorldEvents, or could be extracted if they grow. **Current: keep WorldEvents as one mod** — the shared infrastructure is substantial and the event types are small. Re-evaluate if any single event type exceeds 20 files.

---

## Discovery 10: Loremaster is Borderline

35 files, 6 systems. Most are tightly coupled (quest XP → account tracking → milestones → repeat cooldowns). **Keep Loremaster as one mod** but consider extracting `KillTaskAutoReaccept` (standalone toggle, no state). The core quest-progression loop is a single domain.
