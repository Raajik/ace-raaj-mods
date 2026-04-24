# ChallengeModes

Server-side challenge hub: `/cm` commands for **SSF** (ironman), **hardcore**, **alternate leveling**, and **aptitude** (WIP). Harmony patches gate features behind `Settings.Enabled` and player opt-in.

## Commands (summary)

- `/cm list` — help text.
- `/cm status` — which modes are active.
- `/cm ssf` | `hardcore` | `hardcoressf` | `alternateleveling` | `aptitude` — opt in at **level 1** where applicable (decline locks are permanent per character where configured).
- `/cm off <mode>` — permanent decline for some tracks; see code for exact rules.
- `/cm quit` — optional confirmation; leaves all modes with enlightenment-style penalties (see `CmQuit.cs`, `Settings`).
- `/cm levels` | `refund` — alternate leveling spend/refund UI.
- Admin/debug entries as listed in `CmCommands` help.

## Achievement rewards (`ChallengeAchievementRewardsEnabled`)

When enabled and the player **has at least one active challenge** at level-up (`PatchClass.PlayerHasActiveChallenge`):

1. **Skill credits** — For each entry in `ChallengeAchievementLevels`, crossing that level grants **+1 skill credit per active challenge track** (SSF, hardcore, alternate leveling, aptitude) that has **not** already claimed that achievement on that track. Tracks use separate bitmasks (`FakeInt.ChallengeMilestoneSkillBits*` — legacy ACE property names retained for data compatibility); legacy `ChallengeMilestoneClaimBits` is migrated once to all four tracks.

2. **XP / luminance bonus** — Permanent additive percent from `ChallengeRewards` / `ChallengeAchievementGrants.GetTotalBonusPercent`:
   - `ChallengeBonusPercentPerLevel` — percent **per character level** counted toward the **current segment**.
   - `ChallengeBonusSegmentCapLevel` — segment length (default **300**). Completing a segment (reaching `cap × (completionCount + 1)`) **banks** `cap × ChallengeBonusPercentPerLevel` into the total and **resets** in-segment furthest (`ChallengeRunMaxLevel`) to **0** for the next climb. **Skill credit bitmasks are not reset.**

3. **Furthest progress (`ChallengeRunMaxLevel`)** — While leveling with an active challenge, this stores the **maximum level reached in the current segment**. It **only increases** during that climb; it **does not** decrease on death or if your **current** level drops below a previous high (e.g. died at 19 after having reached 25 — the **25** still counts for the bonus math). Only **segment completion** at the cap resets the in-segment counter.

## Ordering vs Loremaster

Achievement XP/luminance multiplier is applied **after** Loremaster’s quest-point multiplier when both are active (see `ChallengeRewards` and Loremaster integration).

## Future wishlist: display titles

`ChallengeModeDefaultTitles` in `Settings.json` is reserved for a possible future feature: applying a **CharacterTitle** (or similar) when enabling a mode. ACE nameplate titles are **dat-driven enum IDs**, not arbitrary strings; until client/dat work exists, **no title is applied** on `/cm` (see `Features/ChallengeModeTitles.cs`).

## Files of note

- `PatchClass.cs` — Harmony registration, aptitude / alternate leveling / SSF hooks.
- `Features/ChallengeAchievementGrants.cs` — `GrantXP` prefix/postfix, bonus percent math.
- `Features/ChallengeRewards.cs` — XP/luminance multiplier from claimed progress.
- `CmQuit.cs`, `ConfirmationCmQuit.cs` — `/cm quit` flow.

---

## Manual test checklist (afternoon pass)

Use a test character with backups as needed.

1. **No regression of furthest on death** — Enable a challenge at level 1, level to **25**, note XP/lum bonus messaging or rate vs baseline. Die (or otherwise lose levels) until **current level &lt; 25** (e.g. 19). Confirm bonus still matches **25**-equivalent progress for the segment, **not** 19.

2. **Segment completion** — With defaults (`ChallengeBonusSegmentCapLevel` 300), reach **300** with a challenge active; confirm message about segment complete, banked %, and `ChallengeRunMaxLevel` reset for the **next** segment; confirm skill-credit bits **unchanged**.

3. **Achievement skill credits** — At a configured `ChallengeAchievementLevels` threshold, with **two** modes active (e.g. SSF + hardcore), confirm **+2** credits and message lists both. Repeat on another character with **one** mode — **+1**. Confirm no duplicate grant on re-leveling past the same achievement.

4. **Per-track independence** — Complete a milestone on SSF only; enable hardcore later on a fresh combo character and confirm hardcore track can still claim that milestone index if intended (separate bitmask).

5. **Challenge inactive** — Level with **no** challenge active; confirm no achievement grants / no change to challenge fake properties.

6. **Loremaster + Challenge** — With both mods on, complete a QP-eligible action and confirm order of operations feels correct (no double-counting; challenge % applies after Loremaster where applicable).

7. **`/cm quit`** — Run through confirmation, pool bump, optional strips; confirm modes cleared and radar/default behavior restored.

8. **Alternate leveling / aptitude** — Smoke-test `/cm levels`, aptitude restrictions, and mutual exclusions per `Settings`.

9. **Titles** — Confirm **no** nameplate title change when using `/cm ssf`, `hardcore`, `alternateleveling`, or aptitude (wishlist only).

10. **Settings reload** — Toggle `ChallengeAchievementRewardsEnabled` (if you use live reload), restart or reload per server practice; confirm behavior matches.
