# Task Plan: Nether Rend Vanilla-ization + Cleaving Expansion

## Goal
1. Refactor Nether Rend imbue to use vanilla ACE properties (`ImbuedEffectType.NetherRending` + `DamageType.Nether`) instead of the custom `40133` bitmask system.
2. Expand Cleaving imbue to work for melee, missile, **and casting** (all player-initiated damage) with a 10-yard (~9.144m) splash radius.

## Phases

### Phase 1: Research — ACE Spell Damage Paths
- [x] Find where war magic / life magic damage hits targets in ACE source
- [x] Identify the cleanest hook point for cleave-on-spell-damage
- [x] Document findings

### Phase 2: Refactor — Remove Nether Rend from 40133 System
- [x] Remove `NetherRending` from `OvertinkedImbueFlags` enum
- [x] Update `OvertinkedImbueStore.Get()` — stop checking `ImbuedEffect.NetherRending`
- [x] Update `OvertinkedImbueStore.TryAddCustomTier()` — remove Nether from custom tier mask
- [x] Update `TryApplyNewImbue()` — set vanilla properties only, no 40133 bit
- [x] Update `PreVerifyRequirements` / imbue replacement logic — handle Nether as standard rend
- [x] Update `CleavingNetherImbueCombat.cs` — check `HasImbuedEffect(NetherRending)` directly
- [x] Update `CustomImbueAppraise.cs` — remove Nether from custom appraisal
- [x] Update `ChaosAppearance.cs` — remove Nether from chaos pool / appearance logic
- [x] Update `ChaosFailureEffects.cs` — handle Nether as standard imbue
- [x] Update `ImbueSalvageWcids.cs` — verify still needed or simplify

### Phase 3: Expand — Cleaving for All Damage Types
- [x] Add spell damage hook for cleave splash
- [x] Ensure recursion protection works across melee/missile/spell paths
- [x] Update config: default radius to ~9.144m (10 yards) or document
- [x] Test that cleave doesn't double-fire on missile (already goes through DamageTarget)

### Phase 4: Build & Verify
- [x] `dotnet build Overtinked/Overtinked.csproj`
- [x] Fix any compile errors
- [x] Review all references to `NetherRending` in the mod

### Phase 5: Update Docs
- [x] Update `PLAN.md` / `COMPLETED.md` if needed
- [x] Commit and push

## Errors Encountered
| Error | Attempt | Resolution |
|-------|---------|------------|
