using EmpyreanAlteration;

namespace EmpyreanAlteration.Mutators;

// LootGrowthItem: initializes loot-generated items with item XP and optional pre-imbues.
internal class LootGrowthItem : Mutator
{
    public override bool TryMutateLoot(HashSet<Mutation> mutations, TreasureDeath profile, TreasureRoll roll, WorldObject item)
    {
        if (!PatchClass.Settings.EnableLootItemLeveling && !PatchClass.Settings.EnableLootItemPreImbue)
            return false;

        // Only operate on first-pass, unmutated items.
        if (mutations.Count > 0)
            return false;

        // Skip items that already participate in a leveling system.
        if (item.HasItemLevel)
            return false;

        // Skip EmpyreanAlteration GrowthItem mutator items (FakeBool.GrowthItem).
        if (item.GetProperty(FakeBool.GrowthItem) == true)
            return false;

        // Non-empty list filters by WeenieType; null or [] means "any equippable gear shape" (empty JSON [] would
        // otherwise make Contains fail for every item and hide all loot XP bars).
        WeenieType[] eligible = PatchClass.Settings.LootItemLevelingEligibleWeenieTypes;
        if (eligible is { Length: > 0 })
        {
            if (!eligible.Contains(item.WeenieType))
                return false;
        }
        else if (!ItemLevelingEligibility.IsEquippableGearShape(item))
            return false;

        bool mutated = false;

        if (PatchClass.Settings.EnableLootItemLeveling)
        {
            if (TryInitLootItemXp(profile, roll, item))
                mutated = true;
        }

        if (PatchClass.Settings.EnableLootItemPreImbue)
        {
            if (TryPreImbueLootItem(item))
                mutated = true;
        }

        return mutated;
    }

    private static bool TryInitLootItemXp(TreasureDeath profile, TreasureRoll roll, WorldObject item)
    {
        if (item.HasItemLevel)
            return false;

        var profileSettings = new ItemLevelProfile(
            PatchClass.Settings.LootItemXpBase,
            PatchClass.Settings.LootItemXpScale,
            PatchClass.Settings.LootItemMaxLevelMin,
            PatchClass.Settings.LootItemMaxLevelMax);

        if (!ItemLeveling.ApplyItemLevelProfile(item, profile.Tier, profileSettings, PatchClass.Settings))
            return false;

        item.SetProperty(FakeBool.GrowthItem, true);

        // Tier/category for QuestItemGrowthLevelEngine (WeaponQuestGrowth spell tier, etc.). Do not set QuestGrowthItemBool
        // here: that flag is for quest inventory init and has been observed to break client XP bars on fresh loot.
        // OnItemLevelUp runs catch-up when GrowthItem is true and QuestGrowthTreasureTierInt is set (loot/quest init only).
        item.SetProperty(QuestItemGrowthProperties.QuestItemCategoryInt, (int)item.WeenieType);
        item.SetProperty(QuestItemGrowthProperties.QuestGrowthTreasureTierInt, profile.Tier);

        return true;
    }

    private static bool TryPreImbueLootItem(WorldObject item)
    {
        if (item.ImbuedEffect != 0)
            return false;

        double chance = PatchClass.Settings.LootItemPreImbueChance;
        if (chance <= 0)
            return false;

        if (Random.Shared.NextDouble() > chance)
            return false;

        int? damageTypeInt = item.GetProperty(PropertyInt.DamageType);
        DamageType damageType = damageTypeInt.HasValue ? (DamageType)damageTypeInt.Value : DamageType.Undef;

        ImbuedEffectType? chosen = damageType switch
        {
            DamageType.Acid => ImbuedEffectType.AcidRending,
            DamageType.Cold => ImbuedEffectType.ColdRending,
            DamageType.Electric => ImbuedEffectType.ElectricRending,
            DamageType.Fire => ImbuedEffectType.FireRending,
            DamageType.Pierce => ImbuedEffectType.PierceRending,
            DamageType.Slash => ImbuedEffectType.SlashRending,
            _ => null,
        };

        if (!chosen.HasValue)
            return false;

        item.ImbuedEffect |= chosen.Value;
        return true;
    }
}

