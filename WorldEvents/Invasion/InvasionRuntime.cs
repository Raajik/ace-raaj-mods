using ACE.Database;
using ACE.Database.Models.World;
using WorldEvents.Invasion.Models;

using WorldWeenie = ACE.Database.Models.World.Weenie;

namespace WorldEvents;

internal static class InvasionRuntime
{
    internal static ActiveInvasionData? ActiveInvasion;
    internal static readonly object InvasionLock = new();

    static readonly List<WorldObject> _dynamicSpawns = new();
    static DateTime _nextInvasionUtc = DateTime.MaxValue;
    static DateTime _lastReminderUtc = DateTime.MinValue;
    static readonly Random _rng = new();

    // ── Lifecycle ────────────────────────────────────────────────────────

    internal static void LoadFromDisk(Settings s)
    {
        InvasionPersistence.EnsureDirectories();
        lock (InvasionLock)
        {
            var loaded = InvasionPersistence.LoadActiveInvasion();
            if (loaded != null && DateTime.UtcNow < loaded.EndsUtc)
            {
                ActiveInvasion = loaded;
                InvasionKillTracker.Reset(loaded.WaveKillThreshold, loaded.BossRespawnMinutes);
                foreach (var t in loaded.Towns.Where(t => t.Mode == InvasionMode.Scripted))
                    TryStartScriptedEvent(t.EventName);
            }
            else
            {
                _nextInvasionUtc = DateTime.UtcNow.AddMinutes(RollCooldown(s));
            }
        }
        TickTimer(s);
    }

    internal static void TickTimer(Settings s)
    {
        if (!s.EnableInvasion) return;

        ActiveInvasionData? ended = null;
        bool idleFade = false;

        lock (InvasionLock)
        {
            var now = DateTime.UtcNow;

            if (ActiveInvasion != null)
            {
                // Idle detection: no kills since wave start or since last kill
                var lastKill = InvasionKillTracker.LastKillUtc;
                var idleMinutes = lastKill == DateTime.MinValue
                    ? (now - ActiveInvasion.StartedUtc).TotalMinutes
                    : (now - lastKill).TotalMinutes;

                if (idleMinutes >= s.InvasionIdleTimeoutMinutes)
                {
                    ended = ActiveInvasion;
                    idleFade = true;
                }
                else if (now >= ActiveInvasion.EndsUtc)
                {
                    ended = ActiveInvasion;
                }

                if (ended != null)
                {
                    StopWaveInternal(ended);
                    ActiveInvasion = null;
                    _nextInvasionUtc = now.AddMinutes(RollCooldown(s));
                    InvasionPersistence.ClearActiveInvasion();
                }
                else
                {
                    // Reminder broadcast
                    if ((now - _lastReminderUtc).TotalMinutes >= s.InvasionReminderIntervalMinutes)
                    {
                        _lastReminderUtc = now;
                        var snap = ActiveInvasion!;
                        var kills = InvasionKillTracker.KillsSinceBoss;
                        var threshold = InvasionKillTracker.Threshold;
                        Task.Run(() => InvasionBroadcast.AnnounceReminder(snap, kills, threshold));
                    }

                    // Boss respawn check
                    if (InvasionKillTracker.IsBossRespawnDue(now))
                        TryRespawnBoss(s, ActiveInvasion!);
                }
            }

            if (ActiveInvasion == null && ended == null)
            {
                if (now >= _nextInvasionUtc)
                    TryStartNextWave(s, now);
            }
        }

        if (ended != null)
        {
            if (InvasionKillTracker.HasParticipants)
                InvasionLootRewards.DistributeWaveRewards(s);

            if (idleFade)
                InvasionBroadcast.AnnounceIdleFade(ended);
            else
                InvasionBroadcast.AnnounceWaveEnd(s, ended);
        }
    }

    static double RollCooldown(Settings s)
    {
        var min = Math.Max(1, s.InvasionCooldownMinutesMin);
        var max = Math.Max(min, s.InvasionCooldownMinutesMax);
        return min + _rng.NextDouble() * (max - min);
    }

    // ── Wave startup ─────────────────────────────────────────────────────

    static void TryStartNextWave(Settings s, DateTime now)
    {
        var eligible = s.InvasionTowns.Where(t => t.Enabled && !string.IsNullOrWhiteSpace(t.TownName)).ToList();
        if (eligible.Count == 0) return;

        var minT = Math.Max(1, s.InvasionMinTowns);
        var maxT = Math.Max(minT, Math.Min(s.InvasionMaxTowns, eligible.Count));
        var townCount = _rng.Next(minT, maxT + 1);

        Shuffle(eligible);
        var selected = eligible.Take(townCount).ToList();

        // Creature type theme
        var themeTypeId = 0u;
        var themeName = "";
        if (s.InvasionUseCreatureTypeTheme && s.InvasionCreatureTypePool.Count > 0)
        {
            themeTypeId = s.InvasionCreatureTypePool[_rng.Next(s.InvasionCreatureTypePool.Count)];
            themeName = ((CreatureType)themeTypeId).ToString();
        }

        // Roll kill threshold, derive boss respawn time (inverse relationship)
        var threshMin = Math.Max(1, s.InvasionKillThresholdMin);
        var threshMax = Math.Max(threshMin, s.InvasionKillThresholdMax);
        var threshold = _rng.Next(threshMin, threshMax + 1);
        var respawnMins = ComputeBossRespawnMinutes(s, threshold);

        var ends = now.AddMinutes(s.InvasionWindowMinutes);
        var wave = new ActiveInvasionData
        {
            StartedUtc = now,
            EndsUtc = ends,
            ThemeName = themeName,
            WaveKillThreshold = threshold,
            BossRespawnMinutes = respawnMins,
        };

        foreach (var town in selected)
        {
            var mode = ResolveMode(town);
            var tier = s.InvasionUseTierSystem ? _rng.Next(1, 7) : 0;
            wave.Towns.Add(new TownInvasionEntry
            {
                TownName = town.TownName,
                EventName = town.EventName ?? "",
                Mode = mode,
                Tier = tier,
            });

            if (mode == InvasionMode.Scripted)
                TryStartScriptedEvent(town.EventName);
            else
                StartDynamicEntry(s, town, tier, themeTypeId);
        }

        InvasionKillTracker.Reset(threshold, respawnMins);
        _lastReminderUtc = now;
        ActiveInvasion = wave;
        InvasionPersistence.SaveActiveInvasion(wave);

        ModManager.Log(
            $"[Invasion] Wave started — {string.Join(", ", wave.Towns.Select(t => $"{t.TownName}(T{t.Tier})"))} " +
            $"theme:{(themeName.Length > 0 ? themeName : "none")} threshold:{threshold} respawn:{respawnMins:0.#}m ends:{ends:u}",
            ModManager.LogLevel.Info);

        var snap = wave;
        Task.Run(() => InvasionBroadcast.AnnounceWaveStart(s, snap));
    }

    // Higher threshold → faster respawn (interpolated linearly)
    static double ComputeBossRespawnMinutes(Settings s, int threshold)
    {
        var threshMin = (double)s.InvasionKillThresholdMin;
        var threshMax = (double)s.InvasionKillThresholdMax;
        if (threshMax <= threshMin) return s.InvasionBossRespawnAtMinThreshold;
        var t = (threshold - threshMin) / (threshMax - threshMin);
        return s.InvasionBossRespawnAtMinThreshold + t * (s.InvasionBossRespawnAtMaxThreshold - s.InvasionBossRespawnAtMinThreshold);
    }

    static InvasionMode ResolveMode(InvasionTownSettings t) =>
        t.Mode == InvasionMode.Random ? (_rng.Next(2) == 0 ? InvasionMode.Scripted : InvasionMode.Dynamic) : t.Mode;

    static void TryStartScriptedEvent(string? eventName)
    {
        if (string.IsNullOrWhiteSpace(eventName)) return;
        if (!EventManager.IsEventAvailable(eventName))
        {
            ModManager.Log($"[Invasion] ACE event '{eventName}' not found in world DB.", ModManager.LogLevel.Warn);
            return;
        }
        EventManager.StartEvent(eventName, null, null);
    }

    // ── Boss management ───────────────────────────────────────────────────

    // Called from Creature.Die patch (within InvasionLock)
    internal static void CheckBossSpawnThreshold(Settings s, InvasionTownSettings town)
    {
        if (InvasionKillTracker.BossIsAlive) return;
        if (InvasionKillTracker.KillsSinceBoss < InvasionKillTracker.Threshold) return;
        if (town.BossWcid == 0) return;
        SpawnBoss(town);
    }

    static void TryRespawnBoss(Settings s, ActiveInvasionData wave)
    {
        foreach (var entry in wave.Towns)
        {
            var ts = s.InvasionTowns.FirstOrDefault(t => t.TownName == entry.TownName);
            if (ts?.BossWcid == 0 || ts == null) continue;
            SpawnBoss(ts);
            return;
        }
    }

    static void SpawnBoss(InvasionTownSettings town)
    {
        if (town.TownCenterObjCellId == 0 || town.BossWcid == 0) return;
        try
        {
            var boss = WorldObjectFactory.CreateNewWorldObject(town.BossWcid);
            if (boss == null) return;

            boss.Location = new Position(
                town.TownCenterObjCellId,
                town.TownCenterX, town.TownCenterY, town.TownCenterZ,
                0f, 0f, 0f, 1f);
            boss.Location.LandblockId = new LandblockId(boss.Location.GetCell());

            if (!LandblockManager.AddObject(boss)) return;
            if (boss is not Creature bossCreature) return;

            InvasionKillTracker.OnBossSpawned(bossCreature);
            var bossName = boss.Name ?? $"WCID {town.BossWcid}";
            var townName = town.TownName;
            var isRespawn = InvasionKillTracker.TotalKills > InvasionKillTracker.Threshold;

            ModManager.Log($"[Invasion] Boss '{bossName}' spawned at {townName}.", ModManager.LogLevel.Info);
            Task.Run(() =>
            {
                if (isRespawn)
                    InvasionBroadcast.AnnounceBossRespawning(townName, bossName);
                else
                    InvasionBroadcast.AnnounceBossSpawned(townName, bossName);
            });
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Invasion] Boss spawn failed at {town.TownName}: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    // ── Wave shutdown ────────────────────────────────────────────────────

    static void StopWaveInternal(ActiveInvasionData wave)
    {
        foreach (var t in wave.Towns.Where(t => t.Mode == InvasionMode.Scripted && !string.IsNullOrWhiteSpace(t.EventName)))
        {
            try { EventManager.StopEvent(t.EventName, null, null); }
            catch (Exception ex)
            {
                ModManager.Log($"[Invasion] StopEvent '{t.EventName}' failed: {ex.Message}", ModManager.LogLevel.Warn);
            }
        }

        foreach (var wo in _dynamicSpawns)
        {
            try { wo.Destroy(); }
            catch { }
        }
        _dynamicSpawns.Clear();
    }

    internal static void ForceStop(Settings s)
    {
        ActiveInvasionData? stopped = null;
        lock (InvasionLock)
        {
            if (ActiveInvasion == null) return;
            stopped = ActiveInvasion;
            StopWaveInternal(stopped);
            ActiveInvasion = null;
            _nextInvasionUtc = DateTime.UtcNow.AddMinutes(RollCooldown(s));
            InvasionPersistence.ClearActiveInvasion();
        }
        if (stopped != null)
            InvasionBroadcast.AnnounceWaveEnd(s, stopped);
    }

    // ── Dynamic spawning ─────────────────────────────────────────────────

    static void StartDynamicEntry(Settings s, InvasionTownSettings town, int tier, uint themeTypeId)
    {
        var (levelMin, levelMax) = ResolveLevelRange(s, town, tier);
        try
        {
            var wcids = themeTypeId != 0 && town.TownCenterObjCellId != 0
                ? QueryCreatureWcidsByType(themeTypeId, levelMin, levelMax)
                : QueryNearbyCreatureWcids(town, levelMin, levelMax);

            if (wcids.Count == 0)
            {
                ModManager.Log($"[Invasion] No mobs found for {town.TownName} T{tier} lv{levelMin}-{levelMax} theme={themeTypeId}.", ModManager.LogLevel.Warn);
                return;
            }

            var spawned = SpawnScattered(town, wcids, town.DynamicMaxSpawns);
            _dynamicSpawns.AddRange(spawned);
            ModManager.Log($"[Invasion] Spawned {spawned.Count} mobs at {town.TownName} T{tier}.", ModManager.LogLevel.Info);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Invasion] Dynamic spawn failed for {town.TownName}: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    static (int min, int max) ResolveLevelRange(Settings s, InvasionTownSettings town, int tier)
    {
        if (tier > 0 && s.InvasionUseTierSystem)
        {
            var range = s.InvasionTierRanges.FirstOrDefault(r => r.Tier == tier);
            if (range != null) return (range.LevelMin, range.LevelMax);
        }
        return (town.DynamicLevelMin, town.DynamicLevelMax);
    }

    static List<uint> QueryCreatureWcidsByType(uint creatureTypeId, int levelMin, int levelMax)
    {
        using var ctx = new WorldDbContext();
        ctx.ChangeTracker.QueryTrackingBehavior = QueryTrackingBehavior.NoTracking;
        var levelTypeId = (ushort)PropertyInt.Level;
        var ctTypeId    = (ushort)PropertyInt.CreatureType;

        return (from weenie in ctx.Weenie
                where weenie.Type == (int)WeenieType.Creature
                join ctProp in ctx.WeeniePropertiesInt on weenie.ClassId equals ctProp.ObjectId
                where ctProp.Type == ctTypeId && ctProp.Value == (int)creatureTypeId
                join lvProp in ctx.WeeniePropertiesInt on weenie.ClassId equals lvProp.ObjectId
                where lvProp.Type == levelTypeId && lvProp.Value >= levelMin && lvProp.Value <= levelMax
                select weenie.ClassId)
               .Distinct().ToList();
    }

    static List<uint> QueryNearbyCreatureWcids(InvasionTownSettings town, int levelMin, int levelMax)
    {
        if (town.DynamicLandblocks.Count == 0) return new();
        using var ctx = new WorldDbContext();
        ctx.ChangeTracker.QueryTrackingBehavior = QueryTrackingBehavior.NoTracking;
        var levelTypeId = (ushort)PropertyInt.Level;
        var lbs = town.DynamicLandblocks;

        return (from inst in ctx.LandblockInstance
                where lbs.Contains((int)(inst.ObjCellId >> 16))
                join weenie in ctx.Weenie on inst.WeenieClassId equals weenie.ClassId
                where weenie.Type == (int)WeenieType.Creature
                join lvProp in ctx.WeeniePropertiesInt on weenie.ClassId equals lvProp.ObjectId
                where lvProp.Type == levelTypeId && lvProp.Value >= levelMin && lvProp.Value <= levelMax
                select inst.WeenieClassId)
               .Distinct().ToList();
    }

    static List<WorldObject> SpawnScattered(InvasionTownSettings town, List<uint> wcids, int maxCount)
    {
        var result = new List<WorldObject>();
        if (town.TownCenterObjCellId == 0) return result;
        Shuffle(wcids);

        for (var i = 0; i < maxCount; i++)
        {
            var wcid = wcids[i % wcids.Count];
            var wo = WorldObjectFactory.CreateNewWorldObject(wcid);
            if (wo == null) continue;

            var angle  = _rng.NextDouble() * 2 * Math.PI;
            var dist   = (float)(_rng.NextDouble() * town.TownSpawnRadius);
            var ox     = town.TownCenterX + (float)(Math.Cos(angle) * dist);
            var oy     = town.TownCenterY + (float)(Math.Sin(angle) * dist);
            var facing = (float)(_rng.NextDouble() * Math.PI * 2);

            wo.Location = new Position(town.TownCenterObjCellId, ox, oy, town.TownCenterZ,
                0f, 0f, (float)Math.Sin(facing / 2), (float)Math.Cos(facing / 2));
            wo.Location.LandblockId = new LandblockId(wo.Location.GetCell());

            try
            {
                if (LandblockManager.AddObject(wo))
                    result.Add(wo);
            }
            catch (Exception ex)
            {
                ModManager.Log($"[Invasion] Failed to place WCID {wcid}: {ex.Message}", ModManager.LogLevel.Warn);
            }
        }
        return result;
    }

    static void Shuffle<T>(List<T> list)
    {
        for (var i = list.Count - 1; i > 0; i--)
        {
            var j = _rng.Next(i + 1);
            (list[i], list[j]) = (list[j], list[i]);
        }
    }

    // ── Status ───────────────────────────────────────────────────────────

    internal static ActiveInvasionData? GetActiveSnapshot()
    {
        lock (InvasionLock)
            return ActiveInvasion;
    }
}
