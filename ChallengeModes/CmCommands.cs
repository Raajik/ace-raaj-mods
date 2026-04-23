using ACE.Entity.Enum;
using ACE.Server.Managers;
using ACE.Server.WorldObjects;
using ChallengeModes.Features;
using ChallengeModes.Progression;

namespace ChallengeModes;

public static class CmCommands
{
    const string HelpText = @"=== CHALLENGE MODES ===
/cm                         — your challenge status
/cm ssf                     — Solo Self-Found (level 1 only)
/cm hc                      — Hardcore / permadeath (level 1 only)
/cm hcsf                    — SSF + Hardcore together (level 1 only)
/cm alt                     — Alternate Leveling (level 1 only)
/cm levels                  — view alternate leveling spend
/cm refund                  — refund unspent alt levels
/cm leave [ssf|hc|alt|all]  — leave one or all modes (permanent)
/cm who                     — challenge players currently online
/cm chaos [on|off|status]   — Loremaster QP multiplier toggle";

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

        var head = parameters.Length > 0 ? parameters[0].Trim().ToLowerInvariant() : "";
        var tail = parameters.Length > 1 ? parameters.Skip(1).ToArray() : Array.Empty<string>();

        switch (head)
        {
            case "":
            case "status":
                SendStatus(player);
                break;

            case "help":
            case "?":
                player.SendMessage(HelpText);
                break;

            // Activation
            case "ssf":
                TryActivateSsf(player);
                break;
            case "hc":
            case "hardcore":
                TryActivateHardcore(player, combo: false);
                break;
            case "hcsf":
            case "hardcoressf":
                TryActivateHcSsf(player);
                break;
            case "alt":
            case "altlevel":
            case "alternateleveling":
                HandleAlternateLeveling(player);
                break;
            case "aptitude":
                PatchClass.CmHandleAptitude(session, tail);
                break;

            // Alt leveling detail
            case "levels":
            case "refund":
                HandleAltLevelingSub(player, head, tail);
                break;

            // Leave / quit
            case "leave":
            case "quit":
            case "off":
                HandleLeave(player, tail);
                break;

            // Social
            case "who":
            case "list":
                SsfMode.ListOnlineSsfPlayers(player);
                break;

            // Special
            case "chaos":
                CmChaos.Handle(player, tail);
                break;

            // Admin & Debug
            case "admin":
                HandleAdmin(session, tail);
                break;
            case "debug":
                HandleDebug(session, tail);
                break;

            default:
                player.SendMessage($"Unknown subcommand '{head}'. Type /cm help for commands.");
                break;
        }
    }

    static void SendStatus(Player player)
    {
        PatchClass.EnsurePrefsLoaded(player);

        var ssf = player.GetProperty(FakeBool.Ironman) == true;
        var hc  = player.GetProperty(FakeBool.Hardcore) == true;
        var alt = PatchClass.IsAlternateLevelingEnabled(player);
        var apt = PatchClass.IsAptitudeEnabled(player);
        var altRaw = PatchClass.GetAlternateLevelingEnabledRaw(player);
        var altNote = altRaw && apt ? " (inactive while Aptitude is on)" : "";

        var lines = new System.Text.StringBuilder();
        lines.AppendLine("=== Your Challenge Status ===");
        lines.AppendLine($"Solo Self-Found:    {(ssf ? "ON" : "off")}");
        lines.Append    ($"Hardcore:           {(hc  ? "ON" : "off")}");
        if (hc)
        {
            var lives = player.GetProperty(FakeInt.HardcoreLives) ?? 0;
            lines.Append($"  (lives: {lives})");
        }
        lines.AppendLine();
        lines.AppendLine($"Alternate Leveling: {(alt ? "ON" : "off")}{altNote}");
        lines.AppendLine($"Aptitude:           {(apt ? "ON" : "off")}");
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
        player.SendMessage("SSF is now ON. Use /cm hc to also enable Hardcore, or /cm leave ssf to exit.");
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
            player.SendMessage($"Hardcore is ON — {s.HardcoreStartingLives} lives, minimum {s.HardcoreSecondsBetweenDeathAllowed}s between deaths. Use /cm leave hc to exit.");
    }

    static void TryActivateHcSsf(Player player)
    {
        if (player.GetProperty(FakeBool.Ironman) == true && player.GetProperty(FakeBool.Hardcore) == true)
        {
            player.SendMessage("SSF and Hardcore are both already active.");
            return;
        }

        if (PatchClass.IsSsfDeclined(player) || PatchClass.IsHardcoreDeclined(player))
        {
            player.SendMessage("Cannot enable SSF+HC — one or both tracks are permanently locked on this character.");
            return;
        }

        if (player.Level != 1)
        {
            player.SendMessage("SSF+HC can only be activated at level 1.");
            return;
        }

        var s = PatchClass.Settings!;
        player.SetProperty(FakeInt.HardcoreLives, s.HardcoreStartingLives);
        player.SetProperty(FakeFloat.TimestampLastPlayerDeath, Time.GetUnixTime());
        player.SetProperty(FakeBool.Ironman, true);
        player.SetProperty(FakeBool.Hardcore, true);
        RefreshChallengeRadar(player);
        player.SendMessage($"SSF + Hardcore are ON — {s.HardcoreStartingLives} lives, minimum {s.HardcoreSecondsBetweenDeathAllowed}s between deaths.");
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
            player.SendMessage("Alternate Leveling cannot be combined with Aptitude. Disable Aptitude first (/cm leave apt).");
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

    static void HandleLeave(Player player, string[] tail)
    {
        var target = tail.Length > 0 ? tail[0].Trim().ToLowerInvariant() : "";

        // No arg + was /cm quit → quit all; no arg + was /cm leave → prompt
        if (target is "" or "all")
        {
            CmQuit.TryEnqueueConfirmation(player);
            return;
        }

        switch (target)
        {
            case "ssf":
                LeaveMode(player, ssf: true, hc: false);
                break;
            case "hc":
            case "hardcore":
                LeaveMode(player, ssf: false, hc: true);
                break;
            case "hcsf":
            case "hardcoressf":
            case "both":
                LeaveMode(player, ssf: true, hc: true);
                break;
            case "alt":
            case "altlevel":
            case "alternateleveling":
                LeaveAlt(player);
                break;
            case "apt":
            case "aptitude":
            {
                if (player.Session is null)
                {
                    player.SendMessage("Cannot change Aptitude right now — no active session.");
                    return;
                }
                PatchClass.CmHandleAptitude(player.Session, new[] { "off" });
                break;
            }
            default:
                player.SendMessage("Usage: /cm leave [ssf | hc | hcsf | alt | all]");
                break;
        }
    }

    static void LeaveMode(Player player, bool ssf, bool hc)
    {
        var hasSsf = player.GetProperty(FakeBool.Ironman) == true;
        var hasHc  = player.GetProperty(FakeBool.Hardcore) == true;

        if (ssf && !hasSsf && hc && !hasHc)
        {
            player.SendMessage("Neither SSF nor Hardcore is active.");
            return;
        }
        if (ssf && !hasSsf && !hc)
        {
            player.SendMessage("SSF is not active.");
            return;
        }
        if (hc && !hasHc && !ssf)
        {
            player.SendMessage("Hardcore is not active.");
            return;
        }

        if (ssf && hasSsf) { player.SetProperty(FakeBool.Ironman, false); PatchClass.SetSsfDeclined(player, true); }
        if (hc  && hasHc)  { player.SetProperty(FakeBool.Hardcore, false); PatchClass.SetHardcoreDeclined(player, true); }
        RefreshChallengeRadar(player);

        var left = new List<string>();
        if (ssf && hasSsf) left.Add("SSF");
        if (hc  && hasHc)  left.Add("Hardcore");
        player.SendMessage($"{string.Join(" and ", left)} disabled — permanently locked on this character.");
    }

    static void LeaveAlt(Player player)
    {
        if (!PatchClass.IsAlternateLevelingEnabled(player) && !PatchClass.GetAlternateLevelingEnabledRaw(player))
        {
            player.SendMessage("Alternate Leveling is not active.");
            return;
        }

        if (PatchClass.HasAlternateLevelsSpent(player))
        {
            player.SendMessage("Refund unspent levels first (/cm refund), then use /cm leave alt.");
            return;
        }

        PatchClass.SetAlternateLevelingEnabled(player, false);
        PatchClass.SetAlternateLevelingDeclined(player, true);
        player.SendMessage("Alternate Leveling disabled — permanently locked on this character.");
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
