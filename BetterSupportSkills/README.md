# BetterSupportSkills

Gives substantial bonuses to often-overlooked secondary skills in Asheron's Call.

## Features

### Healing (Replenish)
**Status:** ✅ Implemented  
**Default:** Enabled

After using any healing kit (in addition to its normal instant effect), applies a Replenish effect that ticks small amounts of ALL vitals (HP, Stamina, Mana) over time.

**Mechanics:**
- Ticks every 1 second (configurable)
- Total duration: 15 seconds (configurable)
- Each tick restores: `HealingSkill × 1%` to all 3 vitals (configurable)
- **Specialization triples** all restorations (3x multiplier)
- Continues even if the kit's instant effect was weak

**Settings (in Settings.json):**
```json
"Replenish": {
  "HotDurationSeconds": 15.0,
  "HotTickSeconds": 1.0,
  "BaseSkillPercentPerTick": 0.01,
  "SpecializedMultiplier": 3.0,
  "EnableDebugMessages": false
}
```

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

### Assess Creature
**Status:** ✅ Implemented  
**Default:** Disabled

Two bonuses when Assess Creature is trained or specialized:

#### 1. Global Damage Rating
+10 DR (trained) or +30 DR (specialized) against all targets:

**Settings:**
```json
"EnableAssessCreature": true
```

#### 2. Trophy Drops
Extra loot rolls when killing monsters:

- **Trained:** +1 extra loot roll
- **Specialized:** +2 extra loot rolls
- Uses whichever is higher if both Assess skills trained
- Capped at MaxExtraRolls (default 10)

**Settings:**
```json
"EnableTrophyDrops": true,
"TrophyDrops": {
  "ExtraRollsTrained": 1,
  "ExtraRollsSpecialized": 2,
  "MaxExtraRolls": 10
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

- Alchemy
- Arcane Lore
- Deception
- Dual Wield
- Fletching
- Leadership
- Lockpick
- Loyalty
- Missile Defense
- Recklessness
- Sneak Attack

To enable a skill placeholder (currently does nothing):
```json
"EnableAlchemy": true,
"EnableArcaneLore": true,
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

### 2026-04-19
- Initial release
- Healing: Swiftmend heal-over-time implemented
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