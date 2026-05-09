namespace Overtinked;

// Shatter: outgoing damage scaled by debuff stacks on creature targets; stacks increment after hit; bonus damage fraction when target is "broken" (at max stacks), all damage types.
[HarmonyPatchCategory(Settings.RecipeManagerCategory)]
public static class ShatterImbueCombat
{
    [HarmonyPostfix]
    [HarmonyPriority(Priority.First)]
    [HarmonyPatch(typeof(Player), nameof(Player.DamageTarget), new Type[] { typeof(Creature), typeof(WorldObject) })]
    public static void PostDamageTargetShatter(Creature target, WorldObject damageSource, ref Player __instance, ref DamageEvent __result)
    {
        if (CleavingNetherImbueCombat.IsInOvertinkedCleaveChain)
            return;

        if (__result is null || !__result.HasDamage || target == null || damageSource == null || __instance == null)
            return;

        if (target is Player)
            return;

        Settings? s = PatchClass.CurrentSettings;
        ShatterImbueConfig? cfg = s?.ShatterImbue;
        if (cfg?.Enabled != true)
            return;

        if ((OvertinkedImbueStore.Get(damageSource) & OvertinkedImbueFlags.Shatter) == 0)
            return;

        float dmg = __result.Damage;
        if (dmg <= 0f)
            return;

        int stacks = ShatterDebuff.GetStacks(target);
        int max = Math.Max(1, cfg.MaxStacks);
        stacks = Math.Min(stacks, max);
        float per = Math.Max(0f, cfg.DamageBonusPerStack);
        float mult = 1f + per * stacks;

        if (ShatterDebuff.IsBroken(target))
        {
            float b = Math.Max(0f, cfg.BrokenDamageBonusFraction);
            if (b > 0f)
                mult *= 1f + b;
        }

        if (mult > 1f)
            __result.Damage = dmg * mult;

        ShatterDebuff.OnHit(target, cfg);
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Creature), nameof(Creature.OnDeath), new Type[] { typeof(DamageHistoryInfo), typeof(DamageType), typeof(bool) })]
    public static void PostCreatureOnDeath(Creature __instance, DamageHistoryInfo lastDamager, DamageType damageType, bool criticalHit, ref DeathMessage __result)
    {
        ShatterDebuff.Clear(__instance);
    }
}
