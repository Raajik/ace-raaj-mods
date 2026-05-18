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

### Bug fixes: Vaetha empty emote crash + ManaConversion thread-safety
