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

Timed invasion events with wave-based creature spawns.

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

### Unified Scheduler (default: disabled)

When `UseUnifiedScheduler` is `true`, all events are managed centrally:

| Setting | Default | Purpose |
|---------|---------|---------|
| `UseUnifiedScheduler` | `false` | Enable centralized scheduler |
| `EventDurationMinutes` | `60.0` | Duration per event |
| `EventStartIntervalMinutes` | `45.0` | Gap between event starts |
| `EventFiveMinuteWarning` | `true` | Warning before event end |

### Hunt-Specific Clock Schedule (default: enabled)

When `HuntUseClockSchedule` is `true`, hunts use fixed UTC slots:
- `HuntSlotStartMinutes` (default: `[0, 20, 40]`) — starts at :00, :20, :40
- `HuntSlotDurationMinutes` (default: `15`)

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
