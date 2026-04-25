namespace WorldEvents;

internal static class BonusQuestRewards
{
    internal static double GetTierFraction(Settings settings, int completionCount)
    {
        return completionCount switch
        {
            1 => settings.BonusQuestFirstCompletionFraction,
            2 => settings.BonusQuestSecondCompletionFraction,
            3 => settings.BonusQuestThirdCompletionFraction,
            _ => settings.BonusQuestRemainingCompletionFraction,
        };
    }

    internal static bool TryGrantCompletionXp(Settings settings, Player player, int completionCount, out long awarded)
    {
        awarded = 0;
        if (!settings.BonusQuestGrantXp) return false;

        var xpToNext = LevelXpMath.GetXpToNextLevel(player);
        if (xpToNext <= 0) return false;

        var fraction = GetTierFraction(settings, completionCount);
        var grant = (long)(xpToNext * fraction);
        if (grant <= 0) return false;

        HuntXpInterop.GrantQuestXpWithoutMultiplier(player, grant);
        awarded = HuntQuestXpDisplay.EstimateCharacterXpAfterAchievementChain(player, grant);
        return true;
    }
}
