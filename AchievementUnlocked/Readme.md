# AchievementUnlocked

Achievement system for Windblown — tracks player milestones and grants tier-based progression.

## Overview

Provides a persistent achievement system with:
- Achievement tiers (linked to Loremaster integration via `FakeInt 11050`)
- Player activity telemetry
- Achievement properties stored on player biota

## Key Files

| File | Purpose |
|------|---------|
| `AchievementManager.cs` | Core achievement tracking and evaluation |
| `Achievement.cs` | Achievement definition model |
| `AchievementProperties.cs` | Property ID constants for achievement storage |
| `AchievementActivityTelemetry.cs` | Activity tracking for achievement conditions |
| `RespectingYourTime.cs` | Time-based progression mechanics |

## Cross-Mod Integration

| Mod | Nature | Notes |
|-----|--------|-------|
| `Loremaster` | Reference | Achievement tier stored as `FakeInt 11050` |
| `CommonGoals` | Reader | Reads achievement tier for personal loot qualification |

## Configuration

All settings in `Settings.json`.

## Immutable Source of Truth

- **Owner of**: Achievement system, player milestones
- **Immutable file**: `Settings.json` (repo template)
- **Test file**: `C:\ACE\Mods\AchievementUnlocked\Settings.json`
