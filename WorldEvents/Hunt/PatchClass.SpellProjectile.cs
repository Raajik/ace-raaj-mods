namespace WorldEvents;

public partial class PatchClass
{
    [HarmonyPostfix]
    [HarmonyPatch(typeof(SpellProjectile), nameof(SpellProjectile.CalculateDamage))]
    public static void PostCalculateDamageSpellHunt(
        SpellProjectile __instance,
        WorldObject source,
        Creature target,
        ref bool criticalHit,
        ref bool critDefended,
        ref bool overpower,
        ref float? __result)
    {
        var settings = CurrentSettings;
        if (settings?.EnableHunt != true || !__result.HasValue)
            return;

        if (source is not Player player)
            return;

        if (settings.OnlyScaleDamageVsCreatures && target is Player)
            return;

        var data = HuntRuntime.GetOrLoadPlayer(player.Guid.Full);
        var pct = HuntKillPrep.ComputeDamageBonusPercent(data, settings);
        if (pct <= 0)
            return;

        var factor = 1.0f + (float)(pct / 100.0);
        if (factor <= 0 || float.IsNaN(factor) || float.IsInfinity(factor))
            return;

        __result *= factor;
    }
}
