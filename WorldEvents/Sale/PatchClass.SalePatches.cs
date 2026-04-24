using SharedLoot;

namespace WorldEvents;

public partial class PatchClass
{
    // ── Vendor pricing: global inflation + sale discount ──────────────────

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Vendor), "get_MerchandiseBuyRate")]
    public static void PostGetMerchandiseBuyRateSale(ref double? __result, Vendor __instance)
    {
        var s = CurrentSettings;
        if (s == null) return;

        var rate = __result ?? 1.0;

        if (s.SaleVendorPriceMultiplier > 0 && s.SaleVendorPriceMultiplier != 1.0)
            rate *= s.SaleVendorPriceMultiplier;

        if (s.SaleEnabled && s.SaleVendorDiscountMultiplier > 0 && s.SaleVendorDiscountMultiplier != 1.0)
        {
            var lb = (int)(__instance.Location?.LandblockId.Landblock ?? 0);
            if (SaleRuntime.IsVendorOnSale(lb, __instance.Name, __instance.WeenieClassId))
                rate *= s.SaleVendorDiscountMultiplier;
        }

        __result = rate;
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
