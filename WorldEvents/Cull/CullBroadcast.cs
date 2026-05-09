using WorldEvents.Cull.Models;

namespace WorldEvents;

internal static class CullBroadcast
{
    internal static void AnnounceCullStart(ActiveCullData cull, Settings s)
    {
        var dur = $"{(int)s.CullDurationMinutes}m";
        WorldEventsBroadcast.Send(
            $"[EVENT - Cull] {cull.TargetSpeciesName}s are swarming! Kill as many as possible for {s.CullXpMultiplier:0}x XP — they grow stronger with each wave! ({dur})");
    }

    internal static void AnnounceCullEnd(ActiveCullData cull)
    {
        WorldEventsBroadcast.Send($"[EVENT - Cull] The {cull.TargetSpeciesName} swarm has been repelled! ({cull.TotalKills} total kills)");
    }

    internal static void AnnounceReminder(ActiveCullData cull)
    {
        var remaining = cull.EndsUtc - DateTime.UtcNow;
        var remStr = remaining.TotalMinutes >= 1 ? $"{(int)remaining.TotalMinutes}m remaining" : "ending soon";
        WorldEventsBroadcast.Send($"[EVENT - Cull] {cull.TargetSpeciesName} swarm still active — {remStr}! Tier {CullRuntime.GetSwarmTierFromKills(cull.TotalKills, null)} reached ({cull.TotalKills} kills).");
    }

    internal static void AnnounceResults(ActiveCullData cull, List<(string Name, int Kills, int Rank)> top)
    {
        if (top.Count == 0) return;

        WorldEventsBroadcast.Send($"[EVENT - Cull] Top slayers of the {cull.TargetSpeciesName} swarm:");
        foreach (var (name, kills, rank) in top)
        {
            var label = rank == 1 ? "1st" : rank == 2 ? "2nd" : "3rd";
            WorldEventsBroadcast.Send($"[EVENT - Cull]   {label}: {name} — {kills} kill{(kills == 1 ? "" : "s")}");
        }
    }
}
