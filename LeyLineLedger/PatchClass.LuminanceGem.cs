namespace LeyLineLedger;

public partial class PatchClass
{
    // Consumes LeyLineLedger luminance gems: credits banked luminance (not spendable currency) and skips vanilla Gem behavior.
    [HarmonyPrefix]
    [HarmonyPatch(typeof(Gem), nameof(Gem.UseGem), new Type[] { typeof(Player) })]
    public static bool PreGemUseGem(Player player, Gem __instance)
    {
        if (Settings is null || player is null || __instance is null)
            return true;

        if (Settings.LuminanceGemWeenieClassId == 0)
            return true;

        if (__instance.WeenieClassId != Settings.LuminanceGemWeenieClassId)
            return true;

        var stored = __instance.GetProperty((PropertyInt64)Settings.LuminanceGemStoredAmountProperty) ?? 0;
        if (stored <= 0)
            return true;

        if (player.FindObject(__instance.Guid.Full, Player.SearchLocations.MyInventory) is null)
        {
            player.SendTransientError($"Cannot find the {__instance.Name}");
            return false;
        }

        var lumProp = Settings.LuminanceProperty;
        player.IncBanked(lumProp, stored);

        if (!player.TryConsumeFromInventoryWithNetworking(__instance, 1))
        {
            player.IncBanked(lumProp, -stored);
            player.SendMessage("Failed to consume the luminance gem.");
            return false;
        }

        player.SendMessage($"You absorb {stored:N0} luminance from the {__instance.Name}. Your banked luminance is now {player.GetBanked(lumProp):N0}.");
        return false;
    }
}
