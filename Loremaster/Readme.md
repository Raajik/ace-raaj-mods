# Loremaster

An ACE (Asheron's Call Emulator) server mod branched from [QuestBonus](https://github.com/aquafir/ACE.BaseMod) by aquafir. Loremaster extends the quest-driven XP system with account-wide tracking, level-scaled completion rewards, weighted repeat-solve loot, milestone broadcasts, and per-player notification preferences.

---

## Features

### Quest Points and XP Multiplier

Every quest you solve earns Quest Points (QP). Your accumulated QP converts into a persistent multiplier applied to all XP and luminance gains:

```
Multiplier = 1 + (QuestPoints x BonusPerQuestPoint / 100)
```

Example with the default `BonusPerQuestPoint` of `0.5`:

| Quest Points | XP Multiplier |
|---|---|
| 0 QP | 1.00x |
| 100 QP | 1.50x |
| 200 QP | 2.00x |
| 50 QP | 1.25x |

Individual quests can be weighted in `Settings.json`. A quest set to `0` is tracked but awards no QP — useful for suppressing timers, stipends, or other low-value quests.

---

### Account-Wide Quest Tracking

When `UseAccountWideQuests` is `true` (default), Quest Points and the XP multiplier are calculated from the combined unique quests solved across all characters on the same account, not just the logged-in character.

- Progress on your main character benefits all your alts automatically.
- Each unique quest name is counted once regardless of how many characters solved it.
- Recalculated on login by scanning all online and offline characters on the account.
- Can be disabled to restore the original per-character behavior.

---

### Completion Bonus XP

On each quest solve (first and repeat), when enabled, the player receives a flat XP grant in addition to the ongoing multiplier.

- The bonus scales with the player's current level: `multiplier × (XP needed for next level)`.
- Global default multiplier is set via `DefaultCompletionBonusXpMultiplier` (default 30% of level-up cost).
- Per-quest overrides are supported via `CompletionBonusXpOverrides`.
- Set a quest's multiplier to `0` to suppress the bonus for that specific quest.
- Can be disabled entirely with `EnableCompletionBonusXp: false`.

Note: the completion bonus goes through the normal `GrantXP` path, so it is also subject to the ongoing QP multiplier.

---

### Repeat Solve Bonus Loot

On every repeat solve (second completion onward) of a quest, one item from a weighted loot table is delivered to the player's inventory. If the inventory is full, the item drops at their feet with a notification.

- Loot tables are defined in `RepeatSolveLoot.json` using weighted groups of WCIDs.
- All items within a group are equally likely; the group Weight controls its frequency relative to other groups.
- Per-quest overrides are supported — a specific quest can have its own loot table that replaces the global one entirely.
- Groups with `Weight: 0` are disabled but remain in the file for reference.
- Disabled by default; set `EnableRepeatSolveLoot: true` in Settings.json and add `RepeatSolveLoot.json` to enable.

Default loot table:

| Group | Weight | Contents |
|---|---|---|
| Currency | 1000 | Trade Note (250,000) |
| Salvage - Common | 800 | Granite, Iron, Mahogany, Steel, Ivory, Leather, Sandstone |
| Foolproof Gems | 100 | All 13 foolproof gem types |

---

### Barkeeper parchment quests (`BarkeeperParchments`)

Optional side quests started by **using** a configured **Gem** or **Book** weenie (`ParchmentActivation` per template, default `Gem`). Gems share the normal `Gem.UseGem` hook — avoid WCID clashes with LeyLineLedger luminance gems. **Book** starters use `Book.ActOnUse`: the book is **consumed** and the read UI is skipped (no duplicate “read without consuming” exploit).

- **One active contract** per character. `/lmparchment` lists it; `/lmparchment abandon` clears it. `CooldownSeconds` (default `0`) gates how often a new parchment can be started after consuming one.
- **Bartenders:** each configured bartender vendor WCID (`BartenderContractBoards`) exposes **five** contract rows (`OfferTemplateRow0Based` indices into `ParchmentTemplates`) in the vendor buy list. You cannot buy another contract while one is already active.
- **Town Criers:** `TownCrierWeenieClassIds` lists NPC WCIDs; using one completes **Explore** (must be in the target landblock) and **Fetch** (requires the proof item in pack; item is consumed). **Kill** contracts still complete on kills in the field.
- **Kinds:** `Kill` (credit on kills), `Explore` (Town Crier in target landblock), `Fetch` (proof item + Town Crier).
- **Procedural pools (v1):** `ExploreLandblockRawPool` — if non-empty, one landblock raw id is rolled when the contract starts and stored on the character (turn-in and guidance use that id; `ExploreLandblockRaw` is optional when the pool is set). `KillTargetCreatureWcidPool` — when `TargetCreatureWcid` is `0` and the pool is non-empty, one target WCID is rolled at start; kills of other creatures do not count. Fixed `TargetCreatureWcid` still ignores the pool.
- **Tier:** `Easy`, `Average`, or `Challenging` — rolls bonus XP as a random fraction of **XP to next level** between the min/max pairs in settings, then always rolls **repeat-style loot** via `GrantRepeatSolveLoot` using quest keys `LMParchmentTierEasy`, `LMParchmentTierAverage`, `LMParchmentTierChallenging` (configure in `RepeatSolveLoot.json` → `QuestOverrides`). Tier XP stacks with normal completion bonuses if you also set `CompletionQuestStamp` and tune `CompletionBonusXpOverrides`.
- **Same WCID, different text:** optional `TemplateMatchInscription` must match `PropertyString.Inscription` on the used item. List specific rows **before** a same-WCID row with an empty inscription (catch-all).
- **Explore directions:** optional `ExploreOutdoorCoordsText`, `ExploreDungeonName`, `ExploreEntranceCoordsText` override auto text; otherwise the mod uses `LandblockManager` + `IsDungeon` + optional `ExploreAnchorLoc` (LOC string) for a short hint. When a pool picked a destination, auto text uses the **rolled** landblock raw id.

---

### Milestone Broadcasts

When a player's account reaches a configured milestone of unique quests solved, a message is broadcast server-wide and an optional bonus QP reward is granted.

- Milestones are account-wide, not per-character.
- Default thresholds: 25, 50, 100, 250, 500, 750, 1000 — then every 500 up to 10,000.
- Bonus QP per milestone uses the formula `(MilestoneBonusQPPercent / 100) × MilestoneBonusQPBase` (default 10% of 100 = 10 QP per milestone). Use `MilestoneBonusQPOverrides` to set a fixed QP value for specific thresholds.
- The broadcast message format is configurable.
- Can be disabled entirely with `EnableMilestoneBroadcasts: false`.

Default broadcast format:
```
[Loremaster] {0} has just completed their {1} unique quest and earned {2} bonus quest points!
```

---

### Quest Cooldown Reduction

When enabled, quest repeat cooldowns are reduced by the same percentage as the player's XP bonus from Quest Points. For example, a 25% XP bonus (1.25×) reduces the required wait by 25% — a 24-hour cooldown becomes 18 hours.

- Controlled by `EnableQuestCooldownReduction` (default `true`).
- Optional cap via `QuestCooldownReductionCap` (0–1). Default is 0.95 (95% max reduction); set `null` for uncapped.
- Effective wait time = full repeat time × (1 − reduction).

**Portal / short-timer quests:** ACE portals with a `QuestRestriction` require `HasQuest` and **not** `CanSolve` — you must still be inside the post-completion window. Shortening `MinDelta` makes `CanSolve` true early and produces *"You completed the quest this portal requires too long ago!"* By default, cooldown reduction **only** applies when the world quest's `MinDelta` is **greater** than `QuestCooldownReductionOnlyIfMinDeltaExceedsSeconds` (86400 = 24h). Set to `0` to disable that safeguard (all quests get reduction; portal hubs may break again).

**Permanent flag quests:** Add internal quest names to `PermanentFlagQuests` to skip cooldown reduction for those quests regardless of `MinDelta` (vanilla timer). Also used by the optional `HasQuestSolves` hook for emotes. Case-sensitive (see Quests.txt).

---

### Per-Player Notification Preferences

**QP messages (`/qb NotifyQuest`):** On by default when a character has never toggled it (same as before).

**Kill / quest XP and luminance multiplier lines:** Default for **new** behavior is controlled in **`Settings.json`**: `NotifyKillXpDefault`, `NotifyQuestXpDefault`, `NotifyKillLuminanceDefault`, `NotifyQuestLuminanceDefault` (all default **`true`**). If a character has **never** used `/qb Notify…` for that flag, these JSON values apply. As soon as a player toggles a flag, their choice is stored on the character and overrides the JSON until they toggle again.

All toggles persist across sessions. QP messages use a formatted style similar to the LeyLineLedger bank output (==== Quest Points ==== header).

| Command | What it toggles |
|---|---|
| `/qb NotifyQuest` | QP gains and losses |
| `/qb NotifyKillXp` | XP multiplier message on kills |
| `/qb NotifyQuestXp` | XP multiplier message on quest completion |
| `/qb NotifyKillLuminance` | Luminance multiplier message on kills |
| `/qb NotifyQuestLuminance` | Luminance multiplier message on quest completion |
| `/qb NotifyAll` | Toggle all of the above on or off at once |

When a notification fires, the message format is:
```
Earned 426,711 XP! (300,501 * 142%)
```

---

## Player Commands

| Command | Description |
|---|---|
| `/qb` | Shows your Quest Points, XP multiplier, account-wide unique quest count, and per-character quest count. |
| `/qb list` | Lists all quests on your character with their completion count and QP value. |
| `/qb help` | Shows all available subcommands. |
| `/qb NotifyAll` | Toggle all personal notifications on or off. |
| `/qb Notify<Flag>` | Toggle a specific notification. See above for the full list. |

---

## Admin Commands

| Command | Description |
|---|---|
| `/qb-inspect <name>` | Shows stored QP, XP multiplier, character quest count, and account-wide unique count for an online player. |
| `/qb-reset <name>` | Recalculates and re-stores QP for a specific online player. Notifies both admin and player. |
| `/qb-resetall` | Recalculates QP for all currently online players. Optional after editing `Settings.json` — the mod also recalculates automatically when the file is saved. |

---

## Settings Reference

All settings live in `Settings.json` in the mod folder. The file is auto-generated with defaults on first run. Hot-reload is supported: when you save `Settings.json`, the mod reloads it and automatically recalculates QP for all online players (no need to run `/qb-resetall` unless you prefer to trigger it manually).

### Quest Point System

| Setting | Type | Default | Description |
|---|---|---|---|
| `BonusPerQuestPoint` | float | `0.5` | Percentage of XP bonus per QP. Formula: `1 + (QP × BonusPerQuestPoint / 100)`. |
| `DefaultPoints` | float | `1.0` | QP awarded for any quest not listed in `QuestBonuses`. Set to `0` to only reward explicitly listed quests. |
| `QuestBonuses` | dict | see below | Per-quest QP overrides keyed by internal quest name. See `Quests.txt` for all valid names. |

### Account-Wide Tracking

| Setting | Type | Default | Description |
|---|---|---|---|
| `UseAccountWideQuests` | bool | `true` | Count unique quests across all characters on the account. Set to `false` for per-character mode. |

### Completion Bonus XP

| Setting | Type | Default | Description |
|---|---|---|---|
| `EnableCompletionBonusXp` | bool | `true` | Master toggle for the completion XP grant on each solve (first and repeat). |
| `DefaultCompletionBonusXpMultiplier` | float | `0.30` | Multiplier applied to the player's XP-to-next-level cost. `0.30` = 30% of the current level-up cost. |
| `CompletionBonusXpOverrides` | dict | see below | Per-quest multiplier overrides. Set to `0.0` to suppress the bonus for a specific quest. |

### Repeat Solve Bonus Loot

| Setting | Type | Default | Description |
|---|---|---|---|
| `EnableRepeatSolveLoot` | bool | `false` | Master toggle for repeat-solve item rewards. |

Loot tables are configured in `RepeatSolveLoot.json`. See that file for documentation on the weight system and per-quest overrides.

### Milestone Broadcasts

| Setting | Type | Default | Description |
|---|---|---|---|
| `EnableMilestoneBroadcasts` | bool | `true` | Master toggle for server-wide milestone messages. |
| `MilestoneThresholds` | list | see below | Account-wide unique quest counts that trigger a broadcast. |
| `MilestoneBonusQPPercent` | float | `10` | Percentage used in formula: bonus = (this / 100) × MilestoneBonusQPBase. |
| `MilestoneBonusQPBase` | float | `100` | Base value for formula. Default gives 10 QP per milestone. |
| `MilestoneBonusQPOverrides` | dict | `{}` | Per-threshold QP overrides. If a threshold is present here, that QP is used instead of the formula. |
| `MilestoneBroadcastFormat` | string | see below | Format string. `{0}` = character name, `{1}` = ordinal milestone (e.g. "50th"), `{2}` = bonus QP awarded. |

### Quest Cooldown Reduction

| Setting | Type | Default | Description |
|---|---|---|---|
| `EnableQuestCooldownReduction` | bool | `true` | Reduce quest repeat timers by the same % as the player's XP bonus. |
| `QuestCooldownReductionCap` | float? | `0.95` | Cap on reduction (0–1). Default 95% max; set `null` for uncapped. |
| `QuestCooldownReductionOnlyIfMinDeltaExceedsSeconds` | int | `86400` | Only apply reduction if world `MinDelta` > this (seconds). `0` = no filter. Protects short portal-flag timers. |
| `PermanentFlagQuests` | list | see `Settings.json` | Quest names that skip cooldown reduction (vanilla `GetNextSolveTime`). Case-sensitive. |

---

## RepeatSolveLoot.json

The loot table file supports a flexible weighted group system. Groups with `Weight: 0` are disabled. The effective drop chance for a single item is:

```
GroupWeight / TotalPoolWeight / ItemsInGroup
```

Per-quest overrides are defined under `QuestOverrides` keyed by internal quest name. When a quest has an override, its groups replace the global groups entirely for that quest.

Suggested weight tiers:

| Tier | Weight |
|---|---|
| Common | 1000 |
| Uncommon | 100 |
| Rare | 10 |
| Ultra-Rare | 1 |

---

## Installation

### Pre-built

1. Download the latest release zip and extract it to `C:\ACE\Mods\Loremaster\`.
2. Start or reload your server. `Settings.json` is auto-generated on first load.
3. Edit `Settings.json` to taste, then run `/qb-resetall` in-game to apply changes to online players.

### Build from source

The `.csproj` pulls `ACEmulator.ACE.Shared` from NuGet automatically. It expects your ACE server binaries at `C:\ACE\Server\`. If your server lives elsewhere, update `ACEPath` in the `.csproj`.

1. Open the solution in Visual Studio or run `dotnet build` from the project folder.
2. The compiled output is written directly to `C:\ACE\Mods\Loremaster\`.
3. Hot-reload is supported via `/mod f Loremaster`.

---

## Differences from QuestBonus

| Feature | QuestBonus | Loremaster |
|---|---|---|
| XP multiplier from Quest Points | Yes | Yes |
| Luminance multiplier from Quest Points | No | Yes |
| Per-quest QP weights | Yes | Yes |
| Account-wide unique quest tracking | No | Yes |
| Completion bonus XP (first and repeat, level-scaled) | No | Yes |
| Weighted repeat-solve loot | No | Yes |
| Milestone broadcasts with formula-based bonus QP | No | Yes |
| Quest cooldown reduction (same % as XP bonus) | No | Yes |
| Per-player notification toggles | No | Yes |
| Admin inspect / reset commands | No | Yes |

---

## Credits

Built on top of the ACE modding framework by [aquafir](https://github.com/aquafir/ACE.BaseMod). Quest Point system and core architecture derived from QuestBonus.
