# Findings — Gameplay Log Fix Sweep (archived)

Content preserved from `findings.md` before vendor initiative (2026-05).

---

# Findings — Gameplay Log Fix Sweep

## Issue 1: Shield Thorns Spam
**Status:** FIXED
**Root cause:** `ApplyThornsDamage` sent a `SendMessage` on every single thorns hit with no throttling.
**Fix:** Added `ConcurrentDictionary<uint, ThornsMessageState>` keyed by player GUID. Messages now accumulate damage for 30 seconds, then emit a single aggregated message showing total damage + average per hit.
**File:** `BetterSupportSkills/Skills/ShieldThorns.cs`

## Issue 2: Mob Scale XP Messages
**Status:** FIXED
**Root cause:** `DynamicMobScaling.PostOnDeathGrantXP` sent `[Mob Scale] +X bonus XP` on every scaled kill. Values were also suspect (user noted they'd cause level flying).
**Fix:** Removed the `SendMessage` entirely. XP grant still happens silently.
**File:** `Swarmed/Features/DynamicMobScaling.cs`

## Issue 3: /xp spend auto failing
**Status:** FIXED
**Root cause:** `SpendForPlayer` used `if (success && gained > 0)` to decrement its local `available` counter. But `HandleActionRaiseVital` returns `true` even when the spend didn't increase rank (partial XP). `player.AvailableExperience` was reduced by `SpendXP`, but local `available` was NOT, causing subsequent calls to pass `toSpend > player.AvailableExperience`, which made `HandleActionRaiseVital` fail with "Your attempt to raise X has failed".
**Fix:** Changed condition to `if (success)` — always decrement local `available` when the spend call succeeds.
**File:** `QOL/XpTracker.cs`

## Issue 4: AutoLoot scroll learning without skill check
**Status:** FIXED
**Root cause:** Scroll was removed from corpse BEFORE skill check. If untrained, it was destroyed with a broadcast message.
**Fix:** Moved `canReadScroll` check before `TryRemoveFromInventory`. Unreadable scrolls are silently skipped (left in corpse). No broadcast message.
**File:** `AutoLoot/Autoloot.cs`

## Issue 5: AutoLoot VendorTrash residual
**Status:** FIXED
**Root cause:** User wanted feature completely gone. Code, persistence, and commands still existed.
**Fix:** Removed `vendorTrashEnabled`, `vendorTrashRatio`, `/autoloot vt` command, and all looting logic. Removed from `PlayerPrefs`.
**File:** `AutoLoot/Autoloot.cs`, `AutoLoot/PlayerPrefs.cs`

## Issue 6: CreatureEx not spawning good loot
**Status:** FIXED
**Root cause:** `SpecialCreatureLoot` patch had `[HarmonyPatchCategory(nameof(CreatureEx))]` (evaluates to `"CreatureEx"`), but `Swarmed/PatchClass.cs` only registered `"SwarmedCreatureEx"`, `"SwarmedCreatureVariation"`, `"SwarmedDynamicMobScaling"`, and per-feature types (e.g. `"Horde"`). `"CreatureEx"` was never registered, so the patch was silently never applied.
**Fix:** Added `ModC.Harmony.PatchCategory(nameof(CreatureEx));` to `ApplySwarmedPatchesAndCommands`.
**File:** `Swarmed/PatchClass.cs`

## Issue 7: Drudge Charms stacking / buggy
**Status:** FIXED
**Root cause:** `LootStackConsolidator` force-set `MaxStackSize = 100` on ALL duplicate items in containers, including non-stackable quest items like Drudge Charms (WCID 3669). This made them stackable, which broke quest turn-in logic.
**Fix:** `TryConsolidateContainer` now skips items where `baseItem.MaxStackSize` is not already > 1. Only naturally stackable items are consolidated.
**File:** `AutoLoot/Features/LootStackConsolidator.cs`
