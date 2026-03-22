namespace ChallengeModes;

public static class CmCommands
{
    [CommandHandler("cm", AccessLevel.Player, CommandHandlerFlag.RequiresWorld, -1,
        "ChallengeModes hub: aptitude, alternate leveling UI, refunds.",
        "Usage: /cm aptitude [on|off]   — same as /aptitude\n" +
        "       /cm levels              — attribute/vital/skill spend summary\n" +
        "       /cm refund              — refund alternate levels (dangerous)")]
    public static void HandleCm(Session session, params string[] parameters)
    {
        if (session?.Player is not Player player)
            return;

        if (parameters.Length == 0)
        {
            player.SendMessage("Usage: /cm aptitude | levels | refund  (see /help cm)");
            return;
        }

        var head = parameters[0].Trim().ToLowerInvariant();
        var tail = parameters.Length > 1 ? parameters.Skip(1).ToArray() : Array.Empty<string>();

        switch (head)
        {
            case "aptitude":
                PatchClass.HandleAptitude(session, tail);
                break;
            case "levels":
                Progression.AlternateLevelingCommands.HandleLevels(session, tail);
                break;
            case "refund":
                Progression.AlternateLevelingCommands.HandleRefund(session, tail);
                break;
            default:
                player.SendMessage($"Unknown /cm subcommand '{head}'. Try: aptitude, levels, refund.");
                break;
        }
    }
}
