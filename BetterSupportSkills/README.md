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

**Drudge charm tiers (Windblown, 2026-05+):** Species-only drudge charm drops and bulk Collector turn-in live in **`Windblown/Content/TrophyLines/drudge-charm.json`** (runtime weenies **`Windblown/Content/Weenies/drudge-charms.json`**). Custom tier WCIDs **850300–850303** (Regular → Perfect); vanilla **24835** remains the mirror emote source and sibling-replacement target alongside **850300**. Server DB still needs weenie rows for those WCIDs (see **`Windblown/Content/SQL/Items/05_WindblownCollectorTrophies_850300-850336.sql`**). **QOL**, **AutoLoot**, and **BetterLootControl** use the new band; drudge charm logic is **not** configured via legacy **`DrudgeCharmTrophies`** in **`Settings.json`** (that block is ignored / removed — see **`Settings.cs`** migration comments).

**Settings (Assess extra rolls only):**
```json
{
  "EnableTrophyDrops": true,
  "TrophyDrops": {
    "MaxExtraRolls": 3,
    "BonusTreasureChance": 0.0
  }
}
```

Drudge charm **drop rates, WCIDs, and turn-in rewards** are authored under **`Windblown/Content/TrophyLines/drudge-charm.json`** (not `BetterSupportSkills/Settings.json`).

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
**Status:** Disabled by default (requires `Enabled: true` in `CombatClasses.Adventurer`)  
**Requirements:** No magic schools trained (except Mana Conversion)

When enabled via `CombatClasses.Adventurer.Enabled`, grants:
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
    "Enabled": false,
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

**Cantrip bonus pets:** When `EnableCantripBonusPets` is true (default), equipped Summoning Prowess cantrips grant extra pet capacity:
- Minor=+1, Moderate=+2, Major=+3, Epic=+4, Legendary=+7
- Only the highest cantrip tier on any equipped item counts
- Checks SpellDID, ProcSpell, and item weenie spell books automatically
- Configurable via `CantripBonusPetsLegendarySpellId` (0=disabled)

Auto-summoned **CombatPets** (Druid / Elementalist / Necromancer / Enchanter / Artificer) still use ACE creature spell selection for most attacks. When `BlockPetWarVoidRingWallSpells` is **true**, War and Void **ring** and **wall** spells (plus full 360° spread projectiles) are blocked at `TryCastSpell` for pets tracked by this mod. Bolts, streaks, arcs, blasts, and volleys are unchanged either way.

If a ring/wall projectile still appears from another source, `SpellProjectile.OnCollideObject` is patched so a tracked pet **cannot damage its `P_PetOwner`** (impact VFX only). Toggle either flag under `SummoningClasses` in `Settings.json` if you need legacy behavior.

---

### Salvage (Auto-Salvage)
**Status:** ✅ Implemented  
**Default:** Enabled (always active alongside LeyLineLedger)

When a player creates salvage (via the `TryCreateInInventoryWithNetworking` path), BSS intercepts it and deposits the result directly into the player's **LeyLineLedger bank** instead of their inventory.

- **Trained Salvaging:** 50% of the generated salvage is banked  
- **Specialized Salvaging:** 100% of the generated salvage is banked  
- The item disappears from the salvage creation result; a chat message confirms the deposit

#### Message Accuracy
Salvage deposit messages report the **actual integer units banked** (after `Math.Max(1, (int)deposit)` rounding), not the raw fractional value. This ensures trained salvagers see correct totals (e.g., "+5 Bronze" rather than "+2.5 Bronze").

#### Imbue Salvage Bonus
On top of the base salvage, weapons carrying imbues grant **bonus salvage matching the imbue type** at deposit time. This applies to all retail ACE imbues and all custom Overtinked imbues:

| Imbue | Salvage | WCID |
|---|---|---|
| Acid Rending | Viridian | 21048 |
| Bludgeon Rending | Mahogany | 21049 |
| Cold Rending | Aquamarine | 21047 |
| Electric Rending | Jet | 21046 |
| Fire Rending | Red Garnet | 21045 |
| Pierce Rending | Imperial Topaz | 21051 |
| Slash Rending | Imperial Topaz | 21051 |
| Nether Rending (custom) | Onyx | 21064 (from Overtinked settings, fallback 21064) |
| Crippling Blow | Fire Opal | 21056 |
| Infused Creature | Black Opal | 21060 |
| Infused War | Sunstone | 21062 |
| Infused Life | Red Garnet | 21045 |
| Infused Void | Jet | 21046 |
| Critical Strike | Black Opal | 21060 |
| Crushing Blow | Fire Opal | 21056 |
| Hemorrhage (custom) | Hematite | 21052 (from Overtinked settings) |
| Cleaving (custom) | Malachite | 21053 (from Overtinked settings) |
| Shatter (custom) | Lavender Jade | 21063 (from Overtinked settings) |
| Buffed jewelry imbues | Source salvage | Read from PropertyInt 40136 (stamped by Overtinked at tinker time) |

Each imbue that grants bonus salvage prints a per-line message:
```
[Auto-Salvage] Granted imbue salvage: Red Garnet +50 (bank: 1.23 → 1.73 bags)
```

#### Interop Modules

**`OvertinkedImbueInterop.cs`** — reflection bridge to Overtinked  
Loaded once on first use via `AppDomain.CurrentDomain.GetAssemblies()`. Reads `Overtinked.PatchClass.CurrentSettings` to get live `SalvageWcids` for each custom imbue config (`HemorrhageImbue`, `CleavingImbue`, `NetherRendingImbue`, `ShatterImbue`). Stays in sync with `Overtinked/Settings.json` without a hard project reference.

- `GetCustomFlags(item)` — reads **PropertyInt 40133** bitmask (Cleaving=2, NetherRending=4, Hemorrhage=8, Shatter=16)
- `HasHemorrhage/HasCleaving/HasShatter/HasNetherRending(flags)` — bitmask checks
- `GetBuffedJewelryWcid(item)` — reads **PropertyInt 40136**, stamped by Overtinked's `TryApplyBuffedImbue` with the source salvage WCID at tinker time

**`LeyLineLedgerSalvageInterop.cs`** — bridge to LeyLineLedger material bank writes  
- `GetSalvagePropertyId(uint wcid)` — delegates to **`AceRaajMods.Shared.LeyLineLedgerSalvageBankInterop`**, which reflects **`LeyLineLedger.PatchClass.Settings.SalvageBank`** and matches **`DepositRules`** the same way as **`BankSalvage`** (primary WCID, output bag WCID, additional deposit WCIDs). When LeyLineLedger is **not** loaded, falls back once to the legacy **`FirstMaterialBankPropertyId + (WCID − 20981)`** formula (logged). If LLL is loaded but no rule matches, returns **`-1`** and **`TryIncSalvage`** skips the credit (warn log).
- `DirectIncBanked(player, propertyId, amount)` — calls shared **`LeyLineLedgerBankInterop.IncBanked`** with a pre-resolved property ID (imbue bonus lines).

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

### 2026-05-16
- **Alabaster (20980) auto-deposit range fix:** `MinSalvageWcid` lowered from `20981` to `20980` across BSS interop and SalvageAutoDeposit. Items with MaterialType 66 (Alabaster/Stone) are now correctly banked on auto-salvage. All material index computations and range checks adjusted accordingly.
- **Diagnostic logging for suspect-range auto-deposit:** BSS `TryIncSalvage` logs at Info level every time WCIDs 21072-21089 are credited, recording WCID, resolved property, units, and resulting total balance. Shared interop logs the resolution path (WCID → DepositRules index → property) for the same range plus 20980.

### 2026-05-14
- **ManaConversion SpellCleave thread-safety fix:** Cleave spell casts are now deferred via `WorldManager.EnqueueAction` instead of firing synchronously during `HandleCastSpell`. Prevents `Collection was modified` crashes in `LandblockManager.TickPhysics` when ArcaneLore echoes + ManaConversion cleaves create new spell projectiles during parallel landblock physics iteration.

### 2026-05-12
- **Adventurer class disabled by default:** Added `Enabled` bool to `CombatClasses.Adventurer` settings (default `false`). `SummoningClasses.GetPlayerClass()` only returns `"Adventurer"` when explicitly enabled by the operator. Existing achievement unlocks remain but are ignored until toggled on.
- **Salvage message accuracy:** `SalvageAutoDeposit` now passes `depositInt` (actual integer units banked after `Math.Max(1, (int)deposit)`) to `AccumulateForMessage` instead of the raw fractional `depositUnits`. Trained salvagers now see correct totals (e.g., "+5 Bronze" rather than "+2.5 Bronze").

### 2026-05-10
- **Salvage ↔ LeyLineLedger bank slot alignment:** Stack salvage **20981–21089** now credits the same **`PropertyInt64`** as `/bank salvage` (`DepositRules` index / `BankProperty`), not **`FirstMaterialBankPropertyId + (WCID − 20981)`**. Shared resolver: **`../Shared/LeyLineLedgerSalvageBankInterop.cs`** (linked from `BetterSupportSkills.csproj`). Fixes desync between bag-fill totals and **`/bank salvage status`** when rules are not WCID-sorted (e.g. Brass **21042**).
- **Category “least banked” gem picks** (`PickLeastBankedMaterial`) read balances from the **resolved** property id per WCID.
- **LeyLineLedger** migrates old stray balances automatically: **`MaybeMergeLegacyWcidOffsetSalvageBank`** on login and at **`/bank salvage`** entry merges legacy-offset slots into rule slots when they differ.

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
