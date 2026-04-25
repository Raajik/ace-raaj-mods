using ACE.Entity.Enum.Properties;
using ACE.Server.Managers;
using ACE.Server.WorldObjects;
using HarmonyLib;

namespace ChallengeModes.Features;

[HarmonyPatchCategory(nameof(ChallengePassupAbsorb))]
internal static class ChallengePassupAbsorb
{
    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), nameof(Player.AddAllegianceXP))]
    public static bool PrefixAddAllegianceXP(Player __instance)
    {
        if (__instance is null)
            return true;

        if (PatchClass.Settings is not { } s || !s.Enabled || !s.ChallengeAbsorbPassupXp)
            return true;

        if (!PatchClass.PlayerHasActiveChallenge(__instance))
            return true;

        var cached = __instance.AllegianceXPCached;
        if (cached == 0)
            return true;

        // Zero out the challenge character's cache so they don't receive it
        __instance.AllegianceXPCached = 0;

        // Pass the absorbed XP directly up to the grandpatron (patron's patron)
        var grandpatronNode = __instance.AllegianceNode?.Patron;
        if (grandpatronNode?.Player is IPlayer grandpatron)
        {
            if (PropertyManager.GetBool("offline_xp_passup_limit").Item)
                grandpatron.AllegianceXPCached = Math.Min(grandpatron.AllegianceXPCached + cached, uint.MaxValue);
            else
                grandpatron.AllegianceXPCached += cached;

            var onlineGrandpatron = PlayerManager.GetOnlinePlayer(grandpatron.Guid);
            if (onlineGrandpatron != null)
                onlineGrandpatron.AddAllegianceXP();
        }

        return false; // skip original AddAllegianceXP
    }
}
