using ACE.Database;
using ACE.Database.Models.World;
using HarmonyLib;
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
    static DateTime _nextTrickleSpawnUtc = DateTime.MinValue;
    static int _tricklePulseCount = 0;
    static bool _creatureExSpawnedThisWave = false;
    static readonly Random _rng = new();
    static PortalStormState? _portalStormState;

    class PortalStormState
    {
        public List<WorldObject> ActivePortals = new();
        public DateTime NextPortalShuffleUtc = DateTime.MinValue;
    }

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

                // Backward compat: old saves have KillThreshold == 0 on towns
                foreach (var t in loaded.Towns)
                {
                    if (t.KillThreshold == 0)
                    {
                        t.KillThreshold = loaded.WaveKillThreshold;
                        t.BossRespawnMinutes = loaded.BossRespawnMinutes;
                    }
                }

                var townStates = loaded.Towns.ToDictionary(
                    t => t.TownName,
                    t => new InvasionKillTracker.TownKillState
                    {
                        Threshold = t.KillThreshold,
                        BossRespawnMinutes = t.BossRespawnMinutes,
                    });
                InvasionKillTracker.Reset(townStates);
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
                    // Reminder broadcast (silenced when unified scheduler is managing messaging)
                    if (!s.UseUnifiedScheduler && (now - _lastReminderUtc).TotalMinutes >= s.InvasionReminderIntervalMinutes)
                    {
                        _lastReminderUtc = now;
                        var snap = ActiveInvasion!;
                        Task.Run(() => InvasionBroadcast.AnnounceReminder(snap));
                    }

                    // Per-town boss respawn check
                    if (ActiveInvasion != null)
                    {
                        foreach (var entry in ActiveInvasion.Towns)
                        {
                            var state = InvasionKillTracker.GetTownState(entry.TownName);
                            if (state?.IsBossRespawnDue(now) == true)
                            {
                                var ts = s.InvasionTowns.FirstOrDefault(t => t.TownName == entry.TownName);
                                if (ts != null)
                                    SpawnBoss(ts, entry);
                            }
                        }
                    }

                    // Trickle spawn check (30-45s chaotic reinforcements)
                    if (_nextTrickleSpawnUtc == DateTime.MinValue)
                        _nextTrickleSpawnUtc = now.AddSeconds(_rng.Next(30, 46));

                    if (now >= _nextTrickleSpawnUtc)
                    {
                        _nextTrickleSpawnUtc = now.AddSeconds(_rng.Next(30, 46));
                        DoTrickleSpawn(s);
                    }

                    // Portal Storm shuffle check
                    if (ActiveInvasion!.ChaosMode && _portalStormState != null && now >= _portalStormState.NextPortalShuffleUtc)
                    {
                        ShuffleStormPortals(s);
                    }
                }
            }

            if (!s.UseUnifiedScheduler && ActiveInvasion == null && ended == null)
            {
                if (now >= _nextInvasionUtc)
                    TryStartNextWave(s, now);
            }
        }

        if (ended != null)
        {
            var ranked = InvasionKillTracker.GetRanked();
            var participantCount = ranked.Count;
            if (participantCount > 0)
                InvasionLootRewards.DistributeWaveRewards(s, participantCount);

            if (participantCount == 1 && s.SoloCompetitorBonus.Enable)
            {
                var playerName = ranked[0].Name;
                WorldEventsBroadcast.Send(s.SoloCompetitorBonus.BroadcastMessage.Replace("{Name}", playerName));
            }

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

    static (uint themeTypeId, string themeName, bool chaosMode) RollInvasionTheme(Settings s)
    {
        // Portal Storm chance: even with themes enabled, roll for chaos first
        var stormChance = Math.Clamp(s.InvasionPortalStormChancePercent, 0, 100);
        if (_rng.Next(1, 101) <= stormChance)
            return (0u, "", true);

        if (s.InvasionUseCreatureTypeTheme && s.InvasionCreatureTypePool.Count > 0)
        {
            var typeId = s.InvasionCreatureTypePool[_rng.Next(s.InvasionCreatureTypePool.Count)];
            var name = ((CreatureType)typeId).ToString();
            return (typeId, name, false);
        }

        // Unthemed dynamic invasions: not Portal Storm unless the storm roll above hit.
        return (0u, "", false);
    }

    static string FormatInvasionThemeLogLabel(string themeName, bool chaosMode)
    {
        if (themeName.Length > 0)
            return themeName;
        return chaosMode ? "PortalStorm" : "Dynamic";
    }

    static int RollTownCount(Settings s)
    {
        var weights = s.InvasionTownCountWeights;
        if (weights == null || weights.Count == 0)
            return _rng.Next(s.InvasionMinTowns, s.InvasionMaxTowns + 1);

        var total = weights.Sum();
        var roll = _rng.Next(total);
        var cumulative = 0;
        for (int i = 0; i < weights.Count; i++)
        {
            cumulative += weights[i];
            if (roll < cumulative)
                return Math.Min(i + 1, s.InvasionMaxTowns);
        }
        return s.InvasionMinTowns;
    }

    static int ComputeTownThreshold(Settings s, int tier, bool isSoloTown)
    {
        var baseMin = s.InvasionKillThresholdMin;
        var baseMax = s.InvasionKillThresholdMax;

        // Linear tier scaling: T1 = 1/6, T6 = full
        double tierFactor = tier > 0 ? tier / 6.0 : 0.5;
        var scaledMin = (int)(baseMin * tierFactor);
        var scaledMax = (int)(baseMax * tierFactor);

        // Cap T1-T3 at 1/3 of absolute max
        var oneThirdMax = baseMax / 3;
        if (tier > 0 && tier <= 3)
            scaledMax = Math.Min(scaledMax, oneThirdMax);

        var threshold = _rng.Next(scaledMin, Math.Max(scaledMin + 1, scaledMax + 1));

        // Random variance +/-
        var variance = s.InvasionTierThresholdVariance;
        threshold += _rng.Next(-variance, variance + 1);
        threshold = Math.Clamp(threshold, baseMin, baseMax);

        // Solo town buff: higher threshold (more sustained action)
        if (isSoloTown)
            threshold = Math.Min(baseMax, (int)(threshold * s.InvasionSoloTownThresholdMultiplier));

        return threshold;
    }

    static double ComputeTownRespawn(Settings s, int threshold, bool isSoloTown)
    {
        var respawn = ComputeBossRespawnMinutes(s, threshold);
        if (isSoloTown)
            respawn *= s.InvasionSoloTownRespawnMultiplier;
        return Math.Max(0.5, respawn);
    }

    // ── Wave startup ─────────────────────────────────────────────────────

    static void TryStartNextWave(Settings s, DateTime now)
    {
        var eligible = s.InvasionTowns.Where(t => t.Enabled && !string.IsNullOrWhiteSpace(t.TownName)).ToList();
        if (eligible.Count == 0) return;

        var townCount = RollTownCount(s);
        townCount = Math.Min(townCount, eligible.Count);

        Shuffle(eligible);
        var selected = eligible.Take(townCount).ToList();
        var isSolo = selected.Count == 1;

        // Creature type theme (with Portal Storm chance)
        var (themeTypeId, themeName, chaosMode) = RollInvasionTheme(s);

        var ends = now.AddMinutes(s.InvasionWindowMinutes);
        var wave = new ActiveInvasionData
        {
            StartedUtc = now,
            EndsUtc = ends,
            ThemeName = themeName,
            ChaosMode = chaosMode,
        };

        var townStates = new Dictionary<string, InvasionKillTracker.TownKillState>();

        foreach (var town in selected)
        {
            var mode = ResolveMode(town);
            var tier = s.InvasionUseTierSystem ? _rng.Next(1, 7) : 0;
            var threshold = ComputeTownThreshold(s, tier, isSolo);
            var respawnMins = ComputeTownRespawn(s, threshold, isSolo);

            wave.Towns.Add(new TownInvasionEntry
            {
                TownName = town.TownName,
                EventName = town.EventName ?? "",
                Mode = mode,
                Tier = tier,
                KillThreshold = threshold,
                BossRespawnMinutes = respawnMins,
            });

            townStates[town.TownName] = new InvasionKillTracker.TownKillState
            {
                Threshold = threshold,
                BossRespawnMinutes = respawnMins,
            };

            if (mode == InvasionMode.Scripted)
                TryStartScriptedEvent(town.EventName);
            else
                StartDynamicEntry(s, town, tier, themeTypeId);
        }

        // Legacy global fallback (for old save compat)
        var firstState = townStates.Values.FirstOrDefault();
        wave.WaveKillThreshold = firstState?.Threshold ?? s.InvasionKillThresholdMin;
        wave.BossRespawnMinutes = firstState?.BossRespawnMinutes ?? 5.0;

        InvasionKillTracker.Reset(townStates);
        _lastReminderUtc = now;
        _nextTrickleSpawnUtc = now.AddSeconds(_rng.Next(30, 46));
        _tricklePulseCount = 0;
        _creatureExSpawnedThisWave = false;
        ActiveInvasion = wave;
        InvasionPersistence.SaveActiveInvasion(wave);

        ModManager.Log(
            $"[Invasion] Wave started — {string.Join(", ", wave.Towns.Select(t => $"{t.TownName}(T{t.Tier})[{t.KillThreshold}]"))} " +
            $"theme:{FormatInvasionThemeLogLabel(themeName, chaosMode)} ends:{ends:u}",
            ModManager.LogLevel.Info);

        if (wave.ChaosMode)
            SpawnPortalStormPortals(s, wave);

        var snap = wave;
        Task.Run(() => InvasionBroadcast.AnnounceWaveStart(s, snap));
    }

    /// <summary>
    /// Starts a new invasion wave immediately, bypassing the cooldown check.
    /// Used by the unified event scheduler.
    /// </summary>
    internal static ActiveInvasionData? TryStartWaveBypassCooldown(Settings s)
    {
        var now = DateTime.UtcNow;

        lock (InvasionLock)
        {
            if (ActiveInvasion != null) return null;

            var eligible = s.InvasionTowns.Where(t => t.Enabled && !string.IsNullOrWhiteSpace(t.TownName)).ToList();
            if (eligible.Count == 0) return null;

            var townCount = RollTownCount(s);
            townCount = Math.Min(townCount, eligible.Count);

            Shuffle(eligible);
            var selected = eligible.Take(townCount).ToList();
            var isSolo = selected.Count == 1;

            var (themeTypeId, themeName, chaosMode) = RollInvasionTheme(s);

            var ends = now.AddMinutes(s.InvasionWindowMinutes);
            var wave = new ActiveInvasionData
            {
                StartedUtc = now,
                EndsUtc = ends,
                ThemeName = themeName,
                ChaosMode = chaosMode,
            };

            var townStates = new Dictionary<string, InvasionKillTracker.TownKillState>();

            foreach (var town in selected)
            {
                var mode = ResolveMode(town);
                var tier = s.InvasionUseTierSystem ? _rng.Next(1, 7) : 0;
                var threshold = ComputeTownThreshold(s, tier, isSolo);
                var respawnMins = ComputeTownRespawn(s, threshold, isSolo);

                wave.Towns.Add(new TownInvasionEntry
                {
                    TownName = town.TownName,
                    EventName = town.EventName ?? "",
                    Mode = mode,
                    Tier = tier,
                    KillThreshold = threshold,
                    BossRespawnMinutes = respawnMins,
                });

                townStates[town.TownName] = new InvasionKillTracker.TownKillState
                {
                    Threshold = threshold,
                    BossRespawnMinutes = respawnMins,
                };

                if (mode == InvasionMode.Scripted)
                    TryStartScriptedEvent(town.EventName);
                else
                    StartDynamicEntry(s, town, tier, themeTypeId);
            }

            var firstState = townStates.Values.FirstOrDefault();
            wave.WaveKillThreshold = firstState?.Threshold ?? s.InvasionKillThresholdMin;
            wave.BossRespawnMinutes = firstState?.BossRespawnMinutes ?? 5.0;

            InvasionKillTracker.Reset(townStates);
            _lastReminderUtc = now;
            _nextTrickleSpawnUtc = now.AddSeconds(_rng.Next(30, 46));
            _tricklePulseCount = 0;
            _creatureExSpawnedThisWave = false;
            ActiveInvasion = wave;
            InvasionPersistence.SaveActiveInvasion(wave);

            ModManager.Log(
                $"[Invasion] Wave started (scheduler) — {string.Join(", ", wave.Towns.Select(t => $"{t.TownName}(T{t.Tier})[{t.KillThreshold}]"))} " +
                $"theme:{FormatInvasionThemeLogLabel(themeName, chaosMode)} ends:{ends:u}",
                ModManager.LogLevel.Info);

            if (wave.ChaosMode)
                SpawnPortalStormPortals(s, wave);

            var snap = wave;
            Task.Run(() => InvasionBroadcast.AnnounceWaveStart(s, snap));

            return wave;
        }
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
    internal static void CheckBossSpawnThreshold(Settings s, InvasionTownSettings town, TownInvasionEntry entry)
    {
        var state = InvasionKillTracker.GetTownState(town.TownName);
        if (state == null) return;
        if (state.BossIsAlive) return;
        if (state.KillsSinceBoss < entry.KillThreshold) return;
        if (town.BossWcid == 0) return;
        SpawnBoss(town, entry);
    }

    static void SpawnBoss(InvasionTownSettings town, TownInvasionEntry entry)
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

            var lb = LandblockManager.GetLandblock(boss.Location.LandblockId, false);
            if (lb == null) return;

            var state = InvasionKillTracker.GetTownState(town.TownName);
            var isRespawn = state != null && state.TotalKills > entry.KillThreshold;
            var bossName = boss.Name ?? $"WCID {town.BossWcid}";
            var townName = town.TownName;

            lb.EnqueueAction(new ActionEventDelegate(() =>
            {
                try
                {
                    if (!lb.AddWorldObject(boss)) return;
                    if (boss is not Creature bossCreature) return;

                    InvasionKillTracker.OnBossSpawned(townName, bossCreature);
                    entry.BossIsAlive = true;

                    ModManager.Log($"[Invasion] Boss '{bossName}' spawned at {townName}.", ModManager.LogLevel.Info);
                    var chaosMode = ActiveInvasion?.ChaosMode ?? false;
                    Task.Run(() =>
                    {
                        if (isRespawn)
                            InvasionBroadcast.AnnounceBossRespawning(townName, bossName, chaosMode);
                        else
                            InvasionBroadcast.AnnounceBossSpawned(townName, bossName, chaosMode);
                    });
                }
                catch (Exception ex)
                {
                    ModManager.Log($"[Invasion] Boss spawn lambda failed at {townName}: {ex.Message}", ModManager.LogLevel.Warn);
                }
            }));
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Invasion] Boss spawn failed at {town.TownName}: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    // ── Wave shutdown ────────────────────────────────────────────────────

    internal static void StopWaveInternal(ActiveInvasionData wave)
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
        _nextTrickleSpawnUtc = DateTime.MinValue;
        _tricklePulseCount = 0;
        _creatureExSpawnedThisWave = false;

        // Clear Portal Storm portals
        if (_portalStormState != null)
        {
            foreach (var portal in _portalStormState.ActivePortals)
            {
                try
                {
                    if (portal != null && !portal.IsDestroyed)
                    {
                        portal.EnqueueBroadcast(new GameMessageScript(portal.Guid, PlayScript.PortalExit));
                        Task.Run(async () =>
                        {
                            await Task.Delay(1000);
                            try { portal.Destroy(); } catch { }
                        });
                    }
                }
                catch { }
            }
            _portalStormState = null;
        }
    }

    internal static void ForceStart(Settings s, string? townName = null)
    {
        var now = DateTime.UtcNow;

        lock (InvasionLock)
        {
            if (ActiveInvasion != null)
            {
                var stopped = ActiveInvasion;
                StopWaveInternal(stopped);
                ActiveInvasion = null;
                InvasionPersistence.ClearActiveInvasion();
            }

            var eligible = s.InvasionTowns
                .Where(t => t.Enabled && !string.IsNullOrWhiteSpace(t.TownName))
                .ToList();

            if (!string.IsNullOrWhiteSpace(townName))
                eligible = eligible.Where(t => t.TownName.Equals(townName, StringComparison.OrdinalIgnoreCase)).ToList();

            if (eligible.Count == 0)
            {
                ModManager.Log($"[Invasion] ForceStart: no eligible town{(townName != null ? $" matching '{townName}'" : "")}.", ModManager.LogLevel.Warn);
                return;
            }

            var townCount = string.IsNullOrWhiteSpace(townName) ? RollTownCount(s) : eligible.Count;
            townCount = Math.Min(townCount, eligible.Count);

            Shuffle(eligible);
            var selected = eligible.Take(townCount).ToList();
            var isSolo = selected.Count == 1;

            var (themeTypeId, themeName, chaosMode) = RollInvasionTheme(s);

            var ends = now.AddMinutes(s.InvasionWindowMinutes);

            var wave = new ActiveInvasionData
            {
                StartedUtc = now,
                EndsUtc = ends,
                ThemeName = themeName,
                ChaosMode = chaosMode,
            };

            var townStates = new Dictionary<string, InvasionKillTracker.TownKillState>();

            foreach (var town in selected)
            {
                var mode = ResolveMode(town);
                var tier = s.InvasionUseTierSystem ? _rng.Next(1, 7) : 0;
                var threshold = ComputeTownThreshold(s, tier, isSolo);
                var respawnMins = ComputeTownRespawn(s, threshold, isSolo);

                wave.Towns.Add(new TownInvasionEntry
                {
                    TownName = town.TownName,
                    EventName = town.EventName ?? "",
                    Mode = mode,
                    Tier = tier,
                    KillThreshold = threshold,
                    BossRespawnMinutes = respawnMins,
                });

                townStates[town.TownName] = new InvasionKillTracker.TownKillState
                {
                    Threshold = threshold,
                    BossRespawnMinutes = respawnMins,
                };

                if (mode == InvasionMode.Scripted)
                    TryStartScriptedEvent(town.EventName);
                else
                    StartDynamicEntry(s, town, tier, themeTypeId);
            }

            var firstState = townStates.Values.FirstOrDefault();
            wave.WaveKillThreshold = firstState?.Threshold ?? s.InvasionKillThresholdMin;
            wave.BossRespawnMinutes = firstState?.BossRespawnMinutes ?? 5.0;

            InvasionKillTracker.Reset(townStates);
            _lastReminderUtc = now;
            _nextTrickleSpawnUtc = now.AddSeconds(_rng.Next(30, 46));
            _tricklePulseCount = 0;
            _creatureExSpawnedThisWave = false;
            ActiveInvasion = wave;
            InvasionPersistence.SaveActiveInvasion(wave);

            ModManager.Log(
                $"[Invasion] Force-started — {string.Join(", ", wave.Towns.Select(t => $"{t.TownName}(T{t.Tier})[{t.KillThreshold}]"))} " +
                $"theme:{FormatInvasionThemeLogLabel(themeName, chaosMode)} ends:{ends:u}",
                ModManager.LogLevel.Info);

            if (wave.ChaosMode)
                SpawnPortalStormPortals(s, wave);

            var snap = wave;
            Task.Run(() => InvasionBroadcast.AnnounceWaveStart(s, snap));
        }
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

            // Filter out blacklisted WCIDs (custom Valheel creatures, etc.)
            var blacklist = GetCreatureBlacklist(s);
            if (blacklist.Count > 0)
                wcids = wcids.Where(w => !blacklist.Contains(w)).ToList();

            // Fallback: if nearby query is empty, search entire database globally
            if (wcids.Count == 0 && themeTypeId == 0)
            {
                wcids = QueryCreatureWcidsGlobal(levelMin, levelMax);
                if (wcids.Count > 0)
                    ModManager.Log($"[Invasion] Fallback to global query for {town.TownName} T{tier}: found {wcids.Count} candidates.", ModManager.LogLevel.Info);
            }

            if (wcids.Count == 0)
            {
                ModManager.Log($"[Invasion] No mobs found for {town.TownName} T{tier} lv{levelMin}-{levelMax} theme={themeTypeId}.", ModManager.LogLevel.Warn);
                return;
            }

            // Themed waves: narrow to a mix of 2-4 different monster WCIDs for thematic consistency
            if (themeTypeId != 0 && wcids.Count > s.InvasionThemeMonsterMixMin)
            {
                Shuffle(wcids);
                var mixCount = Math.Min(wcids.Count, _rng.Next(s.InvasionThemeMonsterMixMin, s.InvasionThemeMonsterMixMax + 1));
                wcids = wcids.Take(mixCount).ToList();
            }

            // Pre-generate all positions on timer thread (no object mutation).
            // Group by target landblock so each LB spawns its own mobs.
            var spawns = GenerateSpawnPositions(town, wcids, town.DynamicMaxSpawns);
            var byLb = spawns.GroupBy(sp => sp.Pos.LandblockId).ToList();

            foreach (var group in byLb)
            {
                var lb = LandblockManager.GetLandblock(group.Key, false);
                if (lb == null)
                {
                    ModManager.Log(
                        $"[Invasion] Landblock not loaded; skipping {group.Count()} queued spawn(s) for {town.TownName} at 0x{group.Key.Raw:X8}.",
                        ModManager.LogLevel.Warn);
                    continue;
                }
                var batch = group.ToList();
                var townCopy = town; // capture for closure
                lb.EnqueueAction(new ActionEventDelegate(() =>
                {
                    var spawned = SpawnBatchOnLandblock(lb, batch, townCopy);
                    lock (_dynamicSpawns)
                        _dynamicSpawns.AddRange(spawned);
                }));
            }

            ModManager.Log($"[Invasion] Queued {spawns.Count} mobs across {byLb.Count} landblock(s) at {town.TownName} T{tier}.", ModManager.LogLevel.Info);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Invasion] Dynamic spawn failed for {town.TownName}: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    static List<(Position Pos, uint Wcid)> GenerateSpawnPositions(InvasionTownSettings town, List<uint> wcids, int maxCount)
    {
        var result = new List<(Position, uint)>();
        if (town.TownCenterObjCellId == 0) return result;
        Shuffle(wcids);

        for (var i = 0; i < maxCount; i++)
        {
            var pos = GenerateSingleSpawnPosition(town, _rng);
            if (pos == null) continue;
            result.Add((pos, wcids[i % wcids.Count]));
        }
        return result;
    }

    // ObjCellId low 0xFFFF is not a placeable cell (see e.g. landblock 0x17B2FFFF spawn failures in ACE_Log).
    static bool IsUnusableInvasionObjCell(uint raw)
    {
        var low = raw & 0xFFFFu;
        // 0xFFFF / 0 = unusable; cells 0x0001-0x00FF = indoor cells not suitable for mob spawns
        return low == 0xFFFFu || low == 0u || (low >= 0x0001u && low < 0x0100u);
    }

    static bool IsAllowedDynamicLandblock(InvasionTownSettings town, LandblockId landblockId)
    {
        if (town.DynamicLandblocks.Count == 0)
            return true;

        var landblock = (int)landblockId.Raw;
        if (town.DynamicLandblocks.Contains(landblock))
            return true;

        var centerLb = (int)(town.TownCenterObjCellId >> 16);
        return centerLb != 0 && centerLb == landblock;
    }

    static Position? GenerateSingleSpawnPosition(InvasionTownSettings town, Random rng, float? overrideAngle = null, float? overrideDist = null)
    {
        const int maxAttempts = 50;
        for (var attempt = 0; attempt < maxAttempts; attempt++)
        {
            var angle  = overrideAngle ?? rng.NextDouble() * 2 * Math.PI;
            var dist   = overrideDist ?? rng.NextDouble() * town.TownSpawnRadius;
            var ox     = town.TownCenterX + (float)(Math.Cos(angle) * dist);
            var oy     = town.TownCenterY + (float)(Math.Sin(angle) * dist);
            var facing = (float)(rng.NextDouble() * Math.PI * 2);

            // Snap Z to terrain height
            float z = town.TownCenterZ;
            try
            {
                var lbId = new LandblockId(new Position(town.TownCenterObjCellId, ox, oy, z, 0f, 0f, 0f, 1f).GetCell());
                var lb = LandblockManager.GetLandblock(lbId, false);
                if (lb?.LandblockMesh != null)
                {
                    var terrainZ = lb.LandblockMesh.GetZ(new System.Numerics.Vector2(ox, oy));
                    z = terrainZ + 1.0f; // slight offset above ground
                }
            }
            catch { /* fallback to town center Z */ }

            var pos = new Position(town.TownCenterObjCellId, ox, oy, z,
                0f, 0f, (float)Math.Sin(facing / 2), (float)Math.Cos(facing / 2));
            pos.LandblockId = new LandblockId(pos.GetCell());
            if (!IsUnusableInvasionObjCell(pos.LandblockId.Raw) && IsAllowedDynamicLandblock(town, pos.LandblockId))
                return pos;
        }

        return null;
    }

    // ── Portal Storm ─────────────────────────────────────────────────────

    static void SpawnPortalStormPortals(Settings s, ActiveInvasionData wave)
    {
        _portalStormState = new PortalStormState();
        var portalWcids = QueryRandomPortalWcids(50, s);
        if (portalWcids.Count == 0)
        {
            ModManager.Log("[Invasion] Portal Storm: no valid portal WCIDs found in world DB.", ModManager.LogLevel.Warn);
            return;
        }

        var rng = new Random();
        var now = DateTime.UtcNow;

        foreach (var entry in wave.Towns)
        {
            var town = s.InvasionTowns.FirstOrDefault(t => t.TownName == entry.TownName);
            if (town == null || town.TownCenterObjCellId == 0) continue;

            var baseCount = rng.Next(s.PortalStormMinPortals, s.PortalStormMaxPortals + 1);
            var scaledCount = Math.Min(9, baseCount + (entry.Tier / 2) + (wave.TricklePulseCount / 2));

            var shuffled = portalWcids.OrderBy(_ => rng.Next()).ToList();
            for (int i = 0; i < scaledCount; i++)
            {
                var wcid = shuffled[i % shuffled.Count];
                var portal = SpawnStormPortal(town, wcid, s);
                if (portal != null)
                    _portalStormState.ActivePortals.Add(portal);
            }
        }

        _portalStormState.NextPortalShuffleUtc = now.AddSeconds(s.PortalStormShuffleIntervalSeconds);
        ModManager.Log($"[Invasion] Portal Storm spawned {_portalStormState.ActivePortals.Count} portals across {wave.Towns.Count} town(s).", ModManager.LogLevel.Info);
    }

    static void ShuffleStormPortals(Settings s)
    {
        if (_portalStormState == null || ActiveInvasion == null) return;

        var now = DateTime.UtcNow;

        // Destroy existing portals with exit effect
        foreach (var portal in _portalStormState.ActivePortals)
        {
            try
            {
                if (portal != null && !portal.IsDestroyed)
                {
                    portal.EnqueueBroadcast(new GameMessageScript(portal.Guid, PlayScript.PortalExit));
                    var actionChain = new ActionChain();
                    actionChain.AddDelaySeconds(1.0f);
                    actionChain.AddAction(portal, () =>
                    {
                        try { portal.Destroy(); } catch { }
                    });
                    actionChain.EnqueueChain();
                }
            }
            catch { }
        }
        _portalStormState.ActivePortals.Clear();

        // Respawn fresh portals
        SpawnPortalStormPortals(s, ActiveInvasion);
    }

    static List<uint> QueryRandomPortalWcids(int count, Settings s)
    {
        using var ctx = new WorldDbContext();
        var portalWcids = ctx.Weenie
            .Where(w => w.Type == (int)WeenieType.Portal)
            .Select(w => w.ClassId)
            .Distinct()
            .ToList();

        if (portalWcids.Count == 0) return new();

        var excluded = s.PortalStormExcludedWcids ?? new List<uint> { 42841, 42842, 42843, 42844, 42845, 28728 };
        portalWcids = portalWcids.Where(w => !excluded.Contains(w)).ToList();

        var rng = new Random();
        return portalWcids.OrderBy(_ => rng.Next()).Take(count).ToList();
    }

    static WorldObject? SpawnStormPortal(InvasionTownSettings town, uint wcid, Settings s)
    {
        var portal = WorldObjectFactory.CreateNewWorldObject(wcid);
        if (portal == null) return null;
        if (portal is not Portal p) return null;

        var rng = new Random();
        var pos = GenerateSingleSpawnPosition(town, rng);
        if (pos == null) return null;

        portal.Location = pos;

        var dest = GenerateStormPortalDestination(town, s);
        if (dest != null)
        {
            p.Destination = dest;
            p.UpdatePortalDestination(dest);
        }

        if (portal.Location == null) return null;

        var lb = LandblockManager.GetLandblock(portal.Location.LandblockId, false);
        if (lb == null) return null;

        lb.EnqueueAction(new ActionEventDelegate(() =>
        {
            try
            {
                if (portal == null || portal.IsDestroyed) return;
                if (!lb.AddWorldObject(portal)) return;
                portal.EnqueueBroadcast(new GameMessageScript(portal.Guid, PlayScript.PortalEntry));
            }
            catch (Exception ex)
            {
                ModManager.Log($"[Invasion] Portal spawn lambda failed: {ex.Message}", ModManager.LogLevel.Warn);
            }
        }));

        return portal;
    }

    static Position? GenerateStormPortalDestination(InvasionTownSettings town, Settings s)
    {
        var rng = new Random();
        var angle = rng.NextDouble() * 2 * Math.PI;
        var dist = rng.NextDouble() * town.TownSpawnRadius;
        var ox = town.TownCenterX + (float)(Math.Cos(angle) * dist);
        var oy = town.TownCenterY + (float)(Math.Sin(angle) * dist);
        var oz = town.TownCenterZ;

        try
        {
            var lbId = new LandblockId(new Position(town.TownCenterObjCellId, ox, oy, oz, 0f, 0f, 0f, 1f).GetCell());
            var lb = LandblockManager.GetLandblock(lbId, false);
            if (lb?.LandblockMesh != null)
                oz = lb.LandblockMesh.GetZ(new System.Numerics.Vector2(ox, oy)) + 0.05f;
        }
        catch { }

        var pos = new Position(town.TownCenterObjCellId, ox, oy, oz, 0f, 0f, 0f, 1f);
        pos.LandblockId = new LandblockId(pos.GetCell());
        return pos;
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

    static IQueryable<uint> NonAttackableCreatureIds(WorldDbContext ctx)
    {
        var attackableTypeId = (ushort)PropertyBool.Attackable;
        var npcLooksLikeTypeId = (ushort)PropertyBool.NpcLooksLikeObject;

        return ctx.WeeniePropertiesBool
            .Where(b => (b.Type == attackableTypeId && b.Value == false) ||
                        (b.Type == npcLooksLikeTypeId && b.Value == true))
            .Select(b => b.ObjectId)
            .Distinct();
    }

    static HashSet<uint> GetCreatureBlacklist(Settings? s)
    {
        if (s?.InvasionCreatureBlacklist == null || s.InvasionCreatureBlacklist.Count == 0)
            return new HashSet<uint>();
        return new HashSet<uint>(s.InvasionCreatureBlacklist);
    }

    static List<uint> QueryCreatureWcidsByType(uint creatureTypeId, int levelMin, int levelMax)
    {
        using var ctx = new WorldDbContext();
        ctx.ChangeTracker.QueryTrackingBehavior = QueryTrackingBehavior.NoTracking;
        var levelTypeId = (ushort)PropertyInt.Level;
        var ctTypeId    = (ushort)PropertyInt.CreatureType;
        var excluded    = NonAttackableCreatureIds(ctx);

        return (from weenie in ctx.Weenie
                where weenie.Type == (int)WeenieType.Creature
                where !excluded.Contains(weenie.ClassId)
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
        var excluded = NonAttackableCreatureIds(ctx);

        // Force client evaluation for the bitwise shift; then server-side for the rest
        var instanceWcids = ctx.LandblockInstance
            .AsEnumerable()
            .Where(inst => lbs.Contains((int)(inst.ObjCellId >> 16)))
            .Select(inst => inst.WeenieClassId)
            .Distinct()
            .ToList();

        if (instanceWcids.Count == 0) return new();

        return (from weenie in ctx.Weenie
                where instanceWcids.Contains(weenie.ClassId)
                where weenie.Type == (int)WeenieType.Creature
                where !excluded.Contains(weenie.ClassId)
                join lvProp in ctx.WeeniePropertiesInt on weenie.ClassId equals lvProp.ObjectId
                where lvProp.Type == levelTypeId && lvProp.Value >= levelMin && lvProp.Value <= levelMax
                select weenie.ClassId)
               .Distinct().ToList();
    }

    static List<uint> QueryCreatureWcidsGlobal(int levelMin, int levelMax)
    {
        using var ctx = new WorldDbContext();
        ctx.ChangeTracker.QueryTrackingBehavior = QueryTrackingBehavior.NoTracking;
        var levelTypeId = (ushort)PropertyInt.Level;
        var excluded    = NonAttackableCreatureIds(ctx);

        return (from weenie in ctx.Weenie
                where weenie.Type == (int)WeenieType.Creature
                where !excluded.Contains(weenie.ClassId)
                join lvProp in ctx.WeeniePropertiesInt on weenie.ClassId equals lvProp.ObjectId
                where lvProp.Type == levelTypeId && lvProp.Value >= levelMin && lvProp.Value <= levelMax
                select weenie.ClassId)
               .Distinct().ToList();
    }

    /// <summary>
    /// Spawns a pre-generated batch of mobs on a specific landblock. Must be called from that landblock's tick thread.
    /// </summary>
    static List<WorldObject> SpawnBatchOnLandblock(Landblock lb, List<(Position Pos, uint Wcid)> batch, InvasionTownSettings town)
    {
        var result = new List<WorldObject>();
        var retryRng = new Random();
        int failCount = 0;

        foreach (var (pos, wcid) in batch)
        {
            var wo = WorldObjectFactory.CreateNewWorldObject(wcid);
            if (wo == null) continue;

            bool placed = false;
            Position? currentPos = pos;

            // Try original position + up to 2 retries with new random positions
            for (int attempt = 0; attempt < 3 && !placed; attempt++)
            {
                if (attempt > 0)
                {
                    // Generate a new nearby position for retry
                    var retryPos = GenerateSingleSpawnPosition(town, retryRng);
                    if (retryPos == null) continue;
                    currentPos = retryPos;
                }

                wo.Location = currentPos;
                try
                {
                    if (lb.AddWorldObject(wo))
                    {
                        placed = true;
                        result.Add(wo);
                    }
                }
                catch (Exception ex)
                {
                    ModManager.Log($"[Invasion] Attempt {attempt + 1} failed to place WCID {wcid}: {ex.Message}", ModManager.LogLevel.Warn);
                }
            }

            if (!placed)
            {
                failCount++;
                wo.Destroy(); // clean up the unused world object
            }
        }

        if (failCount > 0)
            ModManager.Log($"[Invasion] SpawnBatchOnLandblock: {failCount}/{batch.Count} mobs failed to place after 3 attempts each on landblock {lb.Id.Raw:X4}", ModManager.LogLevel.Warn);

        return result;
    }

    // ── Trickle spawn (chaotic reinforcement) ────────────────────────────

    static void DoTrickleSpawn(Settings s)
    {
        if (ActiveInvasion == null) return;

        _tricklePulseCount++;
        var pulse = _tricklePulseCount;
        ActiveInvasion.TricklePulseCount = pulse;

        var isChaos = ActiveInvasion.ChaosMode;
        var scalePercent = isChaos ? s.InvasionChaosScalingPercent : 0.10;
        var scaleFactor = 1.0 + scalePercent * Math.Min(pulse, 5);

        // CreatureEx trigger: chaos = every pulse; themed = pulse 5+ (if enabled); normal = pulse 5+ once
        var isCreatureExPulse = isChaos
            ? ActiveInvasion.CreatureExSpawnedCount < s.InvasionChaosMaxCreatureExTotal
            : (pulse >= 5 && !_creatureExSpawnedThisWave && s.InvasionCreatureExOnThemedPulse);

        foreach (var entry in ActiveInvasion.Towns.Where(t => t.Mode == InvasionMode.Dynamic))
        {
            var town = s.InvasionTowns.FirstOrDefault(t => t.TownName == entry.TownName);
            if (town == null || town.TownCenterObjCellId == 0) continue;

            int livingCount;
            lock (_dynamicSpawns)
            {
                livingCount = _dynamicSpawns.Count(wo =>
                    wo != null && !wo.IsDestroyed &&
                    wo.Location != null &&
                    Distance2D(wo.Location, town.TownCenterX, town.TownCenterY) <= town.TownSpawnRadius * 2);
            }

            // Target mob count: start small and ramp up, never below minimum
            var targetMobs = Math.Max(s.InvasionTargetMobMin, (int)(s.InvasionTargetMobCount * Math.Min(1.0, pulse / 3.0)));
            var scaledCap = (int)(targetMobs * scaleFactor);
            var refill = Math.Max(0, scaledCap - livingCount);
            var swarm = (int)(scaledCap * s.TrickleSwarmMultiplier);
            var totalToSpawn = Math.Min(refill + swarm, 100 - livingCount); // per-town cap of 100

            if (totalToSpawn <= 0) continue;

            var (levelMin, levelMax) = ResolveLevelRange(s, town, entry.Tier);
            var isThemed = ActiveInvasion.ThemeName.Length > 0 && s.InvasionUseCreatureTypeTheme;
            var wcids = isThemed
                ? QueryCreatureWcidsByType((uint)Enum.Parse<CreatureType>(ActiveInvasion.ThemeName), levelMin, levelMax)
                : QueryNearbyCreatureWcids(town, levelMin, levelMax);

            if (wcids.Count == 0 && !isThemed)
                wcids = QueryCreatureWcidsGlobal(levelMin, levelMax);

            // Filter out blacklisted WCIDs
            var bl = GetCreatureBlacklist(s);
            if (bl.Count > 0) wcids = wcids.Where(w => !bl.Contains(w)).ToList();

            // Themed trickle: narrow to the same 2-4 monster mix
            if (isThemed && wcids.Count > s.InvasionThemeMonsterMixMin)
            {
                Shuffle(wcids);
                var mixCount = Math.Min(wcids.Count, _rng.Next(s.InvasionThemeMonsterMixMin, s.InvasionThemeMonsterMixMax + 1));
                wcids = wcids.Take(mixCount).ToList();
            }

            if (wcids.Count == 0) continue;

            var spawns = GenerateSpawnPositions(town, wcids, totalToSpawn);
            var byLb = spawns.GroupBy(sp => sp.Pos.LandblockId).ToList();

            foreach (var group in byLb)
            {
                var lb = LandblockManager.GetLandblock(group.Key, false);
                if (lb == null)
                {
                    ModManager.Log(
                        $"[Invasion] Landblock not loaded; skipping {group.Count()} trickle spawn(s) for {town.TownName} at 0x{group.Key.Raw:X8}.",
                        ModManager.LogLevel.Warn);
                    continue;
                }
                var batch = group.ToList();
                var townCopy = town;
                lb.EnqueueAction(new ActionEventDelegate(() =>
                {
                    var spawned = SpawnBatchOnLandblock(lb, batch, townCopy);
                    lock (_dynamicSpawns)
                        _dynamicSpawns.AddRange(spawned);
                }));
            }

            ModManager.Log(
                $"[Invasion] Trickle pulse {pulse} at {town.TownName}: living={livingCount}, cap={scaledCap}, refill={refill}, swarm={swarm}, spawned={spawns.Count}",
                ModManager.LogLevel.Info);

            // CreatureEx summon
            if (isCreatureExPulse)
            {
                if (!isChaos)
                    _creatureExSpawnedThisWave = true;

                var spawnCount = isChaos ? s.InvasionChaosCreatureExPerPulse : 1;
                for (int ex = 0; ex < spawnCount; ex++)
                {
                    if (ActiveInvasion.CreatureExSpawnedCount >= s.InvasionChaosMaxCreatureExTotal)
                        break;
                    SpawnCreatureEx(s, town, entry.Tier, wcids, levelMax, isChaos);
                }
            }
        }
    }

    static double Distance2D(Position pos, float tx, float ty)
    {
        var dx = pos.Pos.X - tx;
        var dy = pos.Pos.Y - ty;
        return Math.Sqrt(dx * dx + dy * dy);
    }

    static void SpawnCreatureEx(Settings s, InvasionTownSettings town, int tier, List<uint> availableWcids, int levelMax, bool isChaos = false)
    {
        uint baseWcid = s.CreatureExWcid;

        // If no explicit WCID and we have a theme, pick a random matching creature
        if (baseWcid == 0 && availableWcids.Count > 0)
        {
            baseWcid = availableWcids[_rng.Next(availableWcids.Count)];
        }

        if (baseWcid == 0)
        {
            ModManager.Log($"[Invasion] Cannot spawn CreatureEx at {town.TownName}: no WCID configured and no themed mobs available.", ModManager.LogLevel.Warn);
            return;
        }

        try
        {
            // In chaos mode, try to spawn an actual Boss via Swarmed reflection
            if (isChaos)
            {
                var swarmedAsm = AppDomain.CurrentDomain.GetAssemblies()
                    .FirstOrDefault(a => a.GetName().Name == "Swarmed");

                if (swarmedAsm != null)
                {
                    var bossType = swarmedAsm.GetType("Swarmed.Creatures.Boss");
                    var createMethod = bossType?.GetMethods(System.Reflection.BindingFlags.Public | System.Reflection.BindingFlags.Static)
                        .FirstOrDefault(m => m.Name == "Create" && m.GetParameters().Length == 3);

                    if (bossType != null && createMethod != null)
                    {
                        var weenie = DatabaseManager.World.GetCachedWeenie(baseWcid);
                        if (weenie != null)
                        {
                            var guid = GuidManager.NewDynamicGuid();
                            var creature = createMethod.Invoke(null, new object?[] { weenie, guid, null });
                            if (creature is WorldObject wo)
                            {
                                wo.Location = new Position(
                                    town.TownCenterObjCellId,
                                    town.TownCenterX, town.TownCenterY, town.TownCenterZ,
                                    0f, 0f, 0f, 1f);
                                wo.Location.LandblockId = new LandblockId(wo.Location.GetCell());

                                // Mark as invasion-spawned chaos boss for recursive spawning
                                wo.SetProperty((PropertyInt)10030, 1); // InvasionChaosBoss marker
                                var depth = ActiveInvasion?.CreatureExSpawnedCount ?? 0;
                                wo.SetProperty((PropertyInt)10031, depth); // generation depth

                                EnqueueAddWorldObject(wo, () =>
                                {
                                    if (ActiveInvasion != null)
                                        ActiveInvasion.CreatureExSpawnedCount++;
                                    ModManager.Log($"[Invasion] Chaos Boss '{wo.Name}' spawned at {town.TownName} (depth {depth}).", ModManager.LogLevel.Info);
                                    Task.Run(() => InvasionBroadcast.AnnounceBossSpawned(town.TownName, wo.Name ?? "CreatureEx", isChaos));
                                });
                                return;
                            }
                        }
                    }
                }
            }

            // Standard path: try Swarmed reflection for normal CreatureEx
            var swarmedAsmStandard = AppDomain.CurrentDomain.GetAssemblies()
                .FirstOrDefault(a => a.GetName().Name == "Swarmed");

            if (swarmedAsmStandard != null)
            {
                var helperType = swarmedAsmStandard.GetType("Swarmed.Helpers.CreatureExHelpers");
                var randomTypeMethod = helperType?.GetMethod("RandomCreatureType", System.Reflection.BindingFlags.Public | System.Reflection.BindingFlags.Static);
                var createMethod = helperType?.GetMethods(System.Reflection.BindingFlags.Public | System.Reflection.BindingFlags.Static)
                    .FirstOrDefault(m => m.Name == "Create" && m.GetParameters().Length == 3);

                if (randomTypeMethod != null && createMethod != null)
                {
                    var exType = randomTypeMethod.Invoke(null, null);
                    var weenie = DatabaseManager.World.GetCachedWeenie(baseWcid);
                    if (weenie != null)
                    {
                        var guid = GuidManager.NewDynamicGuid();
                        var creature = createMethod.Invoke(null, new[] { exType, weenie, guid });
                        if (creature is WorldObject wo)
                        {
                            wo.Location = new Position(
                                town.TownCenterObjCellId,
                                town.TownCenterX, town.TownCenterY, town.TownCenterZ,
                                0f, 0f, 0f, 1f);
                            wo.Location.LandblockId = new LandblockId(wo.Location.GetCell());

                            EnqueueAddWorldObject(wo, () =>
                            {
                                if (ActiveInvasion != null)
                                    ActiveInvasion.CreatureExSpawnedCount++;
                                ModManager.Log($"[Invasion] CreatureEx '{wo.Name}' spawned at {town.TownName} (pulse 5+).", ModManager.LogLevel.Info);
                                Task.Run(() => InvasionBroadcast.AnnounceBossSpawned(town.TownName, wo.Name ?? "CreatureEx", isChaos));
                            });
                            return;
                        }
                    }
                }
            }

            // Fallback: spawn normal mob with FakeInt 10029 so Swarmed will convert it if loaded later
            var fallback = WorldObjectFactory.CreateNewWorldObject(baseWcid);
            if (fallback == null) return;

            fallback.Location = new Position(
                town.TownCenterObjCellId,
                town.TownCenterX, town.TownCenterY, town.TownCenterZ,
                0f, 0f, 0f, 1f);
            fallback.Location.LandblockId = new LandblockId(fallback.Location.GetCell());
            fallback.SetProperty((PropertyInt)10029, _rng.Next(1, 24)); // FakeInt.CreatureExType random type

            EnqueueAddWorldObject(fallback, () =>
            {
                if (ActiveInvasion != null)
                    ActiveInvasion.CreatureExSpawnedCount++;
                ModManager.Log($"[Invasion] Fallback CreatureEx (WCID {baseWcid}) spawned at {town.TownName} with FakeInt 10029.", ModManager.LogLevel.Info);
            }, onFail: () => fallback.Destroy());
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Invasion] CreatureEx spawn failed at {town.TownName}: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    static void EnqueueAddWorldObject(WorldObject wo, Action? onSuccess = null, Action? onFail = null)
    {
        if (wo?.Location == null)
        {
            onFail?.Invoke();
            return;
        }
        var lb = LandblockManager.GetLandblock(wo.Location.LandblockId, false);
        if (lb == null)
        {
            onFail?.Invoke();
            return;
        }
        lb.EnqueueAction(new ActionEventDelegate(() =>
        {
            try
            {
                if (lb.AddWorldObject(wo))
                {
                    lock (_dynamicSpawns)
                        _dynamicSpawns.Add(wo);
                    onSuccess?.Invoke();
                }
                else
                {
                    onFail?.Invoke();
                }
            }
            catch (Exception ex)
            {
                ModManager.Log($"[Invasion] AddWorldObject failed for {wo.Name} (WCID {wo.WeenieClassId}): {ex.Message}", ModManager.LogLevel.Warn);
                onFail?.Invoke();
            }
        }));
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

    // ── Recursive Chaos Boss Spawning ────────────────────────────────────

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Creature), nameof(Creature.Die), new Type[] { typeof(DamageHistoryInfo), typeof(DamageHistoryInfo) })]
    public static void PostCreatureDie_ChaosBossReinforce(DamageHistoryInfo lastDamager, DamageHistoryInfo topDamager, Creature __instance)
    {
        if (__instance == null || __instance.IsDestroyed) return;
        if (ActiveInvasion == null || !ActiveInvasion.ChaosMode) return;

        // Check if this is an invasion-spawned chaos boss
        var isInvasionBoss = __instance.GetProperty((PropertyInt)10030) == 1;
        if (!isInvasionBoss) return;

        var depth = __instance.GetProperty((PropertyInt)10031) ?? 0;
        const int maxDepth = 3; // 3 generations
        if (depth >= maxDepth) return;

        var settings = PatchClass.Settings;
        if (settings == null) return;

        // Find which town this boss died near
        var deathPos = __instance.Location;
        if (deathPos == null) return;

        var town = settings.InvasionTowns
            .Where(t => t.Enabled && t.TownCenterObjCellId != 0)
            .OrderBy(t => Distance2D(deathPos, t.TownCenterX, t.TownCenterY))
            .FirstOrDefault();
        if (town == null) return;

        // Find the town entry to get tier
        var entry = ActiveInvasion.Towns.FirstOrDefault(t => t.TownName == town.TownName);
        int tier = entry?.Tier ?? 0;

        var (levelMin, levelMax) = ResolveLevelRange(settings, town, tier);
        var wcids = QueryNearbyCreatureWcids(town, levelMin, levelMax);
        if (wcids.Count == 0)
            wcids = QueryCreatureWcidsGlobal(levelMin, levelMax);
        if (wcids.Count == 0) return;

        // Filter out blacklisted WCIDs
        var bl = GetCreatureBlacklist(settings);
        if (bl.Count > 0) wcids = wcids.Where(w => !bl.Contains(w)).ToList();

        int spawnCount = 2; // each chaos boss spawns 2 children
        for (int i = 0; i < spawnCount; i++)
        {
            if (ActiveInvasion.CreatureExSpawnedCount >= settings.InvasionChaosMaxCreatureExTotal)
                break;

            uint baseWcid = wcids[_rng.Next(wcids.Count)];
            var weenie = DatabaseManager.World.GetCachedWeenie(baseWcid);
            if (weenie == null) continue;

            try
            {
                var swarmedAsm = AppDomain.CurrentDomain.GetAssemblies()
                    .FirstOrDefault(a => a.GetName().Name == "Swarmed");

                if (swarmedAsm != null)
                {
                    var bossType = swarmedAsm.GetType("Swarmed.Creatures.Boss");
                    var createMethod = bossType?.GetMethods(System.Reflection.BindingFlags.Public | System.Reflection.BindingFlags.Static)
                        .FirstOrDefault(m => m.Name == "Create" && m.GetParameters().Length == 3);

                    if (bossType != null && createMethod != null)
                    {
                        var guid = GuidManager.NewDynamicGuid();
                        var creature = createMethod.Invoke(null, new object?[] { weenie, guid, null });
                        if (creature is WorldObject wo)
                        {
                            var offsetX = (float)(_rng.NextDouble() * 10 - 5);
                            var offsetY = (float)(_rng.NextDouble() * 10 - 5);
                            wo.Location = new Position(
                                deathPos.Cell,
                                deathPos.Pos.X + offsetX, deathPos.Pos.Y + offsetY, deathPos.Pos.Z,
                                0f, 0f, 0f, 1f);
                            wo.Location.LandblockId = new LandblockId(wo.Location.GetCell());

                            wo.SetProperty((PropertyInt)10030, 1);
                            wo.SetProperty((PropertyInt)10031, depth + 1);

                            EnqueueAddWorldObject(wo, () =>
                            {
                                ActiveInvasion.CreatureExSpawnedCount++;
                                ModManager.Log($"[Invasion] Chaos Boss child spawned at depth {depth + 1} from {__instance.Name}.", ModManager.LogLevel.Info);
                            });
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                ModManager.Log($"[Invasion] Chaos Boss reinforcement failed: {ex.Message}", ModManager.LogLevel.Warn);
            }
        }
    }
}
