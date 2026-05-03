using ACE.Server.WorldObjects;
using HarmonyLib;

namespace LeyLineLedger;

// Floors vendor payouts when players sell items (ACE GetBuyCost), after other vendor price patches.
[HarmonyPatchCategory(nameof(VendorBuyPayoutFloor))]
public static class VendorBuyPayoutFloor
{
    static Settings? _settings;

    public static void Initialize(Settings settings) => _settings = settings;

    static MethodBase TargetMethod()
    {
        var m = AccessTools.Method(typeof(Vendor), nameof(Vendor.GetBuyCost), new[] { typeof(WorldObject) });
        if (m == null)
            ModManager.Log("[VendorBuyPayoutFloor] Failed to resolve Vendor.GetBuyCost(WorldObject).", ModManager.LogLevel.Error);
        return m!;
    }

    static bool Prepare() => true;

    [HarmonyPostfix]
    [HarmonyPriority(Priority.Last)]
    public static void Postfix(ref int __result, WorldObject item)
    {
        if (_settings == null)
            return;

        int floor = _settings.VendorMinSellPayoutPyreals;
        if (floor <= 0)
            return;

        if (__result <= 0 || __result >= floor)
            return;

        // Skip coin stacks and zero-value items.
        if ((item.Value ?? 0) <= 0)
            return;

        __result = floor;
    }
}
