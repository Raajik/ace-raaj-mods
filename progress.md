# Progress — Gameplay Log Fix Sweep + Crusader Rework

## Completed

1. **Shield thorns spam** ✅
2. **Mob scale XP messages** ✅
3. **AutoLoot scroll learning without skill check** ✅
4. **"/xp spend auto" failing spam** ✅
5. **AutoLoot VendorTrash** ✅
6. **CreatureEx not spawning good loot** ✅
7. **Drudge Charms stacking / buggy** ✅
8. **Crusader thorns multiplier removal + rework** ✅
   - Removed `ThornsMultiplier` from ShieldThorns calculation (base only)
   - Added melee bonus damage = thorns formula on every Crusader melee hit
   - Added +10 DamageResistRating when Crusader wields a shield
   - Deprecated `ThornsMultiplier` in Settings (default 1.0)
9. **ClassPerks.md + AGENTS.md update** ✅
   - Created comprehensive class reference document for all 14 BSS classes
   - Added to AGENTS.md external knowledge base

## Deployment
- All affected mods built and deployed to live (`C:\ACE-WB\`)
- Server restarted successfully (PID 32536)
- Git commit `3976301` pushed to `main`

## Remaining questions
- Drudge charm "weird description 3669 Drudge Charm" — may be from client debug
  or weenie modification outside our mods. Need user confirmation if still present.
