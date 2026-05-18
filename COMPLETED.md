# Completed Features & Fixes

## 2026-05-17

### Bank path, legacy merge collision, quest salvage support, gem auto-salvage, quarterstaff suppression

**Branches:** (direct commits on `main`)

#### 1. SuppressedDropFilter Harmony patch never registered (dead code)
**Problem:** `SuppressedDropFilter.cs` used bare `[HarmonyPatch]` on a separate class. Auto-discovery silently fails for these — the patch was dead code. Quarterstaffs (WCID 22168) were never stripped from corpses.
**Fix:** Added manual `harmony.Patch()` in `PatchClass.Start()` following the same pattern as `ApplyGlobalRareDropsPatch`.
**Files:** `BetterLootControl/PatchClass.cs`

#### 2. AccountBankStore.ModDataDir resolved to wrong path
**Problem:** `Assembly.Location` is empty for plugin-loaded assemblies (McMaster.NETCore.Plugins). `ModDataDir` computed a relative path (`Server\ModData\...`), creating a double-nested `C:\ACE\Server\Server\ModData\...` hierarchy. Different server sessions could write/read from different paths, losing deposits.
**Fix:** Changed to use `Assembly.GetEntryAssembly()` (ACE.Server.exe) which always resolves to an absolute path. Added migration from old double-nested path on first access.
**Files:** `LeyLineLedger/AccountBankStore.cs`

#### 3. MaybeMergeLegacyWcidOffsetSalvageBank stole deposits via prop collision
**Problem:** The legacy merge computed `legacyProp = 40201 + (WCID − 20981)`, which collided with `correctProp` values for DIFFERENT materials. E.g., Emerald (WCID 21048) had `legacyProp = 40268` which is White Sapphire's `correctProp`. Every White Sapphire deposit was immediately stolen and credited to Emerald.
**Fix:** Disabled the legacy merge entirely — server has no real legacy data to migrate, and the collision causes active damage.
**Files:** `LeyLineLedger/BankSalvage.cs`

#### 4. Raw gems (MaterialType items) not auto-salvaged on pickup
**Problem:** `TryAutoSalvageItem` existed but was never called. The auto-deposit prefix (`PreTryCreateInInventory`) only handled salvage bag WCIDs (20980-21089). Raw gems with `MaterialType` (White Sapphire 2408, etc.) bypassed auto-salvage and sat in inventory.
**Fix:** Added a call to `TryAutoSalvageItem` for non-salvage-stack items in the prefix. Items with `MaterialType` are now auto-processed on entry.
**Files:** `BetterSupportSkills/Skills/SalvageAutoDeposit.cs`

#### 5. Quest salvage bag WCIDs not recognized
**Problem:** Gambling chests drop 100-unit material bags at WCIDs 29571-29582 and 36570-36574 (ACE `*_100_CLASS` weenies). These were not mapped to any LLL DepositRule, so `/b d` ignored them.
**Fix:** Added all 16 quest WCIDs as `AdditionalDepositWeenieClassIds` on their corresponding LLL DepositRules. The new MaterialType auto-deposit path also covers them.
**Files:** `LeyLineLedger/Settings.json`

#### 6. Settings.json had invalid JSON (missing quotes)
**Problem:** Three property names (`FilterUnusableScrollDropsForKiller`, `EnableSuppressedDropFilter`, `SuppressedDropWcids`) were missing quotes in the JSON file.
**Fix:** Added quotes.
**Files:** `BetterLootControl/Settings.json`

#### 7. Log spam from salvage DIAG messages
**Problem:** Diagnostic `[LLLSalvageBankInterop-DIAG]` and `[BSS->LLL Salvage-DIAG]` messages logged at `Info` level for suspect-range WCIDs, spamming logs on every deposit.
**Fix:** Changed both to `Debug` level.
**Files:** `Shared/LeyLineLedgerSalvageBankInterop.cs`, `BetterSupportSkills/Skills/LeyLineLedgerSalvageInterop.cs`

## 2026-05-16

### Salvage fixes: Alabaster range bug, withdraw name matching, diagnostics
### Swayss InqYesNo emote fix (resilient to world-sync)

Branch: `raajik/feature/empower-healing-kits` | Commit: *(pending)*

#### 1. Alabaster (20980) excluded from auto-deposit
**Problem:** `MinSalvageWcid = 20981` in three places silently rejected WCID 20980 before auto-deposit ever reached DepositRules lookup. Items with MaterialType 66 (Alabaster/Stone) were never banked on auto-salvage.
**Fix:** Lowered `MinSalvageWcid` to `20980` across Shared interop, BSS interop, and BSS SalvageAutoDeposit. Adjusted all index computations (`materialIndex = wcid - 20980`), range checks (0-109), and the material names array (prepended Alabaster at index 0). Kept a separate `LegacySalvageBaseWcid = 20981` for the LLL-absent fallback so legacy WCID-offset property mappings remain stable.
**Files:** `Shared/LeyLineLedgerSalvageBankInterop.cs`, `BetterSupportSkills/Skills/LeyLineLedgerSalvageInterop.cs`, `BetterSupportSkills/Skills/SalvageAutoDeposit.cs`, `AutoLoot/Autoloot.cs`

#### 2. AutoLoot salvage snapshot used legacy property arithmetic
**Problem:** `SnapshotLLLSalvageTotals` computed properties via `40201 + (WCID − 20981)`, which returns wrong properties for non-sequential DepositRules (e.g., Ruby at WCID 21072 read property 40292 instead of 40254). Before/after deltas in loot messages were wrong for materials at DepositRules indices 15-71.
**Fix:** Now resolves properties via `LeyLineLedgerSalvageBankInterop.GetSalvageMaterialBankPropertyId(wcid)` (same interop BSS/LLL use), extended range to include 20980.
**Files:** `AutoLoot/Autoloot.cs`

#### 3. Withdraw name matching picked ambiguous substring first
**Problem:** `/bank salvage redeem Opal` matched "Black Opal" (lower index 16) before plain "Opal" (index 33) because the loop used `label.Contains(token)` with no exact-match pass. Any ambiguous token ("Opal", "Garnet", "Jade") hit the wrong material.
**Fix:** `TryResolveDepositRuleIndex` now does an exact-match pass first (`label.Equals(token, OrdinalIgnoreCase)`) before falling through to substring matching.
**Files:** `LeyLineLedger/BankSalvage.cs`

#### 4. Diagnostic logging for suspect-range auto-deposit
**Problem:** Materials at DepositRules indices 53-71 (WCIDs 21072-21089 and 20980) showed persistent 0 balances in `/bank salvage status` despite confirmed looting. Root cause unclear — property resolution is identical between BSS and LLL display.
**Fix:** Added automatic Info-level logging at two levels:
- Shared interop logs every time a suspect WCID is resolved (WCID → DepositRules index → property)
- BSS TryIncSalvage logs every time a suspect WCID is credited (WCID, property, units, resulting total)
- Manual `/bank salvage debug resolve` command prints the full DepositRules property mapping table

Collect by deploying and playing normally — the server mod log captures every deposit attempt for the suspect range.
**Files:** `Shared/LeyLineLedgerSalvageBankInterop.cs`, `BetterSupportSkills/Skills/LeyLineLedgerSalvageInterop.cs`, `LeyLineLedger/BankSalvage.cs`

#### 5. Swayss InqYesNo emote fix (resilient to world-sync)
**Problem:** Swayss (810002) kept showing "FreeRedistribute" as the popup text instead of "Would you like to redistribute your skills?" because the safety UPDATE targeted a hardcoded `emote_Id = 93157`. World-sync between databases changed Swayss's emote header ID, leaving the old broken row untouched.
**Fix:** Changed `INSERT IGNORE` to `INSERT ... ON DUPLICATE KEY UPDATE` so existing rows with wrong values are overwritten on every SQL run. Changed the safety UPDATE to match by `object_Id + category + type` (not by emote_Id), so it catches any InqYesNo action on Swayss's Use emote regardless of ID.
**Files:** `Windblown/Content/SQL/Vendors/04_Swayss_810002.sql`

## 2026-05-17 (session 2)

### Consolidated item XP system: direct kill/quest XP, CharacterTable curve, weighted level-up distribution

**Branches:** `jeremy/fix/rating-levelup-client-update`, `jeremy/refactor/direct-item-xp-consolidation`

#### 1. Rating level-up client update fix
**Problem:** `ArmorJewelryRatingGrowth` and `WeaponQuestGrowth` methods wrote rating properties (DamageRating, CritDamageRating, etc.) to the biota and in-memory cache via `SetPersistentPropertyInt`, but never sent `GameMessagePrivateUpdatePropertyInt` to the player's client. The client continued showing cached old values — ratings appeared "added" in the message but never showed on the item.
**Fix:** Added `GameMessagePrivateUpdatePropertyInt` to all 6 rating methods in `ArmorJewelryRatingGrowth` and both methods in `WeaponQuestGrowth`, matching the existing pattern in `TryScaleExistingRatings`.
**Files:** `EmpyreanAlteration/ArmorJewelryRatingGrowth.cs`, `EmpyreanAlteration/WeaponQuestGrowth.cs`

#### 2. Removed point-based leveling workaround, re-enabled ACE GrantItemXP
**Problem:** `PreGrantItemXP` returned `false` for awakened items, suppressing ACE's built-in kill/quest XP auto-allocation. A separate point system (1 pt/kill, 100 pts/quest) replaced it with flat rates that didn't scale with creature difficulty.
**Fix:** Removed the `return false` skip — ACE's `GrantItemXP` now delivers full kill/quest XP to awakened items. Deleted `CreatureDeathItemLeveling`, `QuestCompletionItemLeveling`, `ItemLevelingPoints` (3 files). Removed `ItemLevelUpGrowth` (redundant — `PostGrantItemXP` handles all growth). Removed settings `ItemLevelingKillPoints`, `ItemLevelingQuestCompletionPoints`, `ItemLevelingBossKillMultiplier`.
**Files:** Multiple — see commit 59d6a048

#### 3. CharacterTable XP curve mode
**Problem:** Custom `Geometric` curve (50k base, 1.15x) produced different ItemLevel from the client's built-in math, showing wrong item levels (e.g., 7/15 vs 15/15). Stock `AceGeometric` hard-capped at level 48 due to ulong overflow.
**Fix:** Switched to `CharacterTable` mode — maps item levels to character XP table deltas (virtual level 6 anchor, 1.0x multiplier). Both server and client compute identically. Supports levels up to ~275 (table max). Skipped the profile-based curve for awakened items when in client-compatible modes.
**Files:** `EmpyreanAlteration/QuestItemGrowthHarmony.cs`, `EmpyreanAlteration/Settings.json`

#### 4. Weighted level-up distribution
**Change:** Restructured all four `TryApply*LevelUp` methods to use weighted random rolls: 40% spell upgrade, 20% rating, 15% imbue, 15% tinker, 10% utility. If the preferred outcome can't apply, falls through to remaining paths in priority order — every level-up produces something.
**Files:** `EmpyreanAlteration/QuestItemGrowthLevelEngine.cs`

#### 5. Protection mods guard for zero-armor items
**Problem:** Protection mods (ArmorModVsSlash, etc.) have no visible effect on items with 0 armor level (e.g., cloaks). Weighted rolls could pick these as the primary outcome, wasting the level-up.
**Fix:** Added `ArmorLevel` guard in `TryApplyArmorSteelOrRandomProtection` — skip protection mods if armor level is null or 0. Steel (which bumps armor level) still applies normally.
**Files:** `EmpyreanAlteration/QuestItemGrowthLevelEngine.cs`

#### 6. Client sync after catch-up growth
**Fix:** Added explicit `GameMessagePrivateUpdatePropertyInt64` for `ItemTotalXp` and `GameMessagePrivateUpdatePropertyInt` for `ItemMaxLevel` after batch catch-up growth, ensuring the client's item panel shows the correct level and XP bar.
**Files:** `EmpyreanAlteration/QuestItemGrowthCatchUp.cs`

#### 7. Disabled random spells on awakening
**Change:** Set `EnableAwakenRandomSpells` default to `false` — newly awakened items no longer roll random spells from SpellSiphon's gem pool.
**Files:** `EmpyreanAlteration/Settings.LivingItem.cs`, `EmpyreanAlteration/Settings.json`

### Bug fixes: Vaetha empty emote crash + ManaConversion thread-safety
