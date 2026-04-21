namespace LeyLineLedger;

public static class BankSalvage
{
    public static void Handle(Session session, string[] parameters)
    {
        Player? player = session.Player;
        if (player is null)
            return;

        Settings? settings = PatchClass.Settings;
        if (settings?.SalvageBank.Enabled != true)
        {
            player.SendMessage("Bank salvage is disabled.");
            return;
        }

        if (parameters.Length < 2)
        {
            player.SendMessage("Usage: /bank salvage status | deposit");
            return;
        }

        string sub = parameters[1];
        if (sub.Equals("status", StringComparison.OrdinalIgnoreCase))
        {
            long u = player.GetBanked(settings.SalvageBank.BankedUnitsProperty);
            player.SendMessage($"Banked salvage work units: {u:N0}");
            return;
        }

        if (sub.Equals("deposit", StringComparison.OrdinalIgnoreCase) ||
            sub.Equals("all", StringComparison.OrdinalIgnoreCase))
        {
            DepositAll(player, settings);
            return;
        }

        player.SendMessage("Usage: /bank salvage status | deposit");
    }

    static void DepositAll(Player player, Settings settings)
    {
        long totalUnits = 0;
        foreach (SalvageDepositRule rule in settings.SalvageBank.DepositRules)
        {
            if (rule.WeenieClassId == 0 || rule.UnitsPerItem <= 0)
                continue;

            int available = PatchClass.CountBankableWcid(player, rule.WeenieClassId);
            if (available <= 0)
                continue;

            int removed = TryRemoveWcidFromInventory(player, rule.WeenieClassId, available);
            if (removed > 0)
                totalUnits += (long)removed * rule.UnitsPerItem;
        }

        if (totalUnits <= 0)
        {
            player.SendMessage("No items matched salvage deposit rules (configure LeyLineLedger SalvageBank.DepositRules).");
            return;
        }

        player.IncBanked(settings.SalvageBank.BankedUnitsProperty, totalUnits);
        player.SendMessage($"Deposited {totalUnits:N0} salvage work units. Total banked: {player.GetBanked(settings.SalvageBank.BankedUnitsProperty):N0}.");
    }

    static int TryRemoveWcidFromInventory(Player player, uint wcid, int maxRemove)
    {
        if (maxRemove <= 0)
            return 0;

        int removed = 0;
        while (removed < maxRemove)
        {
            WorldObject? stack = null;
            foreach (WorldObject wo in player.AllItems())
            {
                if (wo.WeenieClassId == wcid)
                {
                    stack = wo;
                    break;
                }
            }

            if (stack is null)
            {
                foreach (WorldObject wo in player.GetEquippedObjectsOfWCID(wcid))
                {
                    stack = wo;
                    break;
                }
            }

            if (stack is null)
                break;

            int stackSize = (int)(stack.StackSize ?? 1);
            int take = Math.Min(maxRemove - removed, stackSize);
            if (player.TryConsumeFromInventoryWithNetworking(stack, take))
            {
                removed += take;
                continue;
            }

            if (player.TryConsumeFromEquippedObjectsWithNetworking(stack, take))
            {
                removed += take;
                continue;
            }

            break;
        }

        return removed;
    }
}
