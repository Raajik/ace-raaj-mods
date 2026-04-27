# BetterSupportSkills

Gives substantial bonuses to often-overlooked secondary skills in Asheron's Call.

## Features

### Healing (Recuperation)
**Status:** ✅ Implemented  
**Default:** Enabled (`EnableHealing`)

Healing kits apply to **self** (use-on-target is redirected to the healer). After the normal instant effect, **Recuperation** runs a heal-over-time whose per-tick vitals depend on **kit name heuristics** (health vs stamina vs mana kits). Per-tick strength scales with **Healing** skill; **Specialized** Healing multiplies by `SpecializedMultiplier`. Formerly shipped as standalone Swiftmend / briefly under QOL; it now lives only here under **`EnableHealing`**.

**Settings (in `Settings.json`):**
```json
"EnableHealing": true,
"Recuperation": {
  "HotDurationSeconds": 15.0,
  "HotTickSeconds": 1.0,
  "BaseSkillPercentPerTick": 0.025,
  "SpecializedMultiplier": 2.0,
  "EnableHealthKits": true,
  "EnableStaminaKits": true,
  "EnableManaKits": true,
  "EnableDebugMessages": false
}
```

**Migrating from QOL or old `Replenish`:** Use the **`Recuperation`** object (replace the old `Replenish` key). Rename **`EnableRecuperation`** in QOL was removed—toggle healing HoT only with **`EnableHealing`** here.

---

### Mana Conversion
**Status:** ✅ Implemented  
**Default:** Enabled

Two bonuses when Mana Conversion is trained or specialized:

#### 1. Spell Cleave
Spells cast on a target will also hit nearby enemies within range.

- **Trained:** +1 additional target
- **Specialized:** +2 additional targets
- Range: 15 meters (configurable)
- Cooldown: 1 second between cleaves
- Prioritizes closest targets first

**Settings:**
```json
"ManaConversion": {
  "CleaveTargetsTrained": 1,
  "CleaveTargetsSpecialized": 2,
  "CleaveRange": 15.0
}
```

#### 2. Equipment Mana Efficiency
Adds bonus to ManaConversionMod on equipped armor and jewelry.

- **Trained:** +25% mana efficiency
- **Specialized:** +50% mana efficiency

**Settings:**
```json
"ManaConversion": {
  "EquipmentManaEfficiencyTrained": 0.25,
  "EquipmentManaEfficiencySpecialized": 0.50
}
```

---

### Alchemy
**Status:** ✅ Implemented  
**Default:** Disabled (`EnableAlchemy`)

Two bonuses when Alchemy is trained or specialized:

#### 1. Potion Echo
Drinking a potion has a chance to echo (re-apply) its effect after a short delay.

- **Trained:** 25% echo chance
- **Specialized:** 50% echo chance
- Echo delay: 5 seconds

#### 2. Bonus Potion Drops
Extra potion drops from creature kills, stacked 2–3 per roll.

- Rolls calculated from buffed Alchemy skill / 150
- Capped at `MaxExtraRolls` (default 3)

**Settings:**
```json
"EnableAlchemy": true,
"Alchemy": {
  "EchoChanceTrained": 0.25,
  "EchoChanceSpecialized": 0.50,
  "EchoDelaySeconds": 5.0,
  "MaxExtraRolls": 3
}
```

---

### Arcane Lore (Adaptation)
**Status:** ✅ Implemented  
**Default:** Disabled (`EnableArcaneLore`)

When Arcane Lore is trained or specialized, taking magic damage grants **Adaptation** — temporary elemental damage reduction.

- Reduction: `-10% of buffed skill` as elemental damage reduction
- Duration: 60 seconds
- Cap: 99% reduction
- Applies per elemental damage type (fire, frost, acid, lightning)

> **Note:** Spell dodge was moved to **Missile Defense** in v1.1.0.

**Settings:**
```json
"EnableArcaneLore": true,
"ArcaneLore": {
  "EnableAdaptation": true,
  "AdaptationReductionPerSkill": 0.10,
  "AdaptationDurationSeconds": 60.0,
  "AdaptationMaxReduction": 0.99
}
```

---

### Missile Defense
**Status:** ✅ Implemented  
**Default:** Disabled (`EnableMissileDefense`)

When Missile Defense is trained or specialized, grants chance to **dodge incoming spell damage** completely.

- **Trained:** 10% spell dodge
- **Specialized:** 15% spell dodge
- Cap: 75% dodge chance

> **Note:** This replaces the old Arcane Lore spell dodge from pre-v1.1.0.

**Settings:**
```json
"EnableMissileDefense": true,
"MissileDefense": {
  "SpellDodgeTrained": 0.10,
  "SpellDodgeSpecialized": 0.15,
  "SpellDodgeCap": 0.75
}
```

---

### Assess Creature (Trophy Drops)
**Status:** ✅ Implemented  
**Default:** Disabled (`EnableTrophyDrops`)

When Assess Creature is trained or specialized, grants **guaranteed extra loot rolls** on creature kills.

- Rolls calculated from **buffed Assess Creature skill / 150**
- **Capped at `MaxExtraRolls`** (default 3, meaning 450+ skill for max rolls)
- Each roll adds a stacked trophy item (2–5 stack size) from the creature's create list
- Potions are handled separately by the **Alchemy** bonus (2–3 stack size)

> **Note:** Legacy `ExtraRollsTrained` / `ExtraRollsSpecialized` settings are **DEPRECATED** and no longer used. They are kept in `Settings.cs` for backward compatibility with existing `Settings.json` files.

> **Note:** `TrophyWhitelist.md` documents which items *should* be stackable, but the code currently does **not** filter by this list — it stacks any item from the creature's `PropertiesCreateList`. Enforcing the whitelist requires a future code update.

**Settings:**
```json
"EnableTrophyDrops": true,
"TrophyDrops": {
  "MaxExtraRolls": 3,
  "BonusTreasureChance": 0.0
}
```

---

### Cooking (Regeneration Buffs)
**Status:** ✅ Implemented  
**Default:** Disabled (set `EnableCooking: true` in Settings.json)

When Cooking skill is trained or specialized, grants permanent regeneration buffs:

**Trained:** Legendary buffs (+60% to each vital)
- Legendary Health Gain (spell 6077)
- Legendary Stamina Gain (spell 6076)
- Legendary Mana Gain (spell 6078)

**Specialized:** Prodigal buffs (+1000% to each vital)
- Prodigal Regeneration (spell 3731)
- Prodigal Rejuvenation (spell 3732)
- Prodigal Mana Renewal (spell 3725)

Buffs apply automatically on player login. To enable:
```json
"EnableCooking": true
```

---

### Dirty Fighting
**Status:** ⚠️ Partial (requires AethericWeaver for full effect)  
**Default:** Disabled

With **AethericWeaver loaded**, provides enhanced Dirty Fighting:
- Doubled debuff values (-20/-40 attack, -20/-40 defense, -30/-60 heal)
- 180 second duration (vs vanilla 20s)
- Percentage-based bleed (1%/2%/3% trained, 2%/4%/6% specialized)

Without AethericWeaver, falls back to vanilla ACE behavior.

**Settings:**
```json
"EnableDirtyFighting": true,
"DirtyFighting": {
  "DebuffDurationSeconds": 180,
  "AttackDebuffTrained": -20,
  "AttackDebuffSpecialized": -40,
  "DefenseDebuffTrained": -20,
  "DefenseDebuffSpecialized": -40,
  "HealDebuffTrained": -30,
  "HealDebuffSpecialized": -60,
  "BleedPercentTrained": 0.01,
  "BleedPercentSpecialized": 0.02
}
```

**AethericWeaver Requirement:** For full effect, create custom spells in AethericWeaver with:
- `StatModKey` for skill debuffs (AttackSkill, DefenseSkill)
- `StatModKey` for heal reduction (HealingBoostResist)
- `Duration: 180` for extended duration

---

### Placeholder Skills (Not Yet Implemented)
The following skills have placeholder entries but no bonus effects yet:

- Deception
- Dual Wield
- Fletching
- Leadership
- Lockpick
- Loyalty
- Recklessness
- Sneak Attack

To enable a skill placeholder (currently does nothing):
```json
"EnableDeception": true,
"EnableDualWield": true,
// etc.
```

---

## Configuration

All features can be toggled in `Settings.json`:

```json
{
  "EnableAlchemy": false,
  "EnableArcaneLore": false,
  "EnableAssessCreature": false,
  "EnableCooking": false,
  "EnableDeception": false,
  "EnableDirtyFighting": false,
  "EnableDualWield": false,
  "EnableFletching": false,
  "EnableHealing": true,
  "EnableLeadership": false,
  "EnableLockpick": false,
  "EnableLoyalty": false,
  "EnableManaConversion": true,
  "EnableMissileDefense": false,
  "EnableRecklessness": false,
  "EnableSneakAttack": false,
  "EnableTrophyDrops": false
}
```

## Commands

- `/bss commands` - Show available commands

## Changelog

### 2026-04-27 (v1.1.0)
- **Arcane Lore rework:** Spell dodge moved to **Missile Defense**; Arcane Lore now grants **Adaptation** (elemental damage reduction on taking magic damage)
- **Missile Defense:** New spell dodge implementation (10% trained / 15% spec, 75% cap)
- **Alchemy:** Implemented potion echo and bonus potion drops
- **Trophy Drops:** Rolls now based on `skill / 150` (capped at `MaxExtraRolls`, default 3). Deprecated `ExtraRollsTrained` / `ExtraRollsSpecialized`.

### 2026-04-19
- Initial release
- Healing: Recuperation heal-over-time after healing kits (`Recuperation` settings; `EnableHealing`)
- Mana Conversion: Spell cleave (+1/+2 targets) implemented
- Mana Conversion: Equipment mana efficiency (+25%/+50%) implemented
- Assess Creature: Global DR (+10/+30) and trophy drops
- Dirty Fighting: Partial implementation (bleed), full effect with AethericWeaver
- All secondary skills have placeholder entries

## Notes

- Mana Conversion cleave uses `GetWorldObjectsForPhysicsHandling()` to find nearby creatures
- Distance is calculated from the spell's primary target
- Only harmful spells cleave (not healing/buffs)
- Self-targeted spells are excluded from cleave
- Dirty Fighting fully enhanced with AethericWeaver mod installed
- Trophy drops use the creature's `PropertiesCreateList` — not all creatures have trophy items configured
