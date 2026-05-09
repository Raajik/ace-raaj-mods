namespace LeyLineLedger;

public static class HouseStorageCommands
{
    [CommandHandler("house", AccessLevel.Player, CommandHandlerFlag.RequiresWorld, -1,
        "House storage upgrades (bank-only costs).", "Usage: /house upgrade storage")]
    public static void HandleHouse(Session session, params string[] parameters)
    {
        Player? player = session.Player;
        if (player is null)
            return;

        if (PatchClass.Settings?.HouseStorage.Enabled != true)
        {
            player.SendMessage("House storage upgrades are disabled.");
            return;
        }

        if (parameters.Length >= 2 &&
            parameters[0].Equals("upgrade", StringComparison.OrdinalIgnoreCase) &&
            parameters[1].Equals("storage", StringComparison.OrdinalIgnoreCase))
        {
            HouseStorageUpgrade.TryBegin(player);
            return;
        }

        player.SendMessage("Usage: /house upgrade storage");
    }
}
