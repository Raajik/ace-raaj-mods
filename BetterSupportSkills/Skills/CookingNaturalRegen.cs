namespace BetterSupportSkills.Skills;

// Patched manually from PatchClass.TryApplyCookingPatches (no Harmony attributes — avoids double registration).
internal static class CookingNaturalRegen
{
    /// <summary>
    /// Dynamically adjusts heartbeat interval for players with cooking trained/spec'd.
    /// 1-second ticks during combat or low vitals, 5-second ticks when idle and healthy.
    /// </summary>
    public static void PreHeartbeat(Player __instance, double currentUnixTime)
    {
        if (__instance == null)
            return;

        var settings = PatchClass.Settings;
        if (settings?.EnableCooking != true || settings.Cooking.CookingUseLegacySpellBuffs)
            return;

        var cookingSkill = __instance.GetCreatureSkill(Skill.Cooking);
        if (cookingSkill.AdvancementClass < SkillAdvancementClass.Trained)
        {
            // No cooking - use default 5-second interval
            if (__instance.HeartbeatInterval != 5.0f)
                __instance.HeartbeatInterval = 5.0f;
            return;
        }

        // Check if player needs fast ticks (combat or low vitals)
        bool needsFastTicks = IsInCombatOrLowVitals(__instance);

        if (needsFastTicks)
        {
            // Switch to 1-second ticks for smooth regeneration during action
            if (__instance.HeartbeatInterval != 1.0f)
                __instance.HeartbeatInterval = 1.0f;
        }
        else
        {
            // Switch to 5-second ticks for efficiency when idle
            if (__instance.HeartbeatInterval != 5.0f)
                __instance.HeartbeatInterval = 5.0f;
        }
    }

    static bool IsInCombatOrLowVitals(Player player)
    {
        // In combat mode or has an attack target
        if (player.CombatMode != CombatMode.NonCombat || player.AttackTarget != null)
            return true;

        // Recently took damage (within last 10 seconds)
        var lastDamageEntry = player.DamageHistory?.Log?.LastOrDefault();
        if (lastDamageEntry != null)
        {
            var timeSinceLastDamage = (DateTime.UtcNow - lastDamageEntry.Time).TotalSeconds;
            if (timeSinceLastDamage < 10.0)
                return true;
        }

        // Any vital below 80%
        if (player.Health.Percent < 0.8 || player.Stamina.Percent < 0.8 || player.Mana.Percent < 0.8)
            return true;

        return false;
    }
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
        
        // Note: Multiplier is per-heartbeat, so it auto-scales with HeartbeatInterval.
        // At 1-second intervals: smaller amounts more frequently (smooth bars)
        // At 5-second intervals: larger amounts less frequently (same total regen)
        if (cooking.AdvancementClass == SkillAdvancementClass.Specialized)
            return (float)(1.0 + pts * settings.Cooking.CookingRegenPerBuffedPointSpecialized);

        return (float)(1.0 + pts * settings.Cooking.CookingRegenPerBuffedPointTrained);
    }
}
