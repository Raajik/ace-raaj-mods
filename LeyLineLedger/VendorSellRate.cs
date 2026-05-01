using ACE.Entity.Enum.Properties;
using ACE.Server.WorldObjects;
using HarmonyLib;
using System.Reflection;

namespace LeyLineLedger;

/// <summary>
/// Reduces vendor payouts to players when selling items.
/// ACE nomenclature: BuyPrice = the vendor's buy rate = player sell payout.
/// Patches BuyPrice getter so both client (ApproachVendor packet) and server (GetBuyCost) see the same reduced rate.
/// </summary>
[HarmonyPatchCategory(nameof(VendorSellRate))]
public static class VendorSellRate
{
    static Settings? _settings;

    public static void Initialize(Settings settings) => _settings = settings;

    static MethodBase TargetMethod()
    {
        var method = AccessTools.PropertyGetter(typeof(Vendor), "BuyPrice");
        if (method == null)
            ModManager.Log("[VendorSellRate] FAILED to resolve Vendor.get_BuyPrice via AccessTools!", ModManager.LogLevel.Error);
        return method!;
    }

    static bool Prepare() => true;

    [HarmonyPostfix]
    public static void Postfix(ref double? __result, Vendor __instance)
    {
        if (_settings is null || __result is null)
            return;

        var raw = __instance.GetProperty(PropertyFloat.BuyPrice);
        if (raw is null)
            return;

        var mult = _settings.VendorSellRateMultiplier;
        if (mult <= 0.0 || Math.Abs(mult - 1.0) < 0.0001)
            return;

        // Idempotency: only multiply if current result is still close to raw value.
        if (Math.Abs(__result.Value - raw.Value) < 0.01)
            __result = raw.Value * mult;
    }
}
