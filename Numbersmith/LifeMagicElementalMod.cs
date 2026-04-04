namespace Numbersmith;

[HarmonyPatchCategory(nameof(LifeMagicElementalMod))]
internal static class LifeMagicElementalMod
{
    [HarmonyPrefix]
    [HarmonyPatch(typeof(SpellProjectile), nameof(SpellProjectile.CalculateDamage), new Type[] { typeof(WorldObject), typeof(Creature), typeof(bool), typeof(bool), typeof(bool) }, new ArgumentType[] { ArgumentType.Normal, ArgumentType.Normal, ArgumentType.Ref, ArgumentType.Ref, ArgumentType.Ref })]
    public static void PreCalculateDamage(WorldObject source, Creature target, bool criticalHit, bool critDefended, bool overpower, ref SpellProjectile __instance, ref float? __result)
    {
        if (source is not Player player)
            return;

        var caster = player.GetEquippedWand();
        if (caster is null || !caster.W_DamageType.HasFlag(__instance.Spell.DamageType))
            return;

        var boost = (uint)(__instance.LifeProjectileDamage * (caster.ElementalDamageMod ?? 1.0f));
        __instance.LifeProjectileDamage = boost;
    }
}
