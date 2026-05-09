using SharedLoot;

namespace WorldEvents;

public partial class PatchClass
{
    // ── Vendor pricing: REMOVED — LLL is the single source of truth for vendor buy/sell prices.
    // WorldEvents sale discounts are now handled by LLL EconomyBalancer / VendorBuyPrice if desired.

    // [HarmonyPostfix]
    // [HarmonyPatch(typeof(Vendor), nameof(Vendor.GetBuyCost), new Type[] { typeof(WorldObject) })]
    // public static void PostGetBuyCostSale(ref int __result, Vendor __instance)
    // {
    //     var mult = ComputeVendorPriceMultiplier(__instance);
    //     if (mult == 1.0) return;
    //     __result = Math.Max(1, (int)(__result * mult));
    // }

    // [HarmonyPostfix]
    // [HarmonyPatch(typeof(Vendor), nameof(Vendor.GetSellCost), new Type[] { typeof(WorldObject) })]
    // public static void PostGetSellCostSale(ref uint __result, Vendor __instance)
    // {
    //     var mult = ComputeVendorPriceMultiplier(__instance);
    //     if (mult == 1.0) return;
    //     __result = (uint)Math.Max(1.0, __result * mult);
    // }

    // static double ComputeVendorPriceMultiplier(Vendor vendor)
    // {
    //     var s = CurrentSettings;
    //     if (s == null) return 1.0;
    //     var mult = 1.0;
    //     if (s.SaleVendorPriceMultiplier > 0 && s.SaleVendorPriceMultiplier != 1.0)
    //         mult *= s.SaleVendorPriceMultiplier;
    //     if (s.SaleEnabled && s.SaleVendorDiscountMultiplier > 0 && s.SaleVendorDiscountMultiplier != 1.0)
    //     {
    //         var lb = (int)(vendor.Location?.LandblockId.Landblock ?? 0);
    //         if (SaleRuntime.IsVendorOnSale(lb, vendor.Name, vendor.WeenieClassId))
    //             mult *= s.SaleVendorDiscountMultiplier;
    //     }
    //     return mult;
    // }

    // ── Sale participant tracking ─────────────────────────────────────────
    // MOVED to LLL reflection bridge to avoid Harmony conflict with LLL's PreFinalizeBuyTransaction.
    // See WorldEventsBridge.cs in LeyLineLedger.

    // ── Loot enhancement: boost values + bonus loot-table items (BLC) ─────

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Creature), nameof(Creature.GenerateTreasure),
        new Type[] { typeof(DamageHistoryInfo), typeof(Corpse) })]
    public static void PostGenerateTreasureSale(DamageHistoryInfo killer, Corpse corpse)
    {
        var s = CurrentSettings;
        if (s == null || !s.SaleEnabled) return;
        if (corpse?.Inventory == null) return;

        var lb = (int)(corpse.Location?.LandblockId.Landblock ?? 0);
        if (!SaleRuntime.IsLandblockOnSale(lb)) return;

        // Boost existing item values
        if (s.SaleLootValueMultiplier > 1.0)
        {
            foreach (var item in corpse.Inventory.Values)
            {
                var val = item.Value ?? 0;
                if (val > 0)
                    item.Value = (int)(val * s.SaleLootValueMultiplier);
            }
        }

        // BonusEventLoot: ~one proc per corpse with weighted pools (common-heavy).
        var cfg = LootConfigStore.GetLoadedOrDefault();
        var bonus = LootRoller.TryCreateBonusEventLoot(cfg, s.BonusEventLoot);
        if (bonus != null)
            corpse.TryAddToInventory(bonus);
    }
}
