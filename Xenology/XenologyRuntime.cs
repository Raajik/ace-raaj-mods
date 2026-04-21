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
        if (ActiveHunt is null || ActiveHunt.WindowEndUtc < DateTime.UtcNow)
        {
            BeginNewHuntWindow(settings, finalizePrevious: false);
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

        var rnd = ThreadSafeRandom.Next(0, int.MaxValue);
        var random = new Random(rnd);
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
        lock (HuntLock)
        {
            if (finalizePrevious && ActiveHunt != null)
                FinalizeHuntLeaderboard(settings);

            var targets = PickHuntTargets(settings);
            var mults = BuildHuntTargetMultipliers(targets, settings);
            var now = DateTime.UtcNow;
            ActiveHunt = new ActiveHuntData
            {
                WindowStartUtc = now,
                WindowEndUtc = now.AddHours(settings.HuntIntervalHours),
                TargetSpecies = targets,
                TargetMultipliers = mults,
                HuntPointsByPlayer = new Dictionary<uint, double>(),
            };

            XenologyPersistence.SaveActiveHunt(ActiveHunt);
            ModManager.Log($"[Xenology] Hunt started — targets: {(targets.Count == 0 ? "(none)" : string.Join(", ", targets))} (multipliers {string.Join(", ", mults.Values)})", ModManager.LogLevel.Info);
        }
    }

    internal static void FinalizeHuntLeaderboard(Settings settings)
    {
        if (ActiveHunt == null || ActiveHunt.HuntPointsByPlayer.Count == 0)
            return;

        var ordered = ActiveHunt.HuntPointsByPlayer.OrderByDescending(kv => kv.Value).ToList();
        var top = ordered.Take(settings.HuntLeaderboardTopCount).ToList();
        var bonus = settings.HuntLeaderboardTopBonusMultiplier;
        if (bonus <= 1.0)
            return;

        foreach (var entry in top)
        {
            var extra = entry.Value * (bonus - 1.0);
            if (extra <= 0)
                continue;

            var p = PlayerManager.GetOnlinePlayer(entry.Key);
            if (p == null)
                continue;

            var data = GetOrLoadPlayer(entry.Key);
            data.TotalXenologyXp += extra;
            FlushPlayer(entry.Key, data);
            p.SendMessage($"[Xenology] Hunt top bonus: +{extra:0.##} xXP.");
        }

        ModManager.Log($"[Xenology] Hunt ended — awarded top-{top.Count} bonus (mult ×{bonus:0.##}).", ModManager.LogLevel.Info);
    }

    internal static void TickHuntTimer(Settings settings)
    {
        if (!settings.EnableXenology)
            return;

        lock (HuntLock)
        {
            if (ActiveHunt == null || DateTime.UtcNow < ActiveHunt.WindowEndUtc)
                return;

            BeginNewHuntWindow(settings, finalizePrevious: true);
        }
    }

    internal static double GetHuntMultiplierForWcid(uint wcid)
    {
        if (ActiveHunt?.TargetMultipliers.TryGetValue(wcid, out var m) == true)
            return m;
        return 1.0;
    }
}
