using System;
using ACE.Server.WorldObjects;

namespace ChallengeModes.Features;

// Loremaster reflects this type to read quest-point scaling while a /cm challenge is active.
public static class LoremasterQuestPointsBridge
{
    public static float GetMultiplierWhileChallengeActive(Player player)
    {
        if (player is null || PatchClass.Settings is null)
            return 1f;
        if (!PatchClass.PlayerHasActiveChallenge(player))
            return 1f;

        var m = PatchClass.Settings.QuestPointsMultiplierWhileChallengeActive;
        if (m <= 0f)
            return 1f;

        var n = PatchClass.CountActiveChallengeTracks(player);
        if (n <= 0)
            return 1f;

        if (!PatchClass.Settings.QuestPointsMultiplyPerActiveChallengeTrack)
            return m;

        // Per active track: m^n (SSF + hardcore + aptitude|alternate at most once each slot).
        var stacked = Math.Pow(m, n);
        if (double.IsNaN(stacked) || double.IsInfinity(stacked) || stacked > float.MaxValue)
            return float.MaxValue;
        return (float)stacked;
    }
}
