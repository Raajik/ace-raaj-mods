# Overtinked

Extends tinkering limits and adds configurable salvage behavior: per-salvage rules, new imbues (Hemorrhage, Cleaving, Nether Rending), buffed jewelry, and failure options (opposite effect or +1 Workmanship).

## Push live (mods + world DB)

**`Settings.json` + DLL** control server logic (recipes, `BaseRecipeId`, combat, appraise postfixes). They **do not** rewrite stock weenie templates on the MySQL host.

For **Windblown / `wb_ace_world`**, after copying `Overtinked` to `C:\ACE-WB\Mods\`:

1. Run the same **`Content/SQL/`** scripts against **`wb_ace_world`** as you already ran on **`ace_world`** for custom imbue salvages (at minimum: `SalvagedYellowGarnet-Hemorrhage-weapon-style.sql`, `SalvageCleavingNether-tinker-bags.sql`, `SalvageCleavingNether-longdesc.sql`). Without this, clients often still show **unusable salvage** (`ItemUseable` / missing `TargetType`) even when tinkering works server-side.
2. **Restart** the live ACE process so weenie templates reload from the DB.
3. Optional: scoped **`mysqldump`** into `WindblownContent/sql-backups/YYYY-MM-DD/` before applying (see repo `AGENTS.md` §8.7).

---

## EmpyreanAlteration and item leveling

**Overtinked** does **not** run quest inventory hooks, item XP, loot growth, or first-add workmanship. Apply salvage and imbues only through **RecipeManager** (tinkering).

**EmpyreanAlteration** owns **quest inventory item XP**, **custom item XP curves**, **catch-up growth**, **`OnItemLevelUp` growth**, **loot-time** XP via **`GrowthItem`** / **`LootGrowthItem`**, and optional **quest workmanship** on first add (fake bool **40107**). Tune those in **`EmpyreanAlteration/Settings.json`**.

---

## What the mod changes

| Area | Change |
|------|--------|
| **Tinker limits** | `NumTimesTinkered` is checked against `MaxTries` (default 50). `TinkeringDifficulty` is extended so each extra tinker tier has a difficulty step. |
| **Imbue limits** | `ImbuedEffect` is checked against `MaxImbueEffects` (default 5) via bit count. |
| **Numeric salvage** | Per-salvage rules: random range (e.g. Iron +1–5 damage) or fixed value. Use both WCIDs in `Wcids` for quest-reward pairs. |
| **Failed numeric tinker** | If `EnableFailureRedesign` is on: apply the *opposite* effect instead of destroying the item (only for salvages in `SalvageRules`). |
| **Failed imbue tinker** | If `EnableDefaultImbueFailureWorkmanship` is on: add +1 Workmanship to the item (cap 10) instead of destroying it. At cap, failure does nothing. Applies to standard imbues and custom (Hemorrhage/Cleaving/Nether). |
| **New imbues** | Salvaged Yellow Garnet (default WCID **21087**) → **Hemorrhage**, Tiger Eye → **Cleaving**, Onyx → **Nether Rending**. Hemorrhage adds stacking flat Health DoT (staggered 1-damage hits) to the primary target and to other creatures within **AoERadiusMeters** of the primary; uses Crippling Blow icon underlay and Fire-only **UiEffects** via `HemorrhageWeaponVisual` — **does not remove** existing **`ImbuedEffect` rend bits** (e.g. Bludgeon Rending); Nether still replaces rends then re-applies Nether. Cleaving splashes a fraction of the primary hit; Nether Rending adds extra Nether damage on the primary target. Stock ACE never registers yellow garnet in `GetNewRecipe`; Overtinked resolves **`HemorrhageImbue.BaseRecipeId`** (default **4452**) when salvage WCID + valid melee/missile weapon would otherwise get “cannot be used”. |
| **Buffed jewelry** | `BuffedImbueRules` replace default imbue strength (e.g. Hematite +25–50 HP, Malachite +25–50 Stam, Lavender Jade +25–50 Mana) and set the matching `ImbuedEffectTypeName`. |

---

## Settings overview

Edit `Settings.json` in the mod folder (e.g. `C:\ACE\Mods\Overtinked\`).

### Global toggles

| Setting | Default | Description |
|---------|---------|-------------|
| `MaxTries` | 50 | Max tinkers allowed per item. |
| `Scale` | 0.5 | Difficulty step between each extra tinker tier. |
| `MaxImbueEffects` | 5 | Max imbue effects per item (by bit count). |
| `EnableRecipeManagerPatch` | true | Use Overtinked’s craft flow (required for full tinkering + Hemorrhage combat). |
| `EnableFailureRedesign` | true | Failed *numeric* tinkers apply opposite effect instead of destroying the item. |
| `EnableDefaultImbueFailureWorkmanship` | true | Failed *imbue* tinkers add +1 Workmanship (cap 10) instead of destroying the item. |
| `ShowPlayerSalvageMessage` | true | Send a short chat message when a custom salvage/imbue is applied. |
| `MergeSalvageTinkerEffectIntoBroadcast` | true | When true **and** `ShowPlayerSalvageMessage`, append the numeric salvage / buffed-jewelry effect (and bane count) to the **single** local tinkering broadcast from `RecipeManager.BroadcastTinkering` instead of extra `Your item:` / `[Overtinked] Bane` lines. |
| `DefenseImbueBonus` | 0 | Multiplier on vanilla defense-imbue skill add (imbued-piece count). 0 = vanilla (+1 per piece). 5 = +5 per piece (Peridot / Yellow Topaz / Zircon → Melee / Missile / Magic Defense). |
| `OverrideDefenseSalvageLongDescInAppraise` | true | When true and `DefenseImbueBonus` > 0, examine `LongDesc` for defense salvage WCIDs uses built-in or optional format strings (no SQL to change displayed +N). |
| `OverrideNumericSalvageBagLongDescInAppraise` | true | When true, examine `LongDesc` for bags in `SalvageRules` (`ItemType.TinkeringMaterial`) follows live JSON: `BankDescriptionFormat` when it formats, otherwise rule name + `GetEffectDescription` + optional bane sentence. Defense bags still win when defense override applies. |
| `DefenseSalvageLongDescSalvagedFormat` / `DefenseSalvageLongDescFoolproofFormat` | null | Optional `string.Format` patterns; `{0}` = `DefenseImbueBonus`, `{1}` = Melee \| Missile \| Magic. Empty uses built-in English. |
| `DebugCraftInventorySync` | false | Log `[CraftInventorySync]` after each tinkering `CreateDestroyItems` (modified set, target in set, wield, in MyInventory). Grep `ACE_Log.txt` for `MoveItemToFirstContainerSlot` / `[CraftInventorySync]`. |
| `MirrorRecipeUpdateObjAfterOvertinkedShortCircuit` | false | Second `UpdateObj`-style broadcast + `MoveItemToFirstContainerSlot` after successful tinkering when Overtinked short-circuited `TryMutate`. Enable only if pack slot still wrong after vanilla `UpdateObj` (duplicate packets). |

**Troubleshooting:** `RecipeManager.GetRecipeChance` returns **0..1**, not percent. If imbues “always fail” or chaos never matches real odds, ensure no old fork compared `* 100` to that value. **`BetterSupportSkills` `/chaostinker`** forces **0** success for the *vanilla* `HandleRecipe` roll when enabled; turn it off for normal imbue odds. Failure-redesign paths skip vanilla `UpdateObj`; Overtinked re-broadcasts after chaos so pack order refreshes. After **failure-redesign chaos**, `ChaosAppearance` sets **`IconUnderlayId`** (from `RecipeManager.IconUnderlay`) and **`UiEffects`** (rend / defense / slayer / mana glow) then `CalculateObjDesc` so icons match new properties at a glance.

### Salvage rules (`SalvageRules`)

Per-salvage numeric effects. Each entry:

- **Wcids** — One or more WCIDs (include both for quest-reward pairs, e.g. Steel `[20993, 29581]`).
- **Name** — Label for logs and for **/bank material-name hints** (normalize + case-insensitive match, e.g. `Steel` matches bank string `Salvaged Steel`).
- **EffectKind** — e.g. `Damage`, `DamageVariance`, `WeaponSpeed`, `ArmorLevel`, `DamageMod`, `WeaponDefense`, `WeaponOffense`, `ArmorModVsAcid`, `ArmorModVsSlash`, etc.
- **MinValue**, **MaxValue** — Random range (inclusive). Ignored if `FixedValue` is set.
- **FixedValue** — If set, use this value instead of rolling. **Example:** set Steel `FixedValue` to `100` to add 100 armor level on the next tinker; server applies it to `ArmorLevel` and sends update packets — **no SQL**.
- **Enabled** — If false, rule is skipped.
- **EffectSummaryFormat** (optional) — Overrides the craft chat line for this rule. `string.Format` invariant: `{0}` magnitude, `{1}` signed value, `{2}` `Name`, `{3}` `EffectKind`.
- **BankEffectFormat** (optional) — Short `/bank` salvage line (LLL); same placeholders. If empty, `EffectSummaryFormat` or built-in summary is used.
- **BankDescriptionFormat** (optional) — Long `/bank` description; same placeholders.

**Single source of truth:** tuning numbers lives in JSON only. Legacy `/bank` hints for materials **not** listed in `SalvageRules` (e.g. Gold, Linen, Moonstone, Pine) still use a small built-in table until you add rules for them.

### Defense imbue bonus

Vanilla adds the **count** of equipped pieces with that defense imbue directly to effective defense skill (+1 per piece). If `DefenseImbueBonus` > 0, that count is **multiplied** (e.g. 5 → two imbued pieces add +10). Examine text for salvaged and foolproof Peridot / Topaz / Zircon can follow the same number via `OverrideDefenseSalvageLongDescInAppraise` and optional format strings in `Settings.json`.

### New imbues

- **HemorrhageImbue** — `SalvageWcids` (default `[21087]` Salvaged Yellow Garnet), **`BaseRecipeId`** (default `4452`, template tinkering recipe for `GetRecipe` when vanilla returns null), `Enabled`, **`StacksPerApplication`**, **`MaxStacks`**, **`AoERadiusMeters`**, **`TickIntervalSeconds`**, **`DamagePerStackPerTick`**, **`StaggerBetweenHitsSeconds`**. Legacy JSON key **`BleedImbue`** still deserializes and merges if `HemorrhageImbue` has no salvage WCIDs.
- **CleavingImbue** — `SalvageWcids`, `Enabled`, plus **`SplashRadiusMeters`**, **`SplashDamageFraction`** (of primary final damage per extra target), **`MaxSplashTargets`**.
- **NetherRendingImbue** — `SalvageWcids`, `Enabled`, plus **`NetherDamageFraction`** (of primary final damage), **`MaxNetherBonusDamage`** (0 = no cap).

### Buffed jewelry (`BuffedImbueRules`)

Each entry: **Wcids**, **Name**, **PrimaryStat** (`MaxHealth` / `MaxStamina` / `MaxMana`), **PrimaryMin**, **PrimaryMax**, **ImbuedEffectTypeName** (e.g. `WarriorVitality`), **Enabled**. Optional **SecondaryStat** / **SecondaryValue**: set **SecondaryStat** to `DamageRatingFromStamina` or `DamageRatingFromMana` and **SecondaryValue** to the percent (default **5** for 5%); this value is editable per rule so servers can tweak it (e.g. `3` or `10`). The result increases the player’s Damage Rating by that percent of their **MaxStamina** or **MaxMana** while the item is equipped (e.g. 5% of 400 stamina = +20 damage rating).

---

## Files

- **[docs/Salvage-Tinker-Display-Audit.md](docs/Salvage-Tinker-Display-Audit.md)** — SalvageRules WCID matrix, six-material notes, bank/craft surfaces, `modified`/UpdateObject behavior.
- **Mod.cs** — Entry; registers patch class.
- **PatchClass.cs** — Difficulty list, `GetRecipe` (Hemorrhage salvage + weapon gate → `BaseRecipeId`), `VerifyRequirements`, `TryMutate` (salvage rules, imbues, buffed jewelry), `HandleRecipe` (failure redesign, imbue → Workmanship), craft inventory sync hooks (`CreateDestroyItems` / `HandleRecipe` postfixes).
- **CraftInventorySync.cs** — Mirrors `RecipeManager.UpdateObj` inventory half (`GameMessageUpdateObject` + `MoveItemToFirstContainerSlot`) for diagnostics / optional second sync.
- **RecipeManagerEx.cs** — Craft flow (`UseObjectOnTarget` when `EnableRecipeManagerPatch` is true).
- **HemorrhageImbueCombat.cs** — Hemorrhage stacks + AoE stacks + staggered DoT on hit (uses `HemorrhageImbue` config).
- **HemorrhageWeaponVisual.cs** — Fire Opal / Crippling Blow family: CB underlay (`0x06003357`) + **`UiEffects.Fire`** only (clears all other glow bits). **`HemorrhageWeaponVisualReassert.cs`** — postfixes `WorldObject.SetProperty` for `UiEffects` and `IconUnderlay` so other mods (e.g. EA `RefreshImbueUiEffects`) cannot override Hemorrhage look.
- **CustomImbueAppraise.cs** — `AppraiseInfo.BuildProfile` postfix (last): prepend Hemorrhage/Cleaving/Nether summary to appraisal **`LongDesc`** (identify text); retail imbue-name list is `ImbuedEffect`-only and cannot show custom names server-side.
- **HemorrhageAoE.cs** — Resolves Hemorrhage splash radius from `AoERadiusYards` (or legacy `AoERadiusMeters` when yards is 0).
- **CleavingNetherImbueCombat.cs** — Cleaving splash + Nether Rending bonus on `Player.DamageTarget`.
- **ImbueSalvageWcids.cs** — Standard imbue WCID list used for failure → Workmanship.
- **SalvageRule.cs**, **SalvageEffectApplier.cs** — Salvage rule model and effect application.
- **BuffedImbueRule.cs**, **BuffedJewelrySecondaryStore.cs**, **NewImbueConfig.cs**, **OvertinkedImbueFlags.cs** — Config and storage for buffed imbues, secondary (e.g. Damage Rating from stam/mana), and Hemorrhage/Cleaving/Nether.
- **ComparisonHelpers.cs** — Requirement comparison helpers.
- **Settings.cs** — Config model.

Hemorrhage, Cleaving, and Nether Rending are applied on the weapon (Hemorrhage/Cleaving/Nether flags in **`PropertyInt` 40133** on the item biota via `OvertinkedImbueStore`; Nether also sets `ImbuedEffect`), and handled in combat by `HemorrhageImbueCombat` and `CleavingNetherImbueCombat` (same Harmony category as recipe/tinkering patches). **`CustomImbueAppraise`** replaces appraisal **`LongDesc`** with **`Name` + newline + custom imbue stats** (drops weenie template text) and removes **`AppraisalLongDescDecoration`** so the client does not splice workmanship/material into the imbue line. Salvage bags may still carry fuller **`LongDesc`** in SQL. Hemorrhage AoE radius: **`AoERadiusYards`** (default **10**, converted with 0.9144 m/yd); if `AoERadiusYards` is **0**, **`AoERadiusMeters`** is used instead.

### World database (custom imbue salvage bags)

- **Hemorrhage** (Salvaged Yellow Garnet **21087**): `SalvagedYellowGarnet-Hemorrhage-weapon-style.sql` — **weapon tinkering** bag (`PaletteTemplate` **14**, `ItemUseable` **524296**, `TargetType` **33025**); icon overlay unchanged. Rollback: `SalvagedYellowGarnet-Hemorrhage-weapon-style-rollback.sql`.
- **Cleaving** (Tiger Eye **21081**) and **Nether Rending** (Onyx **21064**): `SalvageCleavingNether-longdesc.sql` (examine text) and `SalvageCleavingNether-tinker-bags.sql` — Cleaving uses **magic item tinkering** presentation (palette **2**, `ItemUseable` **524296**, `TargetType` **32768**, same pattern as Salvaged Green Garnet); Nether uses **weapon tinkering** (palette **14**, `ItemUseable` **524296**, `TargetType` **33025**). Rollbacks: `SalvageCleavingNether-longdesc-rollback.sql`, `SalvageCleavingNether-tinker-bags-rollback.sql`.

Restart ACE after weenie template edits. If Hemorrhage craft still fails requirements or skill roll, point **`BaseRecipeId`** at another tinkering recipe present in your `recipe` table (or add a dedicated recipe and set the id here).
