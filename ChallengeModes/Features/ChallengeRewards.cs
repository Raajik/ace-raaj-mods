using ACE.Entity.Enum;
using ACE.Server.WorldObjects;
using HarmonyLib;

namespace ChallengeModes.Features;

[HarmonyPatchCategory(nameof(ChallengeRewards))]
public static class ChallengeRewards
{
    // Runs after Loremaster PreGrantXP (default priority 400): compose raw * QP * challengeMultiplier.
    [HarmonyPriority(450)]
    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), nameof(Player.GrantXP), new[] { typeof(long), typeof(XpType), typeof(ShareType) })]
    public static void PreGrantXP(ref long amount, XpType xpType, ShareType shareType, ref Player __instance)
    {
        if (__instance is null || amount <= 0)
            return;

        if (PatchClass.Settings is not { } s || !s.Enabled || !s.ChallengeRewardsEnabled)
            return;

        if (!PatchClass.PlayerHasActiveChallenge(__instance))
            return;

        var mult = GetChallengeMultiplier(__instance, s);
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

        if (PatchClass.Settings is not { } s || !s.Enabled || !s.ChallengeRewardsEnabled)
            return;

        if (!PatchClass.PlayerHasActiveChallenge(__instance))
            return;

        var mult = GetChallengeMultiplier(__instance, s);
        if (mult <= 1.0000001)
            return;

        amount = (long)(amount * mult);
    }

    static double GetChallengeMultiplier(Player player, Settings s)
    {
        int level = player.Level ?? 1;
        int tiers = CountMilestonesPassed(level, s.ChallengeMilestoneLevels);
        if (tiers <= 0)
            return 1.0;

        int active = PatchClass.CountActiveChallengeTracks(player);
        if (active <= 0)
            return 1.0;

        double rate = (s.BonusPerMilestonePercentPerChallenge / 100.0) * active;
        if (rate <= 0)
            return 1.0;

        return Math.Pow(1.0 + rate, tiers);
    }

    static int CountMilestonesPassed(int level, List<int> milestones)
    {
        if (milestones is null || milestones.Count == 0)
            return 0;

        int n = 0;
        foreach (int m in milestones)
        {
            if (m > 0 && level >= m)
                n++;
        }

        return n;
    }
}
