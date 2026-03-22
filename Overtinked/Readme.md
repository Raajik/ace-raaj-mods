# Overtinked

Extends tinkering limits and adds configurable salvage behavior: per-salvage rules, new imbues (Bleed, Cleaving, Nether Rending), buffed jewelry, and failure options (opposite effect or +1 Workmanship).

---

## EmpyreanAlteration and loot item XP

When **`EnableItemLevelingHooks`** is **true**, **Overtinked** owns **quest-time** item XP / max-level initialization (via `InitializeQuestWorldObject` on successful `Container.TryAddToInventory`, resolving the root `Player` so nested packs and loot-from-corpse behave like direct pack adds), **custom item XP curves**, and **`OnItemLevelUp` growth**. It does **not** patch `LootGenerationFactory.CreateAndMutateWcid` for item XP.

**Loot-time** item XP and optional pre-imbue for drops come from **EmpyreanAlteration**’s **`LootGrowthItem`** mutator (`EnableLootItemLeveling`, `EnableLootItemPreImbue` in EA `Settings.json`). Items tagged with **`FakeBool.GrowthItem`** are skipped by Overtinked’s quest init so the two mods do not fight over the same object.

With **`EnableItemLevelingHooks` false**, Overtinked does not run those hooks — salvage/tinkering only.

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
| `EnableItemLevelingHooks` | false | **false** = salvage/tinkering only (no loot XP init, no quest inventory XP init, no custom item XP curve patches, no `OnItemLevelUp` growth). **true** = full item leveling (repo `Settings.json` ships **true**). |
| `EnableFailureRedesign` | true | Failed *numeric* tinkers apply opposite effect instead of destroying the item. |
| `EnableDefaultImbueFailureWorkmanship` | true | Failed *imbue* tinkers add +1 Workmanship (cap 10) instead of destroying the item. |
| `ShowPlayerSalvageMessage` | true | Send a short chat message when a custom salvage/imbue is applied. |

### Item XP curve (`ItemXpCurveMode`)

| Mode | Behavior |
|------|----------|
| `Geometric` (default) | XP to reach level 1 from 0 = `ItemXpGeometricFirstLevelTotal` (e.g. 25 000). Further levels use cumulative thresholds from `ItemXpGeometricMultiplierPerStep` (e.g. 1.25) via `ExperienceSystem` patches in `PatchClass.ItemXpCurve.cs`. `ItemBaseXp` stays a dummy (`ItemXpDummyBaseXp`); the curve does not use ACE’s stock geometric `ItemBaseXp` math. |
| `CharacterTable` | Portal character XP table + `ItemXpVirtualCharacterLevel` / `ItemXpCharacterCurveMultiplier`. |
| `AceGeometric` | Stock ACE scaling; `ConfigureItemXp` sets `ItemBaseXp` from `QuestItemXpBase` / tier scale. |

### Item max level (quest init in Overtinked)

Overtinked only rolls max level for **quest-given** items (`InitializeQuestItemXp` → `RollQuestItemMaxLevel`). Loot drop caps are configured in **EmpyreanAlteration** when using `LootGrowthItem`.

| Setting | Used for |
|---------|----------|
| `UseTierScaledItemMaxLevel` | When **true** (default), max level = `QuestItemMaxLevelTier × ItemMaxLevelsPerTreasureTier`, clamped by `QuestItemMaxLevelMin` / `QuestItemMaxLevelMax`. |
| `ItemMaxLevelsPerTreasureTier` | Default **5** (e.g. tier 4 ⇒ 20 before quest ceiling). |
| `QuestItemMaxLevelMin` / `QuestItemMaxLevelMax` | Floor and ceiling for tier-scaled or random quest rolls. |
| `LootItemMaxLevelTierBias` | Skews random quest rolls toward the top of the min..max range (name is historical). |
| `QuestItemMaxLevelTier` | Tier input for the tier-scaled quest formula when not using fixed global cap. |
| `UseFixedGlobalItemMaxLevel` + `GlobalItemMaxLevel` | If enabled and `GlobalItemMaxLevel` > 0, overrides tier/rolls with a fixed cap. |

**Deploy check:** If quest reward caps look wrong, confirm `UseTierScaledItemMaxLevel`, `ItemMaxLevelsPerTreasureTier`, and `QuestItemMaxLevelMax`. For loot drops, tune **EmpyreanAlteration** (`LootItemMaxLevelMin` / `LootItemMaxLevelMax` on the mutator settings). For odd level-up behavior, confirm `ItemXpCurveMode` and geometric fields.

### Item XP init eligibility (quest + loot hooks)

Overtinked initializes item XP / quest tagging on the same **equippable shape**: melee, missile, and caster weapons; **all** `Clothing`; or any object with non-zero `ValidLocations`.

**Skipped (no init):** items with `HasItemLevel` (stock rare / item-level gear), `FakeBool.GrowthItem` (other mod growth), **cloaks** (`ValidLocations` includes `EquipMask.Cloak`, or name contains `cloak`), and anything that does not match the equippable shape above. Stub `ItemBaseXp` / `ItemMaxLevel` on weenies does **not** block quest init (only `HasItemLevel` does).

Hooks: postfix on **`Container.TryAddToInventory(WorldObject, out Container, int, bool, bool)`** (covers `Player`/`TryCreateInInventoryWithNetworking`, nested side packs, and loot moves into any pack whose chain ends at a `Player`). `ContainerRootPlayer` walks `WorldObject.Container` to find that player. If the method is missing on a fork, the patch is skipped. On success it calls **`InitializeQuestWorldObject`** (quest workmanship, effects, and **`InitializeQuestItemXp`** when `EnableQuestItemLeveling` is on). There is **no** loot-factory postfix in Overtinked for item XP; use **EmpyreanAlteration** for that.

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
- **OvertinkedItemLevelingHarmony.cs** — Item leveling category: `Container.TryAddToInventory` quest init, XP curve, `OnItemLevelUp`.
- **ImbueSalvageWcids.cs** — Standard imbue WCID list used for failure → Workmanship.
- **SalvageRule.cs**, **SalvageEffectApplier.cs** — Salvage rule model and effect application.
- **BuffedImbueRule.cs**, **BuffedJewelrySecondaryStore.cs**, **NewImbueConfig.cs**, **OvertinkedImbueFlags.cs** — Config and storage for buffed imbues, secondary (e.g. Damage Rating from stam/mana), and Bleed/Cleaving/Nether.
- **ComparisonHelpers.cs** — Requirement comparison helpers.
- **Settings.cs** — Config model.

Cleaving and Nether Rending are applied on the weapon, stored in `OvertinkedImbueStore`, and handled in combat by `CleavingNetherImbueCombat` (same Harmony category as recipe/tinkering patches).
