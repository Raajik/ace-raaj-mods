using System.Collections.Concurrent;
using Xenology.Models;

namespace Xenology;

internal static class XenologyRuntime
{
    internal static readonly ConcurrentDictionary<uint, long> GlobalSpeciesKills = new();
    internal static readonly ConcurrentDictionary<uint, PlayerXenologyData> PlayerData = new();
    internal static ActiveHuntData? ActiveHunt;
    internal static readonly object HuntLock = new();
    internal static DateTime LastGlobalFlushUtc = DateTime.MinValue;
    internal static volatile bool GlobalDirty;

    internal static void LoadAllFromDisk(Settings settings)
    {
        XenologyPersistence.EnsureDirectories();
        foreach (var kv in XenologyPersistence.LoadGlobal().Species)
            GlobalSpeciesKills[kv.Key] = kv.Value;

        ActiveHunt = XenologyPersistence.LoadActiveHunt();

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

    internal static PlayerXenologyData GetOrLoadPlayer(uint guidFull)
    {
        return PlayerData.GetOrAdd(guidFull, g => XenologyPersistence.LoadPlayer(g));
    }

    internal static void FlushPlayer(uint guidFull, PlayerXenologyData data)
    {
        XenologyPersistence.SavePlayer(guidFull, data);
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
            XenologyPersistence.SaveGlobal(snapshot);
            LastGlobalFlushUtc = DateTime.UtcNow;
            GlobalDirty = false;
        }
    }

    internal static void MarkGlobalDirty() => GlobalDirty = true;

    internal static Dictionary<uint, double> BuildHuntTargetMultipliers(IReadOnlyList<uint> targets, Settings settings)
    {
        var species = GlobalSpeciesKills.ToDictionary(kv => kv.Key, kv => kv.Value);
        var top = XenologyRanks.BuildTopSet(species, settings);
        var bottom = XenologyRanks.BuildBottomSet(species, settings);
        var result = new Dictionary<uint, double>();
        foreach (var wcid in targets)
        {
            var band = XenologyRanks.Classify(wcid, top, bottom, settings);
            result[wcid] = XenologyRanks.HuntMultiplierForBand(band, settings);
        }

        return result;
    }

    internal static List<uint> PickHuntTargets(Settings settings)
    {
        var candidates = XenologyRanks.FilterSpecies(GlobalSpeciesKills.ToDictionary(kv => kv.Key, kv => kv.Value), settings)
            .Select(kv => kv.Key)
            .ToList();

        if (candidates.Count == 0)
        {
            foreach (var kv in GlobalSpeciesKills)
            {
                if (kv.Key != 0 && !settings.DenylistWcids.Contains(kv.Key))
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

    internal static void BeginNewHuntWindow(Settings settings, bool finalizePrevious)
    {
        ActiveHuntData? ended = null;
        lock (HuntLock)
        {
            if (finalizePrevious && ActiveHunt != null)
            {
                ended = CloneHuntForFinalize(ActiveHunt);
                ActiveHunt = null;
                XenologyPersistence.ClearActiveHunt();
            }

            var now = DateTime.UtcNow;
            StartHuntWindow(settings, now, now.AddHours(settings.HuntIntervalHours));
        }

        if (ended != null)
            FinalizeHuntLeaderboard(settings, ended);
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
            HuntPointsByPlayer = new Dictionary<uint, double>(),
        };

        XenologyPersistence.SaveActiveHunt(ActiveHunt);
        ModManager.Log($"[Xenology] Hunt started {windowStartUtc:u}–{windowEndUtc:u} UTC — bonus targets: {(targets.Count == 0 ? "(none)" : string.Join(", ", targets))} (multipliers {string.Join(", ", mults.Values)})", ModManager.LogLevel.Info);

        HuntBroadcast.AnnounceHuntStarted(settings, ActiveHunt);
    }

    internal static void FinalizeHuntLeaderboard(Settings settings, ActiveHuntData endedHunt)
    {
        if (endedHunt.HuntPointsByPlayer.Count == 0)
            return;

        var ordered = endedHunt.HuntPointsByPlayer.OrderByDescending(kv => kv.Value).ToList();
        if (ordered.Count > 0)
        {
            var w = ordered[0];
            ModManager.Log($"[Xenology] Hunt ended — leader guid {w.Key:X} with {w.Value:0.##} hunt xXP (most xXP this window wins).", ModManager.LogLevel.Info);
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
            ModManager.Log("[Xenology] Hunt finalize: no players online; placement XP and loot skipped.", ModManager.LogLevel.Info);
            AnnounceHuntEndFromSnapshot(settings, ordered, xpGranted, xpFormula, lootLines, new Dictionary<uint, double>());
            return;
        }

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
                    if (HuntXpRewards.TryGrantPlacementXp(settings, idx, recipient, out var xa, out var xf))
                    {
                        xpGranted[idx] = xa;
                        xpFormula[idx] = xf;
                    }

                    if (settings.HuntGrantLootTableRolls)
                        lootLines[idx] = HuntLootRewards.GrantPlacementLoot(settings, idx, pts, recipient);
                }
                catch (Exception ex)
                {
                    ModManager.Log($"[Xenology] Hunt placement rewards failed for {recipient.Name}: {ex.Message}", ModManager.LogLevel.Warn);
                }
            });
        }

        chain.AddAction(anchor, () =>
        {
            try
            {
                var bonusByGuid = ApplyHuntTopPoolBonus(settings, ordered);
                AnnounceHuntEndFromSnapshot(settings, ordered, xpGranted, xpFormula, lootLines, bonusByGuid);
            }
            catch (Exception ex)
            {
                ModManager.Log($"[Xenology] Hunt finalize (bonus/broadcast): {ex.Message}", ModManager.LogLevel.Warn);
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
            data.TotalXenologyXp += extra;
            FlushPlayer(entry.Key, data);
            p.SendMessage($"[Xenology] Hunt top bonus: +{extra:0.##} xXP.");
        }

        ModManager.Log($"[Xenology] Hunt bonus: top-{top.Count} online players (mult ×{bonus:0.##}).", ModManager.LogLevel.Info);
        return bonusByGuid;
    }

    static void AnnounceHuntEndFromSnapshot(
        Settings settings,
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
                XenologyDisplay.ResolvePlayerName(guid),
                ordered[i].Value,
                xpGranted[i],
                xpFormula[i],
                lootLines[i],
                bonusXp));
        }

        HuntBroadcast.AnnounceHuntEndedTop3(settings, top3);
    }

    static ActiveHuntData CloneHuntForFinalize(ActiveHuntData a)
    {
        return new ActiveHuntData
        {
            WindowStartUtc = a.WindowStartUtc,
            WindowEndUtc = a.WindowEndUtc,
            TargetSpecies = new List<uint>(a.TargetSpecies),
            TargetMultipliers = new Dictionary<uint, double>(a.TargetMultipliers),
            HuntPointsByPlayer = new Dictionary<uint, double>(a.HuntPointsByPlayer),
        };
    }

    internal static void TickHuntTimer(Settings settings)
    {
        if (!settings.EnableXenology)
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
                    XenologyPersistence.ClearActiveHunt();
                }

                if (HuntSchedule.TryGetCurrentSlotUtc(now, starts, dur, out var slotStart, out var slotEnd))
                {
                    if (ActiveHunt == null || !SameUtcInstant(ActiveHunt.WindowStartUtc, slotStart))
                    {
                        if (ActiveHunt != null)
                        {
                            pendingFinalize = CloneHuntForFinalize(ActiveHunt);
                            ActiveHunt = null;
                            XenologyPersistence.ClearActiveHunt();
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
                        XenologyPersistence.ClearActiveHunt();
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

    internal static double GetHuntMultiplierForWcid(uint wcid)
    {
        if (ActiveHunt?.TargetMultipliers.TryGetValue(wcid, out var m) == true)
            return m;
        return 1.0;
    }

    static bool SameUtcInstant(DateTime a, DateTime b)
    {
        return a.ToUniversalTime().Ticks == b.ToUniversalTime().Ticks;
    }
}
