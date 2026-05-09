namespace Overtinked;

// Hemorrhage: on weapon hit, +StacksPerApplication to primary and AoE victims; each stack deals flat Health damage per tick as staggered 1-damage hits (no chat / DF scripts).
[HarmonyPatchCategory(Settings.RecipeManagerCategory)]
public static class HemorrhageImbueCombat
{
    private static readonly object _lock = new();
    private static readonly Dictionary<(uint attackerId, uint victimId), HemorrhageEntry> _entries = new();

    private sealed class HemorrhageEntry
    {
        public int Stacks;
        public bool ChainScheduled;
        public WeakReference<Player>? AttackerRef;
        public WeakReference<Creature>? VictimRef;
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Player), nameof(Player.DamageTarget), new Type[] { typeof(Creature), typeof(WorldObject) })]
    public static void PostDamageTarget(Creature target, WorldObject damageSource, ref Player __instance, ref DamageEvent __result)
    {
        if (CleavingNetherImbueCombat.IsInOvertinkedCleaveChain)
            return;

        if (__result is null || !__result.HasDamage || target is null || damageSource is null)
            return;

        Settings? s = PatchClass.CurrentSettings;
        HemorrhageImbueConfig? cfg = s?.HemorrhageImbue;
        if (cfg?.Enabled != true)
            return;

        if ((OvertinkedImbueStore.Get(damageSource) & OvertinkedImbueFlags.Hemorrhage) == 0)
            return;

        int add = Math.Max(1, cfg.StacksPerApplication);
        int maxStacks = Math.Max(1, cfg.MaxStacks);
        float radius = HemorrhageAoE.GetRadiusMeters(cfg);

        TryAddStacksAndMaybeStartChain(__instance, target, add, maxStacks);

        Landblock? lb = target.CurrentLandblock;
        if (lb == null)
            return;

        ICollection<WorldObject>? raw = lb.GetWorldObjectsForPhysicsHandling();
        if (raw == null)
            return;

        foreach (WorldObject o in raw)
        {
            if (o is not Creature victim || victim == target || victim == __instance)
                continue;

            if (victim.IsDead || !victim.Attackable)
                continue;

            if (victim.GetDistance(target) > radius)
                continue;

            if (victim is Player pVictim && !pVictim.Attackable)
                continue;

            if (!__instance.CanDamage(victim))
                continue;

            TryAddStacksAndMaybeStartChain(__instance, victim, add, maxStacks);
        }
    }

    private static void TryAddStacksAndMaybeStartChain(Player attacker, Creature victim, int add, int maxStacks)
    {
        HemorrhageImbueConfig cfg = PatchClass.CurrentSettings?.HemorrhageImbue ?? new HemorrhageImbueConfig();
        float interval = Math.Max(0.25f, cfg.TickIntervalSeconds);

        lock (_lock)
        {
            uint aid = attacker.Guid.Full;
            uint vid = victim.Guid.Full;
            var key = (aid, vid);
            if (!_entries.TryGetValue(key, out HemorrhageEntry? entry))
            {
                entry = new HemorrhageEntry
                {
                    AttackerRef = new WeakReference<Player>(attacker),
                    VictimRef = new WeakReference<Creature>(victim)
                };
                _entries[key] = entry;
            }

            entry.Stacks = Math.Min(entry.Stacks + add, maxStacks);

            if (!entry.ChainScheduled && entry.Stacks > 0)
            {
                entry.ChainScheduled = true;
                ScheduleNextWave((WorldObject)attacker, key, interval);
            }
        }
    }

    private static void ScheduleNextWave(WorldObject actor, (uint attackerId, uint victimId) key, float intervalSeconds)
    {
        var chain = new ActionChain();
        chain.AddDelaySeconds(intervalSeconds);
        chain.AddAction(actor, () => RunDamageWave(actor, key, intervalSeconds));
        chain.EnqueueChain();
    }

    private static void RunDamageWave(WorldObject actor, (uint attackerId, uint victimId) key, float intervalSeconds)
    {
        lock (_lock)
        {
            if (!_entries.ContainsKey(key))
                return;
        }

        HemorrhageImbueConfig cfg = PatchClass.CurrentSettings?.HemorrhageImbue ?? new HemorrhageImbueConfig();
        int dmgPerStack = Math.Max(0, cfg.DamagePerStackPerTick);
        float stagger = Math.Max(0.01f, cfg.StaggerBetweenHitsSeconds);

        Player? attacker = null;
        Creature? victim = null;
        int stacksSnapshot = 0;

        lock (_lock)
        {
            if (!_entries.TryGetValue(key, out HemorrhageEntry? entry))
                return;
            entry.AttackerRef?.TryGetTarget(out attacker);
            entry.VictimRef?.TryGetTarget(out victim);
            stacksSnapshot = entry.Stacks;
        }

        if (victim is null || victim.IsDead || stacksSnapshot <= 0 || dmgPerStack <= 0)
        {
            lock (_lock)
                _entries.Remove(key);
            return;
        }

        int hits = stacksSnapshot * dmgPerStack;
        float totalStagger = hits > 0 ? (hits - 1) * stagger : 0f;
        float tailDelay = Math.Max(0.05f, intervalSeconds - totalStagger);

        var burst = new ActionChain();
        for (int i = 0; i < hits; i++)
        {
            if (i > 0)
                burst.AddDelaySeconds(stagger);

            burst.AddAction(actor, () =>
            {
                lock (_lock)
                {
                    if (!_entries.TryGetValue(key, out HemorrhageEntry? e))
                        return;
                    if (e.VictimRef?.TryGetTarget(out Creature? v) != true || v is null || v.IsDead)
                        return;
                    Player? atk = null;
                    e.AttackerRef?.TryGetTarget(out atk);
                    v.TakeDamage(atk, DamageType.Health, 1f, false);
                }
            });
        }

        burst.AddDelaySeconds(tailDelay);
        burst.AddAction(actor, () =>
        {
            lock (_lock)
            {
                if (!_entries.TryGetValue(key, out HemorrhageEntry? entry))
                    return;

                entry.ChainScheduled = false;

                if (entry.VictimRef?.TryGetTarget(out Creature? v) != true || v is null || v.IsDead || entry.Stacks <= 0)
                {
                    _entries.Remove(key);
                    return;
                }

                entry.ChainScheduled = true;
                ScheduleNextWave(actor, key, intervalSeconds);
            }
        });
        burst.EnqueueChain();
    }
}
