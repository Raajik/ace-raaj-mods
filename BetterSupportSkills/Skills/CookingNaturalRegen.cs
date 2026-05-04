namespace BetterSupportSkills.Skills;

// Patched manually from PatchClass.TryApplyCookingPatches (no Harmony attributes — avoids double registration).
internal static class CookingNaturalRegen
{
    public static void PostGetRegenerationMod(EnchantmentManagerWithCaching __instance, CreatureVital vital, ref float __result)
    {
        if (__instance?.Player == null)
            return;

        var settings = PatchClass.Settings;
        if (settings?.EnableCooking != true)
            return;

        if (settings.Cooking.CookingUseLegacySpellBuffs)
            return;

        var cookingSkill = __instance.Player.GetCreatureSkill(Skill.Cooking);
        if (cookingSkill.AdvancementClass < SkillAdvancementClass.Trained)
            return;

        var mult = GetCookingRegenMultiplier(__instance.Player, settings);
        if (mult <= 0f || !float.IsFinite(mult))
            return;

        if (!float.IsFinite(__result) || __result <= 0f)
            return;

        __result *= mult;
    }

    internal static float GetCookingRegenMultiplier(Player player, Settings settings)
    {
        var cooking = player.GetCreatureSkill(Skill.Cooking);
        if (cooking.AdvancementClass < SkillAdvancementClass.Trained)
            return 1f;

        var pts = Math.Max(0, (int)cooking.Current);
        if (cooking.AdvancementClass == SkillAdvancementClass.Specialized)
            return (float)(1.0 + pts * settings.Cooking.CookingRegenPerBuffedPointSpecialized);

        return (float)(1.0 + pts * settings.Cooking.CookingRegenPerBuffedPointTrained);
    }
}
