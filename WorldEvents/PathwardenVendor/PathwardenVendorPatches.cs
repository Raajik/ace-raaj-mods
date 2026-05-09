namespace WorldEvents;

using ACE.Entity.Enum;
using ACE.Server.WorldObjects;
using HarmonyLib;

/// <summary>
/// Harmony patches for Pathwarden vendor purchase tracking.
/// Records all purchases from vendor WCIDs 810001 (Kaelith only).
/// </summary>
[HarmonyPatchCategory(nameof(PathwardenVendorPatches))]
internal static class PathwardenVendorPatches
{
    static Settings? _settings;

    internal static void Initialize(Settings settings)
    {
        _settings = settings;
        PathwardenVendorManager.LoadPurchaseLog();
    }

    /// <summary>
    /// Postfix on Vendor.BuyItems_ValidateTransaction to track purchases from Pathwarden vendors.
    /// </summary>
    [HarmonyPostfix]
    [HarmonyPatch(typeof(Vendor), nameof(Vendor.BuyItems_ValidateTransaction), 
        new[] { typeof(Player), typeof(List<WorldObject>), typeof(int), typeof(bool) })]
    static void PostBuyItems_ValidateTransaction(Vendor __instance, Player player, List<WorldObject> items, 
        int cost, bool __result)
    {
        if (!__result) return; // Transaction failed, don't record
        if (_settings?.EnablePathwardenVendorTracking == false) return;

        // Check if this is a Pathwarden vendor
        var vendorWcid = __instance.WeenieClassId;
        if (!PathwardenVendorManager.VendorWcids.Contains(vendorWcid))
            return;

        // Record each item purchased
        foreach (var item in items)
        {
            if (item == null) continue;
            
            // Calculate per-item price (approximate - ACE doesn't expose per-item cost easily)
            // We divide total cost by item count as a rough estimate
            uint perItemCost = items.Count > 0 ? (uint)(cost / items.Count) : (uint)cost;
            
            PathwardenVendorManager.RecordPurchase(
                player: player,
                item: item,
                price: perItemCost,
                quantity: item.StackSize ?? 1,
                vendorWcid: vendorWcid
            );
        }
    }
}
