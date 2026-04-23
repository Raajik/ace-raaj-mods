# Xenology

Server-side species kill ledger, **xXP** (Xenology XP), popularity and **hunt** multipliers, outgoing **damage** scaling from lifetime kills (including **spell projectiles** via `SpellProjectile.CalculateDamage`), optional **trophy** rolls after BetterSupportSkills’ trophy postfix, and **milestone** messaging at configurable lifetime kill thresholds. Milestones can **bump primary death loot** by temporarily resolving a higher **TreasureDeath** row from the world DB (tier + offset, clamped), with optional extra **create-list** rolls when not stacking with that bump (`MilestoneStackExtraCreateListRollsWithTierBump`).

## Data files

- `Mods/Xenology/Data/GlobalSpeciesKills.json` — global kill counts per WCID.
- `Mods/Xenology/Data/Players/{PlayerGuid}.json` — per-character species kills, total lifetime kills, xXP, streak fields.
- `Mods/Xenology/Data/ActiveHunt.json` — current hunt window (optional; also tracked in memory).

## Harmony order (GrantXP kill XP)

- Loremaster and similar mods near **~400**.
- **Xenology** uses **`[HarmonyPriority(430)]`** on `Player.GrantXP` for `XpType.Kill` only.
- ChallengeModes **ChallengeRewards** and other mods near **450+** run after Xenology’s kill-XP prefix.

`Creature.GenerateTreasure`: **prefix** (600) may temporarily set `DeathTreasureType` for a higher **TreasureDeath** tier; **postfix** (-500) adds milestone create-list rolls and trophy logic (after BetterSupportSkills trophy/alchemy postfixes at default priority); **restore postfix** (-2500) runs last to revert `DeathTreasureType` so trophy rolls still see the bumped profile when applicable.

## Commands

- `@xenology`, `@xeno`, `@x` — summary: lifetime kills, xXP, hunt window, bonus targets (with weenie names and multipliers), and your hunt points.
- `@hunt` — hunt-only: window, bonus targets, and your hunt points (no lifetime summary).

When a hunt window **starts**, the server broadcasts the UTC window and **each bonus species** (name, multiplier, WCID). When it **ends**, the server broadcasts the **top 3** by hunt points with **character placement XP** (amount and which fraction applied), **loot** from SharedLoot rolls (item names and WCIDs), and **hunt pool** xXP bonus when configured (`HuntLeaderboardTopBonusMultiplier` > 1). Placement XP and loot are applied on each player’s **action chain** (not the background hunt timer thread) so items and `EnterWorld` behave like normal gameplay grants.

## Hunt schedule (default)

With `HuntUseClockSchedule` true (default), hunts use fixed **UTC** slots: starts at `HuntSlotStartMinutes` (default **0, 20, 40**), each lasting `HuntSlotDurationMinutes` (**15**). That yields **:00–:15**, **:20–:35**, **:40–:55** each hour with short gaps. During a window, **every** qualifying kill adds its **xXP** to the hunt leaderboard; **bonus target** species use higher hunt multipliers, so chasing those raises your score more. The leader is whoever earns the **most hunt xXP** in that window. Set `HuntUseClockSchedule` false to use rotating `HuntIntervalHours` instead. At hunt end, optional **loot rolls** use the same **SharedLoot** `LootConfig` as Loremaster repeat-loot (load via Loremaster/BetterChestLoot): 1st / 2nd / 3rd get configurable roll counts; 4th and below need at least **HuntRewardParticipationMinPoints** hunt xXP (default 25) to earn the “rest” roll count. If the **LeyLineLedger** mod is present, rolls that match **bankable** currency (pyreals / tradenotes / peas) or **Items[]** in LeyLineLedger settings are credited to the bank and destroyed instead of going to inventory; everything else still uses pack or drop-at-feet when full.

## Settings

See shipped `Settings.json` (doc band + values). Key toggles: `EnableXenology`, popularity/hunt multipliers, damage cap, milestone thresholds, `DebounceSaveMilliseconds`, and hunt clock fields above.
