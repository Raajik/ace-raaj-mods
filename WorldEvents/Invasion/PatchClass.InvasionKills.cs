namespace WorldEvents;

public partial class PatchClass
{
    [HarmonyPostfix]
    [HarmonyPatch(typeof(Creature), nameof(Creature.Die),
        new[] { typeof(DamageHistoryInfo), typeof(DamageHistoryInfo) })]
    public static void PostDieInvasionKill(DamageHistoryInfo lastDamager, DamageHistoryInfo topDamager, Creature __instance)
    {
        if (CurrentSettings?.EnableInvasion != true) return;
        if (__instance is Player) return;

        var wave = InvasionRuntime.ActiveInvasion;
        if (wave == null) return;

        // Resolve which town this creature belongs to (by landblock)
        var creatureLb = (int)(__instance.Location?.LandblockId.Raw >> 16 ?? 0xFFFF);
        var townSettings = MatchTownByLandblock(creatureLb);
        if (townSettings == null) return;

        // Attribute the kill to the top damager if available, else last damager
        Player? killer = null;
        if (topDamager?.IsPlayer == true)
            killer = topDamager.TryGetPetOwnerOrAttacker() as Player;
        if (killer == null && lastDamager?.IsPlayer == true)
            killer = lastDamager.TryGetPetOwnerOrAttacker() as Player;
        if (killer == null) return;

        lock (InvasionRuntime.InvasionLock)
        {
            if (InvasionRuntime.ActiveInvasion == null) return;

            // Is this the boss?
            var isBoss = townSettings.BossWcid != 0
                && __instance.WeenieClassId == townSettings.BossWcid;

            var basePoints = isBoss
                ? (float)(CurrentSettings?.InvasionBossPointsMultiplier ?? 0.1)
                : 1f;

            InvasionKillTracker.RecordKill(townSettings.TownName, killer, basePoints);

            if (isBoss)
            {
                InvasionKillTracker.OnBossDied(townSettings.TownName);
                ModManager.Log($"[Invasion] Boss killed at {townSettings.TownName}.", ModManager.LogLevel.Info);

                var s = CurrentSettings!;
                // Grant boss loot immediately (outside lock — snapshot settings first)
                Task.Run(() =>
                {
                    lock (InvasionRuntime.InvasionLock)
                        InvasionLootRewards.DistributeBossKillRewards(s);
                });

                InvasionBroadcast.AnnounceBossKilled(townSettings.TownName, killer.Name ?? "Unknown", wave.ChaosMode);
            }
            else
            {
                // Check if we hit the threshold to spawn the boss
                var entry = wave.Towns.FirstOrDefault(t => t.TownName == townSettings.TownName);
                if (entry != null)
                    InvasionRuntime.CheckBossSpawnThreshold(CurrentSettings!, townSettings, entry);
            }
        }
    }

    static InvasionTownSettings? MatchTownByLandblock(int landblock)
    {
        var wave = InvasionRuntime.ActiveInvasion;
        if (wave == null || CurrentSettings == null) return null;

        foreach (var entry in wave.Towns)
        {
            var ts = CurrentSettings.InvasionTowns.FirstOrDefault(t => t.TownName == entry.TownName);
            if (ts == null) continue;

            var centerLb = (int)(ts.TownCenterObjCellId >> 16);
            if (ts.DynamicLandblocks.Contains(landblock))
                return ts;
            if (centerLb != 0 && centerLb == landblock)
                return ts;
        }
        return null;
    }
}
