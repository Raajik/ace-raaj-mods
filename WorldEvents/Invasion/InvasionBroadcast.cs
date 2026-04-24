using WorldEvents.Invasion.Models;

namespace WorldEvents;

internal static class InvasionBroadcast
{
    internal static void AnnounceWaveStart(Settings s, ActiveInvasionData wave)
    {
        var themeTag = wave.ThemeName.Length > 0 ? $"[EVENT - {wave.ThemeName} Invasion]" : "[EVENT - Invasion]";
        var remaining = wave.EndsUtc - DateTime.UtcNow;
        var dur = remaining.TotalMinutes >= 1 ? $"{(int)remaining.TotalMinutes}m" : "< 1m";

        if (wave.Towns.Count == 1)
        {
            var t = wave.Towns[0];
            WorldEventsBroadcast.Send($"{themeTag} {t.TownName} is under attack!{TierSuffix(t)} ({dur} remaining — {wave.WaveKillThreshold} kills to spawn the boss)");
        }
        else
        {
            var townList = string.Join(", ", wave.Towns.Select(t => t.TownName + TierSuffix(t)));
            WorldEventsBroadcast.Send($"{themeTag} Multiple towns under attack: {townList} ({dur} remaining)");
        }
    }

    internal static void AnnounceWaveEnd(Settings s, ActiveInvasionData wave)
    {
        if (wave.Towns.Count == 1)
            WorldEventsBroadcast.Send($"[EVENT - Invasion] The attack on {wave.Towns[0].TownName} has been repelled.");
        else
            WorldEventsBroadcast.Send($"[EVENT - Invasion] The attacks on {string.Join(", ", wave.Towns.Select(t => t.TownName))} have been repelled.");
    }

    internal static void AnnounceIdleFade(ActiveInvasionData wave)
    {
        if (wave.Towns.Count == 1)
            WorldEventsBroadcast.Send($"[EVENT - Invasion] The siege of {wave.Towns[0].TownName} has dissipated — defenders held the line.");
        else
            WorldEventsBroadcast.Send($"[EVENT - Invasion] The sieges of {string.Join(", ", wave.Towns.Select(t => t.TownName))} have dissipated without anyone answering the call.");
    }

    internal static void AnnounceReminder(ActiveInvasionData wave, int killsSinceBoss, int threshold)
    {
        var remaining = wave.EndsUtc - DateTime.UtcNow;
        var remStr = remaining.TotalMinutes >= 1 ? $"{(int)remaining.TotalMinutes}m remaining" : "ending soon";
        var theme = wave.ThemeName.Length > 0 ? $" {wave.ThemeName}s" : "";
        var progress = threshold > 0 ? $" {killsSinceBoss}/{threshold} kills toward the boss —" : "";

        foreach (var t in wave.Towns)
            WorldEventsBroadcast.Send(
                $"[EVENT - Invasion]{TierSuffix(t)} {t.TownName} is still being sieged by{theme} invaders! —{progress} {remStr}");
    }

    internal static void AnnounceBossSpawned(string townName, string bossName)
        => WorldEventsBroadcast.Send($"[EVENT - Invasion] A powerful {bossName} has appeared at {townName}! Defeat it for bonus rewards!");

    internal static void AnnounceBossKilled(string townName, string killerName)
        => WorldEventsBroadcast.Send($"[EVENT - Invasion] The invasion boss at {townName} was slain by {killerName}! Rewards granted to top participants.");

    internal static void AnnounceBossRespawning(string townName, string bossName)
        => WorldEventsBroadcast.Send($"[EVENT - Invasion] Another {bossName} descends upon {townName}!");

    static string TierSuffix(TownInvasionEntry t) =>
        t.Tier > 0 ? $" [T{t.Tier}]" : "";
}
