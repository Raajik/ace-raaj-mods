using System.Reflection;
using ACE.Server.Managers;
using ACE.Server.WorldObjects;

namespace WorldEvents;

// Matches Loremaster.QuestXpAwardDisplay: estimated character XP to the bar after ChallengeModes 450-prefix.
internal static class HuntQuestXpDisplay
{
    static MethodInfo? _challengeAchievementMult;
    static bool _fullyResolved;
    static bool _assemblyLogged;
    static bool _targetLogged;

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
        Resolve();
        if (_challengeAchievementMult is null)
            return 1.0;
        try
        {
            return (double)(_challengeAchievementMult.Invoke(null, new object?[] { player }) ?? 1.0);
        }
        catch (TargetInvocationException tie) when (tie.InnerException is not null)
        {
            ModManager.Log($"[WorldEvents→ChallengeModes] GetQuestXpAchievementMultiplier threw {tie.InnerException.GetType().Name}: {tie.InnerException.Message}", ModManager.LogLevel.Warn);
            return 1.0;
        }
        catch { return 1.0; }
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
                ModManager.Log("[WorldEvents→ChallengeModes] ChallengeModes not loaded; hunt XP display assumes 1.0x.", ModManager.LogLevel.Info);
            }
            return;
        }

        var t = asm.GetType("ChallengeModes.Features.ChallengeRewards");
        if (t is null)
        {
            if (!_targetLogged)
            {
                _targetLogged = true;
                ModManager.Log("[WorldEvents→ChallengeModes] ChallengeModes loaded but ChallengeRewards not found.", ModManager.LogLevel.Warn);
            }
            _fullyResolved = true;
            return;
        }

        _challengeAchievementMult = t.GetMethod(
            "GetQuestXpAchievementMultiplierForPlayer",
            BindingFlags.Public | BindingFlags.Static,
            null,
            new[] { typeof(Player) },
            null);
        _fullyResolved = true;

        if (_challengeAchievementMult is not null)
            ModManager.Log($"[WorldEvents→ChallengeModes] Resolved GetQuestXpAchievementMultiplierForPlayer on {t.FullName}.", ModManager.LogLevel.Info);
        else
            ModManager.Log($"[WorldEvents→ChallengeModes] WARNING: GetQuestXpAchievementMultiplierForPlayer not found on {t.FullName}.", ModManager.LogLevel.Warn);
    }
}
