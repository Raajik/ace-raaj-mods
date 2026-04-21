namespace BetterKeys;

[CommandCategory(nameof(BetterKeysCommandCategory.Admin))]
public static class BetterKeysCommands
{
    [CommandHandler("bkkey", AccessLevel.Admin, CommandHandlerFlag.RequiresWorld, 0,
        "[BetterKeys] No args: adds 50 charges per skeleton tier to bank (250/500/750/1000). With args: spawn key(s) in inventory.",
        "Usage: /bkkey  |  /bkkey <count>  |  /bkkey <wcid>  |  /bkkey <wcid> <count>")]
    public static void HandleBkKey(Session session, params string[] parameters)
    {
        if (session?.Player is not Player player)
            return;

        if (parameters.Length == 0)
        {
            const int grant = 50;
            PatchClass.GrantSkeletonBankChargesPerTier(player, grant);
            Settings s = PatchClass.RuntimeSettingsSnapshot;
            long t250 = player.GetProperty((PropertyInt64)s.SkeletonBankPropMax250) ?? 0;
            long t500 = player.GetProperty((PropertyInt64)s.SkeletonBankPropMax500) ?? 0;
            long t750 = player.GetProperty((PropertyInt64)s.SkeletonBankPropMax750) ?? 0;
            long t1000 = player.GetProperty((PropertyInt64)s.SkeletonBankPropMax1000) ?? 0;
            player.SendMessage(
                $"[BetterKeys] Bank +{grant} per tier (Sturdy Iron / Steel / Mana Forge / Legendary). Totals: {t250}, {t500}, {t750}, {t1000}.");
            return;
        }

        uint wcid = 6876;
        int count = 1;

        if (parameters.Length >= 2
            && uint.TryParse(parameters[0], out uint w2) && w2 > 0
            && int.TryParse(parameters[1], out int c2) && c2 > 0)
        {
            wcid = w2;
            count = Math.Min(50, c2);
        }
        else if (parameters.Length == 1 && uint.TryParse(parameters[0], out uint one))
        {
            // One number: small values = stack count of default key; large = single key of that WCID.
            if (one <= 50 && one != 0)
            {
                wcid = 6876;
                count = (int)one;
            }
            else
            {
                wcid = one;
                count = 1;
            }
        }

        int created = 0;
        for (int i = 0; i < count; i++)
        {
            WorldObject? wo = null;
            try
            {
                wo = WorldObjectFactory.CreateNewWorldObject(wcid);
            }
            catch (Exception ex)
            {
                ModManager.Log($"[BetterKeys] CreateNewWorldObject({wcid}): {ex.Message}", ModManager.LogLevel.Warn);
            }

            if (wo == null)
                continue;

            PatchClass.RepairSkeletonKeyDurabilityIfApplicable(wo);

            try
            {
                if (player.TryCreateInInventoryWithNetworking(wo))
                    created++;
            }
            catch (Exception ex)
            {
                ModManager.Log($"[BetterKeys] TryCreateInInventoryWithNetworking: {ex.Message}", ModManager.LogLevel.Warn);
                wo.Destroy();
            }
        }

        player.SendMessage($"[BetterKeys] Created {created} key(s) (WCID {wcid}).");
    }
}
