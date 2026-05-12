namespace Overtinked;

// Cleaving: splash Health damage to nearby creatures/players from the primary target (melee, missile, and spells).
// Nether Rending: extra Nether-type damage on the primary target only. Now uses vanilla ImbuedEffectType.NetherRending.
[HarmonyPatchCategory(Settings.RecipeManagerCategory)]
public static class CleavingNetherImbueCombat
{
    [ThreadStatic]
    private static bool _inOvertinkedCleaveChain;

    internal static bool IsInOvertinkedCleaveChain => _inOvertinkedCleaveChain;

    // ── Melee + Missile ────────────────────────────────────────────────
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

        float baseDamage = __result.Damage;
        if (baseDamage <= 0)
            return;

        TryApplyNetherBonus(__instance, target, damageSource, baseDamage, s);
        TryApplyCleave(__instance, target, damageSource, baseDamage, s);
    }

    // ── Spells (War / Void / Life projectiles) ─────────────────────────
    [HarmonyPostfix]
    [HarmonyPatch(typeof(SpellProjectile), nameof(SpellProjectile.DamageTarget))]
    public static void PostSpellDamageTarget(Creature target, float damage, bool critical, bool critDefended, bool overpower, SpellProjectile __instance)
    {
        if (_inOvertinkedCleaveChain)
            return;

        if (damage <= 0 || target == null || __instance == null)
            return;

        // Skip stamina/mana drain spells — only cleave/nether on health damage
        var spell = __instance.Spell;
        if (spell != null && (spell.Category == SpellCategory.StaminaLowering || spell.Category == SpellCategory.ManaLowering))
            return;

        var player = __instance.ProjectileSource as Player;
        if (player == null)
            return;

        Settings? s = PatchClass.CurrentSettings;
        if (s == null)
            return;

        WorldObject launcher = __instance.ProjectileLauncher;
        if (launcher == null)
            return;

        TryApplyNetherBonus(player, target, launcher, damage, s);
        TryApplyCleave(player, target, launcher, damage, s);
    }

    // ── Nether Bonus (primary target only) ─────────────────────────────
    internal static void TryApplyNetherBonus(Player attacker, Creature target, WorldObject damageSource, float baseDamage, Settings s)
    {
        if (baseDamage <= 0)
            return;

        if (!damageSource.HasImbuedEffect(ImbuedEffectType.NetherRending))
            return;

        if (s.NetherRendingImbue?.Enabled != true)
            return;

        NetherRendingImbueCombatConfig nc = s.NetherRendingImbue;
        float frac = Math.Clamp(nc.NetherDamageFraction, 0f, 2f);
        if (frac <= 0)
            return;

        float bonus = baseDamage * frac;
        if (nc.MaxNetherBonusDamage > 0)
            bonus = Math.Min(bonus, nc.MaxNetherBonusDamage);

        float pMul = Math.Clamp(nc.NetherBonusVsPlayersMultiplier, 0f, 10f);
        float cMul = Math.Clamp(nc.NetherBonusVsCreaturesMultiplier, 0f, 10f);
        bonus *= target is Player ? pMul : cMul;

        if (nc.NetherBonusSoftCap > 0f)
            bonus = Math.Min(bonus, nc.NetherBonusSoftCap);

        if (bonus >= 1f)
            target.TakeDamage(attacker, DamageType.Nether, bonus, false);
    }

    // ── Cleaving Splash (nearby targets) ───────────────────────────────
    internal static void TryApplyCleave(Player attacker, Creature primaryTarget, WorldObject damageSource, float baseDamage, Settings s)
    {
        if (_inOvertinkedCleaveChain)
            return;

        if ((OvertinkedImbueStore.Get(damageSource) & OvertinkedImbueFlags.Cleaving) == 0)
            return;

        if (s.CleavingImbue?.Enabled != true)
            return;

        CleavingImbueCombatConfig cc = s.CleavingImbue;
        float radius = Math.Clamp(cc.SplashRadiusMeters, 0.5f, 50f);
        float splashFrac = Math.Clamp(cc.SplashDamageFraction, 0f, 1f);
        int maxTargets = Math.Max(0, cc.MaxSplashTargets);
        if (splashFrac <= 0 || maxTargets == 0)
            return;

        Landblock? lb = primaryTarget.CurrentLandblock;
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

                if (o is not Creature victim || victim == primaryTarget || victim == attacker)
                    continue;

                if (victim.IsDead || !victim.Attackable)
                    continue;

                if (victim.GetDistance(primaryTarget) > radius)
                    continue;

                if (victim is Player pVictim && !pVictim.Attackable)
                    continue;

                if (!cc.SplashDamagePlayerVictims && victim is Player)
                    continue;

                if (cc.SplashRespectCanDamageGate && !attacker.CanDamage(victim))
                    continue;

                victim.TakeDamage(attacker, DamageType.Health, splashAmount, false);
                applied++;
            }
        }
        finally
        {
            _inOvertinkedCleaveChain = false;
        }
    }
}
