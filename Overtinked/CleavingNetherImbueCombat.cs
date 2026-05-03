namespace Overtinked;

// Cleaving: splash Health damage to nearby creatures/players from the primary target. Nether Rending: extra Nether damage on the primary target only.
[HarmonyPatchCategory(Settings.RecipeManagerCategory)]
public static class CleavingNetherImbueCombat
{
    [ThreadStatic]
    private static bool _inOvertinkedCleaveChain;

    internal static bool IsInOvertinkedCleaveChain => _inOvertinkedCleaveChain;

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Player), nameof(Player.DamageTarget), new Type[] { typeof(Creature), typeof(WorldObject) })]
    public static void PostDamageTarget(Creature target, WorldObject damageSource, ref Player __instance, ref DamageEvent __result)
    {
        if (_inOvertinkedCleaveChain)
            return;

        if (__result is null || !__result.HasDamage || target == null || damageSource == null || __instance == null)
            return;

        Settings? s = PatchClass.CurrentSettings;
        if (s == null)
            return;

        OvertinkedImbueFlags flags = OvertinkedImbueStore.Get(damageSource);
        float baseDamage = __result.Damage;
        if (baseDamage <= 0)
            return;

        if ((flags & OvertinkedImbueFlags.NetherRending) != 0 && s.NetherRendingImbue?.Enabled == true)
        {
            NetherRendingImbueCombatConfig nc = s.NetherRendingImbue;
            float frac = Math.Clamp(nc.NetherDamageFraction, 0f, 2f);
            if (frac > 0)
            {
                float bonus = baseDamage * frac;
                if (nc.MaxNetherBonusDamage > 0)
                    bonus = Math.Min(bonus, nc.MaxNetherBonusDamage);

                float pMul = Math.Clamp(nc.NetherBonusVsPlayersMultiplier, 0f, 10f);
                float cMul = Math.Clamp(nc.NetherBonusVsCreaturesMultiplier, 0f, 10f);
                bonus *= target is Player ? pMul : cMul;

                if (nc.NetherBonusSoftCap > 0f)
                    bonus = Math.Min(bonus, nc.NetherBonusSoftCap);

                if (bonus >= 1f)
                    target.TakeDamage(__instance, DamageType.Nether, bonus, false);
            }
        }

        if ((flags & OvertinkedImbueFlags.Cleaving) == 0 || s.CleavingImbue?.Enabled != true)
            return;

        CleavingImbueCombatConfig cc = s.CleavingImbue;
        float radius = Math.Clamp(cc.SplashRadiusMeters, 0.5f, 50f);
        float splashFrac = Math.Clamp(cc.SplashDamageFraction, 0f, 1f);
        int maxTargets = Math.Max(0, cc.MaxSplashTargets);
        if (splashFrac <= 0 || maxTargets == 0)
            return;

        Landblock? lb = target.CurrentLandblock;
        if (lb == null)
            return;

        float splashAmount = baseDamage * splashFrac;
        if (cc.SplashDamageCapPerTarget > 0f)
            splashAmount = Math.Min(splashAmount, cc.SplashDamageCapPerTarget);

        if (splashAmount < 1f)
            return;

        ICollection<WorldObject>? raw = lb.GetWorldObjectsForPhysicsHandling();
        if (raw == null)
            return;

        int applied = 0;
        _inOvertinkedCleaveChain = true;
        try
        {
            foreach (WorldObject o in raw)
            {
                if (applied >= maxTargets)
                    break;

                if (o is not Creature victim || victim == target || victim == __instance)
                    continue;

                if (victim.IsDead || !victim.Attackable)
                    continue;

                if (victim.GetDistance(target) > radius)
                    continue;

                if (victim is Player pVictim && !pVictim.Attackable)
                    continue;

                if (!cc.SplashDamagePlayerVictims && victim is Player)
                    continue;

                if (cc.SplashRespectCanDamageGate && !__instance.CanDamage(victim))
                    continue;

                victim.TakeDamage(__instance, DamageType.Health, splashAmount, false);
                applied++;
            }
        }
        finally
        {
            _inOvertinkedCleaveChain = false;
        }
    }
}
