# Completed Tasks Archive

**Role:** Canonical log of **shipped and finished** work (by date). When something is done, **append a subsection here**, then **trim** the matching bullets or long write-ups from `PLAN.md` so `PLAN.md` stays a short **active index** (bugs, next reworks, greenfield).

**Pairing:** `PLAN.md` = what to do next + backlog tables. `COMPLETED.md` = what already shipped — search here first for “when did we…?”.

---

## 2026-05-04

### Defense imbue appraisal hourglass — PLAN item closed (resolved in ops)

- **Was:** `PLAN.md` tracked persistent client **E** hourglass on **armor** after Peridot / Yellow Topaz / Zircon defense imbue; appraisal text could still load (not a server hang). Investigation matrix lived in Obsidian **[[Defense Imbue Appraisal Hourglass]]** (`A:\obsidian\jeremy\wiki\Defense Imbue Appraisal Hourglass.md`).
- **Now:** Operator confirms **fixed**; active issue removed from `PLAN.md`. Related mod paths for appraisal text include **Overtinked** `DefenseSalvageAppraise.cs` (`AppraiseInfo.BuildProperties` for defense salvage long desc) and the same mod’s **`CustomImbueAppraise`** pattern (`BuildProfile` / `LongDesc` / `AppraisalLongDescDecoration`) documented in **§ 2026-05-03** below. Rollback SQL remains: `WindblownContent/Content/zzz_Salvage_Defense_Bonus_Rollback.sql`.

### BetterLootControl — Vanilla Coalesced Mana on modern ACE (live)

- **Cause:** Windblown `ACE.Server.dll` has **no** `CreateGenericObjects` (legacy loot helper removed); `StripGenericLootCoalescedMana` never applied. Startup logged a **WARN** every boot. Vanilla mundane coalesced still rolled via `TryRollMundaneAddon` → `TryRollCoalescedMana` → `CreateCoalescedMana`; only `CreateCoalescedMana` was patched, so behavior depended on that single hook.
- **Fix:** New `SuppressVanillaTryRollCoalescedMana` Harmony prefix on `LootGenerationFactory.TryRollCoalescedMana` (DeclaredMethod): when BLC enabled, skip original and return null so **only** `GlobalRareDrops` supplies Coalesced at `CoalescedManaDropChance`. `DisableVanillaCoalescedMana` now targets `CreateCoalescedMana` via `DeclaredMethod`. `StripGenericLootCoalescedMana` uses `DeclaredMethod` and logs **Info** when `CreateGenericObjects` is absent (expected).
- **Files:** `BetterLootControl/SuppressVanillaTryRollCoalescedMana.cs`, `DisableVanillaCoalescedMana.cs`, `StripGenericLootCoalescedMana.cs`, `BetterLootControl/Readme.md`.
- **Live:** Built Release; copied `BetterLootControl.dll` + repo `Settings.json` to `C:\ACE-WB\Mods\BetterLootControl\`; WB `ACE.Server` restart / hot-reload — log shows **6** BLC methods patched and Info line for skipped strip.

---

## 2026-05-03

### Coalesced Mana WCIDs 42516–42518 — canonical weenie + biota (test DB)

- **Cause:** Duplicate SQL: legacy [`CoalescedMana_LesserGreaterAetheric.sql`](WindblownContent/08-custom-items/CoalescedMana_LesserGreaterAetheric.sql) had `ItemUseable=1` (No), no `TargetType`, wrong Icon/Setup DIDs → unusable use-on-target + wrong client icon. Canonical data lives in [`01_CoalescedMana_LesserGreaterAetheric.sql`](WindblownContent/08-custom-items/01_CoalescedMana_LesserGreaterAetheric.sql).
- **Repo:** Legacy file replaced with comment-only pointer; [`BetterLootControl/Readme.md`](BetterLootControl/Readme.md) documents canonical path; new [`EmpyreanAlteration/Content/SQL/03-coalesced-mana-biota-template.sql`](EmpyreanAlteration/Content/SQL/03-coalesced-mana-biota-template.sql) patches existing shard stacks (`ItemUseable` 524296, `TargetType` 35215, `UiEffects`, Icon/Setup DIDs).
- **Test:** `mysqldump` backups under `WindblownContent/sql-backups/2026-05-03/` (`pre-coalesced-weeine-row.sql`, `pre-coalesced-biota-slice.sql`); applied `01_` to **`ace_world`**; applied `03` to **`ace_shard`**; verified `weenie_properties_int` 16/94/18 and biota 16/94 for sample coalesced biota ids. **Restart test `ACE.Server`** so weenie cache reloads.

### BetterSupportSkills — Death Knight nether tier + pet ring/wall gate default (test)

- **DK:** `HybridClasses.GetDeathKnightVoidSpellTier` now uses **`VoidMagic.Base`** (not `Current`) so buffs do not inflate proc tier; [`ClassPerks.md`](BetterSupportSkills/ClassPerks.md) updated.
- **Pets:** `SummoningClasses.BlockPetWarVoidRingWallSpells` default **`false`** in code and [`Settings.json`](BetterSupportSkills/Settings.json) (ring/wall block was skewing pet spell picks toward non-offense); operators set **`true`** if Os’-style splash returns. [`README.md`](BetterSupportSkills/README.md) defaults + changelog updated.
- **Build:** `dotnet build` BetterSupportSkills Release → `C:\ACE\Mods\BetterSupportSkills\`.

### BetterSupportSkills — CombatPet War/Void ring/wall gate + owner-safe spell projectiles (live deploy)

- **Problem:** Elementalist (and similar) pets could cast weenie-driven **ring** / **wall** War or Void spells (e.g. Os’ Wall), splashing the summoner; vanilla `CanDamage` allows pet→owner for those projectiles.
- **Fix:** `TryCastSpell` prefix on tracked `CombatPet`: skip harmful War/Void spells in **ring** / **wall** `SpellCategory` ranges (and 360° spread). `SpellProjectile.OnCollideObject` prefix: tracked pet vs `P_PetOwner` → `ProjectileImpact` only, no damage. Settings: `SummoningClasses.BlockPetWarVoidRingWallSpells` (initial ship default **true**; revised same-day subsection above to **false** default), `BlockPetProjectileDamageToOwner` (default **true**). Repo `Settings.json` updated.
- **Docs:** `BetterSupportSkills/README.md` (new subsection + changelog).
- **Live:** Built Release; copied `BetterSupportSkills.dll` + dependencies and repo `Settings.json` to `C:\ACE-WB\Mods\BetterSupportSkills\`; removed `BetterSupportSkills.deps.json` from live mod folder per mod hygiene. **Restart `ACE.Server.exe` for WB** to load the new DLL.

### Combined: AutoLoot scroll line, LLL salvage + key appraisal, Mana Lattice (850201)

- **AutoLoot:** Pass 3 no longer appends learned scroll name to `lootedItems` after `LearnSpellWithNetworking` (avoids duplicate chat line vs vanilla).
- **LeyLineLedger:** `SalvageBank.DepositRules` — **21064** Onyx → Nether Rending / weapon tinkering; **21063** Obsidian → `Useless`. New **`SkeletonKeyAppraisal`** (`AppraiseInfo.BuildProperties` postfix): suffixes **`(1kD)`** / **`(1kC)`** / **`(5kD)`** / **`(5kC)`** aligned with **BetterKeys** `EnsureKeyMap`; optional `SuffixByWcid` in `Settings.json`.
- **SpellSiphon:** `PrefixOnCastSpell` handles **Mana Lattice WCID** whenever spellbook non-empty (not only Endless/name). Log string updated.
- **BetterLootControl:** `ManaLatticeSpellBootstrap` broadcasts object update after spell adds (glow / examine refresh; `TryAddSpellId` already sets Magical).
- **SQL:** `850201` weenie aligned to Gem pattern (`WindblownContent/08-custom-items/03_ManaLattice_850201.sql`, `SpellSiphon/Content/SQL/ManaLattice_Create.sql`); applied to **`ace_world`** and **`wb_ace_world`** (live) with scoped mysqldump backups under `WindblownContent/sql-backups/2026-05-03/` (`pre-850201-weenie.sql` test, `pre-wb_850201-manalattice.sql` live). Verified on live: `weenie.type=38`, `ItemType` 2048, `ItemUseable` 8, `TargetType` 16, `UiEffects` 1, `ActivationResponse` 4.
- **Docs:** `LeyLineLedger/Readme.md`, `SpellSiphon/Readme.md`, new `BetterLootControl/Readme.md`.

### EmpyreanAlteration — Awakened cloak equipment-set spells + weave (ItemLevel / OnItemLevelUp)

- **Cause:** Awakened cloaks skip `Player.GrantItemXP`, so ACE never called `OnItemLevelUp` → `GetSpellSet` tier (sum of `ItemLevel`) never refreshed when the cloak leveled via `AddItemXP`. `Cloak.RollProc` also requires `ItemLevel >= 1`; XP curve Harmony was gated on `EnableLootItemLeveling` only, so with cloak loot upgrade + loot leveling off, `ItemLevel` could stay wrong vs profile XP.
- **Fix:** After awakened level-up in `ItemLevelingGrowthTrigger`, call `owner.OnItemLevelUp` when `HasItemSet`. Patch QuestItemGrowth category when `EnableCloakLootUpgrade` or item-leveling kill/quest points are on; align `IsItemXpCurveHarmonyEnabled` with the same. `TryAutoAwaken` now calls `AwakenedCloakWeaveXpSeed.EnsureMinimumXpForWeave` (parity with manual awaken).
- **Files:** `EmpyreanAlteration/Features/ItemLevelingGrowthTrigger.cs`, `EmpyreanAlteration/QuestItemGrowthHarmony.cs`, `EmpyreanAlteration/PatchClass.cs`, `EmpyreanAlteration/Features/LivingItemAwakener.cs`.

### Overtinked — Hemorrhage no longer strips existing weapon rend (`ImbuedEffect`)

- **Symptom:** Applying Hemorrhage removed e.g. **Bludgeon Rending** from `ImbuedEffect`; player could re-tinker rend afterward.
- **Cause:** `TryApplyNewImbue` cleared **`AllRendingFlags`** before setting Hemorrhage on **40133** — intended for UI notes but removed real rend mechanics. `HemorrhageWeaponVisual` already forces client glow/underlay without needing that wipe.
- **Fix:** Removed `target.ImbuedEffect &= ~AllRendingFlags` from the Hemorrhage branch only (Nether path unchanged: replace rends + set Nether + `DamageType`).
- **Files:** `Overtinked/PatchClass.cs`, `Overtinked/Readme.md`.

### Defense Imbue Bonus — Peridot/Yellow Topaz/Zircon from +1 to +5

- **Goal:** Change the defense skill bonus from salvage/imbue materials from +1 to +5 for Melee Defense (Peridot), Missile Defense (Yellow Topaz), and Magic Defense (Zircon).
- **Problem:** The actual bonus value comes from `Creature.GetDefenseImbues()` which counts equipped items with the ImbuedEffect flag. Each item adds +1. This is hardcoded in ACE with no database property storing the value.
- **Solution:**
  - SQL (WindblownContent): Updated descriptions (property type 14) for all 6 items to say "+5 bonus" instead of "+1 bonus"
  - Overtinked Harmony patch: Added postfix to `Creature.GetDefenseImbues` to return `DefenseImbueBonus` setting value (5) instead of item count when > 0
  - Settings: Added `DefenseImbueBonus` property (default 0, set to 5 to enable)
- **Files:**
  - `WindblownContent/Content/zzz_Salvage_Defense_Bonus_Update.sql` — descriptions updated in database
  - `Overtinked/PatchClass.cs` — Harmony patch added
  - `Overtinked/Settings.cs` — DefenseImbueBonus property added
  - `Overtinked/Settings.json` — DefenseImbueBonus: 5
- **Items affected:**
  - Salvaged Peridot (21066) — Melee Defense
  - Salvaged Yellow Topaz (21088) — Missile Defense  
  - Salvaged Zircon (21089) — Magic Defense
  - Foolproof Peridot (30101) — Melee Defense
  - Foolproof Yellow Topaz (30105) — Missile Defense
  - Foolproof Zircon (30106) — Magic Defense

### Overtinked — Hemorrhage (Yellow Garnet) “cannot be used” / `GetRecipe` null

- **Cause:** Vanilla `RecipeManager_New.GetNewRecipe` has no case for WCID **21087**; cookbook rarely lists arbitrary weapon pairs. `RecipeManagerEx` showed “cannot be used” when `GetRecipe` returned null before `TryMutate` ran.
- **Fix:** `HemorrhageImbue.BaseRecipeId` (default **4452**, validated on `ace_world`) plus Harmony postfix on `RecipeManager.GetRecipe` to assign `DatabaseManager.World.GetCachedRecipe(BaseRecipeId)` when Hemorrhage salvage WCID + melee/missile weapon with workmanship and result was null.
- **Files:** `Overtinked/NewImbueConfig.cs`, `Overtinked/PatchClass.cs`, `Overtinked/Settings.json`, `Overtinked/Readme.md`.

### Overtinked / BSS — failure redesign roll scale + chaos client sync

- **Problem:** `PreHandleRecipe` compared `Random * 100` to `successChance`, but ACE passes **fraction 0..1** (`GetSkillChance`), so almost every attempt looked like a “failure” (wrong chaos / imbue hijack rate). Failure redesign skips `HandleRecipe`, so chaos property changes never ran `CalculateObjDesc` / `UpdateObj` / pack reorder — no Slayer glow, item stayed buried.
- **Fix:** Compare `Random.Shared.NextDouble() < successChance` in `Overtinked/PatchClass.cs` and `BetterSupportSkills/Skills/ChaosTinker.cs` postfix. After imbue-failure chaos, workmanship fallback, and numeric-salvage chaos, call `CalculateObjDesc` + `CraftInventorySync.MirrorRecipeManagerUpdateObj`.

### Overtinked — second `HandleRecipe` roll still ran vanilla `CreateDestroyItems` (real destroys + “target destroyed”)

- **Problem:** `PreHandleRecipe` rolled once; on “success” it returned `true` and vanilla `HandleRecipe` rolled **again** vs `successChance`. On that miss, `CreateDestroyItems(..., success: false)` used the template recipe’s fail branch (`FailDestroyTargetChance`, etc.), so Hemorrhage / imbue attempts could still destroy the weapon while chaos messages from other paths looked unrelated.
- **Fix:** Harmony prefix `Priority.First` on `RecipeManager.CreateDestroyItems` (REALM: `HashSet<ulong>?`, else `HashSet<uint>?`): when `!success` and tinkering, and redesign applies (imbue list + chaos/workmanship flags, or configured numeric salvage rule + `EnableFailureRedesign`), skip vanilla method, run shared `ApplyImbueTinkerFailure` / same salvage chaos path as `PreHandleRecipe`, set `__result` to target guid so `UpdateObj` still runs. Refactored imbue failure body into `ApplyImbueTinkerFailure`.
- **Files:** `Overtinked/PatchClass.cs`. Commit `7ad6dbf`.

### Overtinked — removed duplicate `HandleRecipe` roll (`PreHandleRecipe`)

- **Problem:** With both `PreHandleRecipe` and vanilla `HandleRecipe` each rolling `NextDouble() < successChance`, success probability was **p²** (e.g. 40% → 16%), so players saw almost only failure-redesign chaos, not “chaostinker”.
- **Fix:** Drop the `PreHandleRecipe` failure prefix; single roll stays in vanilla `HandleRecipe`; failure redesign only in `PreCreateDestroyItemsTinkerFailure`.
- **Files:** `Overtinked/PatchClass.cs`, `Overtinked/docs/Salvage-Tinker-Display-Audit.md`.

### Overtinked — chaos failure client icon / glow (`ChaosAppearance`)

- **Goal:** After failure-redesign chaos (including `/chaostinker` forced fails that still run this path), align **icon underlay** and **UiEffects** with new imbue/slayer/mana state so weapons read correctly at a glance.
- **Fix:** New `ChaosAppearance.Apply` from `ApplyContextualChaos` `finally`: set `IconUnderlayId` via `RecipeManager.IconUnderlay` priority, OR `UiEffects` from rend / defense / armor-imbue / slayer / mana / `DamageType`, then `HemorrhageWeaponVisual.ApplyIfHemorrhageWeapon` + `CalculateObjDesc` (existing `SyncTinkerTargetAfterOvertinkedFailure` still sends `GameMessageUpdateObject`). `ChaosFailureEffects.AllRendingFlags` made `internal` for shared checks.
- **Files:** `Overtinked/ChaosAppearance.cs`, `Overtinked/ChaosFailureEffects.cs`, `Overtinked/Readme.md`.

### Overtinked — Hemorrhage / Cleaving / custom imbues on examine (`CustomImbueAppraise`)

- **Cause:** Hemorrhage and Cleaving are tracked in `OvertinkedImbueStore` (and flags), not only `PropertyInt.ImbuedEffect`, so vanilla imbue lines do not cover them; appending to template `LongDesc` let the client splice workmanship/material into the middle of custom text.
- **Fix:** `AppraiseInfo.BuildProfile` postfix (`Priority.Last`): strip legacy appended block, then **full replace** of appraisal `LongDesc` with item name + configured imbue stat lines; remove `PropertyInt.AppraisalLongDescDecoration`; set `IdentifyResponseFlags.StringStatsTable`.
- **Files:** `Overtinked/CustomImbueAppraise.cs`, `Overtinked/Readme.md`.

### Overtinked — custom imbue persistence + Hemorrhage AoE in yards

- **Persistence:** `OvertinkedImbueStore` now reads/writes **`PropertyInt` 40133** on the item (`SetProperty` → shard biota). `Get` still ORs Nether from `ImbuedEffect` for older Nether-tinkered items missing 40133.
- **AoE:** `HemorrhageImbue` gains **`AoERadiusYards`** (default **10**); combat uses `yards × 0.9144` m for `GetDistance`. **`AoERadiusMeters`** remains when `AoERadiusYards` is **0** (legacy JSON).
- **Files:** `Overtinked/OvertinkedImbueFlags.cs`, `Overtinked/HemorrhageAoE.cs`, `Overtinked/HemorrhageImbueCombat.cs`, `Overtinked/PatchClass.cs`, `Overtinked/NewImbueConfig.cs`, `Overtinked/Settings.json`, `Overtinked/Readme.md`, `AGENTS.md` (40133 row).

### Windblown live — Overtinked custom imbue salvages “unusable” after DLL-only deploy

- **Symptom:** After copying mods to `C:\ACE-WB\Mods\`, players still saw Hemorrhage / Cleaving / Nether salvage as **unusable** (and vanilla “no apparent use” long desc on template) while some mod-driven examine visuals updated.
- **Cause:** `Settings.json` + DLL fix **server recipe** behavior (`BaseRecipeId`, `GetRecipe` postfix, etc.) but **do not** replace weenie template ints. Live **`wb_ace_world`** still had vanilla rows for WCIDs **21087**, **21081**, **21064**: `ItemUseable` = 1, missing **`TargetType` (type 94)**, wrong palette vs `ace_world`.
- **Fix:** Scoped `mysqldump` backup under `WindblownContent/sql-backups/2026-05-03/`, then applied repo SQL to **`wb_ace_world`**: `SalvagedYellowGarnet-Hemorrhage-weapon-style.sql`, `SalvageCleavingNether-tinker-bags.sql`, `SalvageCleavingNether-longdesc.sql`. Restart live ACE so weenie cache reloads.
- **Lesson:** JSON alone cannot set **`ItemUseable` / `TargetType` / palette** on stock WCIDs; ship **`Content/SQL/`** to every world DB that runs the server. See `Overtinked/Readme.md` § Push live and wiki [[ace-raaj-mods Conventions]] § Mod JSON vs weenie SQL.

---

### AutoLoot — close-time, material-only auto-salvage (no clutter destruction)

- **Goal:** Restore an immediate (no-delay) AutoSalvage pass on container/corpse close, but only act on items that BSS actually accepts. Stop destroying non-material clutter so players keep anything still worth looting. House storage chests stay excluded.
- **Behavior (final):**
  - `Container.Close` → `ProcessContainerLootClose` runs Pass 5 inline only when `EnableDelayedSalvageSweep && BSS salvage enabled && rate > 0` and the container is a `Corpse` or a `Chest` **without** `HouseOwner`.
  - Sweep delegates to `BetterSupportSkillsBridge.TryAutoSalvage(player, item)`. BSS already filters to `PropertyInt.MaterialType` items + raw salvage bags (WCID 20981–21089). Items it accepts are removed from the container and banked; everything else stays put.
  - Salvage count (when > 0) is folded into the existing single `[AutoLoot] looted …, salvaged N item(s).` close message. The legacy “destroyed N clutter item(s)” phrasing is gone.
- **Removed infrastructure:**
  - `_salvageTimers`, `SalvageTimerState`, `ScheduleDeferredSalvageSweep`, `RunDeferredSalvageSweep`, `CancelSalvageTimer` in `AutoLoot/Autoloot.cs`.
  - `AutoLoot.CancelSalvageTimer(...)` call from `PostContainerOpen` in `AutoLoot/PatchClass.Harmony.cs`.
  - `Settings.SalvageSweepDelaySeconds` (and JSON entry). `EnableDelayedSalvageSweep` repurposed as the global on/off for the close-time material sweep; default stays `true`.
  - `RunSalvageDestroyPass(Container, Player, bool, bool, out int, out int)` collapsed to `RunSalvageDestroyPass(Container, Player, out int salvaged)`; predicate `ShouldScheduleDeferredSalvageSweep` renamed to `ShouldRunCloseSalvageSweep` (logic identical: corpse OR chest without `HouseOwner`).
- **Files:** `AutoLoot/Autoloot.cs`, `AutoLoot/PatchClass.Harmony.cs`, `AutoLoot/Settings.cs`, `AutoLoot/Settings.json`. Build deploys to `C:\ACE\Mods\AutoLoot\`; Settings.json copied alongside DLL. BSS-side `SalvageAutoDeposit.TryAutoSalvageItem` unchanged — still the source of truth for "is this salvageable?".
- **Player-facing:** `/autoloot salvage off` still bypasses everything via the BSS bridge `IsSalvageEnabled` gate, unchanged.

---

## 2026-05-02

### QOL VendorLootRotation — effective interval + cooldown bookkeeping

- **Symptom:** “Rotates once then stalls” — `VendorLootRotationMinutes` was documented and logged at init but **never applied**; only `VendorLootCooldownMinutes` gated refreshes (e.g. 15 vs 45 → 45 min wait).
- **Fix:** `EffectiveRotationIntervalMinutes` = `min(max(1, Rotation), max(1, Cooldown))`. Advance `_vendorLastRotation` only after `RotateVendorInventory` returns **true** (no-op approaches no longer burn cooldown). Replace global `_originalValues.Clear()` with `TryRemove` per guid when stripping sale rows.
- **Files:** `QOL/VendorLootRotation.cs`, `QOL/Settings.cs`, `QOL/Settings.json`, `QOL/Readme.md`.

### Documentation — vendor stock vs LeyLineLedger pricing

- **Clarified in repo + wiki:** LLL owns vendor **pricing / bank commerce**; QOL VendorLootRotation owns **equipment stock regeneration** only (`AGENTS.md` §8.2, `README.md` QOL blurb, **[[ace-raaj-mods Conventions]]**). Corrects an older COMPLETED note that implied all vendor inventory lived in LLL.

### WorldEvents JSON persistence (Cull / Sale / Invasion)

- **Problem:** Cull/Sale wrote under `Mods/Data/...`, which ACE treats like a mod folder without `Meta.json` (log noise). Invasion used cwd-relative `Data/Invasion/`.
- **Fix:** Active JSON now under `Mods/WorldEvents/Data/{Cull,Sale,Invasion}/`. One-time load migrates legacy `Mods/Data/Cull|Sale` and `Data/Invasion/ActiveInvasion.json` (cwd) then deletes legacy files when possible.
- **Files:** `WorldEvents/Cull/CullPersistence.cs`, `WorldEvents/Sale/SalePersistence.cs`, `WorldEvents/Invasion/InvasionPersistence.cs`.

### PLAN vs COMPLETED hygiene

- **Repo:** Removed duplicate `BetterChestLoot/` + `SharedLoot/` folders; loot stack only in `BetterLootControl/` (`namespace SharedLoot` for dependents). Long “Immediate Reworks” DONE blocks folded into this archive + short pointers left in `PLAN.md`.

---

## 2026-05-01

### BetterLootControl Mod Creation
- **Goal:** Consolidate all loot-table logic into one mod — `BetterLootControl`.
- **Absorbed:** `SharedLoot` (models, roller, config store, salvage bag shaper) + `BetterChestLoot` (chest injection, `SelectAProfile`/`Reset`/`Close` hooks, GlobalRareDrops).
- **Keep calling into:** `EmpyreanAlteration` for item mutation (pre-awaken, pre-imbue) via existing reflection bridge.
- **Migration completed:** Scaffolded folder, migrated SharedLoot files, merged BCL patches, updated references, disabled old mods.
- **Folder cleanup (2026-05-02):** `SharedLoot/` and `BetterChestLoot/` removed from the repository; loot types live only in `BetterLootControl/` (still `namespace SharedLoot` for dependents). Delete stale `Mods/BetterChestLoot` and `Mods/SharedLoot` on servers if they remain from older deploys.

### LivingEquipment → EmpyreanAlteration Full Absorption
- **Goal:** Delete `LivingEquipment/` mod entirely. All remaining functionality absorbed into `EmpyreanAlteration`.
- **Migrated files:** `LivingEquipmentProperties.cs`, `ItemAwakener.cs`, `PatchClass.cs` hooks, `LivingEquipmentXpCurve`.
- **Settings absorbed:** Reused EA existing + added new LE-specific settings.
- **Cross-mod references cleaned:** BLC, QOL, Swarmed updated.
- **`LivingEquipment/` folder deleted.** All affected mods build clean.

### Salvage Pool Split + Guaranteed Chest Drops
- Split `salvage` into `salvage`, `imbueSalvage`, `foolproofImbueSalvage` pools.
- Added foolproof stacking bug fix — foolproof items never get `MaxStackSize` set.
- Guaranteed chest drops: 1 regular salvage + 1-3 common+ items + 25% imbue + 5% foolproof + 25% gear.

### BetterLootControl Gear Ratings + Equipment Sets
- All tiers of gear loot can spawn with ratings and equipment sets.
- Ratings scale with awakened item leveling via `EnableGenericRatingLevelUp`.

### Vendor Rend/UiEffects Loss + Unlimited Supply Bug
- All mod-generated vendor items now inject into `UniqueItemsForSale` (actual WO transferred + auto-removed after purchase).
- Fix in EmpyreanAlteration via postfixes on `Vendor.ItemProfileToWorldObjects` and `Player.FinalizeBuyTransaction`.

### QOL VendorLootRotation hard-disable
- Root cause of three live vendor bugs (duplicate inventory, SpellSiphon missing, price desync).
- Settings.json had an illegal trailing comma causing deserialization failure.
- Fixed by removing trailing comma and restoring the rotation patch path after triage.
- **Ownership (current):** QOL **`VendorLootRotation`** still owns **equipment stock regeneration** on `Vendor.ApproachVendor` (Harmony First). LeyLineLedger owns **vendor pricing**, bank debit/sell deposit, and related commerce — not which random rolled items sit on the vendor.

### Radi vendor (WCID 800039)
- New vendor "Radi" in Town Network (cell `0x00070132`) selling enlightenment, forgetlessness, and attribute gems.
- Protected from loot rotation via `_protectedVendorWcids`. Moved from ValheelContent to WindblownContent.

### CreatureEx loot rewrite
- `Swarmed/Features/SpecialCreatureLoot.cs` replaced flat random pool with 3-tier system: salvage (1-3 items, tier+1), uncommon+ (tier+1 rarity), guaranteed special (tier+2 with forced imbue + awakening).

### Trophy stacking fix
- Added 41 missing whitelist items to SQL. Includes Drudge Charms (24835/24836) and all body parts/pelts/charms.
- Biota cleanup applied to existing items.

### Pathwarden vendor restoration
- WorldEvents Pathwarden vendor weenies (850300–850303) re-applied to live DB.
- ValheelContent disabled to prevent landblock-wide DELETE from wiping them again.

### BetterLootControl Coalesced Mana takeover
- Moved Coalesced Mana drops from ACE vanilla to BLC.
- New `DisableVanillaCoalescedMana.cs` blocks native drops.
- Settings: `CoalescedManaDropChance` (1.5%).

### AGENTS.md consolidation
- Grouped 80+ bullet points into categorized sections.
- Removed duplicate cross-mod property entries.
- Added server launch zombie-process conventions.

### Point-based Coalesced Mana leveling (EmpyreanAlteration)
- Replaced XP-based item leveling with discrete point system: +1 point per creature kill, +100 points per QB-eligible quest completion.
- All three Coalesced Mana tiers can both awaken AND upgrade items.

### DisableAttunedGlobally (EmpyreanAlteration)
- Server-wide QOL override making ALL items tradeable/sellable.
- Two patches: `WorldObject.Attuned` getter + `AppraiseInfo.BuildProperties` (client visual).

### Trophy stacking fix (BetterSupportSkills + EmpyreanAlteration SQL)
- Changed 30+ trophy weenies from `Generic` (type 1) → `Stackable` (type 51).
- Fixed `MaxStackSize` SQL to use `type = 11` (was incorrectly `type = 16`).

### Druid pet targeting fix (BetterSupportSkills)
- `IsInvalidPetTarget` helper prevents pets from attacking: owner, same-owner pets, non-hostile/passive creatures, undamageable players.

### BetterSupportSkills heartbeat patch fix
- `Creature.Heartbeat` is an `override`; fixed by patching `WorldObject.Heartbeat` (virtual base) and filtering with `is CombatPet`.

### LeyLineLedger denominated banking
- Unified deposit/withdraw for pyreal chain (mote→ingot), crystal shards (cracked→fragment), shadow shards (speck→fragment).
- `/bank deposit all` auto-sweeps all denominations into base-unit pools.
- Consolidated single-message deposit feedback.

### LeyLineLedger fuzzy matching improvements
- `TryResolveDepositRuleIndex` now strips spaces from material names.
- `SuggestClosest` uses Levenshtein distance for typo correction.

---

## 2026-04-30

### XP Consolidation + Leveling Rebalance + Loot Tier Delay
- **Phase 1:** Removed scattered XP prefixes from EasyServerSettings, Numbersmith, WorldEvents Hunt/Cull, ChallengeModes, BetterSupportSkills, EmpyreanAlteration, Swarmed.
- **Phase 2:** Loremaster unified formula reads PropertyFloat 40121 (Hunt) and 40125 (Cull).
- **Phase 3:** Balance preserved (5% retention, etc.).
- **Phase 4:** Loot spell tier clamping via `Loremaster/LootTierDelay.cs`.

### Lottery System + `/donate` Command
- **Dual pools:** `_pool` (pyreals) + `_qbPool` (QB) — independently tracked.
- **Sources:** Exchange sell tax, Sale vendor spending, `/donate` (pyreals/luminance/qb).
- **QP contribution:** 10% of every `AddExtraQuestPoints` accrues.
- **Draw mechanics:** 3 winners at 50%/30%/20% splits.

### Loremaster Loot Tier Delay
- Clamps spell tier on creature treasure by killer level.
- Default thresholds: L1→T1, L20→T2, L40→T3, L60→T4, L80→T5, L100→T6, L125→T7, L150→T8.

### WorldEvents Placement QP Rewards
- Scales: 1st=5, 2nd=3, 3rd=2, 4th+=1. Solo participant = 10.
- Implemented in Hunt, Cull, Invasion via reflection bridge to Loremaster.

### Xenology → Hunt name cleanup
- PLAN.md and all skill docs updated to reference WorldEvents Hunt instead of Xenology.

### PLAN.md maintenance
- ValheelContent Segmentation Plan marked DONE.
- All `TODO`/`FIXME`/`HACK` markers in `.cs` files converted to `NOTE:` descriptions.

---

## 2026-04-29

### Multi-Mod Feature Batch — All COMPLETED

| Mod | Feature |
|-----|---------|
| **WorldEvents** | Sale wording fix — detects mage-name towns |
| **WorldEvents** | Hunt timer scaling — unified scheduler integration |
| **Swarmed** | Auto-attack fix — reinforcement spawns set AttackTarget |
| **Swarmed** | Dungeon scaling past 275 — raises maxLevel to highest player |
| **Swarmed** | Dungeon population manager — TargetMobCount 30 |
| **Swarmed** | Level variance +15 flavor |
| **Swarmed** | Scaling debug logging |
| **QOL** | Generous Benefactor — 1B pyreal TN teleport |
| **Loremaster** | Rested XP system |
| **Loremaster** | Luminance banking (pre-unlock) |
| **LivingEquipment** | Academy auto-awaken + vendor stock |
| **LivingEquipment** | Pre-awakened chance 2%→0.2% |
| **LivingEquipment** | Visual glow (green) — UiEffects 256 |
| **LivingEquipment** | Broadcast refresh |
| **AutoLoot** | Quest-item stack fix |
| **AutoLoot** | Chest + corpse close-phase unified |
| **EmpyreanAlteration** | MutatorHooks NRE fix |
| **WorldEvents/ValheelContent** | Town Network Native Portals |
| **Swarmed** | HP Fix — SetMaxVitals after scaling |
| **Swarmed** | Boss broadcast spam fix |
| **Swarmed** | CreatureEx radar colors (cyan) |
| **Swarmed** | Special creature loot |
| **BetterSupportSkills** | TrophyDrops creature filtering |
| **AutoLoot/SQL** | Stackable quest items |
| **LeyLineLedger** | Vendor sell rate reduction |
| **BetterLootControl** (`LootConfig.json`) | Trade note reorganization |

### Live Deployment (2026-04-29)
- Port collision fixed — live server 9002
- Full mod build + deploy — all 22 mods
- Deployed SQL: AcademyWeapons_VendorStock, QuestItem_StackFix, Stackable_Trophies

---

## 2026-04-28 → 2026-04-29

### LeyLineLedger robustness
- Startup weenie validation, runtime null guards, graceful skipping.

### Solo Competitor Bonus (WorldEvents)
- Settings and cross-event implementation for bonus rewards.

### Unified QB Ledger (WorldEvents)
- Shared `ParticipationLedger` service across all event types.

### SpellSiphon rename + expansion
- Renamed GemCrafter to SpellSiphon; added any-item crushing.

### POI Hunt (WorldEvents)
- Auto-generated clues via `LandblockScanner`, Lorewalker Zahir turn-in.

### Scavenger Hunt (WorldEvents)
- `LootTracker` API integration, runtime, broadcast, rewards.

### BetterSupportSkills new classes
- **Healer:** AoE healing aura + Smite melee proc.
- **Adventurer:** +50 attributes/skills/vitals/resistances/burden.

### Windwalker rebalance
- Spell tier formula: `skill/SkillPerTier` (default 200).

### Chaos Tinker fix
- Failures increment NumTimesTinkered, per-item cap (default 5).

### QOL verbose XP auto-spend
- Refactored to return `List<SpendResult>` with per-stat rank gains.

### SpellSiphon vendor integration
- Sold at spell component vendors for 50,000 pyreals.

### Loremaster Account-Wide RepeatQB
- Per-quest 10-hour cooldown tracked across account characters.

### repeatQB Refactor
- Unique quest entries `{baseName}#repeatQB{n}`.

### Coalesced Mana Banking
- AutoLoot banks Lesser/Greater/Aetheric to LLL properties 41100–41102.

### BonusQuest Daily Board
- Daily 9pm CST reset, 10 quests: 2×/5×/10× repeatQB.

### Questgiver Blacklist
- WCIDs 22753 and 22754 blacklisted.

### Kill Task Auto-Reaccept
- Max-solved reset after cooldown, +2 repeatQB per cycle.

### Log audit & interval fix
- 5 min scan intervals (was 60).

---

## 2026-04-27

### ValheelContent Segmentation
- Disabled all content except Adventurer's Haven + Town Network portals.
- Cleanup SQL for 4,778 weenies across 63 folders.

### Chaos-Tinker Leveling Disabled
- Set `ChaosTriggeredGrowth = false`.

### LivingEquipment Mod (v0.1.0)
- Tiered item awakening with Coalesced Mana.

### Coalesced Mana SQL
- Updated LongDesc for WCIDs 42516/42517/42518.

### LeyLineLedger Bank Labels
- Coalesced Mana renamed with tier info.

### SettingsContainer List Deserialization Fix
- Manual fallback when SettingsContainer.Settings returns empty.

---

## 2026-04-26

### AGENTS.md — Repo guide
- Mandatory skills, workflow, conventions, permissions, build notes.

### GitHub Release Automation
- `.github/workflows/release.yml` triggers on `v*.*.*` tags.

### v1.0.0 Release
- Comprehensive mod pack.

### QOL Town Network toll
- Variable random fees, component-first payment, 51 mage names, 80+ flavor messages.

### Healing-kit Recuperation HoT
- Moved from QOL to BetterSupportSkills.

### WorldEvents Hunt
- Tuning for hunt intervals, popularity multipliers, damage caps.

### Enlightenment pool + challenge quit + high-enlight QB
- Shared FakeFloat 11012 cumulative bonus across AureatePath/Loremaster/ChallengeModes.

### AutoLoot simplification
- Removed VendorTrash from menu, Rares.utl default profile.

### BetterSupportSkills tuning
- Shield thorns halved, salvage auto-deposit.

### QOL Town Network toll v2
- Complete overhaul with components/cash system.

### QOL BypassPortalRestrictions
- Granular bypass for all portal/recall restrictions.

### Swarmed messaging
- Call-for-help color changed from Combat to Magic.

### QOL VendorPriceInflation crash fix
- Replaced string-based patch with `nameof`-based patches.

### LeyLineLedger EconomyBalancer + LootTracker intervals
- Reduced from 60 min to 5 min.

### Swarmed expansion
- BuddySpawns, Wild CreatureEx, global CreatureVariation.

### WorldEvents unified scheduler
- EventScheduler rotates through event types.

### BetterSupportSkills ArcaneLore + MissileDefense rework
- Spell dodge moved to Missile Defense, Arcane Lore gets Adaptation.

### CommonGoals NoSplitXp / NoSplitLuminance
- Full credit to each fellowship member.

### Loremaster Loot Tier Delay
- Clamps spell tier by killer level (see 2026-04-30).

---

## Older (2026-04-23 and earlier)

### QOL NpcStackTurnIn
- Full-stack NPC quest turn-ins with reward scaling.

### Dynamic Mob Scaling (Swarmed)
- Scale mob level/difficulty/loot/XP to nearby players.

### DruidPetThorns Batching (BetterSupportSkills)
- 15-second aggregated window.

### TrophyDrops Stack Consolidation (BetterSupportSkills)
- Physical stacking, quest item daily cap.

### Overtinked Context-Aware Chaos
- Caster/target benefit checking before applying.

### AutoLoot Chest + Salvage Sweep
- Chest autoloot + delayed salvage sweep.

### Invasion Portal Storms (WorldEvents)
- Renamed unthemed invasions to "Portal Storm".

### Auto-Kill Task Automation (Loremaster)
- Basic auto-reaccept implemented.

---

*End of Archive*