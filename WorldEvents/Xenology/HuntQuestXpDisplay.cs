using System.Reflection;
using ACE.Server.WorldObjects;

namespace WorldEvents;

// Matches Loremaster.QuestXpAwardDisplay: estimated character XP to the bar after ChallengeModes 450-prefix.
internal static class HuntQuestXpDisplay
{
    static MethodInfo? _challengeMilestoneMult;
    static bool _resolved;

    internal static long EstimateCharacterXpAfterMilestoneChain(Player? player, long levelFractionIntendedBarGain)
    {
        if (player is null || levelFractionIntendedBarGain <= 0)
            return levelFractionIntendedBarGain;
        var m = GetChallengeMilestoneMult(player);
        if (m <= 0)
            m = 1.0;
        return (long)(levelFractionIntendedBarGain * m + 0.5);
    }

    static double GetChallengeMilestoneMult(Player player)
    {
        if (!_resolved)
            Resolve();
        if (_challengeMilestoneMult is null)
            return 1.0;
        try
        {
            return (double)(_challengeMilestoneMult.Invoke(null, new object?[] { player }) ?? 1.0);
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
            _challengeMilestoneMult = t?.GetMethod(
                "GetQuestXpMilestoneMultiplierForPlayer",
                BindingFlags.Public | BindingFlags.Static,
                null,
                new[] { typeof(Player) },
                null);
            return;
        }
    }
}
