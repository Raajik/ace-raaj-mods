# Task Plan: Nether Rend Vanilla-ization + Cleaving Expansion

## Goal
1. Refactor Nether Rend imbue to use vanilla ACE properties (`ImbuedEffectType.NetherRending` + `DamageType.Nether`) instead of the custom `40133` bitmask system.
2. Expand Cleaving imbue to work for melee, missile, **and casting** (all player-initiated damage) with a 10-yard (~9.144m) splash radius.

## Phases

### Phase 1: Research — ACE Spell Damage Paths
- [ ] Find where war magic / life magic damage hits targets in ACE source
- [ ] Identify the cleanest hook point for cleave-on-spell-damage
- [ ] Document findings

### Phase 2: Refactor — Remove Nether Rend from 40133 System
- [ ] Remove `NetherRending` from `OvertinkedImbueFlags` enum
- [ ] Update `OvertinkedImbueStore.Get()` — stop checking `ImbuedEffect.NetherRending`
- [ ] Update `OvertinkedImbueStore.TryAddCustomTier()` — remove Nether from custom tier mask
- [ ] Update `TryApplyNewImbue()` — set vanilla properties only, no 40133 bit
- [ ] Update `PreVerifyRequirements` / imbue replacement logic — handle Nether as standard rend
- [ ] Update `CleavingNetherImbueCombat.cs` — check `HasImbuedEffect(NetherRending)` directly
- [ ] Update `CustomImbueAppraise.cs` — remove Nether from custom appraisal
- [ ] Update `ChaosAppearance.cs` — remove Nether from chaos pool / appearance logic
- [ ] Update `ChaosFailureEffects.cs` — handle Nether as standard imbue
- [ ] Update `ImbueSalvageWcids.cs` — verify still needed or simplify

### Phase 3: Expand — Cleaving for All Damage Types
- [ ] Add spell damage hook for cleave splash
- [ ] Ensure recursion protection works across melee/missile/spell paths
- [ ] Update config: default radius to ~9.144m (10 yards) or document
- [ ] Test that cleave doesn't double-fire on missile (already goes through DamageTarget)

### Phase 4: Build & Verify
- [ ] `dotnet build Overtinked/Overtinked.csproj`
- [ ] Fix any compile errors
- [ ] Review all references to `NetherRending` in the mod

### Phase 5: Update Docs
- [ ] Update `PLAN.md` / `COMPLETED.md` if needed
- [ ] Commit and push

## Errors Encountered
| Error | Attempt | Resolution |
|-------|---------|------------|
