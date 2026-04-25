using SharedLoot;

namespace WorldEvents;

public partial class PatchClass
{
    // ── Vendor pricing: global inflation + sale discount ──────────────────

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Vendor), nameof(Vendor.GetBuyCost), new Type[] { typeof(WorldObject) })]
    public static void PostGetBuyCostSale(ref int __result, Vendor __instance)
    {
        var mult = ComputeVendorPriceMultiplier(__instance);
        if (mult == 1.0) return;
        __result = Math.Max(1, (int)(__result * mult));
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Vendor), nameof(Vendor.GetSellCost), new Type[] { typeof(WorldObject) })]
    public static void PostGetSellCostSale(ref uint __result, Vendor __instance)
    {
        var mult = ComputeVendorPriceMultiplier(__instance);
        if (mult == 1.0) return;
        __result = (uint)Math.Max(1.0, __result * mult);
    }

    static double ComputeVendorPriceMultiplier(Vendor vendor)
    {
        var s = CurrentSettings;
        if (s == null) return 1.0;

        var mult = 1.0;
        if (s.SaleVendorPriceMultiplier > 0 && s.SaleVendorPriceMultiplier != 1.0)
            mult *= s.SaleVendorPriceMultiplier;

        if (s.SaleEnabled && s.SaleVendorDiscountMultiplier > 0 && s.SaleVendorDiscountMultiplier != 1.0)
        {
            var lb = (int)(vendor.Location?.LandblockId.Landblock ?? 0);
            if (SaleRuntime.IsVendorOnSale(lb, vendor.Name, vendor.WeenieClassId))
                mult *= s.SaleVendorDiscountMultiplier;
        }

        return mult;
    }

    // ── Loot enhancement: boost values + bonus SharedLoot items ──────────

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

        // Add bonus SharedLoot items
        if (s.SaleLootBonusItems <= 0) return;

        if (!Enum.TryParse<LootRarityFloor>(s.SaleLootBonusRarity, true, out var floor))
            floor = LootRarityFloor.Any;

        var cfg = LootConfigStore.GetLoadedOrDefault();
        for (var i = 0; i < s.SaleLootBonusItems; i++)
        {
            var bonus = LootRoller.TryCreateFromMinRarity(cfg, floor);
            if (bonus == null) continue;
            corpse.TryAddToInventory(bonus);
        }
    }
}
