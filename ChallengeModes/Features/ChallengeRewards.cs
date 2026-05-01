using ACE.Entity.Enum;
using ACE.Server.WorldObjects;

namespace ChallengeModes.Features;

public static class ChallengeRewards
{
    public static double GetQuestXpAchievementMultiplierForPlayer(Player? player)
    {
        if (player is null || PatchClass.Settings is not { } s || !s.Enabled || !s.ChallengeAchievementRewardsEnabled)
            return 1.0;
        return GetChallengeXpLumMultiplier(player, s);
    }

    static double GetChallengeXpLumMultiplier(Player player, Settings s)
    {
        double totalPercent = ChallengeAchievementGrants.GetTotalBonusPercent(player, s);
        if (totalPercent <= 0)
            return 1.0;

        return Math.Min(1.0 + totalPercent / 100.0, 2.0);
    }
}
