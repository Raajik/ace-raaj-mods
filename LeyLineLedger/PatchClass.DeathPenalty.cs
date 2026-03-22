namespace LeyLineLedger;

public partial class PatchClass
{
    [HarmonyPostfix]
    [HarmonyPatch(typeof(Player), nameof(Player.GetNumCoinsDropped))]
    public static void PostGetNumCoinsDropped(ref int __result)
    {
        if (PatchClass.Settings.MaxCoinsDropped < 0)
            return;

        __result = Math.Min(__result, PatchClass.Settings.MaxCoinsDropped);
    }
}

[HarmonyPatchCategory(nameof(DeathBankPenalty))]
public static class DeathBankPenalty
{
    [HarmonyPostfix]
    [HarmonyPatch(typeof(Player), nameof(Player.OnDeath), new Type[] { typeof(DamageHistoryInfo), typeof(DamageType), typeof(bool) })]
    public static void PostOnDeath(DamageHistoryInfo lastDamager, DamageType damageType, bool criticalHit, ref DeathMessage __result, Player __instance)
    {
        if (__instance is null)
            return;

        var settings = PatchClass.Settings;
        if (settings is null || settings.DeathBankPyrealPercent <= 0)
            return;

        var banked = __instance.GetBanked(settings.CashProperty);
        if (banked <= 0)
            return;

        var loss = banked * settings.DeathBankPyrealPercent / 100L;
        if (loss <= 0)
            return;

        if (settings.DeathBankPyrealMaxLossPerDeath > 0)
            loss = Math.Min(loss, settings.DeathBankPyrealMaxLossPerDeath);

        __instance.IncBanked(settings.CashProperty, -loss);
        __instance.UpdateCoinValue();
        if (__instance.Session != null)
            __instance.SendMessage($"You lost {loss:N0} banked pyreals ({settings.DeathBankPyrealPercent}% death tax). {__instance.GetBanked(settings.CashProperty):N0} remain in the bank.");
    }
}
