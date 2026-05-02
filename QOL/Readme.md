# QOL

A combined ACEmulator server mod providing a suite of convenience and balance enhancements. Each feature is independently toggleable via **`Enable*`** booleans in `Settings.json` (and `EnableOfflineSwear` for `/offlineswear`).

### Portals — strip NoRecall

When **`EnablePortalsStripNoRecall`** is `true` (default), every **`Portal`** clears the **`PortalBitmask.NoRecall`** bit from **`PropertyInt.PortalBitmask`** as soon as it enters the world. That matches “remove no-recall from portals” for **secondary portal recall** and related rules (`NoTie` uses the same bit in ACE). Other portal bitmask flags (PK restrictions, summon, etc.) are unchanged. Portals that were already loaded before the mod enables or before a hot-reload are not retroactively patched until their landblock respawns them or the server restarts.

### Town Network toll

When **`EnableTownNetworkToll`** is `true`, **`Portal.CheckUseRequirements`** (postfix) and **`Portal.ActOnUse`** (prefix) enforce a banked-pyreal toll for portals that match **`TownNetworkToll`** rules. Bank balance uses **`PropertyInt64`** id **`BankCashProperty`** (default **39999**, same convention as **Loremaster** / **LeyLineLedger** / **AutoLoot**). Base fees are **`FeeBelowLevel`** / **`FeeAtOrAboveLevel`** split by **`LevelSplit`**. **Loremaster** quest points on **`FakeFloat.QuestBonus`** reduce the fee: each full **`QpPerThousandForDiscountStep`** QP applies **`DiscountPercentPerStep`** (multiplicative stack; uncapped toward zero). **`MatchMode`**: `0` = substring on name/appraisal only, `1` = WCID list only, `2` = combined (substring **or** WCID **or** landblock). **`InsufficientFundsMode`**: `0` = block travel if bank &lt; fee; `1` = if `0 &lt; bank &lt; fee`, debit entire bank and allow. Optional **`ChargeMarketplaceRecall`**: apply the same toll to **`HandleActionTeleToMarketPlace`** (`/market`-style recall). Harmony category: **`TownNetworkToll`**.

#### Generous Benefactor achievement

The server tracks cumulative Town Network toll spend per player. Once a player has paid **1,000,000,000 (1 billion) pyreals** in TN tolls, they unlock the **`/tn`** command, which teleports them instantly to the Town Network (`0x0007010B`) with no portal animation.

---

## Enabling Features

Set each `EnableAnimations`, `EnableAugmentations`, `EnableStackable`, etc. to `true` or `false`. When a flag is `false`, that feature’s Harmony category is not applied. Optional `// …` string keys in `Settings.json` (mirroring `Settings.cs`) describe each toggle and nested object; they are safe to omit.

Healing-kit **Recuperation** (heal-over-time after kits) lives in the **BetterSupportSkills** mod (`EnableHealing` and the `Recuperation` settings object there), not in QOL.

---

## Features

### Animations

Controls animation playback speed for certain actions. When a motion has an entry in `AnimationSpeeds`, that value is returned from `MotionTable.GetAnimationLength(MotionCommand)` instead of the dat value. **`0.0` skips that animation** (no table lookup time). The patch does **not** consider `MotionStance`—the same `MotionCommand` uses one length in every stance.

**`Settings.json` documentation:** Keys starting with `//` (for example `// EnableAnimations`) are optional human-readable strings from `Settings.cs`; you can remove them. Real settings use normal property names.

```json
"Animations": {
  "DieSeconds": 0.0,
  "AnimationSpeeds": {
    "AllegianceHometownRecall": 0.0,
    "HouseRecall": 0.0,
    "LifestoneRecall": 0.0,
    "MarketplaceRecall": 0.0,
    "PKArenaRecall": 0.0,
    "Pickup": 0.0,
    "StoreInBackpack": 0.0,
    "Pickup5": 0.0,
    "Pickup10": 0.0,
    "Pickup15": 0.0,
    "Pickup20": 0.0,
    "NonCombat": 0.0,
    "HandCombat": 0.0,
    "BowCombat": 0.0,
    "CrossbowCombat": 0.0,
    "SkillHealSelf": 0.0,
    "SkillHealOther": 0.0,
    "Reload": 0.0
  }
}
```

| Setting | Type | Default | Description |
|---|---|---|---|
| `DieSeconds` | float | `0.0` | Delay in seconds between each stage of the `/die` suicide sequence (separate from `MotionTable`) |
| `AnimationSpeeds` | Dictionary | (see above) | [MotionCommand](https://github.com/ACEmulator/ACE/blob/master/Source/ACE.Entity/Enum/MotionCommand.cs) → duration in seconds. **Recalls:** hometown, house, lifestone, marketplace, PK arena. **Loot:** `Pickup`, `StoreInBackpack`, `Pickup5`–`Pickup20`. **Combat mode:** `NonCombat`, `HandCombat`; missile: `BowCombat`, `CrossbowCombat` (add other weapon stances if needed). **Healing:** `SkillHealSelf`, `SkillHealOther` (first aid); kits may use other motions—add by name if you need to tune them. **Reload:** `Reload` (bows/crossbows). |

> **Note:** Only motions queried through this `GetAnimationLength` overload are affected. If an action still feels slow, check ACE for other motions (e.g. `Eat`/`Drink`/`MagicHeal`) and add them to the dictionary.

---

### Augmentations

Overrides augmentation caps and optionally removes shared-group restrictions for attributes and resists.

```json
"Augmentation": {
  "IgnoreSharedAttribute": false,
  "IgnoreSharedResist": false,
  "MaxAugs": {
    "Strength": 10,
    "Endurance": 10,
    ...
  }
}
```

| Setting | Type | Default | Description |
|---|---|---|---|
| `IgnoreSharedAttribute` | bool | `false` | When `true`, attribute augmentations no longer count toward the shared attribute group limit |
| `IgnoreSharedResist` | bool | `false` | When `true`, resist augmentations no longer count toward the shared resist group limit |
| `MaxAugs` | Dictionary | (see below) | Per-type augmentation caps, applied on server startup |

**Default Augmentation Caps**

| Category | Types | Cap |
|---|---|---|
| Attributes | Strength, Endurance, Coordination, Quickness, Focus, Self | 10 each |
| Tinkering | Salvage, Item, Armor, MagicItem, Weapon | 1 each |
| Inventory | PackSlot | 1 |
| Burden | BurdenLimit | 5 |
| Death Penalties | DeathItemLoss | 3 |
| Death Penalties | DeathSpellLoss | 1 |
| Protection / XP | CritProtect, BonusXP | 1 each |
| Salvage | BonusSalvage | 4 |
| Spells | ImbueChance | 1 |
| Regeneration | RegenBonus | 2 |
| Spell Effects | SpellDuration | 5 |
| Resistances | Slash, Pierce, Bludgeon, Acid, Fire, Cold, Electric | 2 each |
| Focus Augs | Creature, Item, Life, War, Void | 1 each |
| Combat | CritChance, CritDamage, Melee, Missile, Magic, Damage, DamageResist, AllStats | 1 each |

---

### Credits

Controls the effective specialization credit cap used by the Skill Alteration Device (Gem of Enlightenment / Gem of Forgetfulness).

```json
"MaxSpecCredits": 9999
```

| Setting | Type | Default | Description |
|---|---|---|---|
| `MaxSpecCredits` | int | `9999` | Effective specialization credit cap. The patch offsets the reported total by `70 − MaxSpecCredits`, so values above ~400 (more than all skills combined) remove the cap entirely. Set to `70` to restore vanilla behavior. |

> **How it works:** ACE hardcodes a 70-credit limit checked against `GetTotalSpecializedCredits()`. This patch postfixes that method and subtracts `MaxSpecCredits − 70` from the reported total. With the default of `9999`, the reported total is always driven to `0`, so the check always passes regardless of how many skills are specialized.

---

### Defaults

Applies default property values to objects when a property transitions from `null` to being set for the first time. Useful for ensuring new characters start with specific properties.

```json
"Defaults": {
  "Int64Defaults": {
    "MaximumLuminance": 1000000000
  },
  "IntDefaults": {},
  "FloatDefaults": {},
  "BoolDefaults": {}
}
```

| Dictionary | Property Type | Description |
|---|---|---|
| `Int64Defaults` | `PropertyInt64` | Long integer property defaults |
| `IntDefaults` | `PropertyInt` | Integer property defaults |
| `FloatDefaults` | `PropertyFloat` | Float property defaults |
| `BoolDefaults` | `PropertyBool` | Boolean property defaults |

The default `MaximumLuminance: 1,000,000,000` ensures new characters can store luminance up to 1 billion. Only applies when the property has not been previously set on that character.

---

### Fellowships

Expands and customizes the fellowship system, including member cap, XP sharing, and bulk-invite tools.

```json
"Fellowship": {
  "SendDetails": true,
  "MaxMembers": 30,
  "StopAtMaxFellowshipInvite": true,
  "IgnoreBusy": false,
  "OverrideSharePercent": true,
  "FlatSharePercent": 1.0,
  "SharePercent": {
    "1": 1.0,
    "2": 0.75,
    "3": 0.6,
    "4": 0.55,
    "5": 0.5,
    "6": 0.45,
    "7": 0.4,
    "8": 0.35,
    "9": 0.3
  },
  "DefaultShare": 0.0
}
```

| Setting | Type | Default | Description |
|---|---|---|---|
| `SendDetails` | bool | `true` | When enabled, both the inviter and the recruit receive a chat message on invite showing the fellowship name and resulting XP share percentage |
| `MaxMembers` | int | `30` | Maximum number of members allowed in a fellowship (vanilla cap is 9) |
| `StopAtMaxFellowshipInvite` | bool | `true` | When `true`, `/fship` stops inviting once the fellowship reaches `MaxMembers` |
| `IgnoreBusy` | bool | `false` | When `true`, bypasses the `IsBusy` check and force-accepts invites without a confirmation popup — useful for server-side bulk recruitment |
| `OverrideSharePercent` | bool | `true` | When `true`, all members always receive `FlatSharePercent` regardless of fellowship size, ignoring the `SharePercent` table |
| `FlatSharePercent` | double | `1.0` | The flat XP share multiplier used when `OverrideSharePercent` is enabled (`1.0` = 100%) |
| `SharePercent` | Dictionary | (see above) | Per-member-count XP share table, used only when `OverrideSharePercent` is `false` |
| `DefaultShare` | double | `0.0` | Fallback share value when `OverrideSharePercent` is `false` and the member count has no entry in `SharePercent` |

#### `/fship` Command

Bulk-invites players into the fellowship. Requires the invoking player to already be in a fellowship.

| Usage | Behavior |
|---|---|
| `/fship` | Invites all fellowship-less players on the current landblock |
| `/fship <name>` | Invites all online players whose name contains `<name>` (case-insensitive) |

> `IgnoreBusy` applies to `/fship` invites as well — when enabled, targeted players are added immediately without a popup.

---

### Permanent Objects

Allows specific world objects to survive landblock resets. Objects must be marked with the `Permanent` fake property to be preserved.

Mark an object as permanent using the `FakeBool.Permanent` property. Marked objects are excluded from the normal landblock cleanup sweep and their inventory is not cleared on container reset.

---

### Recklessness

Rewrites the Recklessness skill modifier to tie bonus damage to where the attack bar is held, rather than the vanilla behavior.

```json
"Recklessness": {
  "PowerLow": 0.2,
  "PowerHigh": 0.8,
  "RatingTrained": 10,
  "RatingSpecialized": 20
}
```

| Setting | Type | Default | Description |
|---|---|---|---|
| `PowerLow` | float | `0.2` | Minimum attack bar percentage (0.0–1.0) required to trigger Recklessness |
| `PowerHigh` | float | `0.8` | Maximum attack bar percentage at which Recklessness still applies |
| `RatingTrained` | int | `10` | Damage rating bonus when Recklessness is trained |
| `RatingSpecialized` | int | `20` | Damage rating bonus when Recklessness is specialized |

**How it works:**

- Only active in Melee or Missile combat mode
- Attack bar must be between `PowerLow` (20%) and `PowerHigh` (80%)
- If the player's Recklessness skill is lower than their current attack skill, the rating bonus scales down proportionally: `scale = recklessness_skill / attack_skill`
- Final modifier is computed via `GetDamageRating()` using the scaled rating

---

### Tailoring

Removes the society armor restriction from the tailoring system, allowing society armor pieces to be used as tailoring targets or sources.

No configuration required — enabling the feature is sufficient.

---

### Vendor loot rotation (equipment vendors)

When **`EnableVendorLootRotation`** is **`true`**, a Harmony **prefix** on **`Vendor.ApproachVendor`** runs at **First** (before **LeyLineLedger** pricing on approach; **EmpyreanAlteration** vendor stock injection remains **Last**). Only vendors that sell equipment via **`MerchandiseItemTypes`** get stock stripped and regenerated for the bits they actually sell (melee, missile, caster, armor, clothing, jewelry). Counts per bit come from **`VendorLootItemsPerCategoryMin`** / **`Max`** (default 15–30). **`RollVendorItemTier`** favors tiers 1–2 near low-tier vendors; **`VendorLootLowStatMode`** keeps replacements closer to plain rolled gear. Magic/mundane/salvage extras are gated by merch bits and separate toggles/percentages (defaults favor no extra magic/mundane on pure equipment shops). **Refresh cadence** uses **`min(VendorLootRotationMinutes, VendorLootCooldownMinutes)`** (each at least 1); the cooldown timestamp is only advanced after a successful rotation (skipping no-op approaches does not lock the vendor out). Academy/Pathwarden cleanup for non-TN vendors is a **database** concern: apply **`WindblownContent/Content/SQL/RemoveAcademyPathwardenFromNonTnVendors.sql`** to **`ace_world`** and restart the server.

---

## Commands

| Command | Access | Description |
|---|---|---|
| `/fship [name]` | Player | Bulk-invites players to your fellowship. Omit `name` to invite the current landblock; provide a name fragment to search all online players |
| `/setlum` | Player | Sets your luminance to the maximum value (`MaximumLuminance`). Only works if that property has been set on your character |
| `runas <player> <command>` | Admin | Runs a command as the named online player, bypassing normal access checks. *Experimental.* |
| `/xp tracker` | Player | Show session XP, luminance, and bank deposit summary |
| `/xp tracker full` | Player | Show detailed breakdown by XP type (kill, quest, etc.) |
| `/xp tracker lifetime` | Player | Show lifetime totals from persistent storage |
| `/xp spend` | Player | Distribute available XP across attributes, vitals, and skills proportionally |
| `/xp spend auto` | Player | Toggle automatic XP spending whenever XP is earned |
| `/tn` | Player | Instant teleport to Town Network (unlocked after donating 1 billion pyreals in TN tolls) |

> Example: `runas alttest faction ch 5`

---

### XP Tracker & Auto-Spend

Tracks XP, luminance, and bank deposits per session. Lifetime totals are persisted to `<modDir>/xp-tracker/<guid>.json`.

#### `/xp spend`

Manually distributes available XP across all trainable stats using greedy proportional allocation:

1. **Attributes** (Strength, Endurance, Coordination, Quickness, Focus, Self)
2. **Vitals** (Health, Stamina, Mana)
3. **Skills** (all trained/specialized skills)

Each stat receives `(available × weight / remaining_weight)` XP, capped at what it needs to reach `maxRank - stopBefore`. Leftover flows to lower-weight stats.

Skill weights are configurable:
- **Combat skills:** `CombatSkillWeight` (default 3)
- **Social skills:** `SocialSkillWeight` (default 2)
- **All others:** `SupportSkillWeight` (default 1)

**Verbose messaging:**
```
Spent 450,000 XP into 8 stats: ItemEnchantment (+13), Strength (+4), Health (+2), WarMagic (+7). Remaining: 12,000
```

#### `/xp spend auto`

When enabled, XP is automatically distributed immediately after every `GrantXP` call. Same verbose messaging prefixed with `[Auto-Spend]`.

**Settings:**
```json
"XpSpendStopBeforeMaxRanks": 3,
"XpSpend": {
  "AttributeVitalWeight": 2,
  "CombatSkillWeight": 3,
  "SocialSkillWeight": 2,
  "SupportSkillWeight": 1,
  "CombatSkills": ["LightWeapons", "HeavyWeapons", "FinesseWeapons", "TwoHandedCombat", "MissileWeapons"],
  "SocialSkills": ["Leadership", "Loyalty", "Allegiance"]
}
```

---

## Settings.json Reference

Full example with all defaults:

```json
{
  "Patches": [
    "animations",
    "augmentations",
    "defaults",
    "fellowships",
    "permanentobjects",
    "recklessness",
    "tailoring"
  ],
  "MaxSpecCredits": 9999,
  "Animations": {
    "DieSeconds": 0.0,
    "AnimationSpeeds": {
      "AllegianceHometownRecall": 0.0,
      "HouseRecall": 0.0,
      "LifestoneRecall": 0.0,
      "MarketplaceRecall": 0.0,
      "PKArenaRecall": 0.0,
      "Pickup": 0.0,
      "StoreInBackpack": 0.0,
      "Pickup5": 0.0,
      "Pickup10": 0.0,
      "Pickup15": 0.0,
      "Pickup20": 0.0,
      "NonCombat": 0.0,
      "HandCombat": 0.0,
      "BowCombat": 0.0,
      "CrossbowCombat": 0.0,
      "SkillHealSelf": 0.0,
      "SkillHealOther": 0.0,
      "Reload": 0.0
    }
  },
  "Defaults": {
    "Int64Defaults": { "MaximumLuminance": 1000000000 },
    "IntDefaults": {},
    "FloatDefaults": {},
    "BoolDefaults": {}
  },
  "Fellowship": {
    "SendDetails": true,
    "MaxMembers": 30,
    "StopAtMaxFellowshipInvite": true,
    "IgnoreBusy": false,
    "OverrideSharePercent": true,
    "FlatSharePercent": 1.0,
    "SharePercent": {
      "1": 1.0, "2": 0.75, "3": 0.6, "4": 0.55, "5": 0.5,
      "6": 0.45, "7": 0.4, "8": 0.35, "9": 0.3
    },
    "DefaultShare": 0.0
  },
  "Recklessness": {
    "PowerLow": 0.2,
    "PowerHigh": 0.8,
    "RatingTrained": 10,
    "RatingSpecialized": 20
  },
  "Augmentation": {
    "IgnoreSharedAttribute": false,
    "IgnoreSharedResist": false,
    "MaxAugs": {
      "Strength": 10, "Endurance": 10, "Coordination": 10,
      "Quickness": 10, "Focus": 10, "Self": 10,
      "PackSlot": 1, "BurdenLimit": 5,
      "DeathItemLoss": 3, "DeathSpellLoss": 1,
      "CritProtect": 1, "BonusXP": 1, "BonusSalvage": 4,
      "ImbueChance": 1, "RegenBonus": 2, "SpellDuration": 5,
      "Salvage": 1, "ItemTinkering": 1, "ArmorTinkering": 1, "MagicItemTinkering": 1, "WeaponTinkering": 1,
      "ResistSlash": 2, "ResistPierce": 2, "ResistBludgeon": 2, "ResistAcid": 2,
      "ResistFire": 2, "ResistCold": 2, "ResistElectric": 2,
      "FociCreature": 1, "FociItem": 1, "FociLife": 1, "FociWar": 1, "FociVoid": 1,
      "CritChance": 1, "CritDamage": 1,
      "Melee": 1, "Missile": 1, "Magic": 1,
      "Damage": 1, "DamageResist": 1, "AllStats": 1
    }
  }
}
```
