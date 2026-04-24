using WorldEvents.Invasion.Models;

namespace WorldEvents;

/// <summary>
/// Per-wave kill tracking. Resets on wave start. Thread-safe via InvasionRuntime.InvasionLock.
/// Points accumulate for the full wave; kill counter resets to 0 each time the boss spawns.
/// </summary>
internal static class InvasionKillTracker
{
    // Cumulative points this wave — never resets between boss spawns
    static readonly Dictionary<uint, float> _points = new();
    // Tracks display names for offline players at end-of-wave
    static readonly Dictionary<uint, string> _names = new();

    // Kills since the last boss spawn (resets to 0 when boss spawns)
    static int _killsSinceBoss;

    // Wave-wide total kills (for logging/reminders)
    static int _totalKills;

    static DateTime _lastKillUtc = DateTime.MinValue;

    // Boss state
    static Creature? _currentBoss;
    static DateTime _bossDeathUtc = DateTime.MinValue;
    static double _bossRespawnMinutes;
    static int _waveKillThreshold;

    // ── Reset ────────────────────────────────────────────────────────────

    internal static void Reset(int killThreshold, double respawnMinutes)
    {
        _points.Clear();
        _names.Clear();
        _killsSinceBoss = 0;
        _totalKills = 0;
        _lastKillUtc = DateTime.MinValue;
        _currentBoss = null;
        _bossDeathUtc = DateTime.MinValue;
        _waveKillThreshold = killThreshold;
        _bossRespawnMinutes = respawnMinutes;
    }

    // ── Kill recording ───────────────────────────────────────────────────

    internal static void RecordKill(Player player, float points)
    {
        var guid = player.Guid.Full;
        _points.TryGetValue(guid, out var prev);
        _points[guid] = prev + points;
        _names[guid] = player.Name ?? $"0x{guid:X8}";
        _killsSinceBoss++;
        _totalKills++;
        _lastKillUtc = DateTime.UtcNow;
    }

    // ── Boss state ───────────────────────────────────────────────────────

    internal static void OnBossSpawned(Creature boss)
    {
        _currentBoss = boss;
        _killsSinceBoss = 0;
    }

    internal static void OnBossDied()
    {
        _currentBoss = null;
        _bossDeathUtc = DateTime.UtcNow;
        _killsSinceBoss = 0;
    }

    // ── Queries ──────────────────────────────────────────────────────────

    internal static int KillsSinceBoss => _killsSinceBoss;
    internal static int TotalKills     => _totalKills;
    internal static int Threshold      => _waveKillThreshold;
    internal static bool BossIsAlive   => _currentBoss != null && !_currentBoss.IsDead;
    internal static DateTime LastKillUtc => _lastKillUtc;

    internal static bool IsBossRespawnDue(DateTime now)
        => _bossDeathUtc != DateTime.MinValue
        && _currentBoss == null
        && (now - _bossDeathUtc).TotalMinutes >= _bossRespawnMinutes;

    internal static List<(uint Guid, string Name, float Points)> GetRanked()
    {
        return _points
            .OrderByDescending(kvp => kvp.Value)
            .Select(kvp => (kvp.Key, _names.TryGetValue(kvp.Key, out var n) ? n : $"0x{kvp.Key:X8}", kvp.Value))
            .ToList();
    }

    internal static bool HasParticipants => _points.Count > 0;
}
