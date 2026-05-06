# EmpyreanAlteration

Item enhancement, mutators, and loot growth system for Windblown.

## Overview

EmpyreanAlteration is the largest and most complex mod in the repo. It provides:

1. **Mutators** — runtime item property modifiers applied at drop-time (prefixes, suffixes, auras, scaling)
2. **Item Level-Up Growth** — XP-based item leveling with augments, chaos triggers, and fixed-level unlocks
3. **Fake Properties** — runtime-computed pseudo-properties that look like real ACE properties (leech, reflections, spell split/splash, kill tasks, etc.)
4. **Proc Systems** — on-attack and on-hit proc effects with configurable rates
5. **Item Awakening** — "Awakened" prefix system for loot items

## Feature Groups

Features are gated by `AlterationFeature` enum values in `Settings.Features`. Each maps to a file under `Features/`.

### Core Loot & Item

| Feature | File | Description |
|---------|------|-------------|
| `MutatorHooks` | `Features/MutatorHooks.cs` | Master mutator system; applies mutators to items at creation |
| `ItemLevelUpGrowth` | `Features/ItemLevelingPoints.cs`, `Features/ItemLevelUpLootGrowth.cs` | XP-based item leveling with augments |
| `FakeItemLoot` | `Features/FakeItemLoot.cs` | Runtime item generation for fake-item systems |

### Item Awakening

| Feature | File | Description |
|---------|------|-------------|
| `LivingItemAwakener` | `Features/LivingItemAwakener.cs` | Awakens items with the "Awakened" prefix |
| `LivingItemHooks` | `Features/LivingItemHooks.cs` | Hook points for awakening events |

### Proc Systems

| Feature | File | Description |
|---------|------|-------------|
| `ProcOnAttack` | `Features/ProcOnAttack.cs` | On-attack proc effects |
| `ProcOnHit` | `Features/ProcOnHit.cs` | On-hit proc effects |
| `ProcRateOverride` | `Features/ProcRateOverride.cs` | Configurable proc rate modifiers |

### Fake Properties (Runtime-Computed)

| Feature | File | Description |
|---------|------|-------------|
| `FakeXpBoost` | `Features/FakeXpBoost.cs` | Fake XP boost display property |
| `FakeLeech` | `Features/FakeLeech.cs` | Leech rating fake property |
| `FakePercentDamage` | `Features/FakePercentDamage.cs` | Percent damage fake property |
| `FakeReflection` | `Features/FakeReflection.cs` | Spell reflection fake property |
| `FakeSpellReflection` | `Features/FakeSpellReflection.cs` | Spell-specific reflection |
| `FakeCombo` | `Features/FakeCombo.cs` | Combo system fake property |
| `FakeCulling` | `Features/FakeCulling.cs` | Culling fake property |
| `FakeKillTask` | `Features/FakeKillTask.cs` | Kill task fake property |
| `FakeDurability` | `Features/FakeDurability.cs` | Durability modifier fake property |
| `FakeEquipRestriction` | `Features/FakeEquipRestriction.cs` | Equipment restriction fake property |
| `FakePropertyCache` | `Features/FakePropertyCache.cs` | Caching layer for fake properties |
| `FakeSpellMeta` | `Features/FakeSpellMeta.cs` | Spell metadata fake property |
| `FakeSpellSplitSplash` | `Features/FakeSpellSplitSplash.cs` | Spell split/splash fake property |
| `FakeMissileSplitSplash` | `Features/FakeMissileSplitSplash.cs` | Missile split/splash fake property |

### Creature & Combat

| Feature | File | Description |
|---------|------|-------------|
| `CreatureEx` | Referenced from Swarmed | CreatureEx champion integration |
| `CreatureMaxAmmo` | `Features/CreatureMaxAmmo.cs` | Max ammo overrides for creatures |
| `DamageOverTimeConversion` | — | DoT conversion system |
| `LifeMagicElementalMod` | — | Life magic elemental damage modifiers |
| `UnarmedWeapon` | `Features/UnarmedWeapon.cs` | Unarmed weapon behavior |
| `OverrideSpellProjectiles` | `Features/OverrideSpellProjectiles.cs` | Spell projectile overrides |
| `OverrideCreatePlayer` | `Features/OverrideCreatePlayer.cs` | Player creation overrides |
| `OverrideCheckUseRequirements` | — | Use requirement checks |

### Pet System

| Feature | Description |
|---------|-------------|
| `PetAttackSelected` | Pet attack selection |
| `PetMessageDamage` | Pet damage messages |
| `PetStow` | Pet stow behavior |
| `SummonCreatureAsPet` | Creature summoning as pet |
| `PetSummonMultiple` | Multiple pet summoning |
| `PetEx` | Extended pet system |
| `PetExShareDamage` | Pet damage sharing |

### Other

| Feature | File | Description |
|---------|------|-------------|
| `CorpseInfo` | `Features/CorpseInfo.cs` | Corpse information display |
| `AutoLoot` | — | Auto-loot integration |
| `Hardcore` | — | Hardcore mode support |
| `Ironman` | — | Ironman mode |
| `TimeInGame` | `Features/TimeInGame.cs` | In-game time tracking |
| `EquipPostCreation` | — | Equipment post-creation hooks |
| `QuestCompletionItemLeveling` | `Features/QuestCompletionItemLeveling.cs` | Quest-based item leveling |
| `DisableAttunedQOL` | `Features/DisableAttunedQOL.cs` | Attuned item QOL overrides |
| `EquipmentSetSpellRefresh` | `Features/EquipmentSetSpellRefresh.cs` | Equipment set spell refresh |
| `ContainerRootPlayer` | — | Container root player tracking |

## Mutators

Mutators are applied at item drop creation. Each mutator adds prefixes, suffixes, auras, or stat modifications.

| Mutator | File | Effect |
|---------|------|--------|
| AutoScale | `Mutators/AutoScale.cs` | Auto-scales item properties |
| CloakLootUpgrade | `Mutators/CloakLootUpgrade.cs` | Upgrades cloak properties |
| Enlightened | `Mutators/Enlightened.cs` | Enlightenment-tier enhancement |
| GrowthItem | `Mutators/GrowthItem.cs` | Growth item base properties |
| IronmanLocked | `Mutators/IronmanLocked.cs` | Ironman lock restriction |
| LocationLocked | `Mutators/LocationLocked.cs` | Location-based lock |
| LootGrowthItem | `Mutators/LootGrowthItem.cs` | Loot item with growth potential |
| ProcOnAttack | `Mutators/ProcOnAttack.cs` | On-attack proc on equipped gear |
| ProcOnHit | `Mutators/ProcOnHit.cs` | On-hit proc on equipped gear |
| RandomColor | `Mutators/RandomColor.cs` | Random colorization |
| Resize | `Mutators/Resize.cs` | Size modification |
| Set | `Mutators/Set.cs` | Equipment set assignment |
| ShinyPet | `Mutators/ShinyPet.cs` | Pet visual enhancement |
| Slayer | `Mutators/Slayer.cs` | Slayer property assignment |
| TowerLocked | `Mutators/TowerLocked.cs` | Tower lock restriction |
| SampleMutator | `Mutators/SampleMutator.cs` | Reference template only |

## Cross-Mod Integration

| Mod | Nature | Notes |
|-----|--------|-------|
| `Overtinked` | Harmony priority | Coordinates imbue/tinker ordering on items |
| `QOL` | Harmony priority | Vendor loot ordering (Empyrean = Last) |
| `BetterLootControl` | Direct | Reads loot tier for scaling mutators |
| `Swarmed` | Reference | CreatureEx integration for mutators |

## Configuration

All settings in `Settings.json` (test) / `Settings.json` (repo template).

### Key Settings

| Setting | Type | Default | Purpose |
|---------|------|---------|---------|
| `Features` | `List<AlterationFeature>` | `[MutatorHooks]` | Enabled feature groups |
| `ItemLevelUpGrowthEnabled` | `bool` | `true` | XP-based item leveling |
| `ChaosTriggeredGrowth` | `bool` | `true` | Chaos tinker → level-up mode |
| `CloakProcRate` | `double` | `0.05` | Cloak mutator proc rate |
| `AetheriaProcRate` | `float` | `0.05f` | Aetheria proc rate |

### Property Bonus Settings

`PropertyBonusSettings` controls min/max caps for all fake int/float properties (leech, reflect, combo, etc.).

## Testing

```bash
# Build
dotnet build EmpyreanAlteration/EmpyreanAlteration.csproj

# Toggle features
/empyrean feature list
/empyrean feature toggle MutatorHooks
```

## Known Issues

- `AlterationFeature` enum values are mapped to both patch categories and command categories — when adding new values, register both.
- Fake properties use `FakePropertyCache` for performance; invalidate cache on relevant property changes.

## Immutable Source of Truth

- **Owner of**: Item enhancement, mutators, awakening, fake properties, item growth, proc systems
- **Immutable file**: `Settings.json` (repo template)
- **Test file**: `C:\ACE\Mods\EmpyreanAlteration\Settings.json`
- **Design doc**: This file
