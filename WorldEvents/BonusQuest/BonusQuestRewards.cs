namespace WorldEvents;

internal static class BonusQuestRewards
{
    internal static bool TryGrantCompletionXp(Settings settings, Player player, out long awarded)
    {
        awarded = 0;
        if (!settings.BonusQuestGrantXp) return false;

        var xpToNext = LevelXpMath.GetXpToNextLevel(player);
        if (xpToNext <= 0) return false;

        var grant = (long)(xpToNext * settings.BonusQuestXpFraction * settings.BonusQuestXpMultiplier);
        if (grant <= 0) return false;

        HuntXpInterop.GrantQuestXpWithoutMultiplier(player, grant);
        awarded = HuntQuestXpDisplay.EstimateCharacterXpAfterAchievementChain(player, grant);
        return true;
    }
}
