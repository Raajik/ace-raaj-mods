using ACE.Entity.Enum;
using ACE.Server.Managers;
using ACE.Server.WorldObjects;
using ChallengeModes.Features;
using ChallengeModes.Progression;

namespace ChallengeModes;

public static class CmCommands
{
    const string HelpText = "=== CHALLENGE MODES ===\n"
        + "/cm                         - your challenge status\n"
        + "/cm ssf hc chaos            - activate any combination (level 1 only)\n"
        + "/cm alt                     - Alternate Leveling (level 1 only)\n"
        + "/cm levels                  - view alternate leveling spend\n"
        + "/cm refund                  - refund unspent alt levels\n"
        + "/cm leave                   - leave ALL modes and reset to level 1\n"
        + "/cm who                     - challenge players currently online";

    [CommandHandler("cm", AccessLevel.Player, CommandHandlerFlag.RequiresWorld, -1,
        "Challenge modes hub. /cm for status, /cm help for commands.")]
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
            case "leave":
                CmFreshStart.TryEnqueue(player);
                return;
            case "levels":
            case "refund":
                HandleAltLevelingSub(player, head, parameters.Skip(1).ToArray());
                return;
            case "who":
            case "list":
                SsfMode.ListOnlineSsfPlayers(player);
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
                case "ssf":
                    TryActivateSsf(player);
                    activatedAny = true;
                    break;
                case "hc":
                case "hardcore":
                    TryActivateHardcore(player, combo: false);
                    activatedAny = true;
                    break;
                case "chaos":
                    CmChaos.TryActivate(player);
                    activatedAny = true;
                    break;
                case "alt":
                case "altlevel":
                case "alternateleveling":
                    HandleAlternateLeveling(player);
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

    static void SendStatus(Player player)
    {
        PatchClass.EnsurePrefsLoaded(player);

        var ssf = player.GetProperty(FakeBool.Ironman) == true;
        var hc  = player.GetProperty(FakeBool.Hardcore) == true;
        var alt = PatchClass.IsAlternateLevelingEnabled(player);
        var apt = PatchClass.IsAptitudeEnabled(player);
        var chaos = PatchClass.IsChaosEnabled(player);
        var altRaw = PatchClass.GetAlternateLevelingEnabledRaw(player);
        var altNote = altRaw && apt ? " (inactive while Aptitude is on)" : "";

        var lines = new System.Text.StringBuilder();
        lines.AppendLine("=== Your Challenge Status ===");
        lines.AppendLine($"Solo Self-Found:    {(ssf ? "ON" : "off")}");
        lines.Append($"Hardcore:           {(hc  ? "ON" : "off")}");
        if (hc)
        {
            var lives = player.GetProperty(FakeInt.HardcoreLives) ?? 0;
            lines.Append($"  (lives: {lives})");
        }
        lines.AppendLine();
        lines.AppendLine($"Alternate Leveling: {(alt ? "ON" : "off")}{altNote}");
        lines.AppendLine($"Aptitude:           {(apt ? "ON" : "off")}");
        lines.AppendLine($"Chaos:              {(chaos ? "ON" : "off")}");
        lines.Append("Type /cm help for commands.");

        player.SendMessage(lines.ToString());
    }

    static void TryActivateSsf(Player player)
    {
        if (player.GetProperty(FakeBool.Ironman) == true)
        {
            player.SendMessage("SSF is already active on this character.");
            return;
        }

        if (PatchClass.IsSsfDeclined(player))
        {
            player.SendMessage("SSF cannot be re-enabled on this character (you previously left SSF).");
            return;
        }

        if (player.Level != 1)
        {
            player.SendMessage("SSF can only be activated at level 1.");
            return;
        }

        player.SetProperty(FakeBool.Ironman, true);
        player.SetProperty(FakeBool.Hardcore, false);
        RefreshChallengeRadar(player);
        player.SendMessage("SSF is now ON.");
    }

    static void TryActivateHardcore(Player player, bool combo)
    {
        if (player.GetProperty(FakeBool.Hardcore) == true && !combo)
        {
            player.SendMessage("Hardcore is already active on this character.");
            return;
        }

        if (PatchClass.IsHardcoreDeclined(player))
        {
            player.SendMessage("Hardcore cannot be re-enabled on this character (you previously left Hardcore).");
            return;
        }

        if (player.Level != 1 && player.GetProperty(FakeBool.Hardcore) != true)
        {
            player.SendMessage("Hardcore can only be activated at level 1.");
            return;
        }

        var s = PatchClass.Settings!;
        player.SetProperty(FakeInt.HardcoreLives, s.HardcoreStartingLives);
        player.SetProperty(FakeFloat.TimestampLastPlayerDeath, Time.GetUnixTime());
        player.SetProperty(FakeBool.Hardcore, true);
        RefreshChallengeRadar(player);
        if (!combo)
            player.SendMessage($"Hardcore is ON - {s.HardcoreStartingLives} lives.");
    }

    static void HandleAlternateLeveling(Player player)
    {
        if (!PatchClass.Settings!.AlternateLeveling.Enabled)
        {
            player.SendMessage("Alternate Leveling is not available on this server.");
            return;
        }

        if (PatchClass.IsAlternateLevelingEnabled(player))
        {
            player.SendMessage("Alternate Leveling is already active. Use /cm levels to see your spend.");
            return;
        }

        if (PatchClass.IsAlternateLevelingDeclined(player))
        {
            player.SendMessage("Alternate Leveling cannot be re-enabled on this character.");
            return;
        }

        if (player.Level != 1)
        {
            player.SendMessage("Alternate Leveling can only be activated at level 1.");
            return;
        }

        if (PatchClass.IsAptitudeEnabled(player))
        {
            player.SendMessage("Alternate Leveling cannot be combined with Aptitude. Disable Aptitude first (/cm leave).");
            return;
        }

        PatchClass.SetAlternateLevelingEnabled(player, true);
        player.SendMessage("Alternate Leveling is ON. Use /cm levels to track spend, /cm refund to recover unspent levels.");
    }

    static void HandleAltLevelingSub(Player player, string subcmd, string[] tail)
    {
        if (!PatchClass.IsAlternateLevelingEnabled(player))
        {
            player.SendMessage("You are not enrolled in Alternate Leveling. Use /cm alt at level 1 to join.");
            return;
        }

        if (subcmd == "levels")
            AlternateLevelingCommands.HandleLevels(player.Session, tail);
        else
            AlternateLevelingCommands.HandleRefund(player.Session, tail);
    }

    internal static void RefreshChallengeRadar(Player player)
    {
        var ssf = player.GetProperty(FakeBool.Ironman) == true;
        var hc  = player.GetProperty(FakeBool.Hardcore) == true;
        player.RadarColor = ssf || hc ? RadarColor.Sentinel : RadarColor.Default;
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

        var sub  = tail[0].Trim().ToLowerInvariant();
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
