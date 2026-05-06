# Lockboxes

Tiered treasure lockbox system for Windblown.

## Overview

Lockboxes are deployable treasure containers with configurable loot. Three tiers available:

| Tier | WCID | Loot Quality |
|------|------|-------------|
| Tier 1 | `101189993` | Basic |
| Tier 2 | `101189994` | Moderate |
| Tier 3 | `101189995` | Best |

## Features

- Lockbox deployment and opening
- Loot configuration per tier via `LootConfig.json`
- Harmony patches for lock interaction
- Commands for listing/managing lockboxes

## Key Files

| File | Purpose |
|------|---------|
| `PatchClass.cs` | Lockbox interaction patches |
| `LockboxesCommands.cs` | Player commands |
| `LootConfig.json` | Per-tier loot table config |
| `InsertLockboxes.sql` | Weenie definitions |

## Cross-Mod Integration

| Mod | Nature | Notes |
|-----|--------|-------|
| `BetterKeys` | Reference | Key-based unlocking |

## Configuration

Settings in `Settings.json`. Loot config in `LootConfig.json`.

## Immutable Source of Truth

- **Owner of**: Lockbox system
- **Immutable file**: `Settings.json`, `LootConfig.json` (repo templates)
- **Test file**: `C:\ACE\Mods\Lockboxes\Settings.json`
