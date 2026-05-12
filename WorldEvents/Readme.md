# WorldEvents

Rotating world events system for Windblown: hunts, invasions, sales, culls, bonus quests, POI hunts, scavenger hunts.

## Overview

WorldEvents provides a unified scheduler for timed world events that rotate on a configurable timer. Each event type has its own rewards, broadcasts, and persistence.

## Event Types

### 1. Hunt

Kill tracking with popularity-based species rotation. Species that are globally least-killed get bonus multipliers.

| File | Purpose |
|------|---------|
| `HuntKillPrep.cs` | Kill tracking and species selection |
| `HuntLevels.cs` | Hunt progression levels |
| `HuntLootRewards.cs` | Loot reward distribution |
| `HuntPersistence.cs` | Hunt state save/load |
| `HuntDisplay.cs` | Player-facing UI/messages |
| `HuntBroadcast.cs` | Hunt announcements |
| `HuntQuestXpDisplay.cs` | XP display for hunt quests |
| `HuntDeathTreasureResolver.cs` | Death loot tier resolution |
| `HuntBankInterop.cs` | LeyLineLedger bank integration |
| `HuntPropertyIds.cs` | Property ID constants |

**Key Settings:**
| Setting | Default | Purpose |
|---------|---------|---------|
| `BottomTenPopularityMultiplier` | `10.0` | Multiplier for least-killed species |
| `TopTenRankCount` | `10` | Top-tier species count |
| `BottomTenRankCount` | `10` | Bottom-tier species count |
| `HuntTargetCount` | `3` | Species selected per hunt |
| `HuntSlotDurationMinutes` | `15` | Hunt window duration |

### 2. Invasion

Timed invasion events with wave-based creature spawns. Two modes:
- **Scripted:** Fires a named ACE event; SQL-defined generators handle mobs.
- **Dynamic** (default): Spawns level-appropriate creatures around town centers.

**Dynamic mode spawn improvements (2026-05-06):**
- `TownSpawnRadius` default increased to **120 units** for wider scatter.
- **Indoor cell filter** blocks cells 0x0001–0x00FF so mobs don't spawn inside buildings.
- Cell ID auto-computed from XY instead of hardcoding the town center indoor cell.
- 50 retry attempts per position for better placement success rate.
- 1.0f Z offset safety margin (matches Swarmed pattern).

**Cleanup on event end (2026-05-11):**
When an invasion ends (natural timeout, idle fade, or `/event force end`), all affected landblocks are reset:
- Destroys all non-player objects (invasion mobs, bosses, portals)
- Clears the world DB instance cache
- Reinitializes each landblock so vanilla generators respawn
- Covers each town's center landblock plus a **±2 radius (5×5 grid)** to catch stragglers

| File | Purpose |
|------|---------|
| `InvasionRuntime.cs` | Invasion lifecycle |
| `InvasionKillTracker.cs` | Kill tracking |
| `InvasionLootRewards.cs` | Loot rewards |
| `InvasionPersistence.cs` | State persistence |
| `InvasionBroadcast.cs` | Announcements |

### 3. Sale

Vendor discount events with configurable sale items and pricing.

| File | Purpose |
|------|---------|
| `SaleRuntime.cs` | Sale lifecycle |
| `SaleGeneratorPatches.cs` | Harmony patches for vendor generation |
| `SalePatches.cs` | Harmony patches for pricing |
| `SalePersistence.cs` | State persistence |
| `SaleBroadcast.cs` | Announcements |
| `SaleLandblockApi.cs` | Landblock integration |
| `SalePurchaseBridge.cs` | Cross-mod purchase tracking |

### 4. Cull

Targeted creature culling events where players hunt specific species for bonuses.

| File | Purpose |
|------|---------|
| `CullRuntime.cs` | Cull lifecycle |
| `CullRewards.cs` | Rewards distribution |
| `CullPersistence.cs` | State persistence |
| `CullBroadcast.cs` | Announcements |

### 5. Bonus Quest

Rotating bonus quest XP/pyreals events.

| File | Purpose |
|------|---------|
| `BonusQuestRuntime.cs` | Bonus quest lifecycle |
| `BonusQuestRewards.cs` | Reward distribution |
| `BonusQuestQuestDb.cs` | Quest database integration |
| `BonusQuestParticipation.cs` | Player participation tracking |
| `BonusQuestPersistence.cs` | State persistence |
| `BonusQuestDisplay.cs` | UI display |
| `BonusQuestBroadcast.cs` | Announcements |

### 6. POI Hunt

Point-of-interest hunting events — players visit specific locations.

| File | Purpose |
|------|---------|
| `PoiHuntRuntime.cs` | POI hunt lifecycle |
| `PoiHuntRewards.cs` | Reward distribution |
| `PoiHuntPersistence.cs` | State persistence |
| `PoiHuntBroadcast.cs` | Announcements |

### 7. Scavenger Hunt

Item-finding scavenger hunt events with configurable item lists.

| File | Purpose |
|------|---------|
| `ScavengerRuntime.cs` | Scavenger lifecycle |
| `ScavengerRewards.cs` | Reward distribution |
| `ScavengerPersistence.cs` | State persistence |
| `ScavengerBroadcast.cs` | Announcements |

## Scheduling

### Unified Scheduler (default: enabled)

When `UseUnifiedScheduler` is `true`, all events are managed centrally by the `EventScheduler`:

| Setting | Default | Purpose |
|---------|---------|---------|
| `UseUnifiedScheduler` | `true` | Enable centralized scheduler |
| `EventDurationMinutes` | `75.0` | Duration per event |
| `EventStartIntervalMinutes` | `60.0` | Gap between event starts |
| `EventFiveMinuteWarning` | `true` | Warning before event end |

**Alignment:** The scheduler aligns all event starts to the next whole hour (`XX:00` UTC). After each event starts, the next is scheduled for the following hour boundary. With a 75-minute duration and 60-minute interval, consecutive events overlap by **15 minutes** at each handoff.

### Hunt under Unified Scheduler

When `UseUnifiedScheduler` is `true`, hunts are managed by the central scheduler rather than the clock-schedule system:
- `HuntUseClockSchedule` defaults to `false`
- Hunts rotate through the unified event queue like any other event type
- Each hunt window lasts `EventDurationMinutes` (default 60 min)
- Independent hunt timers (`HuntIntervalHours`, `HuntSlotStartMinutes`) are ignored

## Cross-Mod Integration

| Mod | Nature | Notes |
|-----|--------|-------|
| `Loremaster` | Bridge | `LoremasterBridge.cs` for achievement/quest requirements |
| `LeyLineLedger` | Bridge | `LeyLineLedgerBridge.cs` for bank/reward payouts |
| `SharedLoot` | Reference | Shared loot config for rewards |
| `QOL` | Reference | Vendor compatibility |

## Configuration

All settings in `Settings.json`.

### Key Features Enum

`Features` enum controls which event types are compiled:
- `Hunt` — the only value currently; other event types are always compiled

### Claim System

- `EventLootDelivery.cs` — manages pending reward claims
- `PendingClaimInventoryGate.cs` — requires inventory space for `/claim`
- Auto-bankable items (LLL bridge) bypass inventory gating

## Testing

```bash
# Build
dotnet build WorldEvents/WorldEvents.csproj

# Check event status
/event status
/event force Hunt
```

## Immutable Source of Truth

- **Owner of**: World events (hunt, invasion, sale, cull, bonus quest, POI hunt, scavenger), event scheduler, claim system
- **Immutable file**: `Settings.json` (repo template)
- **Test file**: `C:\ACE\Mods\WorldEvents\Settings.json`
- **Design doc**: This file
