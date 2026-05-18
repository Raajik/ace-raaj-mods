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
            0 => ApplyGearDamage(item, player, level, emitMessages, summary),
            1 => ApplyGearCritDamage(item, player, level, emitMessages, summary),
            2 => ApplyGearDamageResist(item, player, level, emitMessages, summary),
            3 => ApplyGearCritDamageResist(item, player, level, emitMessages, summary),
            4 => ApplyGearHealingBoost(item, player, level, rg, emitMessages, summary),
            5 => ApplyGearMaxHealth(item, player, level, rg, emitMessages, summary),
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
                GetClothingLayerFlags(item, out bool allowGearDamage, out bool allowGearCritDamage);
                if (allowGearDamage)
                    list.Add(0);
                if (allowGearCritDamage)
                    list.Add(1);
                list.Add(2);
                list.Add(3);
                list.Add(5);
                return list;
        }
    }

    private static void GetClothingLayerFlags(WorldObject item, out bool allowGearDamage, out bool allowGearCritDamage)
    {
        allowGearDamage = true;
        allowGearCritDamage = true;

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
            allowGearCritDamage = false;
        else if (hasO && !hasU)
            allowGearDamage = false;
    }

    private static bool ApplyGearDamage(
        WorldObject item,
        Player player,
        int level,
        bool emitMessages,
        QuestItemGrowthLevelEngine.GrowthSummary? summary)
    {
        int before = item.GearDamage ?? 0;
        int after = before + 1;
        BiotaPropertyHelper.SetPersistentPropertyInt(item, PropertyInt.GearDamage, after);
        if (summary != null)
            summary.GearDamageRatingSteps += 1;
        if (emitMessages)
            player.SendMessage(
                $"{item.Name} has reached level {level}/{item.ItemMaxLevel} and gains +1 Damage Rating ({before} -> {after}).");
        try { player?.Session?.Network?.EnqueueSend(new GameMessagePrivateUpdatePropertyInt(item, PropertyInt.DamageRating, after)); } catch { }
        return true;
    }

    private static bool ApplyGearCritDamage(
        WorldObject item,
        Player player,
        int level,
        bool emitMessages,
        QuestItemGrowthLevelEngine.GrowthSummary? summary)
    {
        int before = item.GearCritDamage ?? 0;
        int after = before + 1;
        BiotaPropertyHelper.SetPersistentPropertyInt(item, PropertyInt.GearCritDamage, after);
        if (summary != null)
            summary.GearCritDamageRatingSteps += 1;
        if (emitMessages)
            player.SendMessage(
                $"{item.Name} has reached level {level}/{item.ItemMaxLevel} and gains +1 Crit Damage Rating ({before} -> {after}).");
        try { player?.Session?.Network?.EnqueueSend(new GameMessagePrivateUpdatePropertyInt(item, PropertyInt.CritDamageRating, after)); } catch { }
        return true;
    }

    private static bool ApplyGearDamageResist(
        WorldObject item,
        Player player,
        int level,
        bool emitMessages,
        QuestItemGrowthLevelEngine.GrowthSummary? summary)
    {
        int before = item.GearDamageResist ?? 0;
        int after = before + 1;
        BiotaPropertyHelper.SetPersistentPropertyInt(item, PropertyInt.GearDamageResist, after);
        if (summary != null)
            summary.GearDamageResistRatingSteps += 1;
        if (emitMessages)
            player.SendMessage(
                $"{item.Name} has reached level {level}/{item.ItemMaxLevel} and gains +1 Damage Resistance Rating ({before} -> {after}).");
        try { player?.Session?.Network?.EnqueueSend(new GameMessagePrivateUpdatePropertyInt(item, PropertyInt.DamageResistRating, after)); } catch { }
        return true;
    }

    private static bool ApplyGearCritDamageResist(
        WorldObject item,
        Player player,
        int level,
        bool emitMessages,
        QuestItemGrowthLevelEngine.GrowthSummary? summary)
    {
        int before = item.GearCritDamageResist ?? 0;
        int after = before + 1;
        BiotaPropertyHelper.SetPersistentPropertyInt(item, PropertyInt.GearCritDamageResist, after);
        if (summary != null)
            summary.GearCritDamageResistRatingSteps += 1;
        if (emitMessages)
            player.SendMessage(
                $"{item.Name} has reached level {level}/{item.ItemMaxLevel} and gains +1 Crit Damage Resistance Rating ({before} -> {after}).");
        try { player?.Session?.Network?.EnqueueSend(new GameMessagePrivateUpdatePropertyInt(item, PropertyInt.CritDamageResistRating, after)); } catch { }
        return true;
    }

    private static bool ApplyGearHealingBoost(
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
        int before = item.GearHealingBoost ?? 0;
        int after = before + delta;
        BiotaPropertyHelper.SetPersistentPropertyInt(item, PropertyInt.GearHealingBoost, after);
        if (summary != null)
            summary.GearHealingBoostRatingGained += delta;
        if (emitMessages)
            player.SendMessage(
                $"{item.Name} has reached level {level}/{item.ItemMaxLevel} and gains +{delta} Healing Boost Rating ({before} -> {after}).");
        try { player?.Session?.Network?.EnqueueSend(new GameMessagePrivateUpdatePropertyInt(item, PropertyInt.HealingBoostRating, after)); } catch { }
        return true;
    }

    private static bool ApplyGearMaxHealth(
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
        int after = before + delta;
        BiotaPropertyHelper.SetPersistentPropertyInt(item, PropertyInt.GearMaxHealth, after);
        if (summary != null)
            summary.GearVitalityRatingGained += delta;
        if (emitMessages)
            player.SendMessage(
                $"{item.Name} has reached level {level}/{item.ItemMaxLevel} and gains +{delta} Vitality Rating ({before} -> {after}).");
        try { player?.Session?.Network?.EnqueueSend(new GameMessagePrivateUpdatePropertyInt(item, PropertyInt.GearMaxHealth, after)); } catch { }
        return true;
    }
}
