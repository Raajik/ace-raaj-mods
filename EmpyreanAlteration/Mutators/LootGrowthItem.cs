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

        // Require an eligible equippable WeenieType.
        if (!PatchClass.Settings.LootItemLevelingEligibleWeenieTypes.Contains(item.WeenieType))
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

