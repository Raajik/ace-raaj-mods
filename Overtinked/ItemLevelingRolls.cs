namespace Overtinked;

internal static class ItemLevelingRolls
{
    // Quest-given items (InitializeQuestItemXp): uses QuestItemMaxLevelMin/Max and QuestItemMaxLevelTier; skew uses LootItemMaxLevelTierBias.
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
            return s.GlobalItemMaxLevel > 0 ? s.GlobalItemMaxLevel : 100;

        int span = max - min + 1;
        if (span <= 1)
            return min;

        double tierNorm = (tier <= 1) ? 0 : Math.Min(1.0, (tier - 1) / 7.0);
        double bias = s.LootItemMaxLevelTierBias;
        if (bias < 0)
            bias = 0;

        double exp = 1.0 + bias * tierNorm;
        double u = Random.Shared.NextDouble();
        double w = Math.Pow(u, 1.0 / exp);
        int idx = (int)(w * span);
        if (idx >= span)
            idx = span - 1;
        if (idx < 0)
            idx = 0;

        return min + idx;
    }
}
