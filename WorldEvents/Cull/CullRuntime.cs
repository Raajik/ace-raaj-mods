using WorldEvents.Cull.Models;

namespace WorldEvents;

internal static class CullRuntime
{
    internal static ActiveCullData? ActiveCull;
    internal static readonly object CullLock = new();

    static DateTime _nextCullUtc = DateTime.MaxValue;
    static DateTime _lastReminderUtc = DateTime.MinValue;
    // Tracks GUIDs of adds spawned by the swarm so they don't chain-swarm
    static readonly ConcurrentDictionary<uint, byte> _spawnedAddGuids = new();
    // Stacking power bonus from player deaths (each death = +5% to swarm scale)
    static int _deathStackCount;
    static readonly Random _rng = new();

    internal static bool IsSpawnedAdd(uint guid) => _spawnedAddGuids.ContainsKey(guid);
    internal static void TrackSpawnedAdd(uint guid) => _spawnedAddGuids.TryAdd(guid, 0);
    internal static void UntrackSpawnedAdd(uint guid) => _spawnedAddGuids.TryRemove(guid, out _);

    // ── Lifecycle ────────────────────────────────────────────────────────

    internal static void LoadFromDisk(Settings s)
    {
        CullPersistence.EnsureDirectories();
        lock (CullLock)
        {
            var saved = CullPersistence.LoadActiveCull();
            if (saved != null && saved.EndsUtc > DateTime.UtcNow)
            {
                ActiveCull = saved;
                _nextCullUtc = saved.EndsUtc.AddMinutes(s.CullIntervalMinutes);
            }
            else
            {
                CullPersistence.ClearActiveCull();
                ActiveCull = null;
                _nextCullUtc = DateTime.UtcNow.AddMinutes(s.CullIntervalMinutes);
            }
        }
    }

    internal static void TickTimer(Settings s)
    {
        if (!s.CullEnabled) return;

        lock (CullLock)
        {
            var now = DateTime.UtcNow;

            if (ActiveCull != null)
            {
                // Reminder (silenced when unified scheduler is managing messaging)
                if (!s.UseUnifiedScheduler && s.CullReminderIntervalMinutes > 0
                    && (now - _lastReminderUtc).TotalMinutes >= s.CullReminderIntervalMinutes)
                {
                    _lastReminderUtc = now;
                    CullBroadcast.AnnounceReminder(ActiveCull);
                }

                // Expiry (skip if scheduler is managing lifecycle)
                if (!s.UseUnifiedScheduler && now >= ActiveCull.EndsUtc)
                {
                    var ended = ActiveCull;
                    ActiveCull = null;
                    _nextCullUtc = now.AddMinutes(s.CullIntervalMinutes);
                    _spawnedAddGuids.Clear();
                    _deathStackCount = 0;
                    CullPersistence.ClearActiveCull();
                    Task.Run(() => CullRewards.DistributeRewards(ended, s));
                    CullBroadcast.AnnounceCullEnd(ended);
                }
                return;
            }

            if (s.UseUnifiedScheduler) return;
            if (now < _nextCullUtc) return;
            TryStartCull(s, now);
        }
    }

    internal static bool TryStartCull(Settings s, DateTime now)
    {
        var typeId = PickTargetSpecies(s);
        if (typeId == 0)
        {
            _nextCullUtc = now.AddMinutes(Math.Max(5, s.CullIntervalMinutes / 4));
            ModManager.Log("[Cull] No eligible species found — retrying later.", ModManager.LogLevel.Warn);
            return false;
        }

        var speciesName = ((CreatureType)typeId).ToString();
        var cull = new ActiveCullData
        {
            TargetCreatureType = typeId,
            TargetSpeciesName = speciesName,
            StartsUtc = now,
            EndsUtc = now.AddMinutes(s.CullDurationMinutes),
        };

        ActiveCull = cull;
        _lastReminderUtc = now;
        _deathStackCount = 0;
        _spawnedAddGuids.Clear();
        CullPersistence.SaveActiveCull(cull);
        CullBroadcast.AnnounceCullStart(cull, s);

        ModManager.Log($"[Cull] Started — target: {speciesName} ({typeId}), ends: {cull.EndsUtc:u} UTC.", ModManager.LogLevel.Info);
        return true;
    }

    static uint PickTargetSpecies(Settings s)
    {
        var denylist = new HashSet<uint>(s.DenylistCreatureTypes);
        var pool = HuntRuntime.GlobalSpeciesKills
            .Where(kv => kv.Key != 0 && !denylist.Contains(kv.Key) && kv.Value > 0)
            .ToList();

        if (pool.Count == 0) return 0;

        // Weight by inverse kill count — fewer kills = higher chance of selection
        var weights = pool.Select(kv => 1.0 / (1.0 + kv.Value)).ToList();
        var total = weights.Sum();
        var roll = _rng.NextDouble() * total;
        double acc = 0;
        for (var i = 0; i < pool.Count; i++)
        {
            acc += weights[i];
            if (roll <= acc) return pool[i].Key;
        }
        return pool[^1].Key;
    }

    // ── Kill tracking ────────────────────────────────────────────────────

    internal static void RecordKill(uint playerGuid, string playerName)
    {
        lock (CullLock)
        {
            if (ActiveCull == null) return;
            ActiveCull.TotalKills++;
            ActiveCull.KillsByPlayer.TryGetValue(playerGuid, out var prev);
            ActiveCull.KillsByPlayer[playerGuid] = prev + 1;
            ActiveCull.PlayerNames[playerGuid] = playerName;
            CullPersistence.SaveActiveCull(ActiveCull);
        }
    }

    // ── Player death tracking ─────────────────────────────────────────────

    internal static void RecordPlayerDeath(string playerName)
    {
        lock (CullLock)
        {
            if (ActiveCull == null) return;
            _deathStackCount++;
        }

        var speciesName = "";
        lock (CullLock)
            speciesName = ActiveCull?.TargetSpeciesName ?? "";

        if (speciesName.Length > 0)
            WorldEventsBroadcast.Send(
                $"[EVENT - Cull] {playerName} has been overwhelmed while trying to control the {speciesName} population — they've become stronger! (×{_deathStackCount + 1} power)");
    }

    // ── Swarm tier helpers ───────────────────────────────────────────────

    internal static int GetSwarmTier(Settings s)
    {
        var kills = ActiveCull?.TotalKills ?? 0;
        return GetSwarmTierFromKills(kills, s);
    }

    internal static int GetSwarmTierFromKills(int kills, Settings? s)
    {
        var killsPerTier = s?.CullSwarmKillsPerTier ?? 25;
        var maxTier = s?.CullSwarmMaxTiers ?? 3;
        return Math.Min(kills / Math.Max(1, killsPerTier), maxTier);
    }

    // Returns the total scale multiplier including death stacks
    internal static (int addCount, float scale, float healthMult) GetSwarmStats(Settings s)
    {
        var tier = GetSwarmTier(s);
        var addCount = s.CullSwarmBaseAdds + tier * s.CullSwarmAddsPerTier;
        var deathBonus = _deathStackCount * 0.05;
        var scale = (float)(s.CullSwarmScaleBase + tier * s.CullSwarmScalePerTier + deathBonus);
        var healthMult = (float)(s.CullSwarmHealthMultBase + tier * s.CullSwarmHealthMultPerTier + deathBonus);
        return (addCount, scale, healthMult);
    }

    // ── Admin ────────────────────────────────────────────────────────────

    internal static void ForceStart(Settings s, uint? creatureTypeId = null)
    {
        lock (CullLock)
        {
            var now = DateTime.UtcNow;
            var typeId = creatureTypeId ?? PickTargetSpecies(s);
            if (typeId == 0)
            {
                ModManager.Log("[Cull] ForceStart: no eligible species.", ModManager.LogLevel.Warn);
                return;
            }

            var cull = new ActiveCullData
            {
                TargetCreatureType = typeId,
                TargetSpeciesName = ((CreatureType)typeId).ToString(),
                StartsUtc = now,
                EndsUtc = now.AddMinutes(s.CullDurationMinutes),
            };

            ActiveCull = cull;
            _lastReminderUtc = now;
            _deathStackCount = 0;
            _spawnedAddGuids.Clear();
            CullPersistence.SaveActiveCull(cull);
            CullBroadcast.AnnounceCullStart(cull, s);
        }
    }

    internal static void ForceStop()
    {
        lock (CullLock)
        {
            if (ActiveCull == null) return;
            var ended = ActiveCull;
            ActiveCull = null;
            _nextCullUtc = DateTime.UtcNow;
            _spawnedAddGuids.Clear();
            _deathStackCount = 0;
            CullPersistence.ClearActiveCull();
            CullBroadcast.AnnounceCullEnd(ended);
        }
    }
}
