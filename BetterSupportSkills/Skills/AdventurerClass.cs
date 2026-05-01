using System.Collections.Concurrent;
using ACE.Entity.Enum;
using ACE.Entity.Enum.Properties;
using ACE.Server.WorldObjects;
using ACE.Server.WorldObjects.Entity;
using HarmonyLib;

namespace BetterSupportSkills.Skills;

internal static class AdventurerClass
{
    // Track which players currently have Adventurer bonuses applied
    static readonly ConcurrentDictionary<uint, bool> AdventurerActive = new();

    // -- Attribute Bonus (+50 all attributes) ----------------------------

    [HarmonyPostfix]
    [HarmonyPatch(typeof(CreatureAttribute), nameof(CreatureAttribute.GetCurrent), new Type[] { typeof(bool) })]
    public static void PostfixCreatureAttributeGetCurrent(CreatureAttribute __instance, ref uint __result)
    {
        var creature = Traverse.Create(__instance).Field<Creature>("creature").Value;
        if (creature is not Player player) return;
        if (PatchClass.Settings?.EnableCombatClasses != true) return;
        if (SummoningClasses.GetPlayerClass(player) != "Adventurer") return;

        var settings = PatchClass.Settings?.CombatClasses.Adventurer;
        if (settings == null || settings.AttributeBonus <= 0) return;

        __result += (uint)settings.AttributeBonus;
    }

    // -- Skill Bonus (+50 all skills) ------------------------------------

    [HarmonyPostfix]
    [HarmonyPatch(typeof(CreatureSkill), nameof(CreatureSkill.Current), MethodType.Getter)]
    public static void PostfixCreatureSkillCurrent(CreatureSkill __instance, ref uint __result)
    {
        var creature = Traverse.Create(__instance).Field<Creature>("creature").Value;
        if (creature is not Player player) return;
        if (PatchClass.Settings?.EnableCombatClasses != true) return;
        if (SummoningClasses.GetPlayerClass(player) != "Adventurer") return;

        var settings = PatchClass.Settings?.CombatClasses.Adventurer;
        if (settings == null || settings.SkillBonus <= 0) return;

        __result += (uint)settings.SkillBonus;
    }

    // -- Vital Bonus (+20% max vitals) -----------------------------------

    [HarmonyPostfix]
    [HarmonyPatch(typeof(CreatureVital), nameof(CreatureVital.MaxValue), MethodType.Getter)]
    public static void PostfixCreatureVitalMaxValue(CreatureVital __instance, ref uint __result)
    {
        var creature = Traverse.Create(__instance).Field<Creature>("creature").Value;
        if (creature is not Player player) return;
        if (PatchClass.Settings?.EnableCombatClasses != true) return;
        if (SummoningClasses.GetPlayerClass(player) != "Adventurer") return;

        var settings = PatchClass.Settings?.CombatClasses.Adventurer;
        if (settings == null || settings.VitalPercentBonus <= 0) return;

        __result = (uint)(__result * (1.0 + settings.VitalPercentBonus));
    }

    // -- Resistance Bonus (+10% damage reduction) ------------------------

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Creature), nameof(Creature.GetResistanceMod), new Type[] { typeof(DamageType), typeof(WorldObject), typeof(WorldObject), typeof(float) })]
    public static void PostfixGetResistanceMod(Creature __instance, ref float __result)
    {
        if (__instance is not Player player) return;
        if (PatchClass.Settings?.EnableCombatClasses != true) return;
        if (SummoningClasses.GetPlayerClass(player) != "Adventurer") return;

        var settings = PatchClass.Settings?.CombatClasses.Adventurer;
        if (settings == null || settings.ResistanceBonus <= 0) return;

        // ResistanceBonus of 10 = 10% reduction = multiply mod by 0.9
        float factor = 1.0f - (settings.ResistanceBonus / 100.0f);
        factor = Math.Clamp(factor, 0.1f, 1.0f);
        __result *= factor;
    }

    // -- Burden Limit Bonus (+2 virtual augment ranks) -------------------

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Player), nameof(Player.GetEncumbranceCapacity))]
    public static void PostfixGetEncumbranceCapacity(Player __instance, ref int __result)
    {
        if (PatchClass.Settings?.EnableCombatClasses != true) return;
        if (SummoningClasses.GetPlayerClass(__instance) != "Adventurer") return;

        var settings = PatchClass.Settings?.CombatClasses.Adventurer;
        if (settings == null || settings.BurdenLimitBonusRanks <= 0) return;

        var strength = __instance.Attributes[PropertyAttribute.Strength].Current;
        __result += (int)(settings.BurdenLimitBonusRanks * 30 * strength);
    }
}
