using System.Reflection;
using ACE.Server.WorldObjects;

namespace Loremaster;

// For player-facing numbers on level-fraction / trophy / parchment / hunt grants: after ExternalXpGrants
// (shard xp_modifier is neutralized), ChallengeModes 450-prefix may still multiply. Estimates the same
// product Quest XP → character bar that ChallengeRewards uses for messaging parity.
public static class QuestXpAwardDisplay
{
    static MethodInfo? _challengeMilestoneMult;
    static bool _resolved;

    public static long EstimateCharacterXpAfterMilestoneChain(Player? player, long levelFractionOrIntendedBarGain)
    {
        if (player is null || levelFractionOrIntendedBarGain <= 0)
            return levelFractionOrIntendedBarGain;
        var m = GetChallengeMilestoneMult(player);
        if (m <= 0)
            m = 1.0;
        return (long)(levelFractionOrIntendedBarGain * m + 0.5);
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
                [typeof(Player)],
                null);
            return;
        }
    }
}
