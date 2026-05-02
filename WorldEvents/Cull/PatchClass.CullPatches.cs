namespace WorldEvents;

public partial class PatchClass
{
    // Cross-mod XP context: Loremaster PreGrantXP consumes PropertyFloat 40125 per-player.

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

        var killer = HuntKillPrep.ResolveKillerPlayer(lastDamager);
        if (killer == null) return;

        // Set cull multiplier on all qualifying player damagers so Loremaster can consume it.
        foreach (var kvp in __instance.DamageHistory.TotalDamage)
        {
            var damager = kvp.Value.TryGetAttacker();
            var player = damager as Player;
            if (player == null && kvp.Value.PetOwner != null)
                player = kvp.Value.TryGetPetOwner();
            if (player == null) continue;

            player.SetProperty((PropertyFloat)40125, (float)s.CullXpMultiplier);
        }
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Creature), nameof(Creature.Die),
        new Type[] { typeof(DamageHistoryInfo), typeof(DamageHistoryInfo) })]
    public static void PostDieCull(DamageHistoryInfo lastDamager, Creature __instance)
    {
        // Cleanup cull multiplier properties from all damagers (Loremaster normally consumes them during OnDeath_GrantXP).
        foreach (var kvp in __instance.DamageHistory.TotalDamage)
        {
            var damager = kvp.Value.TryGetAttacker();
            var player = damager as Player;
            if (player == null && kvp.Value.PetOwner != null)
                player = kvp.Value.TryGetPetOwner();
            if (player != null)
                player.RemoveProperty((PropertyFloat)40125);
        }

        var s = CurrentSettings;
        if (s == null || !s.CullEnabled) return;

        var cull = CullRuntime.ActiveCull;
        if (cull == null) return;

        var creatureType = (uint)(__instance.GetProperty(PropertyInt.CreatureType) ?? 0);
        if (creatureType != cull.TargetCreatureType) return;

        var killer = HuntKillPrep.ResolveKillerPlayer(lastDamager);
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
