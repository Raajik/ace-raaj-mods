# Overtinked salvage / tinker display audit

Generated from repo audit (Settings.json, `SalvageEffectApplier`, `PatchClass`, LeyLineLedger interop). Server target for builds: `C:\ACE\Server` (see `Overtinked.csproj`).

## Surfaces (where players see effects)

| Surface | Mechanism |
|---------|-----------|
| Craft chat | Numeric salvage + buffed jewelry: when `MergeSalvageTinkerEffectIntoBroadcast` and `ShowPlayerSalvageMessage`, `TinkerBroadcastSuffix` + `RecipeManagerBroadcastTinkeringMerge` prefix on `BroadcastTinkering` appends effect (and `Bane xN`) to the vanilla local line; else `PatchClass.PreTryMutate` + `ShowPlayerSalvageMessage` → `GetEffectDescription` / bane helpers. |
| Examine | Item properties + weenie strings; defense salvage bags → `DefenseSalvageAppraise` + `TryGetDefenseSalvageAppraiseLongDesc`; other `SalvageRules` tinkering bags → `NumericSalvageBagAppraise` + `TryGetNumericSalvageBagAppraiseLongDesc` when `OverrideNumericSalvageBagLongDescInAppraise` (defense path keeps priority). |
| HUD / wield | Same float/int properties `ApplyEffect` writes (after client update) |
| `/bank salvage` | LeyLineLedger reflects `SalvageEffectApplier.GetSalvageBankLinesForInterop` → `ResolveSalvageBankLines` (WCID rule beats `GetMaterialEffect` name fallback) |

## Full `SalvageRules` matrix (`Settings.json`)

| Name | Wcids | EffectKind | Fixed / roll | BaneSpellIds | `ApplyEffect` | `GetEffectDescription` (success) |
|------|-------|------------|--------------|--------------|---------------|-----------------------------------|
| Iron | 20986 | Damage | 3 | — | `Damage += 3` | `Damage +3` |
| Steel | 20993, 29581 | ArmorLevel | 60 | 4407, 6095 | `ArmorLevel += 60` + **full** bane set | `Armor Level +60` |
| Granite | 20985, 29576 | DamageVariance | 60 | — | `DamageVariance *= (1 - 0.6)` (×0.4) | `Damage variance reduced (×0.4)` |
| Oak | 20989 | WeaponSpeed | 150 | — | `WeaponTime -= 150` | `Weapon speed faster by 150` |
| Armoredillo Hide | 20981 | ArmorModVsAcid | 10 | 4391, 6088 | set `ArmorModVsAcid = 2.0` + full bane | `Armor vs Acid MAXED` |
| Bronze | 20982 | ArmorModVsSlash | 10 | 4393, 6097 | set slash 2.0 + full bane | `Armor vs Slash MAXED` |
| Ceramic | 20983 | ArmorModVsFire | 10 | 4401, 6092 | set fire 2.0 + full bane | `Armor vs Fire MAXED` |
| Marble | 21061 | ArmorModVsBludgeon | 10 | 4397, 6090 | set bludgeon 2.0 + full bane | `Armor vs Bludgeon MAXED` |
| Reedshark Hide | 20991 | ArmorModVsElectric | 10 | 4409, 6099 | set electric 2.0 + full bane | `Armor vs Electric MAXED` |
| Wool | 20995 | ArmorModVsCold | 10 | 4403, 6093 | set cold 2.0 + full bane | `Armor vs Cold MAXED` |
| Alabaster | 20980 | ArmorModVsPierce | 10 | 4412, 6096 | set pierce 2.0 + full bane | `Armor vs Pierce MAXED` |
| Brass | 21042 | WeaponDefense | 3 | — | `WeaponDefense += 0.03` | `Weapon defense +3%` |
| Mahogany | 20988 | DamageMod | 12 | — | `DamageMod += 0.12` | `Damage modifier +12%` |
| Velvet | 20994 | WeaponOffense | 3 | — | `WeaponOffense += 0.03` | `Weapon offense +3%` |
| Green Garnet | 21050 | ElementalDamageMod | 3 | — | `ElementalDamageMod += 0.03` | `Elemental damage +3%` |

`Settings.cs` default `SalvageRules` is an empty list; shipped behavior follows `Settings.json`.

### Bane routing (`PatchClass.PreTryMutate`)

- `ArmorLevel` or `ArmorModVs*` → `ApplyFullBaneSpells` (all IDs at once).
- Else → `ApplyBaneSpell` (incremental tier swap).
- When `MergeSalvageTinkerEffectIntoBroadcast` and `ShowPlayerSalvageMessage`, both helpers get `quietPlayerBaneMessage: true` so the broadcast suffix carries `Bane xN` instead of separate `[Overtinked] Bane…` craft lines.

## Six priority materials (detail)

| Material | WCIDs | Math note | Craft / bank text |
|----------|-------|-----------|-------------------|
| Iron | 20986 | +3 flat damage | Craft/bank: `Damage +3`. `GetMaterialEffect("iron")` = `+3 Damage` (name-only fallback). |
| Steel | 20993, 29581 | +60 AL + banes | Craft/bank: `Armor Level +60`. Name fallback `+60 AL`. |
| Granite | 20985, 29576 | ×(1 − p/100) on variance | Craft/bank now include **×0.4** for fixed 60 (matches `ApplyEffect`). |
| Brass | 21042 | +3% of unit = +0.03 | `Weapon defense +3%`. |
| Mahogany | 20988 | +12% → +0.12 | `Damage modifier +12%`. |
| Velvet | 20994 | +3% → +0.03 | `Weapon offense +3%`. |

## `HandleRecipe` / client refresh (fix applied)

Vanilla `RecipeManager.TryMutate` ends with `modified.Add(target.Guid.Full)` so `HandleRecipe` can call `UpdateObj` → `GameMessageUpdateObject`. When Overtinked’s prefix returns early with `__result = true`, that add never ran, so **examine/HUD could stay stale** until another refresh.

**Fix:** `PatchClass.MarkTargetModifiedForCraftUpdate` adds `target.Guid.Full` (full `ulong`) to `modified` on every successful short-circuit (new imbues, numeric salvage rules, buffed jewelry, standard imbue path). The Harmony patch targets `RecipeManager.TryMutate(..., HashSet<ulong> modified)` (ACRealms / current ACE). Using `HashSet<uint>` or casting `Guid.Full` to `uint` breaks `HandleRecipe`’s `modified.Contains(target.Guid.Full)` so **no `UpdateObj` / tooltips stay stale**.

## Other Overtinked features (checklist)

- [x] **Hemorrhage / Cleaving / Nether** — `TryApplyNewImbue`; Hemorrhage weapon tint / `CalculateObjDesc` in `HemorrhageWeaponVisual`.
- [x] **Buffed jewelry** — `TryApplyBuffedImbue` + `BuffedImbueRule` / secondary store.
- [x] **Failure redesign** — `HandleRecipe` patches elsewhere in `PatchClass` (numeric opposite / imbue workmanship); not part of display matrix above.

## `PreTryMutate` → `modified` audit (backpack / `UpdateObj`)

Every `PreTryMutate` exit with `__result = true` and `return false` (Harmony short-circuit) calls `MarkTargetModifiedForCraftUpdate(modified, target)` before returning:

1. **New imbues** — `TryApplyNewImbue` (Hemorrhage, Cleaving, Nether, Jewelry cleave on jewelry).
2. **Numeric `SalvageRules`** — only when `ApplyEffect` succeeds (`__result = true`); failed apply falls through to vanilla.
3. **Buffed jewelry** — `TryApplyBuffedImbue`.
4. **Standard imbue by `dataId`** — after `target.ImbuedEffect` / rend damage type updates (including when `HandleTinkerLog` is skipped for non-`incItemTinkered` dataIds); still calls `MarkTargetModifiedForCraftUpdate`.

`MarkTargetModifiedForCraftUpdate` now logs **Error** if `modified` is null (vanilla `CreateDestroyItems` can return null when Success/Fail WCID weenie is missing — then `HandleRecipe` skips all `UpdateObj`).

**Failure bypass:** `PreCreateDestroyItemsTinkerFailure` skips vanilla `CreateDestroyItems` on tinkering miss and applies redesign chaos/workmanship; `SyncTinkerTargetAfterOvertinkedFailure` mirrors `UpdateObj` because the vanilla fail path is not taken.

## Craft inventory sync helpers (`CraftInventorySync`, `Settings`)

- **`DebugCraftInventorySync`** — logs `[CraftInventorySync]` per tinkering `CreateDestroyItems`: `modified` null/count, `targetInModified`, wield slot, `FindObject(MyInventory)`. Operator: grep `ACE_Log.txt` for `MoveItemToFirstContainerSlot` errors and `[CraftInventorySync]`.
- **Automatic safety net** — if tinkering **succeeds** but `target` is **not** in `modified`, log **Warn** and call `CraftInventorySync.MirrorRecipeManagerUpdateObj` once (same steps as `RecipeManager.UpdateObj` inventory half).
- **`MirrorRecipeUpdateObjAfterOvertinkedShortCircuit`** (default **false**) — after successful tinkering `HandleRecipe`, runs the same mirror again when Overtinked short-circuited `TryMutate`; use only if client/server pack order is still wrong after vanilla `UpdateObj` (duplicate `GameMessageUpdateObject` / slot move).
- [x] **Defense appraise** — `DefenseSalvageAppraise` + `DefenseImbueBonus` settings.
- [x] **LLL bank** — `GetSalvageBankLinesForInterop` (separate mod).

## In-game spot-check (operator)

1. Tinker each priority salvage on a valid target; confirm **immediate** examine shows new stats (no relog).
2. With `ShowPlayerSalvageMessage` true, confirm craft line matches table.
3. `/bank salvage` lines for deposited materials match `ResolveSalvageBankLines` (rule WCID path).
