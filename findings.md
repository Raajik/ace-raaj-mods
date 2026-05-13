# Findings — May 13 Evening Session

## Bug #6/#8/#10: EA Rating Persistence (cloak, clothing, jewelry, ring)

### Root Cause Part 1: WeaponQuestGrowth still uses raw `SetProperty`
`WeaponQuestGrowth.cs` lines 320, 339 use `item.SetProperty(PropertyInt.DamageRating, ...)` and `item.SetProperty(PropertyInt.CritDamageRating, ...)` instead of `BiotaPropertyHelper.SetPersistentPropertyInt`. Even though `ArmorJewelryRatingGrowth` was fixed on May 11, weapon-level `DamageRating`/`CritDamageRating` bumps use the old ephemeral path.

### Root Cause Part 2: `TryScaleExistingRatings` read vs write mismatch  
`TryScaleExistingRatings` tries to ONLY scale values that are "actually stored in the biota" using `GetBiotaPropertyIntRaw`. If the biota write fails (e.g., `PropertiesInt` dictionary key type mismatch), the raw read returns null → `current = 0` → scaling is skipped. Meanwhile `ArmorJewelryRatingGrowth` writes with `SetPersistentPropertyInt` which does `item.SetProperty` + `SetBiotaPropertyInt`. The in-memory value exists but the biota might not.

### Root Cause Part 3: Biota dictionary key type issue
`SetBiotaPropertyInt` fallback does `dict[prop]` where `prop` is a `PropertyInt` enum. If ACE's `PropertiesInt` is typed as `Dictionary<int, int?>`, the `IDictionary` indexer with a boxed `PropertyInt` key might not match `int` keys at runtime. Need to cast to underlying `int`.

## Bug #7: BLC Chest Drops Not Respawning

### Root Cause: `PrefixChestReset` parameter order + `__instance` injection
`PrefixChestReset(double? resetTimestamp, Chest __instance)` has wrong parameter order for Harmony on instance method. `__instance` should be injected as first parameter.

Also, `PostSelectAProfile` adds items using `TryAddToInventory`. `PostChestReset` hardcodes `ResetInterval = ThreadSafeRandom.Next(1, 3)` which is absurd (1-3 seconds) — chests reset too fast, potentially before player can interact.

## Bug #9: Chest Auto-Unlock Eats Charges

### Root Cause: `PreChestSkeletonBankUnlock` returns `true` after unlock
After bank unlock, the prefix returns `true` (let original run). The original `Chest.CheckUseRequirements` sees the now-unlocked chest and proceeds. The suppress-on-Open logic tries to register suppression, but the client/Open flow may race or double-fire.

## Bug #12: Minor Summoning No Extra Pet

### Root Cause: `GetSummoningCantripBonus` only checks equipment spells
Minor/Major/Epic Summoning Prowess is an **equipment cantrip** (spell on items). But augmentations like Minor Summoning are **player-level** and stored differently. The code does not check player augmentations or the Summoning skill base cap.

---

## Pending Investigation
- **Lottery persistence** (ChallengeModes): lottery code found in `.worktrees/worldevents-expansion/LeyLineLedger/Lottery.cs` — not in main branch. Need to merge or check if deployed.
- **Passup XP → lottery luminance**: same branch issue.
- **Pet summon devices**: No explicit cooldown/charges management found for WCID 49485. Need to check ACE device use patterns.
- **Onyx salvage**: Need TinkerRules in Overtinked settings.
- **Sho Pathwarden chest**: Need to verify SQL for coalesced mana placement.
