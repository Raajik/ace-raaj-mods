# Task Plan — Gameplay Log Fix Sweep

## Issues (from 2026-05-02 live gameplay logs)

1. **Shield thorns spam** — Messages fire every single reflect hit. Need to throttle to once per 30s max, and aggregate total/average damage in the message.
2. **Mob scale XP messages** — Flooding chat with "[Mob Scale] +X bonus XP" on every kill. Likely inaccurate (would cause level flying). Should be removed entirely.
3. **"/xp spend auto" failing** — "Your attempt to raise Maximum Health has failed" repeats constantly. Need to understand why `/xp spend auto` can't raise vitals.
4. **AutoLoot scroll learning without skill** — "You are not trained in Void Magic!" fires when AutoLoot tries to learn scrolls the player doesn't have the skill for. Should pre-check `SkillAdvancementClass` before attempting.
5. **AutoLoot vendor profile still present** — User completely removed vendor profile from AutoLoot but it still appears in-game. Need to find residual code.

## Mods to investigate
- `BetterSupportSkills` — thorns messages
- `AureatePath` or `ChallengeModes` or `EasyServerSettings` — mob scale XP messages
- `AureatePath` — `/xp spend auto` vital raising
- `AutoLoot` — scroll learning + vendor profile

## Phases
1. Investigate each issue (read source, trace message origins)
2. Fix each issue in source
3. Build all affected mods
4. Deploy to test, verify
5. Push live

## Files to create/edit
- `task_plan.md` (this)
- `findings.md` — per-issue root cause notes
- `progress.md` — track completion

## Notes
- All fixes must be committed separately
- AGENTS.md deploy rules apply: test first, then live
