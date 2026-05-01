# Loremaster

An ACE (Asheron's Call Emulator) server mod branched from [QuestBonus](https://github.com/aquafir/ACE.BaseMod) by aquafir. Loremaster extends the quest-driven XP system with account-wide tracking, level-scaled completion rewards, weighted repeat-solve loot, milestone broadcasts, and per-player notification preferences.

---

## Features

### Quest Points and XP Multiplier

Every quest you solve earns Quest Points (QP). Kill and quest XP from ACE are scaled by a **multiplicative** chain (defaults tune early progression):

```
Total = (StandardBaseXpRetentionPercent / 100)
      × (1 + QuestPoints × BonusPerQuestPoint / 100)
      × (1 + sum of Item XP Boost on equipped items)
      × AugmentXpMultiplier
      × (1 + Enlightenment × EnlightenmentBonusPercentPer / 100)
      × ChallengeModeXpMultiplier
```

Default `StandardBaseXpRetentionPercent` is `25` (you keep 25% of raw ACE XP before other terms, i.e. −75% versus “full vanilla” for that layer). Default `BonusPerQuestPoint` is `0.1` (each QP adds 0.001 to the QP factor). Example QP factor only:

| Quest Points | QP factor (1 + QP × 0.001) |
|---|---|
| 0 QP | 1.00× |
| 100 QP | 1.10× |
| 1000 QP | 2.00× |

Use `/qb` for the **multiplicative** breakdown only (Base XP block, one line per chat line). `/qb list` shows the quest table then the same block. Use `/topqb` for the top 10 characters by stored QP, your QP, and global rank.

Luminance uses the same chain when `ApplyStandardBaseXpScaleToLuminance` is true; when false, only the QP factor (`QuestBonus`) applies to luminance (legacy behavior).

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

On each quest solve (first and repeat), when enabled, the player receives a one-shot XP grant (then the ongoing QP multiplier applies to that grant like any other quest XP).

- **Unlisted** quests: fraction of next-level XP = `DefaultCompletionBonusXpMultiplier + (QuestPoints × CompletionBonusPerQuestPoint / 100)` (defaults: `0` + QP-scaled term).
- **Listed** in `CompletionBonusXpOverrides`: that value is the **absolute** completion fraction for that quest (same meaning as the old default multiplier field). Use `0` to suppress.
- Disable entirely with `EnableCompletionBonusXp: false`.

### repeatQB System

The repeatQB system replaces the legacy repeat stamp system. Every repeat quest completion now creates a **unique quest entry** (e.g. `QuestName#repeatQB1`, `QuestName#repeatQB2`) in the ACE quest registry. Each unique entry counts as +1 Quest Point, meaning repeat solves naturally stack QP without a separate multiplier pool.

- Account-wide cooldown is still enforced via `RepeatQbTracker` (migrated from `AccountRepeatQuestTracker`).
- On repeat completion, if cooldown has expired, a unique entry is created and the player is notified: `[Loremaster] +1 repeatQB from {questName}`.
- The `QuestBonus()` formula has been simplified: `1.0 + qp * BonusPerQuestPoint / 100.0` (stamp multiplier removed).
- **Deprecated (kept for Settings.json compatibility):** `EnableRepeatStampSystem`, `RepeatStampBonusPerStamp`, `RepeatStampCooldownSeconds`, `LMFloat.RepeatStampMultiplier`.

### Account-Wide Repeat Cooldown (repeatQB)

When `EnableAccountWideRepeatCooldown` is true (default), repeat quest completions are tracked **across all characters on the same account** via `RepeatQbTracker`. If Character A completes a quest, Character B on the same account can still complete it, but:
- If Character B completes it **first** (no prior character completion), it's treated as a first solve for QP and bonuses.
- If another character on the account **already completed it**, Character B gets a repeatQB unique entry (+1 QP) and the cooldown starts.
- If any character tries to repeat the same quest again before `AccountRepeatCooldownSeconds` (default 36000 = 10h) expires, they see the standard ACE message: `You may complete this quest again in {time}!` and no repeatQB is granted.

**WorldEvents bonus quests bypass this cooldown** — they are one-off quests and are never blocked.

**Questgiver blacklist:** Certain NPCs (e.g. 22753 Guardian of the Temple of Enlightenment, 22754 Guardian of the Temple of Forgetfulness) are blacklisted from awarding repeatQB to prevent rapid-fire exploitation.

### Kill Task Auto-Reaccept

Kill tasks that reach max solves automatically reset to 0 after their cooldown expires, allowing players to keep killing without returning to the NPC for reacceptance.

- When a kill task is max-solved and the cooldown has expired, the counter resets to 0 automatically.
- **+1 repeatQB** granted on auto-reaccept.
- **+1 repeatQB** granted when the task reaches max solves again.
- **Total: +2 repeatQB per full kill-task cycle.**
- Tracked via `LMString.KillTaskAutoAcceptTimestamps` (JSON per-character).

### Quest cooldown reduction

When `EnableQuestCooldownReduction` is true, repeat cooldown wait is scaled by  
`1 − min(cap, QuestPoints × CooldownReductionPerQuestPoint / 100)`  
(independent of `BonusPerQuestPoint`; cap via `QuestCooldownReductionCap`).

### Portal max level

When `BypassPortalMaxLevelRestriction` is true, ACE’s portal **max level** check (`use_portal_max_level_requirement`) is effectively disabled so high-level characters may use portals that would otherwise block them.

---

### Repeat Solve Bonus Loot

On every repeat solve (second completion onward) of a quest, one item is rolled from the loot pool in **`Mods/Loremaster/LootConfig.json`** (same file and tier chances **BetterChestLoot** uses by default). If the inventory is full, the item drops at their feet with a notification.

- Edit **rarity weights** (`extremelyRareChance`, `rareChance`, `uncommonChance`) and **tier item lists** (`common` / `uncommon` / `rare` / `extremelyRare`) in that JSON beside the Loremaster mod folder; both mods read it at startup and reload when the file changes.
- Optional `LootConfigPath` in Loremaster or BetterChestLoot `Settings.json` overrides the default `LootConfig.json` location.
- Toggle with `EnableRepeatSolveLoot` in Loremaster `Settings.json`.

---

### Barkeeper parchment quests (`BarkeeperParchments`)

Optional side quests started by **using** a configured **Gem** or **Book** weenie (`ParchmentActivation` per template, default `Gem`). Gems share the normal `Gem.UseGem` hook — avoid WCID clashes with LeyLineLedger luminance gems. **Book** starters use `Book.ActOnUse`: the book is **consumed** and the read UI is skipped (no duplicate “read without consuming” exploit).

- **One active contract** per character. `/lmparchment` lists it; `/lmparchment abandon` clears it. `CooldownSeconds` (default `0`) gates how often a new parchment can be started after consuming one.
- **Bartenders:** each configured bartender vendor WCID (`BartenderContractBoards`) exposes **five** contract rows (`OfferTemplateRow0Based` indices into `ParchmentTemplates`) in the vendor buy list. You cannot buy another contract while one is already active.
- **Town Criers:** `TownCrierWeenieClassIds` lists NPC WCIDs; using one completes **Explore** (must be in the target landblock) and **Fetch** (requires the proof item in pack; item is consumed). **Kill** contracts still complete on kills in the field.
- **Kinds:** `Kill` (credit on kills), `Explore` (Town Crier in target landblock), `Fetch` (proof item + Town Crier).
- **Legacy uniform pools:** `ExploreLandblockRawPool` (`List<uint>`) — one landblock raw id rolled at start. `KillTargetCreatureWcidPool` — when `TargetCreatureWcid` is `0`, one creature WCID rolled at start. Fixed `TargetCreatureWcid` ignores pools.
- **Weighted pools (take precedence when non-empty):**
  - `ExploreLandblockWeightedPool` — objects `{ "LandblockRaw", "Weight", "Rare" }`. Non-rare `Weight` is clamped to **25–100** when rolling; **rare** entries skip that clamp (keep weights low for fun). **At most one** `Rare: true` row per pool.
  - `KillTargetWeightedPool` — `{ "CreatureWcid", "Weight", "Rare" }`. Same rules. If the rolled target is **rare** and `KillCount > 1`, the contract effectively requires **1** kill for that target.
  - `FetchItemWeightedPool` — `{ "Wcid", "Weight", "Rare", "StackMin", "StackMax" }`. At start, rolls WCID and a stack count in `[StackMin, StackMax]` (inclusive). Town Crier consumes that many from inventory. Same rare/weight rules; **at most one** `Rare` per pool.
- **Fetch legacy:** `FetchItemWcid` + count `1` when `FetchItemWeightedPool` is empty.
- **Player-facing text:** `/lmparchment` and contract start lines use **weenie names** where possible (fallback `WCID nnnnn`); explore uses a **single-line** destination summary plus “use a Town Crier there.”
- **Tier:** `Easy`, `Average`, or `Challenging` — rolls bonus XP as a random fraction of **XP to next level** between the min/max pairs in settings, then rolls loot from the same **`LootConfig.json`** pool as repeat solves (`GrantRepeatSolveLoot`). Tier XP stacks with normal completion bonuses if you also set `CompletionQuestStamp` and tune `CompletionBonusXpOverrides`.
- **Same WCID, different text:** optional `TemplateMatchInscription` must match `PropertyString.Inscription` on the used item. List specific rows **before** a same-WCID row with an empty inscription (catch-all).
- **Explore directions:** optional `ExploreOutdoorCoordsText`, `ExploreDungeonName`, `ExploreEntranceCoordsText` override auto text; otherwise the mod uses `LandblockManager` + `IsDungeon` + optional `ExploreAnchorLoc` (LOC string) for a short hint. When a pool picked a destination, auto text uses the **rolled** landblock raw id.

**Sample `ParchmentTemplates` snippets** (replace WCIDs with your shard; rare mob example is intentionally low weight):

```json
{
  "Kind": "Kill",
  "Tier": "Easy",
  "TargetCreatureWcid": 0,
  "KillCount": 5,
  "KillTargetWeightedPool": [
    { "CreatureWcid": 12345, "Weight": 80, "Rare": false },
    { "CreatureWcid": 12346, "Weight": 70, "Rare": false },
    { "CreatureWcid": 99901, "Weight": 3, "Rare": true }
  ]
}
```

```json
{
  "Kind": "Fetch",
  "Tier": "Easy",
  "FetchItemWcid": 0,
  "FetchItemWeightedPool": [
    { "Wcid": 20001, "Weight": 90, "Rare": false, "StackMin": 2, "StackMax": 5 },
    { "Wcid": 20002, "Weight": 90, "Rare": false, "StackMin": 3, "StackMax": 8 },
    { "Wcid": 30001, "Weight": 40, "Rare": false, "StackMin": 1, "StackMax": 1 }
  ]
}
```

Use small `StackMin`/`StackMax` for shop commodities and `1`/`1` for full salvage bags. Expand the pool over time without code changes.

---

### Achievement Broadcasts

When a player's account reaches a configured achievement threshold of unique quests solved, a message is broadcast server-wide and an optional bonus QP reward is granted.

- Achievement thresholds are account-wide, not per-character.
- Default thresholds: 25, 50, 100, 250, 500, 750, 1000 — then every 500 up to 10,000.
- Bonus QP per achievement uses the formula `(AchievementBonusQPPercent / 100) × AchievementBonusQPBase` (default 10% of 100 = 10 QP per achievement). Use `AchievementBonusQPOverrides` to set a fixed QP value for specific thresholds.
- The broadcast message format is configurable.
- Can be disabled entirely with `EnableAchievementBroadcasts: false`.

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

### Rested XP

When enabled, time spent **offline** accumulates into a rested pool. On login, offline seconds × `OfflineToRestedConversionRate` (default 0.5) are added to the pool, capped at `MaxRestedHours` (default 72h). While rested, all XP gains are multiplied by:

```
BaseMultiplier + (serverMaxEnlightenment - myEnlightenment) × MultiplierPerEnlightenmentGap
```

- **BaseMultiplier** = 1.0 (default)
- **MultiplierPerEnlightenmentGap** = 0.01 (default, i.e. +1% per enlightenment gap)

The pool depletes by the raw XP amount granted and only replenishes while offline.

**Example:** Server max enlightenment 50, player enlightenment 10 → gap 40 → 1.4× multiplier. 10 hours offline at 0.5 rate → 5 hours rested.

| Setting | Type | Default | Description |
|---|---|---|---|
| `EnableRestedXp` | bool | `true` | Master toggle |
| `OfflineToRestedConversionRate` | float | `0.5` | Hours of rested XP per hour offline |
| `MaxRestedHours` | float | `72` | Cap on rested pool in hours |
| `BaseMultiplier` | float | `1.0` | Base multiplier while rested |
| `MultiplierPerEnlightenmentGap` | float | `0.01` | Additional multiplier per enlightenment gap |

---

### Loot Tier Delay

Delays high spell tiers on creature drops based on the **killer's character level**.

- Patching private `Creature.GenerateTreasure` via `TargetMethod()` + `AccessTools.Method`
- Prefix on `SpellLevelChance.Roll` clamps treasure profile tier before roll
- Configurable `Thresholds` list in `LootTierDelay`

Default thresholds:

| Min Level | Max Spell Tier |
|-----------|----------------|
| 1 | 1 |
| 20 | 2 |
| 40 | 3 |
| 60 | 4 |
| 80 | 5 |
| 100 | 6 |
| 125 | 7 |
| 150 | 8 |

### Quest Point Lottery Contribution

`QuestPointLotteryContributionPercent` (default **10%**) — server-side match of repeatQB earned:
- Every `AddExtraQuestPoints` call accrues 10% into `PendingLotteryContribution`
- LeyLineLedger drains this into its pyreal pool before each weekly draw
- **Players lose zero QP** — this is a server-side match, not a deduction

### Donated Quest Points

When players use `/donate qb`, their donation is tracked as a `DonatedQuestPoints` offset (`FakeFloat 11019`):
- Effective QB = `BaseQuests + Extra - Donated`
- The actual quest registry entries (base) are **never deleted**
- Future earned QB still stacks normally
- `GrantLotteryQbPrize` bypasses contribution tracking to prevent infinite loops

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
| `/qb-inspect <name>` | Shows stored QP, total XP multiplier (% of raw), character quest count, and account-wide unique count for an online player. |
| `/qb-reset <name>` | Recalculates and re-stores QP for a specific online player. Notifies both admin and player with total XP multiplier. |
| `/qb-resetall` | Recalculates QP for all currently online players. Optional after editing `Settings.json` — the mod also recalculates automatically when the file is saved. |

---

## Settings Reference

All settings live in `Settings.json` in the mod folder. The file is auto-generated with defaults on first run. Hot-reload is supported: when you save `Settings.json`, the mod reloads it and automatically recalculates QP for all online players (no need to run `/qb-resetall` unless you prefer to trigger it manually).

### Quest Point System

| Setting | Type | Default | Description |
|---|---|---|---|
| `StandardBaseXpRetentionPercent` | float | `25` | Percent of raw ACE XP kept before other multipliers (25 = 25% of raw). |
| `BonusPerQuestPoint` | float | `0.1` | QP factor: `1 + (QP × BonusPerQuestPoint / 100)`. |
| `AugmentXpMultiplier` | float | `1` | Server-wide augment term in the product (1 = unchanged). |
| `ChallengeModeXpMultiplier` | float | `1` | Server-wide Challenge Mode term (1 = unchanged). |
| `ApplyStandardBaseXpScaleToLuminance` | bool | `true` | Use full multiplicative chain for luminance; `false` = QP factor only. |
| `EnlightenmentBonusPercentPer` | float | `0` | Per enlightenment: includes `(1 + enlight × this / 100)` in the product. |
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
| `EnableRepeatSolveLoot` | bool | `true` | Master toggle for repeat-solve item rewards (uses `Mods/Loremaster/LootConfig.json` by default). |
| `LootConfigPath` | string | `""` | Optional path to `LootConfig.json`; empty = `Mods/Loremaster/LootConfig.json`. |

### Achievement Broadcasts

| Setting | Type | Default | Description |
|---|---|---|---|
| `EnableAchievementBroadcasts` | bool | `true` | Master toggle for server-wide achievement messages. |
| `AchievementThresholds` | list | see below | Account-wide unique quest counts that trigger a broadcast. |
| `AchievementBonusQPPercent` | float | `10` | Percentage used in formula: bonus = (this / 100) × AchievementBonusQPBase. |
| `AchievementBonusQPBase` | float | `100` | Base value for formula. Default gives 10 QP per achievement. |
| `AchievementBonusQPOverrides` | dict | `{}` | Per-threshold QP overrides. If a threshold is present here, that QP is used instead of the formula. |
| `AchievementBroadcastFormat` | string | see below | Format string. `{0}` = character name, `{1}` = ordinal achievement (e.g. "50th"), `{2}` = bonus QP awarded. |

### Account-Wide Repeat Cooldown

| Setting | Type | Default | Description |
|---|---|---|---|
| `EnableAccountWideRepeatCooldown` | bool | `true` | When true, repeat quest completions are tracked account-wide with a per-quest cooldown. |
| `AccountRepeatCooldownSeconds` | int | `36000` | Cooldown between account-wide repeat completions of the same quest (default 10h = 36000s). |

### Quest Cooldown Reduction

| Setting | Type | Default | Description |
|---|---|---|---|
| `EnableQuestCooldownReduction` | bool | `true` | Reduce quest repeat timers using QP × `CooldownReductionPerQuestPoint` (capped), not the full XP chain. |
| `QuestCooldownReductionCap` | float? | `0.95` | Cap on reduction (0–1). Default 95% max; set `null` for uncapped. |
| `QuestCooldownReductionOnlyIfMinDeltaExceedsSeconds` | int | `86400` | Only apply reduction if world `MinDelta` > this (seconds). `0` = no filter. Protects short portal-flag timers. |
| `PermanentFlagQuests` | list | see `Settings.json` | Quest names that skip cooldown reduction (vanilla `GetNextSolveTime`). Case-sensitive. |

---

## LootConfig.json (with BetterChestLoot)

**BetterChestLoot** uses the same `LootConfig.json` by default (`Mods/Loremaster/LootConfig.json`). The JSON root defines **tier probabilities** (`extremelyRareChance`, `rareChance`, `uncommonChance`; remainder goes to `common`) and four tier buckets, each with `items` (WCIDs) and optional `stackSizeChance` for double stacks.

Repo path: `Loremaster/LootConfig.json` (copies next to `Loremaster.dll` on build).

Suggested relative frequency for *tiers* (adjust to taste):

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
| Achievement broadcasts with formula-based bonus QP | No | Yes |
| Quest cooldown reduction (same % as XP bonus) | No | Yes |
| Per-player notification toggles | No | Yes |
| Admin inspect / reset commands | No | Yes |

---

## Credits

Built on top of the ACE modding framework by [aquafir](https://github.com/aquafir/ACE.BaseMod). Quest Point system and core architecture derived from QuestBonus.
