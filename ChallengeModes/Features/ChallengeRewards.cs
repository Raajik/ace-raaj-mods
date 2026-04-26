using ACE.Entity.Enum;
using ACE.Server.WorldObjects;
using HarmonyLib;

namespace ChallengeModes.Features;

[HarmonyPatchCategory(nameof(ChallengeRewards))]
public static class ChallengeRewards
{
    // Runs after Loremaster PreGrantXP (default priority 400): compose raw * QP * challenge bonus.
    [HarmonyPriority(450)]
    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), nameof(Player.GrantXP), new[] { typeof(long), typeof(XpType), typeof(ShareType) })]
    public static void PreGrantXP(ref long amount, XpType xpType, ShareType shareType, ref Player __instance)
    {
        if (__instance is null || amount <= 0)
            return;

        if (PatchClass.Settings is not { } s || !s.Enabled || !s.ChallengeAchievementRewardsEnabled)
            return;

        double mult = GetChallengeXpLumMultiplier(__instance, s);
        if (mult <= 1.0000001)
            return;

        amount = (long)(amount * mult);
    }

    [HarmonyPriority(450)]
    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), nameof(Player.EarnLuminance), new[] { typeof(long), typeof(XpType), typeof(ShareType) })]
    public static void PreEarnLuminance(ref long amount, XpType xpType, ShareType shareType, ref Player __instance)
    {
        if (__instance is null || amount <= 0)
            return;

        if (PatchClass.Settings is not { } s || !s.Enabled || !s.ChallengeAchievementRewardsEnabled)
            return;

        double mult = GetChallengeXpLumMultiplier(__instance, s);
        if (mult <= 1.0000001)
            return;

        amount = (long)(amount * mult);
    }

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
