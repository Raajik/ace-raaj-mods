using System.Reflection;
using ACE.Server.WorldObjects;

namespace WorldEvents;

// Matches Loremaster.QuestXpAwardDisplay: estimated character XP to the bar after ChallengeModes 450-prefix.
internal static class HuntQuestXpDisplay
{
    static MethodInfo? _challengeAchievementMult;
    static bool _resolved;

    internal static long EstimateCharacterXpAfterAchievementChain(Player? player, long levelFractionIntendedBarGain)
    {
        if (player is null || levelFractionIntendedBarGain <= 0)
            return levelFractionIntendedBarGain;
        var m = GetChallengeAchievementMult(player);
        if (m <= 0)
            m = 1.0;
        return (long)(levelFractionIntendedBarGain * m + 0.5);
    }

    static double GetChallengeAchievementMult(Player player)
    {
        if (!_resolved)
            Resolve();
        if (_challengeAchievementMult is null)
            return 1.0;
        try
        {
            return (double)(_challengeAchievementMult.Invoke(null, new object?[] { player }) ?? 1.0);
        }
        catch
        {
            return 1.0;
        }
    }

    static void Resolve()
    {
        _resolved = true;
        foreach (var asm in AppDomain.CurrentDomain.GetAssemblies())
        {
            if (!string.Equals(asm.GetName().Name, "ChallengeModes", StringComparison.Ordinal))
                continue;
            var t = asm.GetType("ChallengeModes.Features.ChallengeRewards");
            _challengeAchievementMult = t?.GetMethod(
                "GetQuestXpAchievementMultiplierForPlayer",
                BindingFlags.Public | BindingFlags.Static,
                null,
                new[] { typeof(Player) },
                null);
            return;
        }
    }
}
