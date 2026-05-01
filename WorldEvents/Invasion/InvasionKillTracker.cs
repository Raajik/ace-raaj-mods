using WorldEvents.Invasion.Models;

namespace WorldEvents;

/// <summary>
/// Per-wave kill tracking. Resets on wave start. Thread-safe via InvasionRuntime.InvasionLock.
/// Points accumulate globally for the full wave; kill counters are per-town and reset each time a town's boss spawns.
/// </summary>
internal static class InvasionKillTracker
{
    // Cumulative points this wave — never resets between boss spawns (global leaderboard)
    static readonly Dictionary<uint, float> _points = new();
    // Tracks display names for offline players at end-of-wave
    static readonly Dictionary<uint, string> _names = new();

    // Per-town state
    static readonly Dictionary<string, TownKillState> _towns = new();

    // Global last kill (for idle fade)
    static DateTime _lastKillUtc = DateTime.MinValue;

    // ── Types ────────────────────────────────────────────────────────────

    internal sealed class TownKillState
    {
        public int KillsSinceBoss;
        public int TotalKills;
        public DateTime LastKillUtc;
        public int Threshold;
        public double BossRespawnMinutes;
        public Creature? CurrentBoss;
        public DateTime BossDeathUtc;

        public bool BossIsAlive => CurrentBoss != null && !CurrentBoss.IsDead;
        public bool IsBossRespawnDue(DateTime now)
            => BossDeathUtc != DateTime.MinValue
            && CurrentBoss == null
            && (now - BossDeathUtc).TotalMinutes >= BossRespawnMinutes;
    }

    // ── Reset ────────────────────────────────────────────────────────────

    internal static void Reset(Dictionary<string, TownKillState>? townStates = null)
    {
        _points.Clear();
        _names.Clear();
        _towns.Clear();
        _lastKillUtc = DateTime.MinValue;

        if (townStates != null)
        {
            foreach (var kvp in townStates)
                _towns[kvp.Key] = kvp.Value;
        }
    }

    // ── Kill recording ───────────────────────────────────────────────────

    internal static void RecordKill(string townName, Player player, float points)
    {
        var guid = player.Guid.Full;
        _points.TryGetValue(guid, out var prev);
        _points[guid] = prev + points;
        _names[guid] = player.Name ?? $"0x{guid:X8}";
        _lastKillUtc = DateTime.UtcNow;

        if (_towns.TryGetValue(townName, out var state))
        {
            state.KillsSinceBoss++;
            state.TotalKills++;
            state.LastKillUtc = DateTime.UtcNow;
        }
    }

    // ── Boss state ───────────────────────────────────────────────────────

    internal static void OnBossSpawned(string townName, Creature boss)
    {
        if (_towns.TryGetValue(townName, out var state))
        {
            state.CurrentBoss = boss;
            state.KillsSinceBoss = 0;
        }
    }

    internal static void OnBossDied(string townName)
    {
        if (_towns.TryGetValue(townName, out var state))
        {
            state.CurrentBoss = null;
            state.BossDeathUtc = DateTime.UtcNow;
            state.KillsSinceBoss = 0;
        }
    }

    // ── Queries ──────────────────────────────────────────────────────────

    internal static TownKillState? GetTownState(string townName)
        => _towns.TryGetValue(townName, out var s) ? s : null;

    internal static DateTime LastKillUtc => _lastKillUtc;

    internal static List<(uint Guid, string Name, float Points)> GetRanked()
    {
        return _points
            .OrderByDescending(kvp => kvp.Value)
            .Select(kvp => (kvp.Key, _names.TryGetValue(kvp.Key, out var n) ? n : $"0x{kvp.Key:X8}", kvp.Value))
            .ToList();
    }

    internal static bool HasParticipants => _points.Count > 0;

    // Legacy global fallbacks (for backward compat until full per-town rollout)
    internal static int KillsSinceBoss
    {
        get
        {
            if (_towns.Count == 0) return 0;
            // Return max across all towns for legacy broadcasts
            return _towns.Values.Max(t => t.KillsSinceBoss);
        }
    }

    internal static int TotalKills
    {
        get
        {
            if (_towns.Count == 0) return 0;
            return _towns.Values.Sum(t => t.TotalKills);
        }
    }

    internal static int Threshold
    {
        get
        {
            if (_towns.Count == 0) return 100;
            return _towns.Values.FirstOrDefault()?.Threshold ?? 100;
        }
    }

    internal static bool BossIsAlive
    {
        get
        {
            if (_towns.Count == 0) return false;
            return _towns.Values.Any(t => t.BossIsAlive);
        }
    }

    internal static bool IsBossRespawnDue(DateTime now)
    {
        if (_towns.Count == 0) return false;
        return _towns.Values.Any(t => t.IsBossRespawnDue(now));
    }
}
