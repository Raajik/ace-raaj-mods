using ACE.Entity;
using ACE.Entity.Enum;
using ACE.Server.Entity;
using ACE.Server.WorldObjects;

namespace BetterSupportSkills.Skills;

[HarmonyPatchCategory(nameof(Features.SneakAttackSkill))]
internal static class SneakAttackBuffs
{
    [HarmonyPostfix]
    [HarmonyPatch(typeof(Player), nameof(Player.DamageTarget), new Type[] { typeof(Creature), typeof(WorldObject) })]
    public static void PostDamageTargetWeapon(Creature target, WorldObject damageSource, ref Player __instance, ref DamageEvent __result)
    {
        if (__result is null || !__result.HasDamage || target == null)
            return;

        if (PatchClass.Settings is not { EnableSneakAttack: true } s)
            return;

        var sneak = __instance.GetCreatureSkill(Skill.SneakAttack);
        if (sneak.AdvancementClass < SkillAdvancementClass.Trained)
            return;

        if (__result.CombatType != CombatType.Melee && __result.CombatType != CombatType.Missile)
            return;

        if (target is Player && !s.SneakAttack.AllowPlayerWeaponVictims)
            return;

        int pulses = sneak.AdvancementClass == SkillAdvancementClass.Specialized
            ? s.SneakAttack.ExtraWeaponFollowUpsSpecialized
            : s.SneakAttack.ExtraWeaponFollowUpsTrained;

        if (pulses <= 0)
            return;

        float frac = (float)Math.Clamp(s.SneakAttack.FollowUpDamageFraction, 0.01, 2.0);
        float each = __result.Damage * frac;
        if (each < 0.5f)
            return;

        for (int i = 0; i < pulses; i++)
            target.TakeDamage(__instance, DamageType.Health, each, false);
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(WorldObject), "HandleCastSpell", new Type[] {
        typeof(Spell), typeof(WorldObject), typeof(WorldObject), typeof(WorldObject), typeof(bool), typeof(bool), typeof(bool) })]
    public static void PostHandleCastSpellSneak(Spell spell, WorldObject target, WorldObject? itemCaster, WorldObject? weapon,
        bool isWeaponSpell, bool fromProc, bool equip, WorldObject? __instance = null)
    {
        if (__instance is not Player player)
            return;

        if (PatchClass.Settings is not { EnableSneakAttack: true } s)
            return;

        if (!spell.IsHarmful)
            return;

        var sneak = player.GetCreatureSkill(Skill.SneakAttack);
        if (sneak.AdvancementClass < SkillAdvancementClass.Trained)
            return;

        if (target is Player && !s.SneakAttack.AllowPlayerSpellVictims)
            return;

        int extra = sneak.AdvancementClass == SkillAdvancementClass.Specialized
            ? s.SneakAttack.ExtraHarmfulSpellCastsSpecialized
            : s.SneakAttack.ExtraHarmfulSpellCastsTrained;

        if (extra <= 0 || target == null)
            return;

        for (int i = 0; i < extra; i++)
            BssPlayerPaidSpellCast.TryCastSpellWithRedirects_PlayerMana(player, spell, target);
    }
}
