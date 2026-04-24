using WorldEvents.Sale.Models;

namespace WorldEvents;

internal static class SaleBroadcast
{
    internal static void AnnounceSaleStart(Settings s, ActiveSaleData sale)
    {
        var dur = $"{(int)s.SaleDurationMinutes}m";

        if (sale.MasterMageOnly)
        {
            WorldEventsBroadcast.Send($"[EVENT - Sale] All Master Mages are offering discounted prices for the next {dur}! Loot in their halls is also enhanced!");
        }
        else if (sale.IncludesMasterMage)
        {
            WorldEventsBroadcast.Send($"[EVENT - Sale] {sale.TownName} vendors and the local Master Mage are running a sale for the next {dur}! Loot in the area is also enhanced!");
        }
        else
        {
            WorldEventsBroadcast.Send($"[EVENT - Sale] Vendors in {sale.TownName} are running a sale for the next {dur}! Loot in the area is also enhanced!");
        }
    }

    internal static void AnnounceSaleEnd(ActiveSaleData sale)
    {
        if (sale.MasterMageOnly)
            WorldEventsBroadcast.Send($"[EVENT - Sale] The Master Mage discount has ended.");
        else
            WorldEventsBroadcast.Send($"[EVENT - Sale] The sale in {sale.TownName} has ended.");
    }

    internal static void AnnounceReminder(ActiveSaleData sale)
    {
        var remaining = sale.EndsUtc - DateTime.UtcNow;
        var remStr = remaining.TotalMinutes >= 1 ? $"{(int)remaining.TotalMinutes}m remaining" : "ending soon";

        if (sale.MasterMageOnly)
            WorldEventsBroadcast.Send($"[EVENT - Sale] Master Mages are still offering discounts — {remStr}!");
        else
            WorldEventsBroadcast.Send($"[EVENT - Sale] {sale.TownName} sale still active — {remStr}!");
    }
}
