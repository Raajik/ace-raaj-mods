namespace EmpyreanAlteration;

internal static class ItemLevelingRolls
{
    // Quest-given items (InitializeQuestItemXp): QuestItemMaxLevelMin/Max, QuestItemMaxLevelTier, QuestItemMaxLevelRollPower, LootItemMaxLevelTierBias.
    internal static int RollQuestItemMaxLevel(int tier, Settings s)
    {
        if (s.UseFixedGlobalItemMaxLevel && s.GlobalItemMaxLevel > 0)
            return s.GlobalItemMaxLevel;

        if (s.UseTierScaledItemMaxLevel)
        {
            int t = Math.Max(1, tier);
            int per = s.ItemMaxLevelsPerTreasureTier > 0 ? s.ItemMaxLevelsPerTreasureTier : 5;
            int raw = t * per;
            if (s.QuestItemMaxLevelMax > 0)
                raw = Math.Min(raw, s.QuestItemMaxLevelMax);
            int lo = s.QuestItemMaxLevelMin > 0 ? s.QuestItemMaxLevelMin : 1;
            return Math.Max(lo, raw);
        }

        int min = s.QuestItemMaxLevelMin;
        int max = s.QuestItemMaxLevelMax;
        if (min > max)
            (min, max) = (max, min);

        if (max <= 0)
            return s.GlobalItemMaxLevel > 0 ? s.GlobalItemMaxLevel : 250;

        int span = max - min + 1;
        if (span <= 1)
            return min;

        // Bias toward low caps: w = U^p with p>1 makes small w (low indices) more likely; high ItemMaxLevel becomes rarer.
        double rollPower = s.QuestItemMaxLevelRollPower;
        if (rollPower < 1.0)
            rollPower = 1.0;

        // Higher treasure tier slightly relaxes the skew (more chance toward the top of min..max).
        double tierNorm = tier <= 1 ? 0 : Math.Min(1.0, (tier - 1) / 7.0);
        double bias = s.LootItemMaxLevelTierBias;
        if (bias < 0)
            bias = 0;

        double tierEase = bias * 0.22 * tierNorm;
        double effectivePower = Math.Max(1.0, rollPower - tierEase);

        double u = Random.Shared.NextDouble();
        double w = Math.Pow(u, effectivePower);
        int idx = (int)(w * span);
        if (idx >= span)
            idx = span - 1;
        if (idx < 0)
            idx = 0;

        return min + idx;
    }

    // LootGrowthItem / ItemLeveling.ApplyItemLevelProfile: weighted cap between min and max.
    internal static int RollLootItemMaxLevel(int tier, int min, int max, Settings s)
    {
        if (min > max)
            (min, max) = (max, min);

        if (max <= 0)
            return s.GlobalItemMaxLevel > 0 ? s.GlobalItemMaxLevel : 250;

        int span = max - min + 1;
        if (span <= 1)
            return min;

        double rollPower = s.LootItemMaxLevelRollPower;
        if (rollPower < 1.0)
            rollPower = 1.0;

        double tierNorm = tier <= 1 ? 0 : Math.Min(1.0, (tier - 1) / 7.0);
        double bias = s.LootItemMaxLevelTierBias;
        if (bias < 0)
            bias = 0;

        double tierEase = bias * 0.22 * tierNorm;
        double effectivePower = Math.Max(1.0, rollPower - tierEase);

        double u = Random.Shared.NextDouble();
        double w = Math.Pow(u, effectivePower);
        int idx = (int)(w * span);
        if (idx >= span)
            idx = span - 1;
        if (idx < 0)
            idx = 0;

        return min + idx;
    }
}
