# CustomSpells

Custom spell creation and equipment set spell bonuses for Windblown.

## Overview

CustomSpells provides two features:
1. **Custom spell definitions** — define new spells via JSON config or Excel spreadsheet
2. **Equipment Set spell bonuses** — grant spells when a player equips N pieces of a gear set

## Features

### Custom Spell Definitions

Spells can be defined in `Settings.json` under `CustomSpells` as a list of `SpellCustomization` objects, or loaded from an Excel spreadsheet.

**SpellCustomization fields (template-based):**
| Field | Type | Purpose |
|-------|------|---------|
| `Template` | `SpellId` | Base spell to clone |
| `Id` | `SpellId?` | New spell ID (auto if null) |
| `Name` | `string` | Spell name |
| `SpellWords` | `string` | Incantation words |
| `School` | `MagicSchool?` | Magic school override |
| `Category` | `SpellCategory?` | Spell category |
| `BaseMana` | `uint?` | Mana cost |
| `BaseRangeConstant` | `float?` | Range constant |
| `BaseRangeMod` | `float?` | Range modifier |
| `Power` | `uint?` | Spell power |
| `StatModType` | `EnchantmentTypeFlags?` | Stat modification type |
| `StatModKey` | `uint?` | Stat key |
| `StatModVal` | `float?` | Stat value |
| `EType` / `DamageType` | `DamageType?` | Element/damage type |
| `BaseIntensity` | `int?` | Base damage |
| `Variance` | `int?` | Damage variance |
| `NumProjectiles` | `int?` | Projectile count |
| `Duration` / `DotDuration` | `double?` | Effect duration |
| `CasterEffect` / `TargetEffect` | `PlayScript?` | Visual effects |

### Equipment Set Spell Bonuses

Define spell grants per equipped item count per equipment set:

```json
"Sets": {
  "MajorStinging": [
    { "NumEquipped": 2, "Spells": [9999] },
    { "NumEquipped": 4, "Spells": [9998] }
  ]
}
```

### Excel Spreadsheet Import

When `AutoloadSpreadsheet` is `true`, spells are loaded from `Spells.xlsx` in the mod directory. Uses `Ganss.Excel` library for parsing.

## ACRealms Support

CustomSpells has special `REALM` compile define for ACRealms compatibility (uses `InstancedPosition` instead of ACE base).

## Cross-Mod Integration

| Mod | Nature | Notes |
|-----|--------|-------|
| `BetterLootControl` | Reference | Loot table entries may reference custom spell IDs |

## Configuration

| Setting | Type | Default | Purpose |
|---------|------|---------|---------|
| `AutoloadSpreadsheet` | `bool` | `false` | Load from Spells.xlsx |
| `Spreadsheet` | `string` | `ModPath/Spells.xlsx` | Spreadsheet path |
| `CustomSpells` | `List<SpellCustomization>` | empty | JSON-defined custom spells |
| `Sets` | `Dictionary<EquipmentSet, List<SetTier>>` | empty | Equipment set spell bonuses |

## Testing

```bash
dotnet build CustomSpells/CustomSpells.csproj
```

## Immutable Source of Truth

- **Owner of**: Custom spell definitions, equipment set spell bonuses
- **Immutable file**: `Settings.json` (repo template)
- **Test file**: `C:\ACE\Mods\CustomSpells\Settings.json`
