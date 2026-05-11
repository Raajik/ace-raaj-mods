using ACE.Entity.Enum;
using ACE.Server.Managers;
using ACE.Server.WorldObjects;
using ChallengeModes.Features;
using static ACE.Server.WorldObjects.Player;

namespace ChallengeModes;

public static class CmCommands
{
    const string HelpText = "=== CHALLENGE MODES ===\n"
        + "/cm                         - your challenge status\n"
        + "/cm chaos                   - Chaos: 500% mob awareness; 90% pyreal tax; ×3 QB\n"
        + "/cm aptitude [on|off]       - Aptitude: forced auto XP; ×3 QB (×9 with Chaos)\n"
        + "/cm quit                    - reset to level 1 and leave all challenge modes\n"
        + "/cm who                     - Chaos / Aptitude players currently online\n"
        + "/cm admin ssf clear <name>  - admin: clear SSF flag on online target (legacy)\n"
        + "/cm debug ...               - admin aptitude debug";

    [CommandHandler("cm", AccessLevel.Player, CommandHandlerFlag.RequiresWorld, -1,
        "Chaos + Aptitude challenges. /cm for status, /cm help for commands.")]
    public static void HandleCm(Session session, params string[] parameters)
    {
        if (session?.Player is not Player player)
            return;

        if (PatchClass.Settings is not { Enabled: true })
        {
            player.SendMessage("Challenge modes are disabled on this server.");
            return;
        }

        if (parameters.Length == 0)
        {
            SendStatus(player);
            return;
        }

        var head = parameters[0].Trim().ToLowerInvariant();

        switch (head)
        {
            case "":
            case "status":
                SendStatus(player);
                return;
            case "help":
            case "?":
                player.SendMessage(HelpText);
                return;
            case "quit":
            case "leave":
                CmQuit.TryEnqueue(player);
                return;
            case "who":
            case "list":
                ListOnlineChallengePlayers(player);
                return;
            case "admin":
                HandleAdmin(session, parameters.Skip(1).ToArray());
                return;
            case "debug":
                HandleDebug(session, parameters.Skip(1).ToArray());
                return;
        }

        var args = parameters.Select(p => p.Trim().ToLowerInvariant()).ToArray();
        bool activatedAny = false;

        foreach (var arg in args)
        {
            switch (arg)
            {
                case "chaos":
                    CmChaos.TryActivate(player);
                    activatedAny = true;
                    break;
                case "aptitude":
                case "apt":
                    PatchClass.CmHandleAptitude(session, parameters.Skip(1).ToArray());
                    activatedAny = true;
                    return;
            }
        }

        if (!activatedAny)
            player.SendMessage($"Unknown command '{head}'. Type /cm help for commands.");
    }

    static void ListOnlineChallengePlayers(Player viewer)
    {
        var list = PlayerManager.GetAllOnline()
            .Where(p => PatchClass.IsChaosEnabled(p) || PatchClass.IsAptitudeEnabled(p))
            .OrderByDescending(p => p.Level)
            .ToList();

        if (list.Count == 0)
        {
            viewer.SendMessage("No online players are currently in Chaos or Aptitude.");
            return;
        }

        var sb = new System.Text.StringBuilder();
        sb.AppendLine($"Chaos / Aptitude players online ({list.Count}):");
        foreach (var p in list)
        {
            var parts = new List<string>();
            if (PatchClass.IsChaosEnabled(p))
                parts.Add("Chaos");
            if (PatchClass.IsAptitudeEnabled(p))
                parts.Add("Aptitude");
            var tag = parts.Count > 0 ? string.Join("+", parts) : "(none)";
            sb.AppendLine($"{p.Name} (Lv {p.Level ?? 1}) — {tag}");
        }

        viewer.SendMessage(sb.ToString().TrimEnd());
    }

    static void SendStatus(Player player)
    {
        PatchClass.EnsurePrefsLoaded(player);

        var apt = PatchClass.IsAptitudeEnabled(player);
        var chaos = PatchClass.IsChaosEnabled(player);

        var lines = new System.Text.StringBuilder();
        lines.AppendLine("=== Your Challenge Status ===");
        lines.AppendLine($"Aptitude: {(apt ? "ON" : "off")}");
        lines.AppendLine($"Chaos:    {(chaos ? "ON" : "off")}");
        lines.AppendLine("When ON —");
        lines.AppendLine("· Chaos: 500% mob awareness; 90% pyreal tax; ×3 QB.");
        lines.AppendLine("· Aptitude: forced auto XP; ×3 QB (×9 with Chaos).");
        lines.Append("Type /cm help for commands.");

        player.SendMessage(lines.ToString());
    }

    internal static void RefreshChallengeRadar(Player player)
    {
        var chaos = PatchClass.IsChaosEnabled(player);
        var apt = PatchClass.IsAptitudeEnabled(player);
        var ssf = player.GetProperty(FakeBool.Ironman) == true;
        var hc = player.GetProperty(FakeBool.Hardcore) == true;
        player.RadarColor = ssf || hc || chaos || apt ? RadarColor.Sentinel : RadarColor.Default;
    }

    static void HandleAdmin(Session session, string[] tail)
    {
        if (session is null || session.AccessLevel < AccessLevel.Admin)
        {
            session?.Player?.SendMessage("Admin access required.");
            return;
        }

        if (tail.Length < 3
            || !tail[0].Equals("ssf", StringComparison.OrdinalIgnoreCase)
            || !tail[1].Equals("clear", StringComparison.OrdinalIgnoreCase))
        {
            session.Player?.SendMessage("Usage: /cm admin ssf clear <player name>");
            return;
        }

        SsfMode.TryAdminClearSsf(session, string.Join(" ", tail.Skip(2)));
    }

    static void HandleDebug(Session session, string[] tail)
    {
        if (tail.Length == 0)
        {
            session.Player?.SendMessage("Usage: /cm debug mana | skill [Skill] | awardtest [Skill] [pp]");
            return;
        }

        var sub = tail[0].Trim().ToLowerInvariant();
        var rest = tail.Length > 1 ? tail.Skip(1).ToArray() : Array.Empty<string>();
        switch (sub)
        {
            case "mana":      PatchClass.CmHandleAptitudeMana(session, rest); break;
            case "skill":     PatchClass.CmHandleAptitudeSkillDebug(session, rest); break;
            case "awardtest": PatchClass.CmHandleAptitudeAwardTest(session, rest); break;
            default:          session.Player?.SendMessage("Unknown debug subcommand."); break;
        }
    }
}
