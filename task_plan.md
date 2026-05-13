# Bug Fix Plan — May 13 Evening Session

**Branch:** `jeremy/bugfix/may13-evening-bugs`
**Scope:** 12 bugs/requests across ChallengeModes, EmpyreanAlteration, BetterLootControl, BetterSupportSkills, QOL, Overtinked, Windblown

## Bug Inventory

| # | Bug | Mod | Priority | Status |
|---|-----|-----|----------|--------|
| 1 | Lottery drawing time resets on server restart | ChallengeModes | 🔴 High | **Blocked** — code in `worldevents-expansion` worktree |
| 2 | Lesser Coalesced Mana not in Sho Pathwarden chest | Windblown/SQL | 🟡 Medium | **Open** — fixed-create-list chests, need SQL or AllowedChestWCIDs |
| 3 | Replace mana stones in lootgen with mana CHARGES | BetterLootControl | 🟡 Medium | **Fixed** — `PostRollWcidSubstitution` in `PatchClass.cs` |
| 4 | Passup XP from chaos mode → lottery pool → luminance | ChallengeModes | 🟡 Medium | **Blocked** — code in `worldevents-expansion` worktree |
| 5 | Pet summon devices: remove cooldown, unlimited charges, remove 49485 from loot | BetterSupportSkills/Swarmed | 🟢 Low | **Fixed** — `PreCheckUseRequirements` (cooldown), `PrePetDeviceActOnUse` (charges), BLC loot filter (49485) |
| 6 | Awakened cloak level-up rating gains don't apply | EmpyreanAlteration | 🔴 High | **Fixed** — `SetPersistentPropertyInt` for `DamageRating`/`CritDamageRating` |
| 7 | Improved chest loot never respawns in chests | BetterLootControl | 🔴 High | **Fixed** — reset interval 1-3s → 300-480s |
| 8 | Jewelry leveled up but gained nothing | EmpyreanAlteration | 🔴 High | **Fixed** — `SetPersistentPropertyInt` + BiotaPropertyHelper key cast |
| 9 | Chest auto-unlock eats charges, invisible open, re-locks on close | QOL/BetterKeys | 🟡 Medium | **Fixed** — removed `RegisterSuppressFirstChestOpenAfterSkeletonUnlock` from banked unlocks |
| 10 | Awakened clothing/ring/jewelry level-up gains don't apply | EmpyreanAlteration | 🔴 High | **Fixed** — same as #6/#8 |
| 11 | Onyx salvage not applicable to weapons/jewelry | Overtinked | 🟡 Medium | **Fixed** — `PostGetRecipeNetherRending`, `PostGetRecipeCleaving`, `PostGetRecipeJewelryCleave` |
| 12 | Minor Summoning aug not adding extra pet for Artificer | BetterSupportSkills | 🟡 Medium | **Fixed** — check both `Weenie` and `Biota` `PropertiesSpellBook` for cantrips; `PrePetDeviceActOnUse` for unlimited charges |

## Suspected Root Causes

- **#1 Lottery persistence:** Draw time stored in memory/prefs file, not persisted to disk. May need JSON serialization.
- **#6/#8/#10 EA ratings vanish:** Ephemeral PropertyInt values (the fix from May 11 may not cover all rating paths — cloak ratings, jewelry ratings, ring ratings have different code paths in `ArmorJewelryRatingGrowth.cs`)
- **#7 Chest drops not respawning:** BLC chest injection may not run on subsequent opens. Investigate `Container.GenerateTreasure` hook and whether drops are cleared/respawned.
- **#9 Chest auto-unlock:** BetterKeys or QOL lockpick patch may have race condition between unlock animation and open packet.
- **#12 Minor Summoning:** BSS `TrySummonForClass` may check Minor Summoning augment but not apply bonus for Artificer class.

## Tasks

1. **Read all affected source files** — parallel subagent: file scanner
2. **Investigate EA rating persistence** — why May 11 fix didn't cover cloak/jewelry/ring levels
3. **Investigate BLC chest drops** — generation vs regeneration logic  
4. **Investigate ChallengeModes lottery** — persistence mechanism
5. **Investigate pet summon/cooldown/salvage** — BSS pet code + onyx tinker rules
6. **Investigate chest unlock** — QOL/BetterKeys lockpick hooks
7. **Investigate Sho Pathwarden chest** — coalesced mana SQL/wcID
8. **Implement fixes** per findings
9. **Build + deploy to void-test**
10. **Update COMPLETED.md + commit**
