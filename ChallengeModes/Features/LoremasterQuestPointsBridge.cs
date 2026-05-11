using ACE.Server.WorldObjects;

namespace ChallengeModes.Features;

// Loremaster reflects this type to read quest-point scaling while Chaos and/or Aptitude are active.
public static class LoremasterQuestPointsBridge
{
    const float PerTrackMultiplier = 3f;

    public static float GetMultiplierWhileChallengeActive(Player player)
    {
        if (player is null || PatchClass.Settings is null)
            return 1f;

        float factor = 1f;
        if (PatchClass.IsChaosEnabled(player))
            factor *= PerTrackMultiplier;
        if (PatchClass.IsAptitudeEnabled(player))
            factor *= PerTrackMultiplier;

        if (factor <= 1f)
            return 1f;

        return factor;
    }
}
