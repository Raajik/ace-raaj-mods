namespace WorldEvents;

// Mirrors Loremaster GetXpToNextLevel (DAT table + quadratic extrapolation above cap).
internal static class LevelXpMath
{
    internal static long GetXpToNextLevel(Player player)
    {
        var level = player.Level ?? 1;

        var xpTable = DatManager.PortalDat.XpTable;
        if (xpTable?.CharacterLevelXPList is not null)
        {
            var levelList = xpTable.CharacterLevelXPList;

            if (level + 1 < levelList.Count)
                return (long)(levelList[level + 1] - levelList[level]);
        }

        return ExtrapolateXpCost(level);
    }

    static long ExtrapolateXpCost(int level)
    {
        const double a = 1973.0;
        const double b = -585787.0;
        const double c = 48728021.0;
        var cost = a * level * level + b * level + c;
        return Math.Max(0, (long)cost);
    }
}
