using ACE.Entity.Enum.Properties;
using ACE.Server.WorldObjects;
using HarmonyLib;
using System.Reflection;

namespace LeyLineLedger;

/// <summary>
/// Unified vendor purchase-price control (what players PAY to BUY items from vendors).
/// ACE nomenclature: SellPrice = the vendor's sell rate = player purchase cost.
/// Patches SellPrice getter so both client (ApproachVendor packet) and server (GetSellCost) see the same rate.
/// </summary>
[HarmonyPatchCategory(nameof(VendorBuyPrice))]
public static class VendorBuyPrice
{
    static Settings? _settings;

    public static void Initialize(Settings settings) => _settings = settings;

    static MethodBase TargetMethod()
    {
        var method = AccessTools.PropertyGetter(typeof(Vendor), "SellPrice");
        if (method == null)
            ModManager.Log("[VendorBuyPrice] FAILED to resolve Vendor.get_SellPrice via AccessTools!", ModManager.LogLevel.Error);
        return method!;
    }

    static bool Prepare() => true;

    [HarmonyPostfix]
    public static void Postfix(ref double? __result, Vendor __instance)
    {
        if (_settings is null || __result is null)
            return;

        var raw = __instance.GetProperty(PropertyFloat.SellPrice);
        if (raw is null)
            return;

        double sale = WorldEventsSalePricing.GetSaleMultiplier(__instance);

        if (IsExcludedFromEconomy(__instance.WeenieClassId))
        {
            if (Math.Abs(sale - 1.0) < 0.0001)
                return;
            if (Math.Abs(__result.Value - raw.Value) < 0.01)
                __result = raw.Value * sale;
            return;
        }

        double mult = GetLeyLineBuyMultiplier() * sale;
        if (mult == 1.0)
            return;

        if (Math.Abs(__result.Value - raw.Value) < 0.01)
            __result = raw.Value * mult;
    }

    static bool IsExcludedFromEconomy(uint wcid)
    {
        var list = _settings?.VendorWcidsExcludedFromEconomyPricing;
        return list != null && list.Count > 0 && list.Contains(wcid);
    }

    static double GetLeyLineBuyMultiplier()
    {
        var s = _settings!;
        var mode = s.VendorPricingMode;

        if (mode == VendorPricingMode.EconomyBalancer && !s.EnableDynamicVendorPricing)
            mode = VendorPricingMode.Vanilla;

        switch (mode)
        {
            case VendorPricingMode.Vanilla:
                return 1.0;
            case VendorPricingMode.SimpleMultiplier:
                return Math.Max(0.01, s.VendorBuyPriceMultiplier);
            case VendorPricingMode.EconomyBalancer:
                return EconomyBalancer.GetVendorBuyPriceMultiplier();
            default:
                return 1.0;
        }
    }
}
