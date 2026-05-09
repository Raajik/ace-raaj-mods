using System.Collections.Concurrent;

namespace BetterSupportSkills.Skills;

// Shared per-player cleave toggle and range override (used by both Recklessness and ManaConversion cleave).
internal static class CleavePlayerState
{
    internal static readonly ConcurrentDictionary<uint, bool> Disabled = new();
    internal static readonly ConcurrentDictionary<uint, float> Range = new();

    internal static bool IsDisabled(uint playerGuid) =>
        Disabled.TryGetValue(playerGuid, out bool d) && d;

    internal static float GetRange(uint playerGuid, float serverMax) =>
        Range.TryGetValue(playerGuid, out float r) ? Math.Clamp(r, 0f, serverMax) : serverMax;

    internal static void ApplyProfile(uint guid, PlayerProfile profile)
    {
        Disabled[guid] = profile.CleaveDisabled;
        if (profile.CleaveRange.HasValue)
            Range[guid] = profile.CleaveRange.Value;
        else
            Range.TryRemove(guid, out _);
    }
}
