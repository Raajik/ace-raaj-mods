# Overtinked

Extends tinkering limits and adds configurable salvage behavior: per-salvage rules, new imbues (Bleed, Cleaving, Nether Rending), buffed jewelry, and failure options (opposite effect or +1 Workmanship).

---

## EmpyreanAlteration and item leveling

**Overtinked** is **tinkering-only** for quest items: workmanship, initial tinkering-style rolls, and salvage/recipe behavior. It sets **`QuestItemInitializedBool` (40101)** after that init so other mods can run afterward.

**EmpyreanAlteration** owns **quest inventory item XP** (fake properties 40100 / 40102 / 40106 / 40150), **custom item XP curves**, **catch-up growth**, **`OnItemLevelUp` growth** (when **`QuestGrowthItemBool`** is true), and **loot-time** XP via **`GrowthItem`** / **`LootGrowthItem`** mutators. Tune quest leveling in **`EmpyreanAlteration/Settings.json`** (`EnableQuestItemLeveling`, `QuestGrowthSalvageRules`, `SpellGrowth`, curve fields). Items with **`FakeBool.GrowthItem`** use EA loot mutators only; EA’s quest growth path is gated on **`QuestGrowthItemBool`** so the two paths do not fight.

---

## What the mod changes

| Area | Change |
|------|--------|
| **Tinker limits** | `NumTimesTinkered` is checked against `MaxTries` (default 50). `TinkeringDifficulty` is extended so each extra tinker tier has a difficulty step. |
| **Imbue limits** | `ImbuedEffect` is checked against `MaxImbueEffects` (default 5) via bit count. |
| **Numeric salvage** | Per-salvage rules: random range (e.g. Iron +1–5 damage) or fixed value. Use both WCIDs in `Wcids` for quest-reward pairs. |
| **Failed numeric tinker** | If `EnableFailureRedesign` is on: apply the *opposite* effect instead of destroying the item (only for salvages in `SalvageRules`). |
| **Failed imbue tinker** | If `EnableDefaultImbueFailureWorkmanship` is on: add +1 Workmanship to the item (cap 10) instead of destroying it. At cap, failure does nothing. Applies to standard imbues and custom (Bleed/Cleaving/Nether). |
| **New imbues** | Serpentine → **Bleed**, Tiger Eye → **Cleaving**, Onyx → **Nether Rending**. Applied when using that salvage on a weapon; Bleed has in-combat stacking DoT; Cleaving splashes a fraction of the primary hit to nearby targets; Nether Rending adds extra Nether damage on the primary target. |
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
| `EnableRecipeManagerPatch` | true | Use Overtinked’s craft flow (required for full tinkering + Bleed combat). |
| `EnableFailureRedesign` | true | Failed *numeric* tinkers apply opposite effect instead of destroying the item. |
| `EnableDefaultImbueFailureWorkmanship` | true | Failed *imbue* tinkers add +1 Workmanship (cap 10) instead of destroying the item. |
| `ShowPlayerSalvageMessage` | true | Send a short chat message when a custom salvage/imbue is applied. |
| `EnableQuestItemInventoryInit` | **false** | When **true**, postfixes **`Container.TryAddToInventory`** and runs optional workmanship + initial perks on first pack add. Default **false** so Overtinked only affects **manual tinkering** (`RecipeManager`). Item XP / leveling: **EmpyreanAlteration**. |

### Quest items (optional inventory hook)

If **`EnableQuestItemInventoryInit`** is **true**, **`OvertinkedQuestInventoryHarmony`** runs **`InitializeQuestWorldObject`**: workmanship, optional initial effects (`QuestItemEffects`), and sets **`QuestItemInitializedBool` (40101)**. By default this hook is **off**.

### Salvage rules (`SalvageRules`)

Per-salvage numeric effects. Each entry:

- **Wcids** — One or more WCIDs (include both for quest-reward pairs, e.g. Steel `[20993, 29581]`).
- **Name** — Optional label for logs.
- **EffectKind** — e.g. `Damage`, `DamageVariance`, `WeaponSpeed`, `ArmorLevel`, `DamageMod`, `WeaponDefense`, `WeaponOffense`, `ArmorModVsAcid`, `ArmorModVsSlash`, etc.
- **MinValue**, **MaxValue** — Random range (inclusive). Ignored if `FixedValue` is set.
- **FixedValue** — If set, use this value instead of rolling.
- **Enabled** — If false, rule is skipped.

### New imbues

- **BleedImbue** — `SalvageWcids` (e.g. `[21075]` Serpentine), `Enabled`. Combat DoT: `DamagePerTick`, `MaxStacks`, `TickIntervalSeconds` (default 1 damage, 10 stacks, 1s tick).
- **CleavingImbue** — `SalvageWcids`, `Enabled`, plus **`SplashRadiusMeters`**, **`SplashDamageFraction`** (of primary final damage per extra target), **`MaxSplashTargets`**.
- **NetherRendingImbue** — `SalvageWcids`, `Enabled`, plus **`NetherDamageFraction`** (of primary final damage), **`MaxNetherBonusDamage`** (0 = no cap).

### Buffed jewelry (`BuffedImbueRules`)

Each entry: **Wcids**, **Name**, **PrimaryStat** (`MaxHealth` / `MaxStamina` / `MaxMana`), **PrimaryMin**, **PrimaryMax**, **ImbuedEffectTypeName** (e.g. `WarriorVitality`), **Enabled**. Optional **SecondaryStat** / **SecondaryValue**: set **SecondaryStat** to `DamageRatingFromStamina` or `DamageRatingFromMana` and **SecondaryValue** to the percent (default **5** for 5%); this value is editable per rule so servers can tweak it (e.g. `3` or `10`). The result increases the player’s Damage Rating by that percent of their **MaxStamina** or **MaxMana** while the item is equipped (e.g. 5% of 400 stamina = +20 damage rating).

---

## Files

- **Mod.cs** — Entry; registers patch class.
- **PatchClass.cs** — Difficulty list, `VerifyRequirements`, `TryMutate` (salvage rules, imbues, buffed jewelry), `HandleRecipe` (failure redesign, imbue → Workmanship).
- **RecipeManagerEx.cs** — Craft flow (`UseObjectOnTarget` when `EnableRecipeManagerPatch` is true).
- **BleedImbueCombat.cs** — Bleed stacking DoT on hit (uses `BleedImbue` config).
- **CleavingNetherImbueCombat.cs** — Cleaving splash + Nether Rending bonus on `Player.DamageTarget`.
- **ContainerRootPlayer.cs** — Resolves owning `Player` from a `Container` chain for inventory init.
- **OvertinkedQuestInventoryHarmony.cs** — Harmony category for quest tinkering: postfix on `Container.TryAddToInventory` → `InitializeQuestWorldObject`.
- **ImbueSalvageWcids.cs** — Standard imbue WCID list used for failure → Workmanship.
- **SalvageRule.cs**, **SalvageEffectApplier.cs** — Salvage rule model and effect application.
- **BuffedImbueRule.cs**, **BuffedJewelrySecondaryStore.cs**, **NewImbueConfig.cs**, **OvertinkedImbueFlags.cs** — Config and storage for buffed imbues, secondary (e.g. Damage Rating from stam/mana), and Bleed/Cleaving/Nether.
- **ComparisonHelpers.cs** — Requirement comparison helpers.
- **Settings.cs** — Config model.

Cleaving and Nether Rending are applied on the weapon, stored in `OvertinkedImbueStore`, and handled in combat by `CleavingNetherImbueCombat` (same Harmony category as recipe/tinkering patches).
