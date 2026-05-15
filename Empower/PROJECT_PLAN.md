# Empower - Healing Kit System

**Date:** 2026-05-15
**Branch:** `raajik/feature/empower-healing-kits`
**Mod:** `Empower/` (new)

## Design Overview

Replaces all loot-generated healing kits (vanilla Crude → Treated) with **Anointed Healing Kits** — unlimited-use kits with randomized stats and perks. Vendor kits remain unchanged. BSS Recuperation is left intact for now (will be removed later).

## Kit Properties

### Stats (rolled per tier)
| Loot Tier | Skill Bonus Range | Restoration % Range |
|-----------|------------------|---------------------|
| T1 | 50–100 | 100%–150% |
| T2 | 75–150 | 100%–175% |
| T3 | 100–200 | 150%–250% |
| T4 | 100–250 | 175%–300% |
| T5 | 150–300 | 200%–350% |
| T6–T8 | 200–400 | 250%–500% |

- **Unlimited use** — `PropertyBool.UnlimitedUse = true`
- **BoosterEnum** — rolls random Health/Stamina/Mana

### Perk Count (per tier)
| Tier | Perks |
|------|-------|
| T1–T2 | 2 |
| T3–T4 | 2–3 |
| T5–T6 | 3–4 |
| T7–T8 | 4–5 |

### Perk Pool (8 total)
| Perk | Effect | Storage | Value Range (T1→T8) |
|------|--------|---------|---------------------|
| **Omni-Heal** | Splash % to other vitals | `FakeBool 40150` + `FakeFloat 40160` | 10–20% → 30–50% |
| **Regeneration** | Total HoT % over 15s | `FakeBool 40151` + `FakeFloat 40161` | 30–50% → 75–150% |
| **Auto-Self** | 1-click self-heal (no targeting) | `FakeBool 40152` | Binary |
| **Efficiency** | Stamina cost reduction % | `FakeBool 40153` + `FakeFloat 40163` | 10–25% → 40–75% |
| **Critical Surge** | +% crit heal chance (base 10%) | `FakeBool 40154` + `FakeFloat 40164` | +5–10% → +15–30% |
| **Cleansing** | % chance to RemoveAllBad on heal | `FakeBool 40155` + `FakeFloat 40165` | 10–20% → 30–50% |
| **Reactive Barrier** | +DR rating for 5s on heal | `FakeBool 40156` + `FakeFloat 40166` | +1–2 → +4–8 |
| **Boon** | +% Healing skill for 10s | `FakeBool 40157` + `FakeFloat 40167` | +5–10% → +15–25% |

## Property IDs Used

| ID | Type | Purpose |
|----|------|---------|
| 40150–40157 | PropertyBool | Perk flag presence |
| 40160–40167 | PropertyFloat | Perk rolled value |
| 40170 | PropertyInt | Loot tier (1–8) |

## Architecture

### Files
```
Empower/
├── Empower.csproj
├── Meta.json
├── GlobalUsings.cs
├── Mod.cs
├── PatchClass.cs           — Harmony patch registration
├── Settings.cs              — All configureable values
├── Settings.json            — Default settings
├── Healing/
│   ├── AnointedKitDefs.cs   — Enums, property IDs
│   ├── AnointedKitGenerator.cs — Loot gen replacement + stat rolling
│   └── AnointedKitEffects.cs  — Runtime perk effects
└── Content/SQL/
    └── 01_Anointed_Healing_Kit_Template.sql
```

### Harmony Patches
1. **HealKitWcids.Roll** (Prefix) — Returns Anointed kit WCID (900000) instead of vanilla
2. **LootGenerationFactory.CreateRandomLootObjects** (Postfix) — Applies randomized stats + perks to created Anointed kits
3. **Healer.DoHealing** (Postfix) — Applies Omni-Heal, Regeneration, Cleansing, Reactive Barrier, Boon
4. **Healer.GetHealAmount** (Postfix ×2) — Efficiency (stamina cost) + Critical Surge (extra crit roll)
5. **Player.HandleActionUseItem** (Prefix) — Auto-Self: intercept ground-use → redirect to self
6. **Creature.GetDamageResistRating** (Postfix) — Reactive Barrier DR bonus
7. **CreatureSkill.Current** getter (Postfix) — Boon healing skill buff

### WCID Registry
| WCID | Name | Type |
|------|------|------|
| 900000 | Anointed Healing Kit | Healer (type 21) |

## Future Work (post-ship)
- Remove BSS Recuperation (replaced by Regeneration perk)
- Potential future Empower modules: Lockpicks, Salvage, Tools
