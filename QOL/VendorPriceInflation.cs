namespace QOL;

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
}
