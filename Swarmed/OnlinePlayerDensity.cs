namespace Swarmed;

// Optional scaling: shard-wide online count (CreatureEx factory, reinforcement fallback) vs landblock player count (reinforcement only — see PatchClass.CallForHelp).
internal static class OnlinePlayerDensity
{
    public static int LandblockPlayerCount(Landblock? landblock)
    {
        if (landblock?.players == null)
            return 0;

        return landblock.players.Count();
    }

    public static int OnlinePlayerCount()
    {
        try
        {
            return PlayerManager.GetAllOnline().Count();
        }
        catch
        {
            return 0;
        }
    }

    public static double EffectiveCreatureChance(Settings settings)
    {
        double c = settings.CreatureChance;
        if (!settings.CreatureChanceScalesWithOnlinePlayers || settings.CreatureChanceBonusPerOnlinePlayer == 0)
            return Math.Clamp(c, 0, 1);

        int n = OnlinePlayerCount();
        double max = settings.CreatureChanceMaximumAfterScaling > 0
            ? Math.Min(settings.CreatureChanceMaximumAfterScaling, 1.0)
            : 1.0;

        return Math.Min(Math.Max(0, c) + n * settings.CreatureChanceBonusPerOnlinePlayer, max);
    }

    public static float EffectiveReinforcementChance(float baseChance, Settings settings)
    {
        float b = Math.Clamp(baseChance, 0f, 1f);
        if (!settings.ReinforcementChanceScalesWithOnlinePlayers || settings.ReinforcementChanceBonusPerOnlinePlayer == 0f)
            return b;

        int n = OnlinePlayerCount();
        float max = settings.ReinforcementChanceMaximumAfterScaling > 0f
            ? Math.Min(settings.ReinforcementChanceMaximumAfterScaling, 1f)
            : 1f;

        return Math.Min(b + n * settings.ReinforcementChanceBonusPerOnlinePlayer, max);
    }

    public static float EffectiveReinforcementChanceLandblock(float baseChance, Settings settings, int playersOnLandblock)
    {
        float b = Math.Clamp(baseChance, 0f, 1f);
        if (!settings.ReinforcementChanceScalesWithLandblockPlayers || settings.ReinforcementChanceBonusPerLandblockPlayer == 0f)
            return b;

        int n = Math.Max(0, playersOnLandblock);
        float max = settings.ReinforcementChanceMaximumAfterScaling > 0f
            ? Math.Min(settings.ReinforcementChanceMaximumAfterScaling, 1f)
            : 1f;

        return Math.Min(b + n * settings.ReinforcementChanceBonusPerLandblockPlayer, max);
    }
}
