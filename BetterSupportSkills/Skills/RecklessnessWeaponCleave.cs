using System.Collections.Concurrent;
using ACE.Entity;
using ACE.Entity.Enum;
using ACE.Server.Entity;
using ACE.Server.Managers;
using ACE.Server.WorldObjects;

namespace BetterSupportSkills.Skills;

[HarmonyPatchCategory(nameof(Features.RecklessnessSkill))]
internal static class RecklessnessWeaponCleave
{
    [ThreadStatic]
    static bool _inCleaveChain;

    static readonly ConcurrentDictionary<uint, double> LastCleaveAt = new();

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Player), nameof(Player.DamageTarget), new Type[] { typeof(Creature), typeof(WorldObject) })]
    public static void PostDamageTarget(Creature target, WorldObject damageSource, ref Player __instance, ref DamageEvent __result)
    {
        if (_inCleaveChain)
            return;

        if (__result is null || !__result.HasDamage || target == null || damageSource == null)
            return;

        if (PatchClass.Settings is not { EnableRecklessness: true } settings)
            return;

        if (CleavePlayerState.IsDisabled(__instance.Guid.Full))
            return;

        var reck = __instance.GetCreatureSkill(Skill.Recklessness);
        if (reck.AdvancementClass < SkillAdvancementClass.Trained)
            return;

        if (__result.CombatType != CombatType.Melee && __result.CombatType != CombatType.Missile)
            return;

        if (__result.Weapon is SpellProjectile)
            return;

        RecklessnessCleaveSettings rc = settings.Recklessness;
        int extra = reck.AdvancementClass == SkillAdvancementClass.Specialized
            ? rc.CleaveTargetsSpecialized
            : rc.CleaveTargetsTrained;

        if (extra <= 0)
            return;

        if (rc.MaxTotalExtraTargetsCap > 0)
            extra = Math.Min(extra, rc.MaxTotalExtraTargetsCap);

        double now = DateTimeOffset.UtcNow.ToUnixTimeMilliseconds() / 1000.0;
        uint pid = __instance.Guid.Full;
        if (LastCleaveAt.TryGetValue(pid, out double last) && now - last < rc.CooldownSeconds)
            return;

        float baseDamage = __result.Damage;
        if (baseDamage < 1f)
            return;

        float serverMax = (float)rc.CleaveRangeMeters;
        float radius = CleavePlayerState.GetRange(__instance.Guid.Full, serverMax);
        float frac = (float)Math.Clamp(rc.SplashDamageFraction, 0.05, 1.0);
        float splash = baseDamage * frac;

        Landblock? lb = target.CurrentLandblock;
        if (lb == null)
            return;

        ICollection<WorldObject>? raw = lb.GetWorldObjectsForPhysicsHandling();
        if (raw == null)
            return;

        var candidates = new List<(Creature c, float d)>();
        foreach (WorldObject o in raw)
        {
            if (o is not Creature victim || victim == target || victim == __instance)
                continue;

            if (victim.IsDead || !victim.Attackable)
                continue;

            if (victim is Player && (!rc.SplashPlayerVictims || !victim.Attackable))
                continue;

            float dist = target.GetDistance(victim);
            if (dist > radius)
                continue;

            if (!__instance.CanDamage(victim))
                continue;

            candidates.Add((victim, dist));
        }

        candidates.Sort((a, b) => a.d.CompareTo(b.d));

        int applied = 0;
        _inCleaveChain = true;
        try
        {
            foreach ((Creature victim, _) in candidates)
            {
                if (applied >= extra)
                    break;

                victim.TakeDamage(__instance, DamageType.Health, splash, false);
                applied++;
            }
        }
        finally
        {
            _inCleaveChain = false;
        }

        if (applied > 0)
            LastCleaveAt[pid] = now;
    }
}
