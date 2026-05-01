using System.Collections.Concurrent;


namespace WorldEvents;

internal static class HuntRuntime
{
    internal static readonly ConcurrentDictionary<uint, long> GlobalSpeciesKills = new();
    internal static readonly ConcurrentDictionary<uint, PlayerHuntData> PlayerData = new();
    internal static ActiveHuntData? ActiveHunt;
    internal static readonly object HuntLock = new();
    internal static DateTime LastGlobalFlushUtc = DateTime.MinValue;
    internal static volatile bool GlobalDirty;

    internal static void LoadAllFromDisk(Settings settings)
    {
        HuntPersistence.EnsureDirectories();
        foreach (var kv in HuntPersistence.LoadGlobal().Species)
            GlobalSpeciesKills[kv.Key] = kv.Value;

        ActiveHunt = HuntPersistence.LoadActiveHunt();

        if (!settings.HuntUseClockSchedule)
        {
            if (ActiveHunt is null || ActiveHunt.WindowEndUtc < DateTime.UtcNow)
                BeginNewHuntWindow(settings, finalizePrevious: false);
        }
        else
        {
            TickHuntTimer(settings);
        }
    }

    internal static PlayerHuntData GetOrLoadPlayer(uint guidFull)
    {
        return PlayerData.GetOrAdd(guidFull, g => HuntPersistence.LoadPlayer(g));
    }

    internal static void FlushPlayer(uint guidFull, PlayerHuntData data)
    {
        HuntPersistence.SavePlayer(guidFull, data);
    }

    internal static void FlushGlobalIfDue(Settings settings)
    {
        if (!GlobalDirty)
            return;

        var now = DateTime.UtcNow;
        var debounce = settings.DebounceSaveMilliseconds;
        if (debounce > 0 && (now - LastGlobalFlushUtc).TotalMilliseconds < debounce)
            return;

        lock (HuntLock)
        {
            if (debounce > 0 && (now - LastGlobalFlushUtc).TotalMilliseconds < debounce)
                return;

            var snapshot = new GlobalSpeciesKillsData { Species = new Dictionary<uint, long>(GlobalSpeciesKills) };
            HuntPersistence.SaveGlobal(snapshot);
            LastGlobalFlushUtc = DateTime.UtcNow;
            GlobalDirty = false;
        }
    }

    internal static void MarkGlobalDirty() => GlobalDirty = true;

    internal static Dictionary<uint, double> BuildHuntTargetMultipliers(IReadOnlyList<uint> targets, Settings settings)
    {
        var species = GlobalSpeciesKills.ToDictionary(kv => kv.Key, kv => kv.Value);
        var top = HuntRanks.BuildTopSet(species, settings);
        var bottom = HuntRanks.BuildBottomSet(species, settings);
        var result = new Dictionary<uint, double>();
        foreach (var wcid in targets)
        {
            var band = HuntRanks.Classify(wcid, top, bottom, settings);
            result[wcid] = HuntRanks.HuntMultiplierForBand(band, settings);
        }

        return result;
    }

    internal static List<uint> PickHuntTargets(Settings settings)
    {
        var candidates = HuntRanks.FilterSpecies(GlobalSpeciesKills.ToDictionary(kv => kv.Key, kv => kv.Value), settings)
            .Select(kv => kv.Key)
            .ToList();

        if (candidates.Count == 0)
        {
            foreach (var kv in GlobalSpeciesKills)
            {
                if (kv.Key != 0 && !settings.DenylistCreatureTypes.Contains(kv.Key))
                    candidates.Add(kv.Key);
            }
        }

        if (candidates.Count == 0)
            return new List<uint>();

        // Do not use ThreadSafeRandom.Next(0, int.MaxValue): ACE maps to System.Random with a widened upper bound,
        // so int.MaxValue overflows and throws ArgumentOutOfRangeException (minValue > maxValue).
        var random = Random.Shared;
        var picked = new List<uint>();
        var pool = candidates.ToList();

        while (picked.Count < settings.HuntTargetCount && pool.Count > 0)
        {
            uint choice;
            if (settings.HuntWeightByInversePopularity)
            {
                var weights = pool.Select(w =>
                {
                    GlobalSpeciesKills.TryGetValue(w, out var k);
                    var kk = Math.Max(0, k);
                    return 1.0 / (1.0 + Math.Log10(1 + kk));
                }).ToList();
                var sum = weights.Sum();
                var roll = random.NextDouble() * sum;
                double acc = 0;
                var idx = pool.Count - 1;
                for (var i = 0; i < pool.Count; i++)
                {
                    acc += weights[i];
                    if (roll <= acc)
                    {
                        idx = i;
                        break;
                    }
                }

                choice = pool[idx];
            }
            else
            {
                choice = pool[random.Next(0, pool.Count)];
            }

            picked.Add(choice);
            pool.Remove(choice);
        }

        return picked;
    }

    internal static void BeginNewHuntWindow(Settings settings, bool finalizePrevious, double? customDurationMinutes = null)
    {
        ActiveHuntData? ended = null;
        lock (HuntLock)
        {
            if (finalizePrevious && ActiveHunt != null)
            {
                ended = CloneHuntForFinalize(ActiveHunt);
                ActiveHunt = null;
                HuntPersistence.ClearActiveHunt();
            }

            var now = DateTime.UtcNow;
            var end = customDurationMinutes.HasValue
                ? now.AddMinutes(customDurationMinutes.Value)
                : now.AddHours(settings.HuntIntervalHours);
            StartHuntWindow(settings, now, end);
        }

        if (ended != null)
            FinalizeHuntLeaderboard(settings, ended);
    }

    internal static void ForceStart(Settings settings)
    {
        lock (HuntLock)
        {
            if (ActiveHunt != null)
            {
                ActiveHunt = null;
                HuntPersistence.ClearActiveHunt();
            }
            var now = DateTime.UtcNow;
            StartHuntWindow(settings, now, now.AddHours(settings.HuntIntervalHours));
        }
    }

    internal static void ForceStop()
    {
        lock (HuntLock)
        {
            ActiveHunt = null;
            HuntPersistence.ClearActiveHunt();
        }
    }

    internal static void StartHuntWindow(Settings settings, DateTime windowStartUtc, DateTime windowEndUtc)
    {
        var targets = PickHuntTargets(settings);
        var mults = BuildHuntTargetMultipliers(targets, settings);
        ActiveHunt = new ActiveHuntData
        {
            WindowStartUtc = windowStartUtc,
            WindowEndUtc = windowEndUtc,
            TargetSpecies = targets,
            TargetMultipliers = mults,
            HuntPointsByBracket = new Dictionary<int, Dictionary<uint, double>> { [0] = new(), [1] = new(), [2] = new(), [3] = new() },
            PlayerBrackets = new Dictionary<uint, int>(),
        };

        HuntPersistence.SaveActiveHunt(ActiveHunt);
        ModManager.Log($"[Hunt] Hunt started {windowStartUtc:u}–{windowEndUtc:u} UTC — bonus targets: {(targets.Count == 0 ? "(none)" : string.Join(", ", targets))} (multipliers {string.Join(", ", mults.Values)})", ModManager.LogLevel.Info);

        HuntBroadcast.AnnounceHuntStarted(settings, ActiveHunt);
    }

    internal static void FinalizeHuntLeaderboard(Settings settings, ActiveHuntData endedHunt)
    {
        var anyParticipants = endedHunt.HuntPointsByBracket.Values.Any(d => d.Count > 0);
        if (!anyParticipants)
            return;

        var participantCount = endedHunt.HuntPointsByBracket.Values.SelectMany(d => d.Keys).Distinct().Count();

        for (var bracketIdx = 0; bracketIdx <= 3; bracketIdx++)
        {
            if (!endedHunt.HuntPointsByBracket.TryGetValue(bracketIdx, out var bracketPts) || bracketPts.Count == 0)
                continue;

            FinalizeBracket(settings, endedHunt, bracketIdx, bracketPts, participantCount);
        }
    }

    static void FinalizeBracket(Settings settings, ActiveHuntData endedHunt, int bracketIdx, Dictionary<uint, double> bracketPts, int participantCount)
    {
        var ordered = bracketPts.OrderByDescending(kv => kv.Value).ToList();
        if (ordered.Count > 0)
        {
            var w = ordered[0];
            ModManager.Log($"[Hunt] Hunt ended bracket {bracketIdx} — leader guid {w.Key:X} with {w.Value:0.##} hunt pts.", ModManager.LogLevel.Info);
        }

        var count = ordered.Count;
        var xpGranted = new long?[count];
        var xpFormula = new string?[count];
        var lootLines = new List<string>[count];
        for (var j = 0; j < count; j++)
            lootLines[j] = new List<string>();

        Player? anchor = null;
        for (var i = 0; i < ordered.Count; i++)
        {
            anchor = PlayerManager.GetOnlinePlayer(ordered[i].Key);
            if (anchor != null)
                break;
        }

        anchor ??= PlayerManager.GetAllOnline().FirstOrDefault();

        if (anchor == null)
        {
            ModManager.Log($"[Hunt] Hunt finalize bracket {bracketIdx}: no players online; placement XP and loot skipped.", ModManager.LogLevel.Info);
            AnnounceHuntEndFromSnapshot(settings, bracketIdx, ordered, xpGranted, xpFormula, lootLines, new Dictionary<uint, double>());
            return;
        }

        // Unfilled top-3 slots (e.g. bracket had only 1 player) cascade to 1st place.
        var unfilledTopSlots = new List<int>();
        for (var r = count; r <= 2; r++)
            unfilledTopSlots.Add(r);

        var chain = new ActionChain();
        for (var i = 0; i < count; i++)
        {
            var idx = i;
            var pts = ordered[i].Value;
            var guid = ordered[i].Key;
            var recipient = PlayerManager.GetOnlinePlayer(guid);
            if (recipient == null)
                continue;

            chain.AddAction(recipient, () =>
            {
                try
                {
                    lootLines[idx] = new List<string>();
                    if (HuntXpRewards.TryGrantPlacementXp(settings, idx, recipient, participantCount, out var xa, out var xf))
                    {
                        xpGranted[idx] = xa;
                        xpFormula[idx] = xf;
                    }

                    lootLines[idx] = HuntLootRewards.GrantPlacementLoot(settings, idx, pts, recipient, participantCount);

                    // Grant repeatQB quest points for placement
                    PlacementQuestPoints.GrantByRank(recipient, idx, participantCount, "Hunt");

                    // 1st place claims any unfilled podium slots
                    if (idx == 0)
                    {
                        foreach (var extraRank in unfilledTopSlots)
                        {
                            if (HuntXpRewards.TryGrantPlacementXp(settings, extraRank, recipient, participantCount, out var xa2, out _))
                                xpGranted[0] = (xpGranted[0] ?? 0) + xa2;

                            lootLines[0].AddRange(HuntLootRewards.GrantPlacementLoot(settings, extraRank, pts, recipient, participantCount));
                        }
                    }
                }
                catch (Exception ex)
                {
                    ModManager.Log($"[Hunt] Hunt placement rewards failed for {recipient.Name}: {ex.Message}", ModManager.LogLevel.Warn);
                }
            });
        }

        chain.AddAction(anchor, () =>
        {
            try
            {
                if (participantCount == 1 && settings.SoloCompetitorBonus.Enable)
                {
                    var playerName = HuntDisplay.ResolvePlayerName(ordered[0].Key);
                    WorldEventsBroadcast.Send(settings.SoloCompetitorBonus.BroadcastMessage.Replace("{Name}", playerName));
                }

                var bonusByGuid = ApplyHuntTopPoolBonus(settings, ordered);
                AnnounceHuntEndFromSnapshot(settings, bracketIdx, ordered, xpGranted, xpFormula, lootLines, bonusByGuid);
            }
            catch (Exception ex)
            {
                ModManager.Log($"[Hunt] Hunt finalize bracket {bracketIdx} (bonus/broadcast): {ex.Message}", ModManager.LogLevel.Warn);
            }
        });

        chain.EnqueueChain();
    }

    static Dictionary<uint, double> ApplyHuntTopPoolBonus(Settings settings, List<KeyValuePair<uint, double>> ordered)
    {
        var bonusByGuid = new Dictionary<uint, double>();
        var top = ordered.Take(settings.HuntLeaderboardTopCount).ToList();
        var bonus = settings.HuntLeaderboardTopBonusMultiplier;

        if (bonus <= 1.0)
            return bonusByGuid;

        foreach (var entry in top)
        {
            var extra = entry.Value * (bonus - 1.0);
            if (extra <= 0)
                continue;

            var p = PlayerManager.GetOnlinePlayer(entry.Key);
            if (p == null)
                continue;

            bonusByGuid[entry.Key] = extra;

            var data = GetOrLoadPlayer(entry.Key);
            data.TotalHuntXp += extra;
            FlushPlayer(entry.Key, data);
            p.SendMessage($"[Hunt] Hunt top bonus: +{extra:0.##} Hunt XP.");
        }

        ModManager.Log($"[Hunt] Hunt bonus: top-{top.Count} online players (mult ×{bonus:0.##}).", ModManager.LogLevel.Info);
        return bonusByGuid;
    }

    static void AnnounceHuntEndFromSnapshot(
        Settings settings,
        int bracketIdx,
        List<KeyValuePair<uint, double>> ordered,
        long?[] xpGranted,
        string?[] xpFormula,
        List<string>[] lootLines,
        Dictionary<uint, double> bonusByGuid)
    {
        var count = ordered.Count;
        var top3 = new List<(string Name, double HuntPts, long? XpGranted, string? XpFormula, IReadOnlyList<string> LootLines, double? TopPoolBonusXxp)>();
        for (var i = 0; i < count && i < 3; i++)
        {
            var guid = ordered[i].Key;
            bonusByGuid.TryGetValue(guid, out var bx);
            double? bonusXp = bx > 0 ? bx : null;

            top3.Add((
                HuntDisplay.ResolvePlayerName(guid),
                ordered[i].Value,
                xpGranted[i],
                xpFormula[i],
                lootLines[i],
                bonusXp));
        }

        HuntBroadcast.AnnounceHuntEndedTop3(settings, bracketIdx, top3);
    }

    static ActiveHuntData CloneHuntForFinalize(ActiveHuntData a)
    {
        var bracketClone = new Dictionary<int, Dictionary<uint, double>>();
        foreach (var kv in a.HuntPointsByBracket)
            bracketClone[kv.Key] = new Dictionary<uint, double>(kv.Value);

        return new ActiveHuntData
        {
            WindowStartUtc = a.WindowStartUtc,
            WindowEndUtc = a.WindowEndUtc,
            TargetSpecies = new List<uint>(a.TargetSpecies),
            TargetMultipliers = new Dictionary<uint, double>(a.TargetMultipliers),
            HuntPointsByBracket = bracketClone,
            PlayerBrackets = new Dictionary<uint, int>(a.PlayerBrackets),
        };
    }

    internal static void TickHuntTimer(Settings settings)
    {
        if (!settings.EnableHunt)
            return;

        if (settings.UseUnifiedScheduler)
            return;

        ActiveHuntData? pendingFinalize = null;

        lock (HuntLock)
        {
            var now = DateTime.UtcNow;

            if (settings.HuntUseClockSchedule)
            {
                var starts = settings.HuntSlotStartMinutes;
                var dur = settings.HuntSlotDurationMinutes;

                if (ActiveHunt != null && now >= ActiveHunt.WindowEndUtc)
                {
                    pendingFinalize = CloneHuntForFinalize(ActiveHunt);
                    ActiveHunt = null;
                    HuntPersistence.ClearActiveHunt();
                }

                if (HuntSchedule.TryGetCurrentSlotUtc(now, starts, dur, out var slotStart, out var slotEnd))
                {
                    if (ActiveHunt == null || !SameUtcInstant(ActiveHunt.WindowStartUtc, slotStart))
                    {
                        if (ActiveHunt != null)
                        {
                            pendingFinalize = CloneHuntForFinalize(ActiveHunt);
                            ActiveHunt = null;
                            HuntPersistence.ClearActiveHunt();
                        }

                        StartHuntWindow(settings, slotStart, slotEnd);
                    }
                }
                else
                {
                    if (ActiveHunt != null)
                    {
                        pendingFinalize = CloneHuntForFinalize(ActiveHunt);
                        ActiveHunt = null;
                        HuntPersistence.ClearActiveHunt();
                    }
                }
            }
            else
            {
                if (ActiveHunt == null || now < ActiveHunt.WindowEndUtc)
                    return;

                BeginNewHuntWindow(settings, finalizePrevious: true);
            }
        }

        if (pendingFinalize != null)
            FinalizeHuntLeaderboard(settings, pendingFinalize);
    }

    internal static double GetHuntMultiplierForSpecies(uint speciesId)
    {
        if (ActiveHunt?.TargetMultipliers.TryGetValue(speciesId, out var m) == true)
            return m;
        return 1.0;
    }

    static bool SameUtcInstant(DateTime a, DateTime b)
    {
        return a.ToUniversalTime().Ticks == b.ToUniversalTime().Ticks;
    }
}
