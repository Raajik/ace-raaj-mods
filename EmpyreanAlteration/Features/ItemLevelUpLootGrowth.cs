namespace EmpyreanAlteration.Features;

// Loot item level-up behavior for EmpyreanAlteration was moved to Overtinked. ItemLevelUpGrowth remains in
// ItemLevelUpGrowth.cs. This file intentionally defines no Harmony patches: a no-op prefix on the same
// PatchCategory still ran as a second OnItemLevelUp hook and could interact badly with Overtinked (order,
// duplicate work, odd item state reflected in UI/tooltips).
