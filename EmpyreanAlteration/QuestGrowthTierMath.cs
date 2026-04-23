namespace EmpyreanAlteration;

// Maps display item level to quest-growth engine tier when phantom tiers were granted at reward time.
internal static class QuestGrowthTierMath
{
    // Phantom K tiers (1..K) applied at claim with no XP; offset = K. Organic level-ups then use tier K+1 when
    // entering display level 2, etc.: tier = offset + (displayLevel - 1). When offset is 0, tier == displayLevel.
    internal static int GrowthTierForDisplayLevel(int displayLevel, int phantomOffset)
    {
        if (displayLevel < 1)
            return 1;

        if (phantomOffset <= 0)
            return displayLevel;

        return phantomOffset + (displayLevel - 1);
    }
}
