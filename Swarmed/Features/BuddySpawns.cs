namespace Swarmed.Features;

using System.Collections.Concurrent;
using System.Timers;
using ACE.Server.Entity.Actions;
using ACE.Server.Managers;

/// <summary>
/// Timed buddy spawning: when a landblock has been idle (no kills) for a threshold period,
/// living creatures roll to spawn a buddy nearby. Timer doubles each successful round.
/// </summary>
internal static class BuddySpawns
{
    const int BuddySpawnTagPropertyId = 40113;
    const int BuddyXpBonusPropertyId = 40114;

    static System.Timers.Timer? _timer;
    static readonly ConcurrentDictionary<uint, LandblockBuddyState> _states = new();

    public static void Start(Settings settings)
    {
        Stop();
        if (!settings.BuddySpawns.Enabled)
            return;

        int interval = Math.Max(5, settings.BuddySpawns.TimerIntervalSeconds) * 1000;
        _timer = new System.Timers.Timer(interval);
        _timer.Elapsed += (_, _) => Tick(settings);
        _timer.Start();

        ModManager.Log("[Swarmed] BuddySpawns timer started.", ModManager.LogLevel.Info);
    }

    public static void Stop()
    {
        _timer?.Stop();
        _timer?.Dispose();
        _timer = null;
        _states.Clear();
    }

    public static void OnCreatureDeath(Creature creature)
    {
        var lb = creature.CurrentLandblock;
        if (lb == null) return;

        var state = _states.GetOrAdd(lb.Id.Raw, _ => new LandblockBuddyState());
        lock (state)
        {
            state.LastKillUtc = DateTime.UtcNow;
            state.CurrentThresholdSeconds = PatchClass.CurrentSettings?.BuddySpawns.BaseThresholdSeconds ?? 120;
            state.Round = 0;
        }
    }

    public static int GetBuddyXpBonusPropertyId() => BuddyXpBonusPropertyId;

    static void Tick(Settings settings)
    {
        try
        {
            var processedLbs = new HashSet<uint>();
            foreach (var player in PlayerManager.GetAllOnline())
            {
                var lb = player.CurrentLandblock;
                if (lb == null) continue;

                uint lbId = lb.Id.Raw;
                if (processedLbs.Contains(lbId))
                    continue;
                processedLbs.Add(lbId);

                if (lb.players == null || lb.players.Count == 0)
                {
                    _states.TryRemove(lbId, out _);
                    continue;
                }

                ProcessLandblock(lb, settings);
            }
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Swarmed] BuddySpawns tick error: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    static void ProcessLandblock(Landblock lb, Settings settings)
    {
        var bs = settings.BuddySpawns;
        var state = _states.GetOrAdd(lb.Id.Raw, _ => new LandblockBuddyState
        {
            LastKillUtc = DateTime.UtcNow,
            CurrentThresholdSeconds = bs.BaseThresholdSeconds
        });

        lock (state)
        {
            double idleSeconds = (DateTime.UtcNow - state.LastKillUtc).TotalSeconds;
            if (idleSeconds < state.CurrentThresholdSeconds)
                return;

            var creatures = GetLivingCreatures(lb);
            int buddyCount = creatures.Count(c => c.GetProperty((PropertyInt)BuddySpawnTagPropertyId) != null);
            if (buddyCount >= bs.MaxPerLandblock)
                return;

            var parents = creatures
                .Where(c => c.GetProperty((PropertyInt)BuddySpawnTagPropertyId) == null)
                .Where(c => !Helpers.SwarmedHealthGate.IsExempt(c, settings))
                .ToList();
            if (parents.Count == 0)
                return;

            int spawned = 0;
            foreach (var parent in parents)
            {
                if (buddyCount + spawned >= bs.MaxPerLandblock)
                    break;

                if (ThreadSafeRandom.Next(0f, 1f) > bs.Chance)
                    continue;

                if (TrySpawnBuddy(parent, lb, settings))
                    spawned++;
            }

            if (spawned > 0)
            {
                state.Round++;
                state.CurrentThresholdSeconds = (int)Math.Min(
                    bs.MaxThresholdSeconds,
                    bs.BaseThresholdSeconds * Math.Pow(bs.ThresholdMultiplier, state.Round));
                state.LastKillUtc = DateTime.UtcNow;
            }
        }
    }

    static List<Creature> GetLivingCreatures(Landblock lb)
    {
        var result = new List<Creature>();
        var raw = lb.GetWorldObjectsForPhysicsHandling();
        if (raw == null) return result;

        foreach (var wo in raw)
        {
            if (wo is Creature c && !c.IsDead && c.Attackable)
                result.Add(c);
        }
        return result;
    }

    static bool TrySpawnBuddy(Creature parent, Landblock lb, Settings settings)
    {
        try
        {
            uint wcid = parent.WeenieClassId;
            var weenie = DatabaseManager.World.GetCachedWeenie(wcid);
            if (weenie == null) return false;

            var guid = GuidManager.NewDynamicGuid();
            WorldObject? wo;
#if REALM
            wo = WorldObjectFactory.CreateWorldObject(weenie, guid, parent.RealmRuleset);
#else
            wo = WorldObjectFactory.CreateWorldObject(weenie, guid);
#endif
            if (wo is not Creature buddy)
            {
                GuidManager.RecycleDynamicGuid(guid);
                return false;
            }

            float radius = settings.BuddySpawns.SpawnRadiusMeters;
            float angle = (float)ThreadSafeRandom.Next(0f, 1f) * (float)(2 * Math.PI);
            float dist = (float)ThreadSafeRandom.Next(0f, 1f) * radius;
            var offset = new Vector3((float)(dist * Math.Cos(angle)), (float)(dist * Math.Sin(angle)), 0);

            var spawnPos = new Position(parent.Location);
            spawnPos.Pos += offset;
            buddy.Location = spawnPos;

            buddy.SetProperty((PropertyInt)BuddySpawnTagPropertyId, 1);

            if (settings.CreatureVariation.Enabled)
            {
                float mult = CreatureVariation.RollVariationMultiplier(settings.CreatureVariation, guid.Full);
                CreatureVariation.ApplyVariation(buddy, mult, settings.CreatureVariation);

                if (mult != 1.0f)
                    buddy.SetProperty((PropertyFloat)BuddyXpBonusPropertyId, mult - 1.0f);
            }

            LandblockManager.AddObject(buddy);
            return true;
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Swarmed] Buddy spawn failed: {ex.Message}", ModManager.LogLevel.Warn);
            return false;
        }
    }
}

class LandblockBuddyState
{
    public DateTime LastKillUtc { get; set; } = DateTime.UtcNow;
    public int CurrentThresholdSeconds { get; set; } = 120;
    public int Round { get; set; } = 0;
}
