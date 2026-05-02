# Findings: LivingEquipment → EmpyreanAlteration Absorption

## Source Files Read

### LivingEquipment (to be deleted)
- `PatchClass.cs` — `AcademyAutoAwakenHook`, `LivingEquipmentUseOnTarget`, `LivingItemXpCurveContextPatches`, `LivingEquipmentXpCurve`
- `ItemAwakener.cs` — `TryAwakenOrUpgrade`, `DoAwaken`, `DoUpgrade`, `ApplyAwakenedName`, `TryAutoAwaken`, `IsEquippableGear`, `IsCoalescedMana`
- `Settings.cs` — Coalesced Mana WCIDs, max levels, XP profiles, profile weights, naming, auto-awaken WCIDs, ArcaneLore difficulty
- `LivingEquipmentProperties.cs` — FakeBool 40130, FakeInt 40131/40132, FakeString 11033/11034
- `LootMutator.cs` — stub comment only

### EmpyreanAlteration (target)
- `PatchClass.cs` — `RefreshAll()` with feature toggles
- `Settings.cs` / `Settings.QuestItemGrowth.cs` — Already has `LootItemPreAwaken*` settings mirroring LE's loot settings
- `Mutators/LootGrowthItem.cs` — Pre-awaken/pre-imbue loot logic already absorbed. Uses hardcoded `(PropertyBool)40130` etc.
- `QuestItemGrowthHarmony.cs` — Patches `ExperienceSystem.ItemTotalXPToLevel` / `ItemLevelToTotalXP`. Uses `ItemXpCurveContext`.
- `ItemXpCurveContext.cs` — ThreadStatic stack, identical to LE's `LivingItemXpContext`.
- `ChaosTriggeredGrowth.cs` — References `ExperienceSystem.ItemLevelToTotalXP`.

### Cross-Mod References
- `BetterLootControl/LootRoller.cs:194-238` — `TryApplyEmpyreanAlteration` with LE fallback. Must remove fallback.
- `BetterLootControl/LootModels.cs:20` — Comment references LivingEquipment.
- `QOL/PatchClass.cs:88` — Comment: "runs before LivingEquipment".
- `Swarmed/Features/SpecialCreatureLoot.cs` — Comment: "auto-imbued/awakened by LivingEquipment if enabled".
- `Swarmed/Settings.cs:234,392,396` — Doc comments reference LivingEquipment.

## Overlap Analysis

| Feature | LE | EA | Action |
|---------|----|----|--------|
| Pre-awaken loot drops | ✓ | ✓ (absorbed) | Delete LE, keep EA |
| Pre-imbue loot drops | ✓ | ✓ (absorbed) | Delete LE, keep EA |
| Wield requirement cap | — | ✓ (EA) | Keep EA |
| Manual Coalesced Mana awakening | ✓ | — | Migrate to EA |
| Auto-awaken on inventory add | ✓ | — | Migrate to EA |
| Custom XP curves (profile-based) | ✓ | — | Integrate into EA's existing ExperienceSystem patches |
| XP curve context stack | ✓ | ✓ (identical) | Keep EA's, delete LE's |
| Property constants | ✓ | — (hardcoded) | Migrate to named constants in EA |

## Settings Reuse Matrix

| LE Setting | EA Equivalent | Decision |
|------------|---------------|----------|
| `XpProfiles` | `LootItemPreAwakenXpProfiles` | Reuse EA |
| `LesserMaxLevel` etc. | `LootItemPreAwakenMaxLevels` | Reuse EA |
| `LesserProfileWeights` etc. | `LootItemPreAwakenProfileWeights` | Reuse EA |
| `AwakenedPrefix` | `LootItemPreAwakenPrefix` = "Living" | **Add `ManualAwakenPrefix` = "Awakened"** — player-driven vs loot-driven names differ intentionally |
| `AwakenedItemUiEffects` | `LootItemPreAwakenUiEffects` | Reuse EA |
| `PreAwakenedChance` | `LootItemPreAwakenChance` | Reuse EA |
| `PreAwakenedTierWeights` | `LootItemPreAwakenTierWeights` | EA already has [1.0, 0.3, 0.01]; keep EA values |
| `LesserCoalescedManaWcid` | — | **Add to EA** |
| `AutoAwakenTier1Wcids` | — | **Add to EA** |
| `ArcaneLoreDifficulty` | — | **Add to EA** |

## Risk: ExperienceSystem Patch Interaction

EA's `QuestItemGrowthHarmony.PrefixItemTotalXPToLevel` returns `false` for ALL `ScalesWithLevel` (overrides ACE completely with safe AceGeometric). LE's `LivingEquipmentXpCurve` returns `false` for awakened items with `ProfileName`.

After migration: add awakened-item check at the TOP of EA's prefix, before Geometric/CharacterTable checks. If awakened → apply profile curve and return false. Otherwise fall through to existing EA logic.

