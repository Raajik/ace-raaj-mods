namespace QOL;

using ACE.Server.WorldObjects;

// Multiplies the buy rate that vendors charge players (what you pay to buy from a vendor).
// Does not affect how much vendors pay players for sold items (that's item.Value).
[HarmonyPatchCategory(nameof(Features.VendorPriceInflation))]
public static class VendorPriceInflation
{
    static Settings? _settings;

    public static void Initialize(Settings settings) => _settings = settings;

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Vendor), "get_MerchandiseBuyRate")]
    public static void PostGetMerchandiseBuyRate(ref double? __result)
    {
        if (_settings is null || !_settings.EnableVendorPriceInflation)
            return;

        var rate = __result ?? 1.0;
        __result = rate * _settings.VendorBuyRateMultiplier;
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Vendor), nameof(Vendor.GetBuyCost), new Type[] { typeof(WorldObject) })]
    public static void PostGetBuyCostSpecial(ref int __result, WorldObject item)
    {
        if (_settings is null || !_settings.EnableVendorPriceInflation || !_settings.EnableVendorSpecialItemInflation)
            return;

        if (_settings.VendorSpecialItemMultiplier <= 1.0)
            return;

        if (!IsSpecialItem(item))
            return;

        __result = Math.Max(1, (int)(__result * _settings.VendorSpecialItemMultiplier));
    }

    static bool IsSpecialItem(WorldObject item)
    {
        if (item == null)
            return false;

        // Has any imbued effect (Critical Strike, Crippling Blow, Rending, etc.)
        if (item.ImbuedEffect != 0)
            return true;

        // Has epic or legendary cantrips
        try
        {
            if (item.EpicCantrips?.Count > 0)
                return true;
            if (item.LegendaryCantrips?.Count > 0)
                return true;
        }
        catch { }

        return false;
    }
}
