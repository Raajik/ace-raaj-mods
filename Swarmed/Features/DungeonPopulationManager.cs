namespace Swarmed.Features;

using System.Timers;
using ACE.Server.Entity.Actions;
using ACE.Server.Managers;
using ACE.Server.WorldObjects;

/// <summary>
/// Maintains a minimum population of hostile creatures inside dungeon landblocks that contain players.
/// Spawns use existing dungeon creatures as templates and prioritize locations outside player radar range.
/// </summary>
internal static class DungeonPopulationManager
{
    static System.Timers.Timer? _timer;
    static readonly HashSet<uint> _recentlySpawnedGuids = new();

    public static void Start(Settings settings)
    {
        Stop();
        if (!settings.DungeonPopulation.Enabled)
            return;

        int interval = Math.Max(5, settings.DungeonPopulation.CheckIntervalSeconds) * 1000;
        _timer = new System.Timers.Timer(interval);
        _timer.Elapsed += (_, _) => Tick(settings);
        _timer.Start();

        ModManager.Log("[Swarmed] DungeonPopulationManager timer started.", ModManager.LogLevel.Info);
    }

    public static void Stop()
    {
        _timer?.Stop();
        _timer?.Dispose();
        _timer = null;
        _recentlySpawnedGuids.Clear();
    }

    static void Tick(Settings settings)
    {
        try
        {
            var processed = new HashSet<uint>();
            foreach (var player in PlayerManager.GetAllOnline())
            {
                var lb = player.CurrentLandblock;
                if (lb == null || !lb.IsDungeon)
                    continue;

                uint lbId = lb.Id.Raw;
                if (processed.Contains(lbId))
                    continue;
                processed.Add(lbId);

                ProcessLandblock(lb, settings);
            }
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Swarmed] DungeonPopulationManager tick error: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    static void ProcessLandblock(Landblock lb, Settings settings)
    {
        var s = settings.DungeonPopulation;
        var allObjects = lb.GetWorldObjectsForPhysicsHandling();
        if (allObjects == null)
            return;

        var creatures = new List<Creature>();
        var players = new List<Player>();
        var templateCandidates = new List<Creature>();

        foreach (var wo in allObjects)
        {
            if (wo is Player p && !p.IsDead && p.Session != null)
                players.Add(p);
            else if (wo is Creature c && !c.IsDead && c.Attackable)
            {
                creatures.Add(c);
                // Only use non-buddy, non-reinforcement originals as templates
                bool isBuddy = c.GetProperty((PropertyInt)40113) != null; // BuddySpawnTagPropertyId
                bool isReinforcement = c.GetProperty((PropertyInt)40112) != null; // SwarmedReinforcementDepthPropertyId
                bool isBaseHuman = c.WeenieClassId == 1; // Skip modified human placeholder "Clay"
                if (!isBuddy && !isReinforcement && !isBaseHuman)
                    templateCandidates.Add(c);
            }
        }

        if (players.Count == 0)
            return;

        int deficit = s.TargetMobCount - creatures.Count;
        if (deficit <= 0)
            return;

        // Cap spawns per tick to avoid spikes
        int toSpawn = Math.Min(deficit, s.MaxSpawnsPerTick);
        if (toSpawn <= 0)
            return;

        // Build unique template WCIDs from existing creatures
        var templates = templateCandidates
            .GroupBy(c => c.WeenieClassId)
            .Select(g => g.First())
            .ToList();

        if (templates.Count == 0)
        {
            // Fallback: use any creature WCID in the landblock, even if tagged
            templates = creatures
                .GroupBy(c => c.WeenieClassId)
                .Select(g => g.First())
                .ToList();
        }

        if (templates.Count == 0)
            return;

        int spawned = 0;
        for (int i = 0; i < toSpawn; i++)
        {
            var template = templates[ThreadSafeRandom.Next(0, templates.Count - 1)];
            if (TrySpawn(template, lb, players, s))
                spawned++;
        }

        if (spawned > 0)
            ModManager.Log($"[Swarmed] DungeonPopulationManager spawned {spawned} creatures in landblock {lb.Id.Raw:X4} (target {s.TargetMobCount}, had {creatures.Count}).", ModManager.LogLevel.Info);
    }

    static bool TrySpawn(Creature template, Landblock lb, List<Player> players, DungeonPopulationSettings s)
    {
        try
        {
            uint wcid = template.WeenieClassId;
            var weenie = DatabaseManager.World.GetCachedWeenie(wcid);
            if (weenie == null)
                return false;

            var guid = GuidManager.NewDynamicGuid();
            WorldObject? wo;
#if REALM
            wo = WorldObjectFactory.CreateWorldObject(weenie, guid, template.RealmRuleset);
#else
            wo = WorldObjectFactory.CreateWorldObject(weenie, guid);
#endif
            if (wo is not Creature creature)
            {
                GuidManager.RecycleDynamicGuid(guid);
                return false;
            }

            // Pick a spawn position: near template but outside min distance from all players
            var spawnPos = FindSpawnPosition(template, lb, players, s);
            if (spawnPos == null)
            {
                GuidManager.RecycleDynamicGuid(guid);
                return false;
            }

            creature.Location = spawnPos;

            // Apply creature variation
            if (PatchClass.CurrentSettings?.CreatureVariation.Enabled == true)
            {
                float varMult = CreatureVariation.RollVariationMultiplier(
                    PatchClass.CurrentSettings.CreatureVariation, guid.Full);
                CreatureVariation.ApplyVariation(creature, varMult, PatchClass.CurrentSettings.CreatureVariation);
            }

            LandblockManager.AddObject(creature);

            // Aggro nearest player
            var nearest = players
                .Where(p => !p.IsDead)
                .OrderBy(p => p.GetDistance(creature))
                .FirstOrDefault();
            if (nearest != null)
                creature.AttackTarget = nearest;

            return true;
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Swarmed] DungeonPopulationManager spawn failed: {ex.Message}", ModManager.LogLevel.Warn);
            return false;
        }
    }

    static Position? FindSpawnPosition(Creature template, Landblock lb, List<Player> players, DungeonPopulationSettings s)
    {
        // Try several random offsets around the template creature
        for (int attempt = 0; attempt < 8; attempt++)
        {
            float angle = (float)(ThreadSafeRandom.Next(0.0f, 1.0f) * 2 * Math.PI);
            float dist = s.MinSpawnDistanceFromPlayer + (float)ThreadSafeRandom.Next(0.0f, 1.0f) *
                (s.MaxSpawnDistanceFromPlayer - s.MinSpawnDistanceFromPlayer);

            var offset = new Vector3((float)(dist * Math.Cos(angle)), (float)(dist * Math.Sin(angle)), 0);
            var candidate = new Position(template.Location);
            candidate.Pos += offset;

            // Snap Z to terrain height to avoid spawning inside floors/geometry
            try
            {
                if (lb?.LandblockMesh != null)
                {
                    var terrainZ = lb.LandblockMesh.GetZ(new System.Numerics.Vector2(candidate.Pos.X, candidate.Pos.Y));
                    if (!float.IsNaN(terrainZ) && terrainZ > -999)
                        candidate.Pos = new Vector3(candidate.Pos.X, candidate.Pos.Y, terrainZ + 0.05f);
                }
            }
            catch { /* keep candidate Z if mesh unavailable */ }

            // Ensure it's outside min distance from ALL players
            bool tooClose = players.Any(p => p.Location.DistanceTo(candidate) < s.MinSpawnDistanceFromPlayer);
            if (tooClose)
                continue;

            return candidate;
        }

        // Fallback: return a position at max distance from the furthest player
        if (players.Count > 0)
        {
            var fallback = new Position(template.Location);
            float angle = (float)(ThreadSafeRandom.Next(0.0f, 1.0f) * 2 * Math.PI);
            float dist = s.MaxSpawnDistanceFromPlayer;
            fallback.Pos += new Vector3((float)(dist * Math.Cos(angle)), (float)(dist * Math.Sin(angle)), 0);

            // Snap fallback Z too
            try
            {
                if (lb?.LandblockMesh != null)
                {
                    var terrainZ = lb.LandblockMesh.GetZ(new System.Numerics.Vector2(fallback.Pos.X, fallback.Pos.Y));
                    if (!float.IsNaN(terrainZ) && terrainZ > -999)
                        fallback.Pos = new Vector3(fallback.Pos.X, fallback.Pos.Y, terrainZ + 0.05f);
                }
            }
            catch { }

            return fallback;
        }

        return null;
    }
}


