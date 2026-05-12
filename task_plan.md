# Plan: Spellsiphon Negative-Spell Cleanser + Mana Lattice Fix

## Branch: `jeremy/feature/spellsiphon-and-mana-lattice`

## ✅ Task 1: Spellsiphon → Negative Spell Remover

**Problem:** EmpyreanAlteration awakening rolls random spells from the SpellSiphon gem pool onto items. Some of these spells are harmful/debuffs (`Spell.IsHarmful`). Players need a way to cleanse them.

**Solution:** Pivot the blank Spellsiphon + item recipe from "extract spells" to "remove negative spells."

**Files:**
- `SpellSiphon/Settings.cs` — Add `NegativeSpellNameContains` setting ✅
- `SpellSiphon/Features/RecipeHooks.cs` — Rewrite `PostHandleRecipe` to cleanse instead of extract ✅
- `SpellSiphon/PatchClass.cs` — Log message update ✅

**Details:**
- Recipe: `SuccessDestroyTargetChance = 0`, `FailDestroyTargetChance = 0` (target survives) ✅
- On success: scan target `PropertiesSpellBook`, filter by `Spell.IsHarmful` + optional name denylist, remove matching spells, broadcast update ✅
- On success with no negative spells: message "No negative spells found" ✅
- On failure: existing fail message, Spellsiphon consumed ✅
- Remove rare-crystal secondary roll logic (no longer relevant) ✅
- Remove charged-Spellsiphon creation logic ✅

## ✅ Task 2: Mana Lattice Activation Fix

**Problem:** `Gem.UseGem()` checks `SpellDID.HasValue` and casts ONLY that single spell. Mana Lattice weenie (850201) has NO `SpellDID` set. It stores spells in `PropertiesSpellBook`. `Gem.UseGem` never iterates the spellbook, so double-clicking a Mana Lattice does nothing. The `PrefixOnCastSpell` hook on `WorldObject.OnCastSpell` never fires because gems don't call `OnCastSpell`.

**Solution:** Add a Harmony postfix on `Gem.UseGem` that detects Mana Lattice WCID and casts all spells from `PropertiesSpellBook`.

**Files:**
- `SpellSiphon/Features/ManaLatticeGemHooks.cs` — New file with `PostUseGem` ✅
- `SpellSiphon/PatchClass.cs` — Register `TryPatchManaLatticeGemHooks()` ✅
- `BetterLootControl/ManaLatticeSpellBootstrap.cs` — Add diagnostic logging ✅

**Details:**
- Postfix on `Gem.UseGem(Player player)` ✅
- Check `__instance.WeenieClassId == ManaLatticeWcid` ✅
- Read `PropertiesSpellBook` + `SpellDID` ✅
- Cast each spell using `player.TryCastSpell` (with `ImpenBaneType` redirect like stock `Gem.UseGem`) ✅
- Message player with cast count ✅
- Handle both plain vendor/dropped lattices and "Endless Mana Lattice" transformed lattices ✅

## ✅ Build & Deploy
- `dotnet build SpellSiphon/SpellSiphon.csproj` — 0 warnings, 0 errors ✅
- `dotnet build BetterLootControl/BetterLootControl.csproj` — 4 pre-existing warnings ✅
- Deploy to void-test via `bash scripts/deploy-void-test.sh` ✅
- Restart void-test ACE server (watchdog auto-restart, PID 10120) ✅

## ✅ Post-implementation
- Update `COMPLETED.md` ✅
- Commit and push branch ✅
