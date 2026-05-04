# BetterSupportSkills — Class Perks Reference

This document covers all **Combat Classes**, **Hybrid Classes**, **Healer**, **Adventurer**, and **Summoning Classes** implemented in `BetterSupportSkills`.

> **Note:** Class unlocks use **skill requirements** (`AchievementUnlockedApi.CheckMeetsRequirements`); optional flavor messaging may still reference unlock state.

---

## Quick Reference (Brief Overview)

| Class | Prerequisites | Core Combat Perk |
|-------|-------------|----------------|
| **Rogue** | Spec DF + Spec DualWield + Spec Finesse | Bleed DoT on every melee hit |
| **Berserker** | Spec Heavy/2H + Spec Recklessness + **no** MeleeDefense trained | Life steal on melee hits |
| **Crusader** | Spec Light/Heavy + Spec Shield + Spec MeleeDefense | Melee bonus damage + shield DR + passive heal + crit bonus |
| **Windwalker** | Spec Light + Spec WarMagic + Spec ManaC | Melee casts elemental streaks at nearby enemies |
| **Battlemage** | Spec 2H + Spec WarMagic + Spec ManaC | Melee casts elemental arc at hit target |
| **DeathKnight** | Spec Heavy/2H + Spec VoidMagic + Spec ArcaneLore | Melee nether streak/arc tier = min(floor(VoidMagic **Base** / `SkillPerTier`), `MaxVoidSpellTier`), clamped 1–8 (default cap **2** = low-tier proc IDs); nether damage aura |
| **Bloodmage** | Spec LifeMagic + Spec ManaC + Spec ArcaneLore | Melee casts HealthBolts; drain spells become AoE; life-drain aura |
| **Healer** | Spec Healing + Spec LifeMagic | Melee Smite proc; AoE healing aura |
| **Adventurer** | **No** magic trained (except ManaC) | +50 attributes/skills, +20% vitals, +10% resist, +2 burden aug ranks |
| **Druid** | Spec Summoning + Spec LifeMagic | Auto-summon nature pets; pet thorns (if spec Shield + trained DF) |
| **Elementalist** | Spec Summoning + Spec WarMagic | Auto-summon elemental pets |
| **Necromancer** | Spec Summoning + Spec VoidMagic | Auto-summon undead pets |
| **Enchanter** | Spec Summoning + Spec CreatureEnchantment | Auto-summon golem pets |
| **Artificer** | Spec Summoning + Spec ItemEnchantment | Auto-summon wisps; wisp procs Imperil + Drain on hit |

---

## Extensive Overview with Formulas

---

### Combat Classes

#### Rogue
**Requirements:**
- Achievement unlocked: `Rogue`
- Skill: `DirtyFighting` **Specialized**
- Skill: `DualWield` **Specialized**
- Skill: `FinesseWeapons` **Specialized**

**Perks:**
1. **Bleed** — Every melee hit applies a stacking bleed DoT.
   - Tick damage: `target.MaxHealth * BleedPercentPerHit * tier`
   - Tiers: ticks 1–`maxTicks/3` = tier 1; `maxTicks/3+1` to `2*maxTicks/3` = tier 2; remainder = tier 3
   - Duration: `BleedTicks` ticks at `BleedIntervalSeconds` intervals
2. **Enhanced Dirty Fighting** — `DebuffMultiplier` applied to Dirty Fighting debuff spell potency (requires `CustomSpells`).

**Defaults:** `BleedPercentPerHit = 0.005` (0.5%), `BleedTicks = 10`, `BleedIntervalSeconds = 1.0`, `DebuffMultiplier = 2.0`

---

#### Berserker
**Requirements:**
- Achievement unlocked: `Berserker`
- Skill: `HeavyWeapons` **Specialized** OR `TwoHandedCombat` **Specialized**
- Skill: `Recklessness` **Specialized**
- Skill: `MeleeDefense` **NOT trained** (must be untrained)

**Perks:**
1. **Life Steal** — Heals self for a portion of melee damage dealt.
   - Heal: `meleeDamage * LifeStealPercent`
   - Capped at `LifeStealMaxPerHit`
   - Only heals if `Health.Current < Health.Max`

**Defaults:** `LifeStealPercent = 0.08` (8%), `LifeStealMaxPerHit = 50`

---

#### Crusader
**Requirements:**
- Achievement unlocked: `Crusader`
- Skill: `LightWeapons` **Specialized** OR `HeavyWeapons` **Specialized**
- Skill: `Shield` **Specialized**
- Skill: `MeleeDefense` **Specialized**
- Requires shield equipped for most bonuses
- Toggle: `/thorns` must be ON for melee bonus damage

**Perks:**
1. **Passive Self-Heal** — Heals `maxHealth * PassiveHealPercentPerSecond` every heartbeat tick (clamped 0.5–10s dt).
2. **Crit Bonus Damage** — On critical melee hit, deals bonus damage:
   - `bonus = critDamage * (CritDamageMultiplier - 1.0)`
3. **Thorns on All Hits** — If `ThornsOnAllHits = true`, Crusader reflects base thorns damage on **every** incoming melee/missile hit (not just blocks/evades). Base thorns = `ShieldSkill.Current * basePercent` where `basePercent = 0.025` (trained) or `0.05` (spec).
4. **Melee Thorns Bonus** — On every melee hit, deals bonus damage equal to thorns amount:
   - `bonusDamage = ShieldSkill.Current * basePercent`
   - Message throttled to once per 5 seconds.
5. **Shield Damage Resist** — While wielding a shield: `+10 DamageResistRating`.

**Defaults:** `PassiveHealPercentPerSecond = 0.01`, `CritDamageMultiplier = 1.5`, `ThornsOnAllHits = true`

---

### Hybrid Classes

#### Windwalker
**Requirements:**
- Achievement unlocked: `Windwalker`
- Skill: `LightWeapons` **Specialized**
- Skill: `WarMagic` **Specialized**
- Skill: `ManaConversion` **Specialized**

**Perks:**
1. **Elemental Streaks** — On every melee hit, casts a streak spell matching weapon damage type at **all enemies within range**.
   - Tier: `WarMagic.Base / SkillPerTier` (default `SkillPerTier = 150`)
   - Range: `StreakRangeMeters` (default 15m)
2. **Echo** — If `ManaConversion` is **Specialized**, streaks echo into **volley** at the same targets.
3. **Mana Discount** — Auto-cast spells cost `ManaCostMultiplier` of normal mana (default 0.5 = half cost).

---

#### Battlemage
**Requirements:**
- Achievement unlocked: `Battlemage`
- Skill: `TwoHandedCombat` **Specialized**
- Skill: `WarMagic` **Specialized**
- Skill: `ManaConversion` **Specialized**

**Perks:**
1. **Elemental Arc** — On every melee hit, casts an arc spell matching weapon damage type at the **primary target**.
   - Tier: `WarMagic.Base / 50`
2. **Echo** — If `ManaConversion` is **Specialized**, arc echoes into **volley ×2** at the same target.
3. **Mana Discount** — `ManaCostMultiplier` (default 0.5).

---

#### Death Knight
**Requirements:**
- Skill: `HeavyWeapons` **Specialized** OR `TwoHandedCombat` **Specialized**
- Skill: `VoidMagic` **Specialized**
- Skill: `ArcaneLore` **Specialized**

**Perks:**
1. **Nether Spells on Melee** —
   - **Two-Handed weapon:** casts nether **streak** at nearby enemies
   - **Heavy weapon:** casts nether **arc** at primary target
   - Tier: `min(floor(VoidMagic.Base / SkillPerTier), MaxVoidSpellTier)` (default **150** skill per tier; **MaxVoidSpellTier** default **2** = first two nether proc spells only—tier index ≠ client spell level), clamped **1–8**; tune `CombatClasses.DeathKnight` in `Settings.json`. **`ManaCostMultiplier` 0** = free mana for DK auto-casts.
2. **Echo** — If `ArcaneLore` is **Specialized**, streak/arc echoes into **volley**.
3. **Nether Damage Aura** — Periodic nether damage to nearby hostile enemies.
   - Damage per tick: `AuraDamagePerTick`
   - Tick interval: `AuraTickSeconds`
   - Range: `AuraRangeMeters`

---

#### Bloodmage
**Requirements:**
- Achievement unlocked: `Bloodmage`
- Skill: `LifeMagic` **Specialized**
- Skill: `ManaConversion` **Specialized**
- Skill: `ArcaneLore` **Specialized**

**Perks:**
1. **HealthBolt Echo** — On melee hit, casts `HealthBolt` (LifeProjectile) with echo chain:
   - Echo count: `EchoCount`
   - Each echo drops `EchoTierDrop` tiers
   - Finale: casts `DrainHealth` at tier 8
2. **Drain AoE** — Drain spells (Health/Stamina/Mana) splash to nearby enemies within `DrainSpellRangeMeters`.
3. **Life-Drain Aura** — Periodic Health damage to nearby hostiles; self healed for total amount drained.
   - Damage per tick: `AuraDrainPerTick`
   - Tick interval: `AuraTickSeconds`
   - Range: `AuraRangeMeters`

---

### Healer
**Requirements:**
- Achievement unlocked: `Healer`
- Skill: `Healing` **Specialized**
- Skill: `LifeMagic` **Specialized**

**Perks:**
1. **Smite** — On melee hit, chance (`SmiteChance`) to cast a random offensive Life spell at target.
   - Tier based on `LifeMagic.Base / 50`
2. **Healing Aura** — Periodic flat heal to self and nearby allies.
   - Heal amount: `FlatHealPerTick`
   - Tick interval: `AuraTickSeconds`
   - Range: `AuraRangeMeters`
   - Targets: self + fellowship + same allegiance + friends

**Defaults:** `SmiteChance = 0.25`, `FlatHealPerTick = 50`, `AuraTickSeconds = 3.0`, `AuraRangeMeters = 15`

---

### Adventurer
**Requirements:**
- Achievement unlocked: `Adventurer`
- **No magic schools trained** (Creature Enchantment, Item Enchantment, Life Magic, War Magic, Void Magic must ALL be untrained). Mana Conversion can be anything.

**Perks:**
1. **+Attributes** — `+AttributeBonus` to all attributes (default 50)
2. **+Skills** — `+SkillBonus` to all skills (default 50)
3. **+Vitals** — `+VitalPercentBonus` max vitals (default 0.20 = +20%)
4. **+Resistance** — `ResistanceBonus` % damage reduction (default 10 = 10%)
   - Applied as multiplier: `1.0 - (ResistanceBonus / 100)`
5. **+Burden Limit** — `BurdenLimitBonusRanks` virtual aug ranks (default 2)
   - Added to encumbrance capacity as `ranks * 30 * Strength`

---

## Summoning Classes

All summoning classes share these base mechanics:
- **Auto-summon:** Pets spawn automatically when **you** deal damage **or your `CombatPet` deals damage** (same 3-second pulse cooldown per owner). Harmful hostile spells you cast on creatures also pulse. Lets zero-offense / buff-only builds ramp once a device pet is hitting.
- **2× Device Summon:** Using a pet device summons **double** the normal amount.
- **No Device Cooldown:** Pet device use cooldown is removed.
- **Pet Cap:** Combined auto + device pets capped at `TotalCap` (default 10 per class).
- **Pet Tiers:** Based on Summoning skill (`<100 = T0, <150 = T1, <200 = T2, <250 = T3, <300 = T4, <400 = T5, ≥400 = T6`).

| Class | Magic Requirement | Pet Types |
|-------|-------------------|-----------|
| **Druid** | Spec Summoning + Spec **LifeMagic** | Wasps, Grievvers, Moars |
| **Elementalist** | Spec Summoning + Spec **WarMagic** | Elementals, Knaths, Wisps, Golems, Grievvers, Moars |
| **Necromancer** | Spec Summoning + Spec **VoidMagic** | Skeletons, Spectres |
| **Enchanter** | Spec Summoning + Spec **CreatureEnchantment** | Golems (enchanter variant) |
| **Artificer** | Spec Summoning + Spec **ItemEnchantment** | Wisps (artificer variant) |

### Druid Pet Thorns (Optional Sub-system)
**Requirements:**
- Class: Druid
- Skill: `Shield` **Specialized**
- Skill: `DirtyFighting` **Trained** or **Specialized**
- Setting: `EnableDruidPetThorns = true`

**Perks:**
1. **Pet Thorns Reflect** — When a Druid's pet is hit, it reflects thorns damage back at attacker.
   - Damage: `(ShieldSkill.Current * 0.05) * DamageMultiplier`
2. **Pet AoE Thorns** — When a Druid's pet attacks, all enemies near the target take thorns damage.
   - Radius: `AoERadius` (default 5m)
   - Batch-messaged every 15 seconds.

---

## How Classes Are Detected

Classes are evaluated in a **priority order** when `GetPlayerClass(player)` is called:

1. **Manual override** — `/classoverride <ClassName>` or null to auto-detect
2. **Summoning classes** — checked first if `Summoning` is specialized
3. **Combat/Hybrid classes** — checked in fixed priority: Rogue → Berserker → Crusader → Windwalker → Battlemage → DeathKnight → Bloodmage → Healer → Adventurer

The result is **cached** per player until logout or `/classclear`. If a class is not unlocked, the player receives periodic flavor messages reminding them of requirements.

---

## Related Files
- `Skills/SummoningClasses.cs` — Class detection, auto-summon, device patches
- `Skills/CombatClasses.cs` — Rogue bleed, Berserker life steal, Crusader crit/heal/thorns
- `Skills/HybridClasses.cs` — Windwalker, Battlemage, DeathKnight, Bloodmage spell procs
- `Skills/HealerClass.cs` / `Skills/HealerAura.cs` — Smite and healing aura
- `Skills/AdventurerClass.cs` — Attribute/skill/vital/resistance/burden bonuses
- `Skills/DruidPetThorns.cs` — Druid pet thorns reflect + AoE
- `Settings.cs` — All configurable values (multipliers, chances, ranges, etc.)
