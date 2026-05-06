# CommonGoals

Personal instanced loot and no-split fellowship XP for Windblown.

## Overview

CommonGoals provides two independent features:

1. **Personal Instanced Loot** — each qualifying player who tags a creature gets their own Corpse WorldObject with an independent loot roll
2. **No-Split XP/Luminance** — fellowship members each receive full XP/luminance instead of dividing

## Features

### Personal Instanced Loot

When a creature dies, each qualifying player receives their own personal corpse at the creature's location. Each corpse has independent loot rolls.

**Qualification:**
- Requires Loremaster Achievement Tier ≥ `RequiredAchievementTier` (default: 1)
- Player must deal ≥ `MinDamagePercent` of total creature health (default: 0 = any damage qualifies)
- Capped at `MaxPersonalCorpsesPerKill` (default: 8)

**Corpse Lifetime:**
- `PersonalCorpseLifetimeSeconds` (default: 300 = 5 minutes)

**Loot:**
- AutoLoot hooks apply to personal corpses automatically
- Loot tier: `LootTierOverride` (default: -1 = use creature's own treasure tier)

### No-Split Fellowship XP

When enabled, fellowship members each receive the **full** XP/luminance amount instead of dividing it among members. Does not affect allegiance pass-up.

| Setting | Default | Purpose |
|---------|---------|---------|
| `EnableNoSplitXp` | `false` | Full XP for each fellow |
| `EnableNoSplitLuminance` | `false` | Full luminance for each fellow |

## Cross-Mod Integration

| Mod | Nature | Notes |
|-----|--------|-------|
| `Loremaster` | Direct | Reads `FakeInt 11050` (Achievement Tier) for qualification |

## Configuration

All settings in `Settings.json`.

| Setting | Type | Default | Purpose |
|---------|------|---------|---------|
| `Enable` | `bool` | `true` | Master toggle |
| `RequiredAchievementTier` | `int` | `1` | Min Loremaster tier |
| `MinDamagePercent` | `double` | `0.0` | Min damage fraction to qualify |
| `MaxPersonalCorpsesPerKill` | `int` | `8` | Corpse cap |
| `PersonalCorpseLifetimeSeconds` | `int` | `300` | Corpse decay time |
| `NotifyOnPersonalLoot` | `bool` | `true` | Notify on corpse spawn |
| `LootTierOverride` | `int` | `-1` | Force loot tier (-1 = creature tier) |
| `EnableNoSplitXp` | `bool` | `false` | Full XP per fellow |
| `EnableNoSplitLuminance` | `bool` | `false` | Full luminance per fellow |

## Testing

```bash
dotnet build CommonGoals/CommonGoals.csproj
```

## Immutable Source of Truth

- **Owner of**: Personal instanced loot, no-split fellowship XP/luminance
- **Immutable file**: `Settings.json` (repo template)
- **Test file**: `C:\ACE\Mods\CommonGoals\Settings.json`
