namespace ChallengeModes.Progression;

[HarmonyPatchCategory(nameof(AlternateLeveling))]
public class AlternateLeveling
{
    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), nameof(Player.HandleActionRaiseSkill), new Type[] { typeof(Skill), typeof(uint) })]
    public static bool PreHandleActionRaiseSkill(Skill skill, uint amount, ref Player __instance, ref bool __result)
    {
        if (ChallengeModes.PatchClass.IsAptitudeEnabled(__instance))
        {
            if (ChallengeModes.PatchClass.IsInProficiencyAward)
                return true;

            __result = false;
            __instance.SendMessage("In Aptitude mode, skills can only be raised through usage. Use your skills in combat, crafting, and exploration.", ChatMessageType.Broadcast);
            return false;
        }

        if (!ChallengeModes.PatchClass.IsAlternateLevelingEnabled(__instance))
            return true;

        amount = amount > 300 ? 10 : 1u;

        for (var i = 0; i < amount; i++)
        {
            if (!__instance.TryRaiseSkill(skill))
                break;
        }

        __instance.SendUpdated(skill);

        return false;
    }

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), nameof(Player.HandleActionRaiseAttribute), new Type[] { typeof(PropertyAttribute), typeof(uint) })]
    public static bool PreHandleActionRaiseAttribute(PropertyAttribute attribute, uint amount, ref Player __instance, ref bool __result)
    {
        if (ChallengeModes.PatchClass.IsAptitudeEnabled(__instance))
            return true;

        if (!ChallengeModes.PatchClass.IsAlternateLevelingEnabled(__instance))
            return true;

        amount = amount > 300 ? 10 : 1u;

        for (var i = 0; i < amount; i++)
        {
            if (!__instance.TryRaiseAttribute(attribute))
                break;
        }

        if (__instance.Attributes.TryGetValue(attribute, out var creatureAttribute))
            __instance.SendUpdated(creatureAttribute);

        return false;
    }

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), nameof(Player.HandleActionRaiseVital), new Type[] { typeof(PropertyAttribute2nd), typeof(uint) })]
    public static bool PreHandleActionRaiseVital(PropertyAttribute2nd vital, uint amount, ref Player __instance, ref bool __result)
    {
        if (ChallengeModes.PatchClass.IsAptitudeEnabled(__instance))
            return true;

        if (!ChallengeModes.PatchClass.IsAlternateLevelingEnabled(__instance))
            return true;

        amount = amount > 300 ? 10 : 1u;

        for (var i = 0; i < amount; i++)
        {
            if (!__instance.TryRaiseVital(vital))
                break;
        }

        if (__instance.Vitals.TryGetValue(vital, out var creatureVital))
            __instance.SendUpdated(creatureVital);

        return false;
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(CreatureSkill), nameof(CreatureSkill.InitLevel), MethodType.Getter)]
    public static void PostGetInitLevel(ref CreatureSkill __instance, ref uint __result)
    {
        if (ChallengeModes.PatchClass.Settings is not { } settings)
            return;
        var creature = __instance.creature;

        bool useAlt = settings.AlternateLeveling.Enabled;
        if (creature is Player pl)
            useAlt &= ChallengeModes.PatchClass.IsAlternateLevelingEnabled(pl);

        if (!useAlt)
        {
            if (settings.BonusStatsEnabled)
                __result += (uint)creature.GetBonus(__instance.Skill);
            return;
        }

        __result += (uint)creature.GetLevel(__instance.Skill);
        if (settings.BonusStatsEnabled)
            __result += (uint)creature.GetBonus(__instance.Skill);
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(CreatureVital), nameof(CreatureVital.StartingValue), MethodType.Getter)]
    public static void PostGetStartingValueVital(ref CreatureVital __instance, ref uint __result)
    {
        if (ChallengeModes.PatchClass.Settings is not { } settings)
            return;
        var creature = __instance.creature;

        bool useAlt = settings.AlternateLeveling.Enabled;
        if (creature is Player pl)
            useAlt &= ChallengeModes.PatchClass.IsAlternateLevelingEnabled(pl);

        if (!useAlt)
        {
            if (settings.BonusStatsEnabled)
                __result += (uint)creature.GetBonus(__instance.Vital);
            return;
        }

        __result += (uint)creature.GetLevel(__instance.Vital);
        if (settings.BonusStatsEnabled)
            __result += (uint)creature.GetBonus(__instance.Vital);
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(CreatureAttribute), nameof(CreatureAttribute.StartingValue), MethodType.Getter)]
    public static void PostGetStartingValueAttribute(ref CreatureAttribute __instance, ref uint __result)
    {
        if (ChallengeModes.PatchClass.Settings is not { } settings)
            return;
        var creature = __instance.creature;

        bool useAlt = settings.AlternateLeveling.Enabled;
        if (creature is Player pl)
            useAlt &= ChallengeModes.PatchClass.IsAlternateLevelingEnabled(pl);

        if (!useAlt)
        {
            if (settings.BonusStatsEnabled)
                __result += (uint)creature.GetBonus(__instance.Attribute);
            return;
        }

        __result += (uint)creature.GetLevel(__instance.Attribute);
        if (settings.BonusStatsEnabled)
            __result += (uint)creature.GetBonus(__instance.Attribute);
    }
}
