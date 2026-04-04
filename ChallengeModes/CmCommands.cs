using ACE.Entity.Enum;
using ACE.Server.Managers;
using ACE.Server.WorldObjects;
using ChallengeModes.Features;
using ChallengeModes.Progression;

namespace ChallengeModes;

public static class CmCommands
{
    const string HelpList =
        "/cm list | status | ssf | hardcore | hardcoressf | alternateleveling | aptitude\n" +
        "/cm off <ssf|hardcore|hardcoressf|alternateleveling|aptitude>\n" +
        "/cm levels | refund   (alternate leveling only)\n" +
        "/cm ssf online\n" +
        "/cm admin ssf clear <name>\n" +
        "/cm debug mana | skill [Skill] | awardtest [Skill] [pp]";

    [CommandHandler("cm", AccessLevel.Player, CommandHandlerFlag.RequiresWorld, -1,
        "Challenge modes hub (/cm only). See /cm list.",
        HelpList)]
    public static void HandleCm(Session session, params string[] parameters)
    {
        if (session?.Player is not Player player)
            return;

        if (PatchClass.Settings is not { Enabled: true })
        {
            player.SendMessage("ChallengeModes is disabled on this server.");
            return;
        }

        if (parameters.Length == 0)
        {
            player.SendMessage(HelpList);
            return;
        }

        var head = parameters[0].Trim().ToLowerInvariant();
        var tail = parameters.Length > 1 ? parameters.Skip(1).ToArray() : Array.Empty<string>();

        switch (head)
        {
            case "list":
                SendModeList(player);
                break;
            case "status":
                SendStatus(player);
                break;
            case "ssf":
                HandleSsfBranch(player, tail);
                break;
            case "hardcore":
                HandleHardcore(player, activateCombo: false);
                break;
            case "hardcoressf":
                HandleHardcoreSsf(player);
                break;
            case "alternateleveling":
                HandleAlternateLeveling(player, tail);
                break;
            case "aptitude":
                PatchClass.CmHandleAptitude(session, tail);
                break;
            case "off":
                HandleOff(player, tail);
                break;
            case "levels":
                if (!PatchClass.IsAlternateLevelingEnabled(player))
                {
                    player.SendMessage("You are not enrolled in alternate leveling (/cm alternateleveling at level 1).");
                    return;
                }

                AlternateLevelingCommands.HandleLevels(session, tail);
                break;
            case "refund":
                if (!PatchClass.IsAlternateLevelingEnabled(player))
                {
                    player.SendMessage("You are not enrolled in alternate leveling (/cm alternateleveling at level 1).");
                    return;
                }

                AlternateLevelingCommands.HandleRefund(session, tail);
                break;
            case "admin":
                HandleAdmin(session, tail);
                break;
            case "debug":
                HandleDebug(session, tail);
                break;
            default:
                player.SendMessage($"Unknown /cm '{head}'. {HelpList}");
                break;
        }
    }

    static void SendModeList(Player player)
    {
        player.SendMessage(
            "\n=== Challenge modes (activate only at character level 1; /cm off is permanent per mode) ===\n" +
            "ssf — Solo self-found (trade/social restrictions; uses SSF-tagged items)\n" +
            "hardcore — Lives / permadeath rules\n" +
            "hardcoressf — Both SSF and hardcore\n" +
            "alternateleveling — Custom attr/vital/skill spend (/cm levels, /cm refund)\n" +
            "aptitude — WIP: skills via usage; attributes/vitals via XP (see /cm aptitude)\n" +
            "You may stack ssf + hardcore + (aptitude OR alternate leveling) — aptitude and alternate leveling are exclusive.\n" +
            "Rewards apply when any mode is active (server Settings).");
    }

    static void SendStatus(Player player)
    {
        PatchClass.EnsurePrefsLoaded(player);
        bool ssf = player.GetProperty(FakeBool.Ironman) == true;
        bool hc = player.GetProperty(FakeBool.Hardcore) == true;
        bool alt = PatchClass.IsAlternateLevelingEnabled(player);
        bool apt = PatchClass.IsAptitudeEnabled(player);

        var altRaw = PatchClass.GetAlternateLevelingEnabledRaw(player);
        var altNote = altRaw && apt ? " (enrolled; inactive while Aptitude is on)" : "";

        player.SendMessage(
            $"\n=== Your challenges ===\n" +
            $"SSF: {(ssf ? "ON" : "OFF")}\n" +
            $"Hardcore: {(hc ? "ON" : "OFF")}\n" +
            $"Alternate leveling: {(alt ? "ON" : "OFF")}{altNote}\n" +
            $"Aptitude: {(apt ? "ON" : "OFF")}");
    }

    static void HandleSsfBranch(Player player, string[] tail)
    {
        if (tail.Length > 0 && tail[0].Equals("online", StringComparison.OrdinalIgnoreCase))
        {
            SsfMode.ListOnlineSsfPlayers(player);
            return;
        }

        TryActivateSsfOnly(player);
    }

    static void TryActivateSsfOnly(Player player)
    {
        if (player.GetProperty(FakeBool.Ironman) == true)
        {
            player.SendMessage("You already have SSF active.");
            return;
        }

        if (PatchClass.IsSsfDeclined(player))
        {
            player.SendMessage("You cannot enable SSF on this character again (you previously used /cm off ssf).");
            return;
        }

        if (player.Level != 1)
        {
            player.SendMessage("SSF can only be activated at character level 1.");
            return;
        }

        player.SetProperty(FakeBool.Ironman, true);
        player.SetProperty(FakeBool.Hardcore, false);
        RefreshChallengeRadar(player);
        player.SendMessage("SSF is now ON (solo self-found rules). Hardcore was not enabled — use /cm hardcore or /cm hardcoressf if you want it.");
    }

    static void HandleHardcore(Player player, bool activateCombo)
    {
        if (player.GetProperty(FakeBool.Hardcore) == true && !activateCombo)
        {
            player.SendMessage("Hardcore is already ON.");
            return;
        }

        if (PatchClass.IsHardcoreDeclined(player))
        {
            player.SendMessage("You cannot enable hardcore on this character again (you previously used /cm off hardcore or /cm off hardcoressf).");
            return;
        }

        if (player.Level != 1 && player.GetProperty(FakeBool.Hardcore) != true)
        {
            player.SendMessage("Hardcore can only be activated at character level 1.");
            return;
        }

        var s = PatchClass.Settings!;
        player.SetProperty(FakeInt.HardcoreLives, s.HardcoreStartingLives);
        player.SetProperty(FakeFloat.TimestampLastPlayerDeath, Time.GetUnixTime());
        player.SetProperty(FakeBool.Hardcore, true);
        RefreshChallengeRadar(player);
        if (!activateCombo)
            player.SendMessage($"Hardcore is ON. Lives: {s.HardcoreStartingLives}; at least {s.HardcoreSecondsBetweenDeathAllowed}s between deaths for life loss.");
    }

    static void HandleHardcoreSsf(Player player)
    {
        if (player.GetProperty(FakeBool.Ironman) == true && player.GetProperty(FakeBool.Hardcore) == true)
        {
            player.SendMessage("You already have SSF and hardcore active.");
            return;
        }

        if (PatchClass.IsSsfDeclined(player) || PatchClass.IsHardcoreDeclined(player))
        {
            player.SendMessage("You cannot enable SSF/hardcore on this character again (permanent lockout on one or both tracks).");
            return;
        }

        if (player.Level != 1)
        {
            player.SendMessage("SSF+hardcore can only be activated at character level 1.");
            return;
        }

        var s = PatchClass.Settings!;
        player.SetProperty(FakeInt.HardcoreLives, s.HardcoreStartingLives);
        player.SetProperty(FakeFloat.TimestampLastPlayerDeath, Time.GetUnixTime());
        player.SetProperty(FakeBool.Ironman, true);
        player.SetProperty(FakeBool.Hardcore, true);
        RefreshChallengeRadar(player);
        player.SendMessage($"SSF + hardcore are ON. Lives: {s.HardcoreStartingLives}; at least {s.HardcoreSecondsBetweenDeathAllowed}s between deaths for life loss.");
    }

    static void RefreshChallengeRadar(Player player)
    {
        var ssf = player.GetProperty(FakeBool.Ironman) == true;
        var hc = player.GetProperty(FakeBool.Hardcore) == true;
        player.RadarColor = ssf || hc ? RadarColor.Sentinel : RadarColor.Default;
    }

    static void HandleAlternateLeveling(Player player, string[] tail)
    {
        if (!PatchClass.Settings!.AlternateLeveling.Enabled)
        {
            player.SendMessage("Alternate leveling is not offered on this server.");
            return;
        }

        if (tail.Length > 0 && tail[0].Equals("off", StringComparison.OrdinalIgnoreCase))
        {
            player.SendMessage("Use: /cm off alternateleveling");
            return;
        }

        if (PatchClass.IsAlternateLevelingEnabled(player))
        {
            player.SendMessage("Alternate leveling is already ON.");
            return;
        }

        if (PatchClass.IsAlternateLevelingDeclined(player))
        {
            player.SendMessage("You cannot enable alternate leveling on this character again.");
            return;
        }

        if (player.Level != 1)
        {
            player.SendMessage("Alternate leveling can only be activated at character level 1.");
            return;
        }

        if (PatchClass.IsAptitudeEnabled(player))
        {
            player.SendMessage("Alternate leveling cannot be combined with Aptitude. Use /cm off aptitude first (permanent on this character).");
            return;
        }

        PatchClass.SetAlternateLevelingEnabled(player, true);
        player.SendMessage("Alternate leveling is ON. Use /cm levels and spend via the normal raise actions (server uses alternate costs).");
    }

    static void HandleOff(Player player, string[] tail)
    {
        if (tail.Length == 0)
        {
            player.SendMessage("Usage: /cm off ssf | hardcore | hardcoressf | alternateleveling | aptitude");
            return;
        }

        var mode = tail[0].Trim().ToLowerInvariant();
        switch (mode)
        {
            case "ssf":
                if (player.GetProperty(FakeBool.Ironman) != true)
                {
                    player.SendMessage("SSF is not active.");
                    return;
                }

                player.SetProperty(FakeBool.Ironman, false);
                PatchClass.SetSsfDeclined(player, true);
                RefreshChallengeRadar(player);
                player.SendMessage("SSF is OFF and cannot be re-enabled on this character.");
                break;
            case "hardcore":
                if (player.GetProperty(FakeBool.Hardcore) != true)
                {
                    player.SendMessage("Hardcore is not active.");
                    return;
                }

                player.SetProperty(FakeBool.Hardcore, false);
                PatchClass.SetHardcoreDeclined(player, true);
                RefreshChallengeRadar(player);
                player.SendMessage("Hardcore is OFF and cannot be re-enabled on this character.");
                break;
            case "hardcoressf":
                if (player.GetProperty(FakeBool.Ironman) != true && player.GetProperty(FakeBool.Hardcore) != true)
                {
                    player.SendMessage("Neither SSF nor hardcore is active.");
                    return;
                }

                player.SetProperty(FakeBool.Ironman, false);
                player.SetProperty(FakeBool.Hardcore, false);
                RefreshChallengeRadar(player);
                PatchClass.SetSsfDeclined(player, true);
                PatchClass.SetHardcoreDeclined(player, true);
                player.SendMessage("SSF and hardcore are OFF; both tracks are permanently locked on this character.");
                break;
            case "alternateleveling":
                if (!PatchClass.IsAlternateLevelingEnabled(player) && !PatchClass.GetAlternateLevelingEnabledRaw(player))
                {
                    player.SendMessage("Alternate leveling is not active.");
                    return;
                }

                if (PatchClass.HasAlternateLevelsSpent(player))
                {
                    player.SendMessage("Refund alternate levels first: /cm refund — then /cm off alternateleveling.");
                    return;
                }

                PatchClass.SetAlternateLevelingEnabled(player, false);
                PatchClass.SetAlternateLevelingDeclined(player, true);
                player.SendMessage("Alternate leveling is OFF and cannot be re-enabled on this character.");
                break;
            case "aptitude":
            {
                var session = player.Session;
                if (session is null)
                {
                    player.SendMessage("Unable to change aptitude (no active session). Try again in a moment.");
                    return;
                }

                PatchClass.CmHandleAptitude(session, new[] { "off" });
                break;
            }
            default:
                player.SendMessage("Unknown mode. Use: ssf, hardcore, hardcoressf, alternateleveling, aptitude");
                break;
        }
    }

    static void HandleAdmin(Session session, string[] tail)
    {
        if (session is null || session.AccessLevel < AccessLevel.Admin)
        {
            session?.Player?.SendMessage("Admin only.");
            return;
        }

        if (tail.Length < 3
            || !tail[0].Equals("ssf", StringComparison.OrdinalIgnoreCase)
            || !tail[1].Equals("clear", StringComparison.OrdinalIgnoreCase))
        {
            session.Player?.SendMessage("Usage: /cm admin ssf clear <player name fragment>");
            return;
        }

        var name = string.Join(" ", tail.Skip(2));
        SsfMode.TryAdminClearSsf(session, name);
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
            case "mana":
                PatchClass.CmHandleAptitudeMana(session, rest);
                break;
            case "skill":
                PatchClass.CmHandleAptitudeSkillDebug(session, rest);
                break;
            case "awardtest":
                PatchClass.CmHandleAptitudeAwardTest(session, rest);
                break;
            default:
                session.Player?.SendMessage("Unknown debug subcommand.");
                break;
        }
    }
}
