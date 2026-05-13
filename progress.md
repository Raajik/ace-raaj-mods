# Progress — May 13 Evening Session

| Step | Status | Notes |
|------|--------|-------|
| Git branch created | ✅ | `jeremy/bugfix/may13-evening-bugs` |
| README commits stashed | ✅ | Prior session docs committed |
| Plan files created | ✅ | task_plan.md, findings.md, progress.md |
| EA WeaponQuestGrowth ephemeral fix | ✅ | `SetPersistentPropertyInt` for DamageRating/CritDamageRating |
| EA BiotaPropertyHelper key fix | ✅ | Cast `PropertyInt` to `(int)` before Biota dict indexing |
| BLC chest reset interval fix | ✅ | 1-3s → 300-480s (5-8 min) |
| BetterKeys bank unlock suppress fix | ✅ | Removed `RegisterSuppressFirstChestOpenAfterSkeletonUnlock` from banked unlocks |
| BSS Minor Summoning cantrip detection fix | ✅ | Check both `Weenie.PropertiesSpellBook` and `Biota.PropertiesSpellBook` |
| BSS PetDevice unlimited charges | ✅ | Prefix `ActOnUse` to skip `Structure--` |
| BLC loot WCID substitution | ✅ | Mana stones → charges; Encapsulated Spirit (49485) removed |
| Overtinked PostGetRecipe fixes | ✅ | Nether Rending, Cleaving, JewelryCleave shell recipes |
| Overtinked ImbueSalvageWcids mapping | ✅ | Added `NetherRending` (21064) mapping |
| All affected mods build | ✅ | BetterKeys, BLC, BSS, EA, Overtinked |
| Commit batch 1 | ✅ | `488ebcc7` — EA/BLC/BetterKeys/BSS fixes |
| Commit batch 2 | ✅ | `488c1d4c` — Overtinked + BLC loot sub + BSS PetDevice charges |
| Lottery persistence path | ✅ | `cf743ad9` — now uses `Server/ModData/LeyLineLedger/` |
| Chaos passup → lottery | ✅ | `ChallengePassupAbsorb.cs` reflection bridge to `Lottery.AddToPool`, configurable rate |
| Luminance lottery prize | ✅ | `Lottery.cs` — `LuminancePrizeConversionRate` (default 10000) bonus luminance for winners |
| Pre-unlock luminance Nalicana | ✅ | `PostGetPropertyInt64` makes banked lum visible to `InqInt64Stat`; `PreSpendLuminance` auto-withdraws; `/bank activate luminance` command |

## Still Remaining
- Sho Pathwarden chest Lesser Coalesced Mana — SQL exists at `Windblown/Content/SQL/Pathwarden/01_ChestAddLesserMana.sql`; needs apply/verify on void-test and wb_test DBs
