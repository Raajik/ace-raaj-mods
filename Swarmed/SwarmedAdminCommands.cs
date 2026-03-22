namespace Swarmed;

[CommandCategory(nameof(SwarmedFeature.Admin))]
public static class SwarmedAdminCommands
{
    [CommandHandler("swarmed", AccessLevel.Admin, CommandHandlerFlag.RequiresWorld)]
    public static void HandleSwarmed(Session session, params string[] parameters)
    {
        var player = session.Player;
        if (player is null)
            return;

        if (parameters.Length == 0 || parameters[0].Equals("help", StringComparison.OrdinalIgnoreCase))
        {
            player.SendMessage("Usage: /swarmed debug  (last call-for-help evaluation + session counters)");
            return;
        }

        if (parameters[0].Equals("debug", StringComparison.OrdinalIgnoreCase))
        {
            var s = CallForHelpDebug.Last;
            var sb = new StringBuilder();
            sb.AppendLine("[Swarmed debug]");
            sb.AppendLine($"Counters: evaluations={CallForHelpDebug.TotalEvaluations}, reinforcement_events={CallForHelpDebug.TotalSpawns}, creatures_spawned={CallForHelpDebug.TotalSpawnCount}, roll_pass={CallForHelpDebug.RollPasses}, roll_fail={CallForHelpDebug.RollFails}");
            var cfg = PatchClass.CurrentSettings;
            if (cfg is not null && (cfg.CreatureChanceScalesWithOnlinePlayers || cfg.ReinforcementChanceScalesWithOnlinePlayers))
                sb.AppendLine($"Online players (shard): {OnlinePlayerDensity.OnlinePlayerCount()} — used for chance scaling");
            if (s.UtcTime == default)
            {
                sb.AppendLine("Last snapshot: (none recorded this session)");
            }
            else
            {
                sb.AppendLine($"Last @ {s.UtcTime:O}");
                sb.AppendLine($"  outcome: {s.Outcome}");
                sb.AppendLine($"  creature: {s.CreatureName} (WCID {s.WeenieClassId})");
                sb.AppendLine($"  path: {s.PathLabel}, enabled={s.PathEnabled}, chance={s.Chance:P1}");
                if (s.RollValue.HasValue)
                    sb.AppendLine($"  roll: {s.RollValue.Value:F6} (pass={s.RollSucceeded})");
                if (s.SpawnsCreated > 0 || s.SpawnMax > 0)
                    sb.AppendLine($"  spawn: count={s.SpawnsCreated}, min={s.SpawnMin}, max={s.SpawnMax}");
            }

            player.SendMessage(sb.ToString().TrimEnd());
            return;
        }

        player.SendMessage("Unknown subcommand. Try /swarmed debug");
    }
}
