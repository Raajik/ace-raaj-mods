# Progress: Nether Rend + Cleaving Refactor

## 2026-05-11
- Created task_plan.md, findings.md, progress.md
- Analyzed current Nether Rend implementation; confirmed `ImbuedEffectType.NetherRending` is native to ACE
- Researched spell damage paths: `SpellProjectile.DamageTarget` is the hook point for war/void/life magic

### Changes Made
1. **`OvertinkedImbueFlags.cs`** — Removed `NetherRending = 4` from enum, `AllowedBits`, `CustomTierMask`, and the `ImbuedEffect.NetherRending` fallback in `Get()`
2. **`PatchClass.cs`** — Removed `OvertinkedImbueStore.Add/ClearFlags` for Nether; now sets only vanilla `ImbuedEffect |= NetherRending` + `DamageType = Nether`
3. **`CustomImbueAppraise.cs`** — Removed custom Nether appraisal section (vanilla handles it now)
4. **`ChaosFailureEffects.cs`** — Removed redundant `isCustomImbue` check for Nether (already covered by `isImbue` via `ImbueSalvageWcids.Build`)
5. **`NewImbueConfig.cs`** — Changed default `SplashRadiusMeters` from `5f` to `9.144f` (10 yards)
6. **`CleavingNetherImbueCombat.cs`** — Major refactor:
   - Extracted `TryApplyNetherBonus()` and `TryApplyCleave()` as shared internal methods
   - Nether now checked via `damageSource.HasImbuedEffect(ImbuedEffectType.NetherRending)` (vanilla)
   - Added `PostSpellDamageTarget` postfix on `SpellProjectile.DamageTarget` for spell cleave/Nether
   - Stamina/mana drain spells are excluded from cleave/Nether
   - `_inOvertinkedCleaveChain` recursion guard covers all three paths

### Build
- `dotnet build Overtinked/Overtinked.csproj` — **0 warnings, 0 errors**
