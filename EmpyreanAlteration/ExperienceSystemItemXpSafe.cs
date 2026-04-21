namespace EmpyreanAlteration;

// ACE stock ItemXpStyle.ScalesWithLevel uses total XP = base + 2b + 4b + ... (doubling each step) with no overflow
// checks. Large ItemMaxLevel / ItemBaseXp overflows ulong and corrupts appraisal / XP bar math (often shows as huge negatives).
internal static class ExperienceSystemItemXpSafe
{
    // Same loop as ACE.Server.Entity.ExperienceSystem.ItemLevelToTotalXP for ScalesWithLevel, but saturates at ulong.MaxValue.
    internal static ulong ItemLevelToTotalXpScalesWithLevelAce(int itemLevel, ulong baseXP, int maxLevel)
    {
        if (itemLevel < 1)
            return 0;

        if (itemLevel > maxLevel)
            itemLevel = maxLevel;

        if (itemLevel == 1)
            return baseXP;

        ulong levelXP = baseXP;
        ulong totalXP = baseXP;

        for (var i = itemLevel - 1; i > 0; i--)
        {
            if (levelXP > ulong.MaxValue / 2)
                return ulong.MaxValue;

            levelXP *= 2;

            if (totalXP > ulong.MaxValue - levelXP)
                return ulong.MaxValue;

            totalXP += levelXP;
        }

        return totalXP;
    }

    // Same as ACE ItemTotalXPToLevel for ScalesWithLevel, but stops if doubling levelXP would overflow.
    internal static int ItemTotalXpToLevelScalesWithLevelAce(ulong gainedXP, ulong baseXP, int maxLevel)
    {
        var level = 0;
        var levelXP = baseXP;
        var remainXP = gainedXP;

        while (remainXP >= levelXP)
        {
            level++;
            remainXP -= levelXP;

            if (levelXP > ulong.MaxValue / 2)
                break;

            levelXP *= 2;
        }

        if (level > maxLevel)
            level = maxLevel;

        return level;
    }

    // Largest item level L for which ACE's doubling total XP sum still fits in ulong (for this baseXP).
    internal static int MaxItemMaxLevelForDoublingBase(ulong baseXp)
    {
        if (baseXp < 1)
            baseXp = 1;

        ulong levelXp = baseXp;
        ulong totalXp = baseXp;
        int itemLevel = 1;

        while (true)
        {
            if (levelXp > ulong.MaxValue / 2)
                return itemLevel;

            ulong doubled = levelXp * 2;

            if (totalXp > ulong.MaxValue - doubled)
                return itemLevel;

            totalXp += doubled;
            levelXp = doubled;
            itemLevel++;

            if (itemLevel > 65_000)
                return itemLevel;
        }
    }

    internal static int ClampItemMaxLevelForDoublingBase(ulong baseXp, int rolledMaxLevel)
    {
        if (rolledMaxLevel < 1)
            return 1;

        int cap = MaxItemMaxLevelForDoublingBase(baseXp);
        return Math.Min(rolledMaxLevel, cap);
    }
}
