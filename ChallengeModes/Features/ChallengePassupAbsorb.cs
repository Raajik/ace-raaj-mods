using ACE.Entity.Enum.Properties;
using ACE.Server.Managers;
using ACE.Server.WorldObjects;
using HarmonyLib;
using System.Reflection;

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
                grandpatron.AllegianceXPCached = Math.Min(grandpatron.AllegianceXPCached + cached, (ulong)uint.MaxValue);
            else
                grandpatron.AllegianceXPCached += cached;

            var onlineGrandpatron = PlayerManager.GetOnlinePlayer(grandpatron.Guid);
            if (onlineGrandpatron != null)
                onlineGrandpatron.AddAllegianceXP();
        }

        // Optionally contribute a portion of absorbed passup XP to the LeyLineLedger lottery pool
        TryContributeToLottery(cached, __instance);

        return false; // skip original AddAllegianceXP
    }

    static void TryContributeToLottery(ulong cached, Player player)
    {
        try
        {
            var lotteryType = AccessTools.TypeByName("LeyLineLedger.Lottery");
            if (lotteryType is null)
                return;

            var settingsProp = lotteryType.GetProperty("Settings", System.Reflection.BindingFlags.Public | System.Reflection.BindingFlags.Static);
            var settings = settingsProp?.GetValue(null);
            if (settings is null)
                return;

            var lotterySettings = settings.GetType().GetProperty("Lottery")?.GetValue(settings);
            if (lotterySettings is null)
                return;

            var rateProp = lotterySettings.GetType().GetProperty("ChaosPassupToLotteryRate");
            var rate = rateProp?.GetValue(lotterySettings) as double? ?? 0;
            if (rate <= 0)
                return;

            var addToPool = lotteryType.GetMethod("AddToPool", System.Reflection.BindingFlags.Public | System.Reflection.BindingFlags.Static);
            if (addToPool is null)
                return;

            var amount = (long)(cached * rate);
            if (amount <= 0)
                return;

            addToPool.Invoke(null, new object[] { amount });

            if (player.Session != null)
                player.SendMessage($"[ChallengeModes] {amount:N0} passup XP contributed to the lottery pool.");
        }
        catch
        {
            // Silently ignore if LeyLineLedger is not present or types mismatch
        }
    }
}
