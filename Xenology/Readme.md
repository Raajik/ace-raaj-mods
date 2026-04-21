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

- `@xenology` — summary: lifetime kills, xXP, hunt window and your hunt points.

## Settings

See shipped `Settings.json` (doc band + values). Key toggles: `EnableXenology`, popularity/hunt multipliers, damage cap, milestone thresholds, `DebounceSaveMilliseconds`.
