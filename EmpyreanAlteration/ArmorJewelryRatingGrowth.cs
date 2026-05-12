namespace EmpyreanAlteration;

// Random rating bumps for non-weapon quest growth (clothing vs jewelry vs shield routing).
internal static class ArmorJewelryRatingGrowth
{
    internal enum RatingSlotKind
    {
        NonJewelryClothing,
        Jewelry,
        Shield,
    }

    internal static bool TryApply(
        WorldObject item,
        Player player,
        int level,
        Settings settings,
        RatingSlotKind slotKind,
        bool emitMessages,
        QuestItemGrowthLevelEngine.GrowthSummary? summary)
    {
        ArmorJewelryRatingGrowthSettings rg = settings.ArmorJewelryRatingGrowth;
        if (!rg.Enabled)
            return false;

        if (Random.Shared.NextDouble() > rg.OutcomeChance)
            return false;

        List<int> outcomes = BuildOutcomeIndices(slotKind, item);
        if (outcomes.Count == 0)
            return false;

        int pick = outcomes[Random.Shared.Next(0, outcomes.Count)];
        return pick switch
        {
            0 => ApplyDamageRating(item, player, level, emitMessages, summary),
            1 => ApplyCritDamageRating(item, player, level, emitMessages, summary),
            2 => ApplyDamageResistRating(item, player, level, emitMessages, summary),
            3 => ApplyCritDamageResistRating(item, player, level, emitMessages, summary),
            4 => ApplyHealingBoostRating(item, player, level, rg, emitMessages, summary),
            5 => ApplyVitalityGearMaxHealth(item, player, level, rg, emitMessages, summary),
            _ => false,
        };
    }

    private static List<int> BuildOutcomeIndices(RatingSlotKind slotKind, WorldObject item)
    {
        List<int> list = new();

        switch (slotKind)
        {
            case RatingSlotKind.Shield:
                list.Add(2);
                list.Add(3);
                list.Add(5);
                return list;

            case RatingSlotKind.Jewelry:
                list.Add(2);
                list.Add(3);
                list.Add(4);
                list.Add(5);
                return list;

            case RatingSlotKind.NonJewelryClothing:
            default:
                GetClothingLayerFlags(item, out bool allowDr, out bool allowCdr);
                if (allowDr)
                    list.Add(0);
                if (allowCdr)
                    list.Add(1);
                list.Add(2);
                list.Add(3);
                list.Add(5);
                return list;
        }
    }

    private static void GetClothingLayerFlags(WorldObject item, out bool allowDamageRating, out bool allowCritDamageRating)
    {
        allowDamageRating = true;
        allowCritDamageRating = true;

        CoverageMask? cp = item.ClothingPriority ?? item.VisualClothingPriority;
        if (!cp.HasValue)
            return;

        uint v = (uint)cp.Value;
        uint underwearBits = (uint)(
            CoverageMask.UnderwearUpperLegs
            | CoverageMask.UnderwearLowerLegs
            | CoverageMask.UnderwearChest
            | CoverageMask.UnderwearAbdomen
            | CoverageMask.UnderwearUpperArms
            | CoverageMask.UnderwearLowerArms);

        uint outerBits = (uint)(
            CoverageMask.OuterwearUpperLegs
            | CoverageMask.OuterwearLowerLegs
            | CoverageMask.OuterwearChest
            | CoverageMask.OuterwearAbdomen
            | CoverageMask.OuterwearUpperArms
            | CoverageMask.OuterwearLowerArms
            | CoverageMask.Head
            | CoverageMask.Hands
            | CoverageMask.Feet);

        bool hasU = (v & underwearBits) != 0;
        bool hasO = (v & outerBits) != 0;

        if (hasU && !hasO)
            allowCritDamageRating = false;
        else if (hasO && !hasU)
            allowDamageRating = false;
    }

    private static bool ApplyDamageRating(
        WorldObject item,
        Player player,
        int level,
        bool emitMessages,
        QuestItemGrowthLevelEngine.GrowthSummary? summary)
    {
        int before = item.DamageRating ?? 0;
        item.DamageRating = before + 1;
        if (summary != null)
            summary.GearDamageRatingSteps += 1;
        if (emitMessages)
            player.SendMessage(
                $"{item.Name} has reached level {level}/{item.ItemMaxLevel} and gains +1 Damage Rating ({before} -> {before + 1}).");
        return true;
    }

    private static bool ApplyCritDamageRating(
        WorldObject item,
        Player player,
        int level,
        bool emitMessages,
        QuestItemGrowthLevelEngine.GrowthSummary? summary)
    {
        int before = item.CritDamageRating ?? 0;
        item.CritDamageRating = before + 1;
        if (summary != null)
            summary.GearCritDamageRatingSteps += 1;
        if (emitMessages)
            player.SendMessage(
                $"{item.Name} has reached level {level}/{item.ItemMaxLevel} and gains +1 Crit Damage Rating ({before} -> {before + 1}).");
        return true;
    }

    private static bool ApplyDamageResistRating(
        WorldObject item,
        Player player,
        int level,
        bool emitMessages,
        QuestItemGrowthLevelEngine.GrowthSummary? summary)
    {
        int before = item.DamageResistRating ?? 0;
        item.DamageResistRating = before + 1;
        if (summary != null)
            summary.GearDamageResistRatingSteps += 1;
        if (emitMessages)
            player.SendMessage(
                $"{item.Name} has reached level {level}/{item.ItemMaxLevel} and gains +1 Damage Resistance Rating ({before} -> {before + 1}).");
        return true;
    }

    private static bool ApplyCritDamageResistRating(
        WorldObject item,
        Player player,
        int level,
        bool emitMessages,
        QuestItemGrowthLevelEngine.GrowthSummary? summary)
    {
        int before = item.CritDamageResistRating ?? 0;
        BiotaPropertyHelper.SetBiotaPropertyInt(item, PropertyInt.CritDamageResistRating, before + 1);
        if (summary != null)
            summary.GearCritDamageResistRatingSteps += 1;
        if (emitMessages)
            player.SendMessage(
                $"{item.Name} has reached level {level}/{item.ItemMaxLevel} and gains +1 Crit Damage Resistance Rating ({before} -> {before + 1}).");
        return true;
    }

    private static bool ApplyHealingBoostRating(
        WorldObject item,
        Player player,
        int level,
        ArmorJewelryRatingGrowthSettings rg,
        bool emitMessages,
        QuestItemGrowthLevelEngine.GrowthSummary? summary)
    {
        int minV = rg.HealingBoostMin;
        int maxV = rg.HealingBoostMax;
        if (minV > maxV)
            (minV, maxV) = (maxV, minV);

        int delta = minV == maxV ? minV : Random.Shared.Next(minV, maxV + 1);
        int before = item.HealingBoostRating ?? 0;
        BiotaPropertyHelper.SetBiotaPropertyInt(item, PropertyInt.HealingBoostRating, before + delta);
        if (summary != null)
            summary.GearHealingBoostRatingGained += delta;
        if (emitMessages)
            player.SendMessage(
                $"{item.Name} has reached level {level}/{item.ItemMaxLevel} and gains +{delta} Healing Boost Rating ({before} -> {before + delta}).");
        return true;
    }

    private static bool ApplyVitalityGearMaxHealth(
        WorldObject item,
        Player player,
        int level,
        ArmorJewelryRatingGrowthSettings rg,
        bool emitMessages,
        QuestItemGrowthLevelEngine.GrowthSummary? summary)
    {
        int minV = rg.VitalityGearMaxHealthMin;
        int maxV = rg.VitalityGearMaxHealthMax;
        if (minV > maxV)
            (minV, maxV) = (maxV, minV);

        int delta = minV == maxV ? minV : Random.Shared.Next(minV, maxV + 1);
        int before = item.GearMaxHealth ?? 0;
        BiotaPropertyHelper.SetBiotaPropertyInt(item, PropertyInt.GearMaxHealth, before + delta);
        if (summary != null)
            summary.GearVitalityRatingGained += delta;
        if (emitMessages)
            player.SendMessage(
                $"{item.Name} has reached level {level}/{item.ItemMaxLevel} and gains +{delta} Vitality Rating ({before} -> {before + delta}).");
        return true;
    }
}
