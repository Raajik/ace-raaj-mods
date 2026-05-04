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

> **Note:** Creature-type validation is now enforced. `TrophyDrops.cs` checks the dying creature's `WeenieClassId` against a per-trophy whitelist before creating the item, preventing e.g. tusker tusks from dropping on drudges. Champion and special mobs drop stacks of 1–8.

**Drudge charm tiers (`DrudgeCharmTrophies`, 2026-05):** When **`EnableTrophyDrops`** is on, **`DrudgeCharmTrophies.Enabled`** adds **species-only** rolls on **`CreatureType.Drudge`** kills (defaults **2.5%** base WCID **3669**, **1% / 0.4% / 0.15%** for **850271–850273** *Quality / Pristine / Perfect*) — four independent rolls, independent of Assess extra-roll count. Requires world weenies + scrubbed create lists (repo **`WindblownContent/Content/SQL/DrudgeCharm_TierWeenies_World.sql`**, template **`README-TrophyCharmCloneTemplate.md`**). **`QuestTurnInCap`** treats all four WCIDs as bulk quest charms: tiered quest XP (**2.5% / 5% / 7.5% / 15%** of **`GetXPBetweenLevels(level, level+1)`** per charm turned in), **per-tier bank credit** (**25k / 50k / 100k / 250k** per charm by default, same face values as ACE trade-note weenies **7376 / 2626 / 2627 / 20630** — **no physical notes**) via **`LeyLineLedgerBankInterop.IncBanked`** (`BankCashProperty`, LLL when present else `PropertyInt64`); **no daily turn-in cap** on this path (other quest trophy WCIDs still use **`QuestTrophyDrops`** + **`QuestTurnInTracker`** when enabled). **QOL** / **AutoLoot** / **BetterLootControl** / **HybridClasses** ship matching allowlists or stack rules.

**Settings:**
```json
"EnableTrophyDrops": true,
"TrophyDrops": {
  "MaxExtraRolls": 3,
  "BonusTreasureChance": 0.0
},
"DrudgeCharmTrophies": {
  "Enabled": true,
  "DropChanceRegular": 0.025,
  "DropChanceRare1": 0.01,
  "DropChanceRare2": 0.004,
  "DropChanceRare3": 0.0015,
  "WcidRegular": 3669,
  "WcidRare1": 850271,
  "WcidRare2": 850272,
  "WcidRare3": 850273,
  "XpFractionRegular": 0.025,
  "XpFractionRare1": 0.05,
  "XpFractionRare2": 0.075,
  "XpFractionRare3": 0.15,
  "BankTradeNoteValuePerCharmRegular": 25000,
  "BankTradeNoteValuePerCharmRare1": 50000,
  "BankTradeNoteValuePerCharmRare2": 100000,
  "BankTradeNoteValuePerCharmRare3": 250000,
  "BankCashProperty": 39999
}
```

Older `Settings.json` that still has **`BankPyrealsPerCharm`** but no tier keys: all four **`BankTradeNoteValuePerCharm*`** deserialize as **0**, so the mod keeps using that **flat per-charm** value for every tier until you add the new keys.

---

### Cooking (natural regen + optional legacy spell buffs)
**Status:** Implemented  
**Default:** `EnableCooking: true` in Settings.json (mod feature on)

**Default behavior (`CookingUseLegacySpellBuffs: false`):** While Cooking is **trained** or **specialized**, vital regeneration uses an always-on multiplier from **buffed** Cooking rank: `1 + skill * CookingRegenPerBuffedPointTrained` (trained) or `1 + skill * CookingRegenPerBuffedPointSpecialized` (spec). Implemented as a Harmony postfix on `EnchantmentManagerWithCaching.GetRegenerationMod` (same tick as other regen mods; ACE heartbeat ~5s).

**Legacy optional (`CookingUseLegacySpellBuffs: true`):** Restores the old **TryCastSpell** regeneration auras on food eat and `/buff` (spell IDs under `Cooking` in Settings.json). When legacy is on, the natural multiplier is **not** applied (no double-dip).

**Settings example:**
```json
"EnableCooking": true,
"Cooking": {
  "CookingUseLegacySpellBuffs": false,
  "CookingRegenPerBuffedPointTrained": 0.05,
  "CookingRegenPerBuffedPointSpecialized": 0.1,
  "LegendaryHealthSpell": 6077,
  "LegendaryStaminaSpell": 6076,
  "LegendaryManaSpell": 6078,
  "ProdigalHealthSpell": 3731,
  "ProdigalStaminaSpell": 3732,
  "ProdigalManaSpell": 3725
}
```

Restart the server after changing Harmony-related settings.

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

### Combat Classes

BetterSupportSkills includes a **class system** that activates when you specialize the right combination of skills. Use `/class` to see available classes and `/class auto` to let the mod detect your class automatically.

#### Healer
**Requirements:** Spec Healing + Spec Life Magic

- **Aura:** Passive AoE heal (15m radius, 3s tick) to self and nearby allies (fellowship, same-allegiance, friends)
- **Smite:** 50% chance on melee hit to cast Harm/Drain Health Other spell (tier scales with Life Magic skill)

**Settings:**
```json
"CombatClasses": {
  "Healer": {
    "AuraRangeMeters": 15.0,
    "AuraTickSeconds": 3.0,
    "FlatHealPerTick": 5,
    "SmiteChance": 0.5,
    "SmiteSpellIds": [1093, 1094, 1095, 1096, 1097, 1098, 2326, 4641]
  }
}
```

#### Adventurer
**Requirements:** No magic schools trained (except Mana Conversion)

- **+50 to all attributes** (Strength, Endurance, Coordination, Quickness, Focus, Self)
- **+50 to all skills**
- **+20% max vitals** (Health, Stamina, Mana)
- **+10% damage reduction** (all damage types)
- **+2 virtual burden limit ranks** (+60×Strength capacity)

All bonuses are **virtual** — they don't persist to the database and disappear if you train a magic school.

**Settings:**
```json
"CombatClasses": {
  "Adventurer": {
    "AttributeBonus": 50,
    "SkillBonus": 50,
    "VitalPercentBonus": 0.20,
    "ResistanceBonus": 10,
    "BurdenLimitBonusRanks": 2
  }
}
```

#### Windwalker
**Requirements:** Spec Light Weapons + Spec War Magic + Spec Mana Conversion

- Melee hits launch **elemental streak spells** at nearby enemies
- Spell tier scales with War Magic skill (configurable via `SkillPerTier`, default 200)
- Echoes to volley when Mana Conversion is specialized

**Settings:**
```json
"CombatClasses": {
  "Windwalker": {
    "StreakRangeMeters": 15.0,
    "EchoEnabled": true,
    "ManaCostMultiplier": 0.5,
    "SkillPerTier": 200
  }
}
```

> **Note:** With `SkillPerTier: 200`, tier 1 requires 200 War Magic, tier 2 requires 400. This is a significant nerf from the old `skill/50+1` formula.

---

### Chaos Tinker
**Status:** Implemented
**Default:** Enabled (`EnableChaosTinkerAchievement`)

Failing a tinker while having any tinkering trained unlocks `/chaostinker` — a toggle that forces all tinkers to fail for chaotic "positive" effects.

- **Per-item cap:** Maximum 5 chaos failures per item (tracked via `PropertyInt 40120`)
- **Increment `NumTimesTinkered`:** Chaos failures optionally increment the item's tinker count
- **Visual pulse:** Red Aetheria effect every 10 seconds while active

**Settings:**
```json
"ChaosTinker": {
  "MaxChaosFailuresPerItem": 5,
  "IncrementNumTimesTinkeredOnFailure": true
}
```

---

### Summoning classes — pet War/Void ring and wall gate
**Status:** Implemented (when `EnableSummoningClasses` is true)  
**Defaults:** `BlockPetProjectileDamageToOwner` **true**; `BlockPetWarVoidRingWallSpells` **false** (pets keep offensive ring/wall AI; set **true** if Os’-style pet splash on owner returns).

**Auto-summon pulse** (all five summoning classes): fires on **your** direct damage, **when you take damage**, **harmful** spells you cast on creatures, **or damage from your `CombatPet`** (same **1s** gate per owner). If you have no personal offense yet, summon once from a device—pet hits keep the chain going.

**Pet lifetime & size:** Under `SummoningClasses`, **`SummonDurationSeconds`** (default **30**) controls how long BSS auto-summons and the device duplicate pet live. **`AutoSummonObjScaleMultiplier`** (default **0.25**) shrinks their `DefaultScale` for a smaller client model; use **1** for full size. **`AutoSummonMoveSpeedMultiplier`** (default **3**) multiplies tracked auto-summon `CombatPet` move speed after vanilla `GetMovementSpeed`; use **1** for vanilla speed on those pets.

**Follow while moving:** When you are not in combat targeting (pet idle follow path), if **`SummoningClasses.FollowWhileOwnerMoving`** is true and your physics reports movement (`IsMovingOrAnimating`), pets use **`MoveFollowDistanceThreshold`** (default **6m**, capped by **`FollowDistanceThreshold`**) instead of the idle **15m** leash—so they snap / `MoveTo` sooner and stay with you while you run. Set **`FollowWhileOwnerMoving`** false to revert to distance-only follow.

Auto-summoned **CombatPets** (Druid / Elementalist / Necromancer / Enchanter / Artificer) still use ACE creature spell selection for most attacks. When `BlockPetWarVoidRingWallSpells` is **true**, War and Void **ring** and **wall** spells (plus full 360° spread projectiles) are blocked at `TryCastSpell` for pets tracked by this mod. Bolts, streaks, arcs, blasts, and volleys are unchanged either way.

If a ring/wall projectile still appears from another source, `SpellProjectile.OnCollideObject` is patched so a tracked pet **cannot damage its `P_PetOwner`** (impact VFX only). Toggle either flag under `SummoningClasses` in `Settings.json` if you need legacy behavior.

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

### 2026-05-03
- **Death Knight:** **`CombatClasses.DeathKnight.MaxVoidSpellTier`** (1–8) caps nether proc tier after `floor(VoidMagic.Base / SkillPerTier)`; tier is the **spell ID index** in the nether streak/arc lists (not the client “spell level” label). Repo `Settings.json` sets **2** so procs stay on the first two nether spells only. **`ManaCostMultiplier` 0** = no mana for those auto-casts (components still apply if `EnableAutoCastReagentCosts` is on).
- **Death Knight:** Nether proc spell tier now uses **VoidMagic.Base** (not `Current`) so buffs do not spike low-level toons to high tiers; matches `GetSpellTier` rationale (`HybridClasses.GetDeathKnightVoidSpellTier`).
- **Summoning classes:** `BlockPetWarVoidRingWallSpells` default **false** in code + `Settings.json` (was blocking ring/wall and skewing pet AI toward non-offense picks); set **true** per-shard if pet ring/wall splash on owner is a problem. `BlockPetProjectileDamageToOwner` unchanged.
- **Summoning classes (earlier same day):** When the ring/wall gate is enabled, harmful War/Void ring/wall on BSS-tracked `CombatPet` casts is blocked; `BlockPetProjectileDamageToOwner` still skips pet projectile damage to owner.

### 2026-04-27 (v1.2.0)
- **Healer class:** New combat class (Spec Healing + Spec Life Magic). AoE healing aura (15m, 3s tick) + Smite melee proc (50% chance, Harm/Drain Health Other)
- **Adventurer class:** New combat class (no magic trained except Mana Conversion). +50 attributes/skills, +20% vitals, +10 resistances, +2 burden limit — all virtual via Harmony patches
- **Windwalker rebalance:** Spell tier formula changed to `skill / SkillPerTier` (default 200). Tier 1 at 200 War Magic, tier 2 at 400
- **Chaos Tinker fix:** Failures now increment `NumTimesTinkered` (toggleable). Per-item cap of 5 chaos failures via `PropertyInt 40120`

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
