using WorldEvents.Invasion.Models;

namespace WorldEvents;

internal static class InvasionBroadcast
{
    internal static void AnnounceWaveStart(Settings s, ActiveInvasionData wave)
    {
        var themeTag = wave.ChaosMode
            ? "[EVENT - Portal Storm]"
            : wave.ThemeName.Length > 0
                ? $"[EVENT - {wave.ThemeName} Invasion]"
                : "[EVENT - Invasion]";
        var remaining = wave.EndsUtc - DateTime.UtcNow;
        var dur = remaining.TotalMinutes >= 1 ? $"{(int)remaining.TotalMinutes}m" : "< 1m";

        if (wave.Towns.Count == 1)
        {
            var t = wave.Towns[0];
            var state = InvasionKillTracker.GetTownState(t.TownName);
            var threshold = state?.Threshold ?? wave.WaveKillThreshold;
            WorldEventsBroadcast.Send($"{themeTag} {t.TownName} is under attack!{TierSuffix(t)} ({dur} remaining — {threshold} kills to spawn the boss)");
        }
        else
        {
            var townList = string.Join(", ", wave.Towns.Select(t => t.TownName + TierSuffix(t)));
            WorldEventsBroadcast.Send($"{themeTag} Multiple towns under attack: {townList} ({dur} remaining)");
        }
    }

    internal static void AnnounceWaveEnd(Settings s, ActiveInvasionData wave)
    {
        var themeTag = wave.ChaosMode ? "[EVENT - Portal Storm]" : "[EVENT - Invasion]";
        if (wave.Towns.Count == 1)
            WorldEventsBroadcast.Send($"{themeTag} The attack on {wave.Towns[0].TownName} has been repelled.");
        else
            WorldEventsBroadcast.Send($"{themeTag} The attacks on {string.Join(", ", wave.Towns.Select(t => t.TownName))} have been repelled.");
    }

    internal static void AnnounceIdleFade(ActiveInvasionData wave)
    {
        var themeTag = wave.ChaosMode ? "[EVENT - Portal Storm]" : "[EVENT - Invasion]";
        if (wave.Towns.Count == 1)
            WorldEventsBroadcast.Send($"{themeTag} The siege of {wave.Towns[0].TownName} has dissipated — defenders held the line.");
        else
            WorldEventsBroadcast.Send($"{themeTag} The sieges of {string.Join(", ", wave.Towns.Select(t => t.TownName))} have dissipated without anyone answering the call.");
    }

    internal static void AnnounceReminder(ActiveInvasionData wave)
    {
        var remaining = wave.EndsUtc - DateTime.UtcNow;
        var remStr = remaining.TotalMinutes >= 1 ? $"{(int)remaining.TotalMinutes}m remaining" : "ending soon";
        var theme = wave.ChaosMode ? " chaotic" : wave.ThemeName.Length > 0 ? $" {wave.ThemeName}s" : "";
        var themeTag = wave.ChaosMode ? "[EVENT - Portal Storm]" : "[EVENT - Invasion]";

        // Single multi-line message with per-town progress
        if (wave.Towns.Count == 1)
        {
            var t = wave.Towns[0];
            var state = InvasionKillTracker.GetTownState(t.TownName);
            var progress = state?.Threshold > 0
                ? $" {state.KillsSinceBoss}/{state.Threshold} kills toward the boss —"
                : "";
            WorldEventsBroadcast.Send($"{themeTag}{TierSuffix(t)} {t.TownName} is still being sieged by{theme} invaders! —{progress} {remStr}");
        }
        else
        {
            var sb = new StringBuilder();
            sb.AppendLine($"{themeTag} Invasion update — {remStr}:");
            foreach (var t in wave.Towns)
            {
                var state = InvasionKillTracker.GetTownState(t.TownName);
                var progress = state?.Threshold > 0
                    ? $" {state.KillsSinceBoss}/{state.Threshold} kills toward the boss"
                    : " boss not yet spawned";
                sb.AppendLine($"  {t.TownName}{TierSuffix(t)}:{progress}");
            }
            WorldEventsBroadcast.Send(sb.ToString().TrimEnd());
        }
    }

    internal static void AnnounceBossSpawned(string townName, string bossName, bool chaosMode = false)
    {
        var themeTag = chaosMode ? "[EVENT - Portal Storm]" : "[EVENT - Invasion]";
        WorldEventsBroadcast.Send($"{themeTag} A powerful {bossName} has appeared at {townName}! Defeat it for bonus rewards!");
    }

    internal static void AnnounceBossKilled(string townName, string killerName, bool chaosMode = false)
    {
        var themeTag = chaosMode ? "[EVENT - Portal Storm]" : "[EVENT - Invasion]";
        WorldEventsBroadcast.Send($"{themeTag} The invasion boss at {townName} was slain by {killerName}! Rewards granted to top participants.");
    }

    internal static void AnnounceBossRespawning(string townName, string bossName, bool chaosMode = false)
    {
        var themeTag = chaosMode ? "[EVENT - Portal Storm]" : "[EVENT - Invasion]";
        WorldEventsBroadcast.Send($"{themeTag} Another {bossName} descends upon {townName}!");
    }

    static string TierSuffix(TownInvasionEntry t) =>
        t.Tier > 0 ? $" [T{t.Tier}]" : "";
}
