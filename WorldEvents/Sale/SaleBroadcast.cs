using WorldEvents.Sale.Models;

namespace WorldEvents;

internal static class SaleBroadcast
{
    internal static void AnnounceSaleStart(Settings s, ActiveSaleData sale)
    {
        var dur = $"{(int)s.SaleDurationMinutes}m";
        var lotteryMsg = BuildLotteryStartMessage();

        if (sale.MasterMageOnly)
        {
            WorldEventsBroadcast.Send($"[EVENT - Sale] All Master Mages are offering discounted prices for the next {dur}! Loot in their halls is also enhanced!{lotteryMsg}");
        }
        else if (sale.IncludesMasterMage)
        {
            var isMageName = sale.TownName.Equals("Celdiseth", StringComparison.OrdinalIgnoreCase)
                || sale.TownName.Equals("Shoyanen", StringComparison.OrdinalIgnoreCase)
                || sale.TownName.Equals("Fadsahil", StringComparison.OrdinalIgnoreCase);

            if (isMageName)
                WorldEventsBroadcast.Send($"[EVENT - Sale] The Master Mage {sale.TownName} and local vendors are running a sale for the next {dur}! Loot in the area is also enhanced!{lotteryMsg}");
            else
                WorldEventsBroadcast.Send($"[EVENT - Sale] Vendors in {sale.TownName} and the local Master Mage are running a sale for the next {dur}! Loot in the area is also enhanced!{lotteryMsg}");
        }
        else
        {
            WorldEventsBroadcast.Send($"[EVENT - Sale] Vendors in {sale.TownName} are running a sale for the next {dur}! Loot in the area is also enhanced!{lotteryMsg}");
        }
    }

    internal static void AnnounceSaleEnd(ActiveSaleData sale)
    {
        var lotteryMsg = "";
        if (sale.LotteryContribution > 0)
            lotteryMsg = $" A total of {sale.LotteryContribution:N0} pyreals spent during this sale have been added to the /lottery pool.";

        if (sale.MasterMageOnly)
            WorldEventsBroadcast.Send($"[EVENT - Sale] The Master Mage discount has ended.{lotteryMsg}");
        else
            WorldEventsBroadcast.Send($"[EVENT - Sale] The sale in {sale.TownName} has ended.{lotteryMsg}");
    }

    internal static void AnnounceReminder(ActiveSaleData sale)
    {
        var remaining = sale.EndsUtc - DateTime.UtcNow;
        var remStr = remaining.TotalMinutes >= 1 ? $"{(int)remaining.TotalMinutes}m remaining" : "ending soon";
        var lotteryMsg = BuildLotteryStartMessage();

        if (sale.MasterMageOnly)
            WorldEventsBroadcast.Send($"[EVENT - Sale] Master Mages are still offering discounts — {remStr}!{lotteryMsg}");
        else if (sale.IncludesMasterMage)
        {
            var isMageName = sale.TownName.Equals("Celdiseth", StringComparison.OrdinalIgnoreCase)
                || sale.TownName.Equals("Shoyanen", StringComparison.OrdinalIgnoreCase)
                || sale.TownName.Equals("Fadsahil", StringComparison.OrdinalIgnoreCase);
            if (isMageName)
                WorldEventsBroadcast.Send($"[EVENT - Sale] The Master Mage {sale.TownName} sale is still active — {remStr}!{lotteryMsg}");
            else
                WorldEventsBroadcast.Send($"[EVENT - Sale] {sale.TownName} sale still active — {remStr}!{lotteryMsg}");
        }
        else
            WorldEventsBroadcast.Send($"[EVENT - Sale] {sale.TownName} sale still active — {remStr}!{lotteryMsg}");
    }

    static string BuildLotteryStartMessage()
    {
        var nextDraw = LeyLineLedgerBridge.GetNextLotteryDrawTime();
        if (!nextDraw.HasValue)
            return " 100% of pyreals spent get added to the /lottery — don't forget to buy tickets!";

        var timeStr = nextDraw.Value.ToLocalTime().ToString("ddd MMM dd h:mm tt");
        return $" 100% of pyreals spent get added to the /lottery — drawing is {timeStr}! Buy tickets with /lottery buy!";
    }
}
