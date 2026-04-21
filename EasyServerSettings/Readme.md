# EasyServerSettings

Applies **shard configuration** the same way as editing `ace_shard.config_properties_*` rows, without hand-running SQL. The canonical SQL mirror lives at **`Sql/ace-shard-settings.sql`** (run against `ace_shard` for one-shot DB setup). Values are pushed through ACE **`PropertyManager.ModifyBool` / `ModifyLong` / `ModifyDouble`**, which updates the in-memory cache and (after `ResyncVariables()` or the normal sync timer) persists to the shard database.

## When to use this vs SQL

- **SQL script:** One-shot migration, works before any mod loads, good for fresh shards.
- **This mod:** Keeps settings in source control, re-applies after hot-reload, and only touches keys your ACE build still defines in `DefaultPropertyManager`.

If your ACE build removes or renames a key, `Modify*` returns false for that key; enable **`VerboseLogging`** in `Settings.json` to see which keys were rejected.

## Quick Start

1. Edit **`Settings.json`** - all ACE server properties are directly configurable
2. Set **`EnableMod: true`** and **`ApplyShardPreset: true`**
3. Settings apply automatically on server start

## Presets (optional)

The **`Presets/`** folder contains copyable JSON files if you want to reset to known defaults:

- **`Raaj.json`** - Raaj's preferred settings
- **`VanillaRetail.json`** - ACE default values

To reset: copy a preset file's contents into `Settings.json`.

## Settings (`Settings.json`)

All ACE server properties are configurable directly. Key mod settings:

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| `EnableMod` | bool | true | Master switch - set false to disable entire mod. |
| `ApplyShardPreset` | bool | true | Apply settings on startup through ACE PropertyManager. |
| `ResyncVariablesAfterApply` | bool | true | Sync settings to database after applying. |
| `VerboseLogging` | bool | false | Log rejected keys (unknown to this ACE version). |
| `LogSummary` | bool | true | Log summary of applied settings. |
| `MaxDiffLinesSentToPlayer` | int | 40 | Max lines shown in-game for commands. |

### Experience & Loot

| Key | Type | Default | ACE Property |
|-----|------|---------|--------------|
| `XpModifier` | double | 1.0 | xp_modifier |
| `RareDropRate` | double | 0.04 | rare_drop_rate_percent |
| `TrophyDropRate` | double | 5.0 | trophy_drop_rate |
| `AetheriaDropRate` | double | 10.0 | aetheria_drop_rate |

### Cantrips

| Key | Type | Default | ACE Property |
|-----|------|---------|--------------|
| `CantripDropRate` | double | 1.0 | cantrip_drop_rate |
| `MinorCantripDropRate` | double | 1.0 | minor_cantrip_drop_rate |
| `MajorCantripDropRate` | double | 1.0 | major_cantrip_drop_rate |
| `EpicCantripDropRate` | double | 1.0 | epic_cantrip_drop_rate |
| `LegendaryCantripDropRate` | double | 1.0 | legendary_cantrip_drop_rate |

### Vitae & PVP

| Key | Type | Default | ACE Property |
|-----|------|---------|--------------|
| `VitaePenalty` | double | 0.01 | vitae_penalty |
| `VitaePenaltyMax` | double | 0.1 | vitae_penalty_max |
| `PkServer` | bool | false | pk_server |
| `PklServer` | bool | false | pkl_server |
| `PkTimer` | int | 20 | pk_timer |

### Player Settings

| Key | Type | Default | ACE Property |
|-----|------|---------|--------------|
| `MaxCharsPerAccount` | int | 20 | max_chars_per_account |
| `CharDeleteTime` | int | 30 | char_delete_time |
| `Fastbuff` | bool | true | fastbuff |
| `UniversalMasteries` | bool | true | universal_masteries |
| `ShowDotMessages` | bool | false | show_dot_messages |
| `ShowAuraBuff` | bool | false | show_aura_buff |
| `ShowAmmoBuff` | bool | false | show_ammo_buff |

### Fellowship

| Key | Type | Default | ACE Property |
|-----|------|---------|--------------|
| `FellowshipEvenShareLevel` | int | 1 | fellowship_even_share_level |
| `FellowshipQuestBonus` | bool | true | fellow_quest_bonus |
| `FellowshipKillTaskLandblock` | bool | true | fellow_kt_landblock |

### House

| Key | Type | Default | ACE Property |
|-----|------|---------|--------------|
| `House30DayCooldown` | bool | true | house_30day_cooldown |
| `HouseRentEnabled` | bool | false | house_rent_enabled |
| `HousePurchaseRequirements` | bool | true | house_purchase_requirements |

### World & Server

| Key | Type | Default | ACE Property |
|-----|------|---------|--------------|
| `WorldClosed` | bool | false | world_closed |
| `ChessEnabled` | bool | true | chess_enabled |
| `QuestInfoEnabled` | bool | true | quest_info_enabled |
| `RaresRealTime` | bool | true | rares_real_time |
| `AccountLoginBootsInUse` | bool | true | account_login_boots_in_use |

### Combat

| Key | Type | Default | ACE Property |
|-----|------|---------|--------------|
| `AllowNegativeDispelResist` | bool | true | allow_negative_dispel_resist |
| `AllowNegativeRatingCurve` | bool | true | allow_negative_rating_curve |
| `AllowPklBump` | bool | true | allow_pkl_bump |
| `MeleeMaxAngle` | double | 0.0 | melee_max_angle |
| `SpellcastMaxAngle` | double | 20.0 | spellcast_max_angle |
| `FastMissileModifier` | double | 1.2 | fast_missile_modifier |

### Misc

| Key | Type | Default | ACE Property |
|-----|------|---------|--------------|
| `EncounterDelay` | double | 30.0 | encounter_delay |
| `EncounterRegenInterval` | double | 30.0 | encounter_regen_interval |
| `MobAwarenessRange` | double | 3.0 | mob_awareness_range |
| `PlayerSaveInterval` | int | 30 | player_save_interval |
| `VoidPvpModifier` | double | 0.5 | void_pvp_modifier |

## Commands

- **`essapply`**: Re-apply settings immediately.

## Build

From this folder:

```bash
dotnet build
```

Output goes to `C:\ACE\Mods\EasyServerSettings\` per `EasyServerSettings.csproj` (adjust `ACEPath` / `OutputPath` for your machine).