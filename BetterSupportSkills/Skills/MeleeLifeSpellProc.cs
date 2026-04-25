using System.Collections.Concurrent;
using ACE.Entity;
using ACE.Entity.Enum;
using ACE.Server.Entity;
using ACE.Server.Managers;
using ACE.Server.WorldObjects;

namespace BetterSupportSkills.Skills;

[HarmonyPatchCategory(nameof(Features.MeleeLifeSpellSkill))]
internal static class MeleeLifeSpellProc
{
    static readonly ConcurrentDictionary<uint, double> LastProcAt = new();

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Player), nameof(Player.DamageTarget), new Type[] { typeof(Creature), typeof(WorldObject) })]
    public static void PostDamageTarget(Creature target, WorldObject damageSource, Player __instance, ref DamageEvent __result)
    {
        if (__result is null || !__result.HasDamage || target == null || damageSource == null)
            return;

        if (PatchClass.Settings is not { EnableMeleeLifeSpellProc: true } settings)
            return;

        MeleeLifeSpellProcSettings cfg = settings.MeleeLifeSpellProc;
        if (cfg.SpellId == 0)
            return;

        if (__result.CombatType != CombatType.Melee)
            return;

        if (__result.Weapon is SpellProjectile)
            return;

        var life = __instance.GetCreatureSkill(Skill.LifeMagic);
        if (life.AdvancementClass < SkillAdvancementClass.Trained)
            return;

        double now = DateTimeOffset.UtcNow.ToUnixTimeMilliseconds() / 1000.0;
        uint pid = __instance.Guid.Full;
        if (LastProcAt.TryGetValue(pid, out double last) && now - last < cfg.CooldownSeconds)
            return;

        if (ThreadSafeRandom.Next(0f, 1f) > cfg.ProcChance)
            return;

        LastProcAt[pid] = now;

        try
        {
            var spell = new Spell(cfg.SpellId);
            BssPlayerPaidSpellCast.TryCastSpellWithRedirects_PlayerMana(__instance, spell, target);
        }
        catch
        {
            // Invalid SpellId in settings; ignore.
        }
    }
}
