# Swarmed

Creature variant, reinforcement, and champion system for Windblown.

## Overview

Swarmed enhances creature encounters through four systems:

1. **Call-for-Help Reinforcements** — creatures spawn allies on death (landscape/dungeon)
2. **CreatureEx Champions** — 29 champion variant types with unique combat behaviors
3. **Buddy Spawns** — creatures spawn in paired/grouped formations
4. **Dungeon Population Manager** — dynamic dungeon creature density and scaling

## Systems

### 1. Call-for-Help Reinforcements

When a creature dies, it rolls to spawn reinforcement allies. Separate settings for landscape vs dungeon.

| Setting | Default | Range | Purpose |
|---------|---------|-------|---------|
| `LandscapeEnabled` | `true` | — | Open-world reinforcements |
| `LandscapeChance` | `0.10` | 0–1 | Base probability |
| `LandscapeSpawnMin` | `1` | — | Min reinforcements |
| `LandscapeSpawnMax` | `5` | — | Max reinforcements |
| `DungeonEnabled` | `true` | — | Dungeon reinforcements |
| `DungeonChance` | `0.05` | 0–1 | Base probability |
| `DungeonSpawnMin` | `1` | — | Min reinforcements |
| `DungeonSpawnMax` | `3` | — | Max reinforcements |

Reinforcement growth compounds per depth:
- `ReinforcementGrowthEnabled` (default: `true`)
- `ReinforcementGrowthPercent` (default: `0.05` = 5%)
- `ReinforcementGrowthMaxMultiplier` (default: `5.0`)
- At depth ≥ `ReinforcementCreatureExDepthThreshold` (default: 3), champions start spawning

Chaos mode reinforcements:
- `ChaosReinforcementGrowthEnabled` (default: `true`)
- `ChaosReinforcementGrowthPercent` (default: `0.05`)

### 2. CreatureEx Champions

29 champion types, each with unique combat behavior. Applied as `FakeInt 10029` (CreatureExType).

#### By Category

**Offensive Champions:**
| Type | Behavior |
|------|----------|
| `Berserker` | Rampaging increased damage |
| `Boss` | High HP, special abilities, loot upgrade |
| `Comboer` | Combo attacks |
| `Drainer` | Health/Mana drain on hit |
| `Exploder` | AoE explosion on death |
| `Reaper` | Execute-style finishing blows |
| `Rogue` | Stealth/backstab mechanics |
| `Stomper` | Knockdown/stun attacks |
| `Vampire` | Life steal |

**Defensive Champions:**
| Type | Behavior |
|------|----------|
| `Tank` | High defense, damage reduction |
| `Shielded` | Damage absorption shield |
| `Warder` | Magic resistance/reflection |
| `Evader` | Dodge/evasion mechanics |
| `SpellBreaker` | Spell interruption/dispel |

**Support Champions:**
| Type | Behavior |
|------|----------|
| `Healer` | Heals nearby allies |
| `Banisher` | Teleports/banishes targets |
| `Bard` | Ally buffs (disabled) |
| `Necromancer` | Raises dead (disabled) |
| `Poisoner` | DoT applications (disabled) |
| `Puppeteer` | Mind control |
| `SpellThief` | Steals player spells |

**Special Champions:**
| Type | Behavior |
|------|----------|
| `Accurate` | Cannot miss |
| `Duelist` | 1v1 duel mechanics |
| `Horde` | Splits into multiple copies |
| `Merger` | Combines with nearby allies |
| `Runner` | Fast movement (disabled) |
| `Splitter` | Splits on hit (disabled) |
| `Stunner` | Stun-lock attacks |
| `Suppresser` | Suppresses player abilities (disabled) |
| `AuraPulser` | Pulsing damage/effect aura |
| `CorpseExploiter` | Exploits nearby corpses for power |

**High-Health Exemption:** Creatures with max HP > `HighHealthExemptionThreshold` (default: 5000) skip ALL Swarmed alterations unless whitelisted in `HighHealthExemptionWhitelist`.

### 3. Buddy Spawns

Creatures may spawn in predefined paired or grouped formations. Increases tactical variety.

- File: `Features/BuddySpawns.cs`
- Uses `FakeInt 40113` (BuddySpawn tag)

### 4. Dungeon Population Manager

Dynamically adjusts creature density and composition within dungeons.

- File: `Features/DungeonPopulationManager.cs`
- Controlled via `Settings.json`

### 5. Dynamic Mob Scaling

Scales creature level/difficulty/XP/loot to nearby players within the same landblock.

**Solo**: `targetLevel = playerLevel × SoloScalePercent / 100`  
**Group**: `targetLevel = averageGroupLevel × GroupScalePercent / 100`

| Setting | Default | Description |
|---------|---------|-------------|
| `SoloScalePercent` | `110` | Percent of player level to scale toward |
| `GroupScalePercent` | `110` | Percent of average group level |
| `CreatureExSoloScalePercent` | `130` | CreatureEx special mobs (solo) |
| `CreatureExGroupScalePercent` | `130` | CreatureEx special mobs (group) |
| `ChaosSoloScalePercent` | `130` | ChallengeModes chaos mode (solo) |
| `ChaosGroupScalePercent` | `130` | ChallengeModes chaos mode (group) |
| `ChaosCreatureExSoloScalePercent` | `160` | Chaos + CreatureEx (solo) |
| `ChaosCreatureExGroupScalePercent` | `160` | Chaos + CreatureEx (group) |
| `LevelVariancePercent` | `20` | ±this% of target level (e.g., 20 = ±20%) |
| `HealthScaleExponent` | `0.4` | Exponent for health scaling (`ratio^0.4`); gentler than sqrt |
| `HealthScaleMaxMultiplier` | `2.0` | Hard cap on health multiplier |
| `LandscapeSoftCap` | `true` | Cap open-world mobs by landscape tier |
| `LandscapeTierMaxLevels` | `{1:50, 2:75, ..., 7:275}` | Tier caps |

**CreatureEx detection:** Mobs with `FakeInt 10029` (CreatureExType) use the higher `CreatureEx*ScalePercent` values.

**Chaos mode detection:** When `ChallengeModes.IsChaosEnabled` returns true for any player on the landblock, the higher `Chaos*ScalePercent` values apply. If both chaos and CreatureEx are present, the `ChaosCreatureEx*` values are used.

**Loot tier matching:** When a mob is scaled above its original `DeathTreasure.Tier`, a Harmony prefix on `Creature.GenerateTreasure` temporarily swaps `DeathTreasureType` to a higher-tier `TreasureDeath` profile so loot rolls match the monster's actual scaled level. The original profile is restored after generation.

**Upward-only level scaling:** After variance and landscape caps, `targetLevel` is clamped to at least the creature’s template `Level`. Mobs are never scaled down; weak players no longer fight undertuned high-template mobs or get mismatched loot.

- File: `Features/DynamicMobScaling.cs`
- Uses `FakeInt 40150` (base level), `40152` (scaled level), `40153` (loot multiplier), `40154` (scaled loot tier)

### 6. Creature Variation

Random stat scaling and visual variation on creatures.

- File: `Features/CreatureVariation.cs`

### 7. Special Creature Loot

Loot table modifications for CreatureEx champions.

- File: `Features/SpecialCreatureLoot.cs`
- Applies imbue overlay backgrounds (icon underlays) per CreatureExType
- Uses ACE RecipeManager canonical icon underlay values

## Cross-Mod Integration

| Mod | Nature | Notes |
|-----|--------|-------|
| `EmpyreanAlteration` | Reference | CreatureEx enum shared via FakeInt 10029 |
| `BetterLootControl` | Reference | Loot tier coordination for special drops |
| `ChallengeModes` | Bridge | `ChallengeModesBridge.cs` for difficulty scaling |

## Known Gotchas

**Weenie type namespace shadowing:** `Swarmed/Features/DynamicMobScaling.cs` patches `WorldObjectFactory.CreateWorldObject(Weenie, ObjectGuid)`. The global `using Weenie = ACE.Entity.Models.Weenie` alias in `GlobalUsings.cs` is shadowed if any file adds a local `using ACE.Database.Models.World;` (which also contains a `Weenie` type). Harmony resolves `typeof(Weenie)` in the `[HarmonyPatch]` attribute to the wrong type, producing `ArgumentException: Undefined target method` at runtime and crash-looping the server. Always fully qualify the parameter type in the patch attribute:
```csharp
[HarmonyPatch(typeof(WorldObjectFactory), nameof(WorldObjectFactory.CreateWorldObject),
    new Type[] { typeof(ACE.Entity.Models.Weenie), typeof(ObjectGuid) })]
```

## Configuration

All settings in `Settings.json` (test) / `Settings.json` (repo template).

### Key Settings

| Setting | Type | Default | Purpose |
|---------|------|---------|---------|
| `LandscapeEnabled` | `bool` | `true` | Open-world reinforcements |
| `LandscapeChance` | `float` | `0.10` | Base landscape spawn chance |
| `DungeonEnabled` | `bool` | `true` | Dungeon reinforcements |
| `DungeonChance` | `float` | `0.05` | Base dungeon spawn chance |
| `HighHealthExemptionThreshold` | `int` | `5000` | Max HP gate for Swarmed alterations |
| `ReinforcementGrowthPercent` | `float` | `0.05` | Growth per reinforcement generation |
| `ReinforcementCreatureExDepthThreshold` | `int` | `3` | Gen depth for champion spawns |

## Testing

```bash
# Build
dotnet build Swarmed/Swarmed.csproj

# Check creature type
/cex list
/cex info
```

## Immutable Source of Truth

- **Owner of**: Creature reinforcements, CreatureEx champions, buddy spawns, dungeon population, mob scaling
- **Immutable file**: `Settings.json` (repo template)
- **Test file**: `C:\ACE\Mods\Swarmed\Settings.json`
- **Design doc**: This file
