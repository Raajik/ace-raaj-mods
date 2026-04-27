namespace WorldEvents;

public partial class PatchClass
{
    // ThreadStatic: set in Creature.Die prefix, consumed in Player.GrantXP prefix on same call stack.
    [ThreadStatic] static float _pendingCullXpMult;

    // ── XP multiplier — runs before Hunt (432 > 430) so both stack multiplicatively ──

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), nameof(Player.GrantXP), new Type[] { typeof(long), typeof(XpType), typeof(ShareType) })]
    [HarmonyPriority(432)]
    public static void PreGrantXpCull(ref long amount, XpType xpType)
    {
        if (xpType != XpType.Kill) return;
        var mult = _pendingCullXpMult;
        if (mult <= 1.0f) return;
        amount = (long)(amount * mult);
        _pendingCullXpMult = 0;
    }

    // ── Creature.Die — XP flag, kill record, swarm spawn, death broadcast ──

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Creature), nameof(Creature.Die),
        new Type[] { typeof(DamageHistoryInfo), typeof(DamageHistoryInfo) })]
    public static void PreDieCull(DamageHistoryInfo lastDamager, Creature __instance)
    {
        var s = CurrentSettings;
        if (s == null || !s.CullEnabled) return;

        var cull = CullRuntime.ActiveCull;
        if (cull == null) return;

        var creatureType = (uint)(__instance.GetProperty(PropertyInt.CreatureType) ?? 0);
        if (creatureType != cull.TargetCreatureType) return;

        var killer = ResolveKillerPlayer(lastDamager);
        if (killer == null) return;

        _pendingCullXpMult = (float)s.CullXpMultiplier;
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Creature), nameof(Creature.Die),
        new Type[] { typeof(DamageHistoryInfo), typeof(DamageHistoryInfo) })]
    public static void PostDieCull(DamageHistoryInfo lastDamager, Creature __instance)
    {
        _pendingCullXpMult = 0;

        var s = CurrentSettings;
        if (s == null || !s.CullEnabled) return;

        var cull = CullRuntime.ActiveCull;
        if (cull == null) return;

        var creatureType = (uint)(__instance.GetProperty(PropertyInt.CreatureType) ?? 0);
        if (creatureType != cull.TargetCreatureType) return;

        var killer = ResolveKillerPlayer(lastDamager);
        if (killer == null) return;

        CullRuntime.RecordKill(killer.Guid.Full, killer.Name ?? "Unknown");

        // Swarm spawn — only original creatures spawn adds, not swarm adds themselves
        if (CullRuntime.IsSpawnedAdd(__instance.Guid.Full)) return;
        if ((float)ThreadSafeRandom.Next(0.0f, 1.0f) >= s.CullSwarmChance) return;

        var wcid = __instance.WeenieClassId;
        var loc = __instance.Location;
        if (loc == null) return;

        var (addCount, scaleMult, healthMult) = CullRuntime.GetSwarmStats(s);
        var origScale = __instance.ObjScale ?? 1.0f;

        // Snapshot mutable position values for async use
        var cellId = loc.LandblockId.Raw;
        var px = loc.PositionX;
        var py = loc.PositionY;
        var pz = loc.PositionZ;
        var rz = loc.RotationZ;
        var rw = loc.RotationW;

        SpawnCullAdds(wcid, cellId, px, py, pz, rz, rw, addCount, origScale * scaleMult, healthMult);
    }

    // ── Player death to cull target ──────────────────────────────────────

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Player), nameof(Player.Die),
        new Type[] { typeof(DamageHistoryInfo), typeof(DamageHistoryInfo) })]
    public static void PostDiePlayerCull(DamageHistoryInfo lastDamager, DamageHistoryInfo topDamager, Player __instance)
    {
        var s = CurrentSettings;
        if (s == null || !s.CullEnabled) return;

        var cull = CullRuntime.ActiveCull;
        if (cull == null) return;

        // Check if the killer was a cull-target creature
        var killerCreature = lastDamager?.TryGetAttacker() as Creature;
        if (killerCreature == null || killerCreature is Player) return;

        var killerType = (uint)(killerCreature.GetProperty(PropertyInt.CreatureType) ?? 0);
        if (killerType != cull.TargetCreatureType) return;

        CullRuntime.RecordPlayerDeath(__instance.Name ?? "Unknown");
    }

    // ── Swarm add spawn ──────────────────────────────────────────────────

    static void SpawnCullAdds(uint wcid, uint cellId, float x, float y, float z, float rz, float rw,
        int count, float finalScale, float healthMult)
    {
        for (var i = 0; i < count; i++)
        {
            try
            {
                var add = WorldObjectFactory.CreateNewWorldObject(wcid);
                if (add == null) continue;

                var angle = ThreadSafeRandom.Next(0.0f, (float)(Math.PI * 2));
                var dist = ThreadSafeRandom.Next(1.0f, 5.0f);

                add.Location = new Position(
                    cellId,
                    x + (float)(Math.Cos(angle) * dist),
                    y + (float)(Math.Sin(angle) * dist),
                    z, 0f, 0f, rz, rw);
                add.Location.LandblockId = new LandblockId(add.Location.GetCell());
                add.ObjScale = finalScale;

                // Boost starting health beyond normal max to simulate toughening
                if (add is Creature addCreature && healthMult > 1.0f)
                    addCreature.Health.Current = (uint)(addCreature.Health.MaxValue * healthMult);

                CullRuntime.TrackSpawnedAdd(add.Guid.Full);

                if (!LandblockManager.AddObject(add))
                    CullRuntime.UntrackSpawnedAdd(add.Guid.Full);
            }
            catch (Exception ex)
            {
                ModManager.Log($"[Cull] SpawnCullAdds failed (WCID {wcid}): {ex.Message}", ModManager.LogLevel.Warn);
            }
        }
    }
}
