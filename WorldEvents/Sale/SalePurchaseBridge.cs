using ACE.Server.WorldObjects;

namespace WorldEvents;

/// <summary>
/// Public API for other mods to report vendor purchases during an active sale.
/// Called from LeyLineLedger.PreFinalizeBuyTransaction via reflection.
/// </summary>
public static class SalePurchaseBridge
{
    public static void RecordPurchase(Player player, Vendor vendor, uint totalCost)
    {
        if (player == null || vendor == null || totalCost == 0)
            return;

        var lb = (int)(vendor.Location?.LandblockId.Landblock ?? 0);
        if (!SaleRuntime.IsVendorOnSale(lb, vendor.Name, vendor.WeenieClassId))
            return;

        SaleRuntime.RecordParticipant(player.Guid.Full);
        LeyLineLedgerBridge.AddToLotteryPool(totalCost);
        SaleRuntime.RecordLotteryContribution((long)totalCost);
    }
}
