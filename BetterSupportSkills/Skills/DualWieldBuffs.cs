using ACE.Entity.Enum;
using ACE.Server.Entity;
using ACE.Server.WorldObjects;

namespace BetterSupportSkills.Skills;

[HarmonyPatchCategory(nameof(Features.DualWieldSkill))]
internal static class DualWieldBuffs
{
    [ThreadStatic]
    static bool _inPowerModMerge;

    public static void PostfixCalculateDamageDualWield(DamageEvent __result, Creature attacker, Creature defender, WorldObject damageSource)
    {
        if (__result == null || defender is not Player player)
            return;

        if (PatchClass.Settings is not { EnableDualWield: true } s)
            return;

        var dw = player.GetCreatureSkill(Skill.DualWield);
        if (dw.AdvancementClass < SkillAdvancementClass.Trained)
            return;

        if (CountMeleeWeapons(player) < 2)
            return;

        int dr = dw.AdvancementClass == SkillAdvancementClass.Specialized
            ? s.DualWield.DamageResistanceSpecialized
            : s.DualWield.DamageResistanceTrained;

        if (dr <= 0)
            return;

        float mod = Creature.GetPositiveRatingMod(dr);
        if (mod <= 0f || mod > 100f)
            return;

        __result.Damage /= mod;
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Player), nameof(Player.GetPowerMod), new Type[] { typeof(WorldObject) })]
    public static void PostfixGetPowerMod(WorldObject weapon, ref float __result, Player __instance)
    {
        if (_inPowerModMerge || weapon == null)
            return;

        if (PatchClass.Settings is not { EnableDualWield: true })
            return;

        var dw = __instance.GetCreatureSkill(Skill.DualWield);
        if (dw.AdvancementClass < SkillAdvancementClass.Trained)
            return;

        WorldObject? other = GetOtherMeleeWeapon(__instance, weapon);
        if (other == null)
            return;

        _inPowerModMerge = true;
        try
        {
            float off = __instance.GetPowerMod(other);
            float mainBonus = __result - 1f;
            float offBonus = off - 1f;
            __result = 1f + mainBonus + offBonus;
        }
        finally
        {
            _inPowerModMerge = false;
        }
    }

    static int CountMeleeWeapons(Player player)
    {
        int n = 0;
        foreach (WorldObject wo in player.EquippedObjects.Values)
        {
            if (wo is MeleeWeapon)
                n++;
        }

        return n;
    }

    static WorldObject? GetOtherMeleeWeapon(Player player, WorldObject current)
    {
        foreach (WorldObject wo in player.EquippedObjects.Values)
        {
            if (wo is MeleeWeapon && wo != current)
                return wo;
        }

        return null;
    }
}
