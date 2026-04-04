# Swarmed – TODO

## Current behavior

- **Call for help:** Separate toggles and roll chances for **landscape** (`LandscapeEnabled`, `LandscapeChance`, spawn min/max) and **dungeon** (`DungeonEnabled`, `DungeonChance`, spawn min/max). Defaults are in `Settings.cs`; sample `Settings.json` may override (e.g. landscape chance 0.15).
- **Reinforcement stats:** New spawns roll HP between `ReinforcementHealthMin`–`ReinforcementHealthMax` × caller max HP, and visual scale between `ReinforcementScaleMin`–`ReinforcementScaleMax` × caller scale.
- **XP tuning:** `ReinforcementXpBonusMin` / `ReinforcementXpBonusMax` bias reinforcement kill XP.
- **CreatureEx champions:** `CreatureFeatures` lists which `CreatureExType` variants can replace normal spawns (when `CreatureChance` / feature hooks apply). `/cex` spawns a specific type for testing; optional `AllowPartialCreatureExTypeMatch` allows a unique substring match on the enum name.
- **Messaging:** `CallForHelpMessages` — random `{0}` template when reinforcements trigger.
- **Admin debug:** `/swarmed debug` — last call-for-help evaluation and session counters.

## Future ideas

- **Online density (implemented):** optional scaling of `CreatureChance` and reinforcement roll chances by **shard-wide** online player count (`CreatureChanceScalesWithOnlinePlayers` / `ReinforcementChanceScalesWithOnlinePlayers` + bonus/cap in `Settings`).
- **Reinforcement per-landblock (implemented):** `ReinforcementChanceScalesWithLandblockPlayers` / `ReinforcementChanceBonusPerLandblockPlayer` — uses players on the dying creature’s landblock; takes precedence over shard-online reinforcement scaling when enabled and `CurrentLandblock` is present. Same cap as `ReinforcementChanceMaximumAfterScaling`.
- **CreatureEx per-landblock:** not implemented — `WorldObjectFactory.CreateWorldObject` has no landblock context; would need a post-placement ACE hook.
