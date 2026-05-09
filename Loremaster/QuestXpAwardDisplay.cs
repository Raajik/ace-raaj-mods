using System.Reflection;
using ACE.Server.WorldObjects;

namespace Loremaster;

// For player-facing numbers on level-fraction / trophy / parchment / hunt grants: after ExternalXpGrants
// (shard xp_modifier is neutralized), ChallengeModes 450-prefix may still multiply. Estimates the same
// product Quest XP → character bar that ChallengeRewards uses for messaging parity.
public static class QuestXpAwardDisplay
{
    static MethodInfo? _challengeAchievementMult;
    static bool _fullyResolved;
    static bool _assemblyLogged;
    static bool _targetLogged;

    public static long EstimateCharacterXpAfterAchievementChain(Player? player, long levelFractionOrIntendedBarGain)
    {
        if (player is null || levelFractionOrIntendedBarGain <= 0)
            return levelFractionOrIntendedBarGain;
        var m = GetChallengeAchievementMult(player);
        if (m <= 0)
            m = 1.0;
        return (long)(levelFractionOrIntendedBarGain * m + 0.5);
    }

    static double GetChallengeAchievementMult(Player player)
    {
        Resolve();

        if (_challengeAchievementMult is null)
            return 1.0;

        try
        {
            return (double)(_challengeAchievementMult.Invoke(null, new object?[] { player }) ?? 1.0);
        }
        catch (TargetInvocationException tie) when (tie.InnerException is not null)
        {
            ModManager.Log($"[Loremaster→ChallengeModes] GetQuestXpAchievementMultiplier threw {tie.InnerException.GetType().Name}: {tie.InnerException.Message}", ModManager.LogLevel.Warn);
            return 1.0;
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Loremaster→ChallengeModes] Bridge error: {ex.GetType().Name}: {ex.Message}", ModManager.LogLevel.Warn);
            return 1.0;
        }
    }

    static void Resolve()
    {
        if (_fullyResolved) return;

        Assembly? asm = null;
        foreach (var a in AppDomain.CurrentDomain.GetAssemblies())
        {
            if (string.Equals(a.GetName().Name, "ChallengeModes", StringComparison.Ordinal))
            { asm = a; break; }
        }

        if (asm is null)
        {
            if (!_assemblyLogged)
            {
                _assemblyLogged = true;
                ModManager.Log("[Loremaster→ChallengeModes] ChallengeModes not loaded; XP display estimate assumes 1.0x.", ModManager.LogLevel.Info);
            }
            return;
        }

        var t = asm.GetType("ChallengeModes.Features.ChallengeRewards");
        if (t is null)
        {
            if (!_targetLogged)
            {
                _targetLogged = true;
                ModManager.Log("[Loremaster→ChallengeModes] ChallengeModes loaded but ChallengeRewards not found.", ModManager.LogLevel.Warn);
            }
            _fullyResolved = true;
            return;
        }

        _challengeAchievementMult = t.GetMethod(
            "GetQuestXpAchievementMultiplierForPlayer",
            BindingFlags.Public | BindingFlags.Static,
            null,
            [typeof(Player)],
            null);
        _fullyResolved = true;

        if (_challengeAchievementMult is not null)
            ModManager.Log($"[Loremaster→ChallengeModes] Resolved GetQuestXpAchievementMultiplierForPlayer on {t.FullName}.", ModManager.LogLevel.Info);
        else
            ModManager.Log($"[Loremaster→ChallengeModes] WARNING: GetQuestXpAchievementMultiplierForPlayer not found on {t.FullName}.", ModManager.LogLevel.Warn);
    }
}
