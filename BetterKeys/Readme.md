# BetterKeys

Enhanced skeleton key behavior and bank-integrated unlocking for Windblown.

## Overview

BetterKeys modifies skeleton key mechanics:
1. **Unlock-only** — skeleton keys unlock chests/doors without auto-opening
2. **Bank fallback** — debits bank key counts (SSK/LEG) when no physical key is in inventory
3. **Skeleton key WCID mapping** — configurable key tier → lock difficulty mapping

## Features

### Unlock-Only Behavior

Skeleton keys **only unlock** chests and doors — they do not auto-open the container. Players must click again to open after unlocking.

- `SuppressImmediateChestOpenAfterSkeletonKeyUnlock` (default: `true`)
- The time window suppression is now **permanent** (no race between unlock and client open request)

### Lockpick Path Option

When `UseLockpickPathForSkeletonKeys` is `true`, skeleton keys use the lockpick unlock path with a very high effective skill. This works for pickable locks only (not unpickable locks with `ResistLockpick >= 9999`).

### Bank-Integrated Unlocking

When no physical skeleton key is in inventory, the mod can debit bank key counts:

| Bank Prop | Key Type | Chest Tiers |
|-----------|----------|-------------|
| `40500` | Sturdy Steel Key (SSK) | WCIDs: 24476, 8999, 3985 |
| `41000` | Legendary Key (LEG) | WCIDs: 48741–48744, 38443–38457 |

- `EnableUnlockChestUsingSkeletonBank` (default: `true`)

### Key WCID Mapping (from `PatchClass.EnsureKeyMap`)

| Key Type | Door Skill | Chest Skill |
|----------|-----------|-------------|
| Sturdy Iron Key (SIK) | ≤1000 | ≤1000 |
| Sturdy Steel Key (SSK) | ≤1000 | ≤1000 |
| Mana Forge Key (MFK) | ≤5000 | — |
| Legendary Key (LEG) | ≤5000 | ≤5000 |

## Key Naming (LeyLineLedger Integration)

Bank item display names include lock-tier suffixes:
- "Sturdy Iron Key (1kD)" — 1000 door skill
- "Sturdy Steel Key (1kC)" — 1000 chest skill
- "Mana Forge Key (5kD)" — 5000 door skill
- "Legendary Key (5kC)" — 5000 chest skill

## Cross-Mod Integration

| Mod | Nature | Notes |
|-----|--------|-------|
| `LeyLineLedger` | Direct | Bank prop reads for SSK (40500) and LEG (41000) |
| `AutoLoot` | Reference | Auto-banking of key items |

## Configuration

All settings in `Settings.json`.

| Setting | Type | Default | Purpose |
|---------|------|---------|---------|
| `UseLockpickPathForSkeletonKeys` | `bool` | `false` | Lockpick unlock path alternative |
| `EnableUnlockChestUsingSkeletonBank` | `bool` | `true` | Bank debit fallback for keys |
| `SuppressImmediateChestOpenAfterSkeletonKeyUnlock` | `bool` | `true` | Prevent auto-open after unlock |
| `SkeletonBankPropChestSsk` | `int` | `40500` | Bank prop for SSK |
| `SkeletonBankPropChestLeg` | `int` | `41000` | Bank prop for LEG |

## Testing

```bash
dotnet build BetterKeys/BetterKeys.csproj
```

## Immutable Source of Truth

- **Owner of**: Skeleton key behavior, bank-integrated unlocking, key WCID mapping
- **Immutable file**: `Settings.json` (repo template)
- **Test file**: `C:\ACE\Mods\BetterKeys\Settings.json`
