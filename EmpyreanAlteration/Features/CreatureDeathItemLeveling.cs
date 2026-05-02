using ACE.Server.WorldObjects;

namespace EmpyreanAlteration.Features;

/// <summary>
/// Awards item-leveling points to all players who got damage credit on ANY creature death.
/// This runs for ALL kills, not just creatures with an active kill quest (which FakeKillTask handles).
/// </summary>
[HarmonyPatch(typeof(Creature), nameof(Creature.OnDeath), new[] { typeof(DamageHistoryInfo), typeof(DamageType), typeof(bool) })]
internal static class CreatureDeathItemLeveling
{
    [HarmonyPostfix]
    public static void PostOnDeath(DamageHistoryInfo lastDamager, DamageType damageType, bool criticalHit, Creature __instance)
    {
        var s = PatchClass.Settings;
        if (s == null || !s.Enabled || s.ItemLevelingKillPoints <= 0)
            return;

        var players = new HashSet<Player>();

        foreach (var kvp in __instance.DamageHistory.TotalDamage)
        {
            if (kvp.Value.TotalDamage <= 0)
                continue;

            var damager = kvp.Value.TryGetAttacker();
            var player = damager as Player;

            if (player == null && kvp.Value.PetOwner != null)
                player = kvp.Value.TryGetPetOwner();

            if (player != null)
                players.Add(player);
        }

        foreach (var player in players)
        {
            ItemLevelingPoints.AwardKillPoints(player, __instance);
        }
    }
}
