// Loot mutation (pre-awaken, pre-imbue) moved to EmpyreanAlteration Mutators/LootGrowthItem.cs
// to eliminate double-processing conflicts with EA's PostCreateAndMutateWcid pipeline.
// LivingEquipment retains: Coalesced Mana use-on-target awakening, vendor injection, auto-awaken on pickup.