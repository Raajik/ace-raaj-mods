# Findings: Nether Rend + Cleaving Refactor

## Nether Rend — Why It Can Be Vanilla
- `ImbuedEffectType.NetherRending` is a **native ACE enum value**
- ACE `DamageEvent.cs` → `GetWeaponResistanceModifier()` automatically handles rending:
  - `GetRendDamageType(DamageType.Nether)` → `ImbuedEffectType.NetherRending`
  - If `weapon.HasImbuedEffect(NetherRending)`, applies `GetRendingMod(skill)`
- Vanilla `RecipeManager` does **not** have a cookbook entry for NetherRending (no `0x380000XX` dataId), but we set it via `target.ImbuedEffect |=` directly in `TryApplyNewImbue`
- The Overtinked **bonus damage** (extra Nether TakeDamage call) is custom and must remain, but the storage layer can be simplified

## Spell Damage Paths in ACE
- **Melee**: `Player.DamageTarget(Creature, WorldObject)` → current patch covers
- **Missile**: `ProjectileCollisionHelper.OnCollideObject` → calls `sourcePlayer.DamageTarget(...)` → current patch covers
- **War/Void Magic**: `SpellProjectile.OnCollideObject` → `SpellProjectile.DamageTarget(Creature, float, bool, bool, bool)` → **NOT** covered by current patch
- **Life Magic Projectiles**: Same path as war magic (e.g. Martyr's Hecatomb)
- **Stamina/Mana drain spells**: `SpellProjectile.DamageTarget` but category = StaminaLowering/ManaLowering — skip cleave

## Files Requiring Changes
| File | Change |
|------|--------|
| `OvertinkedImbueFlags.cs` | Remove `NetherRending = 4`, remove from `AllowedBits`/`CustomTierMask`, remove `ImbuedEffect` fallback in `Get()` |
| `CleavingNetherImbueCombat.cs` | Extract shared cleave+nether methods; add `SpellProjectile.DamageTarget` postfix; check vanilla `HasImbuedEffect` for Nether |
| `PatchClass.cs` | Remove `OvertinkedImbueStore.Add/ClearFlags` for Nether; keep vanilla `ImbuedEffect \|=` and `DamageType = Nether` |
| `CustomImbueAppraise.cs` | Remove Nether section — vanilla appraisal handles it now |
| `ChaosFailureEffects.cs` | Remove redundant `isCustomImbue` check for Nether (already covered by `isImbue`) |
| `Settings.cs` / `NewImbueConfig.cs` | Update default Cleaving radius to ~9.144m (10 yards) |
