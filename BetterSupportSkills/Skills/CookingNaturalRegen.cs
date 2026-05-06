namespace BetterSupportSkills.Skills;

// Patched manually from PatchClass.TryApplyCookingPatches (no Harmony attributes — avoids double registration).
internal static class CookingNaturalRegen
{
    /// <summary>
    /// Dynamically adjusts heartbeat interval for players with cooking trained/spec'd.
    /// 1-second ticks when vitals below 30%, 5-second ticks when healthy.
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

        // Check if player needs fast ticks (low vitals below threshold)
        bool needsFastTicks = IsLowOnVitals(__instance, settings);

        var oldInterval = __instance.HeartbeatInterval ?? 5.0f;
        if (needsFastTicks)
        {
            // Switch to 1-second ticks for smooth regeneration when low
            if (__instance.HeartbeatInterval != 1.0f)
            {
                __instance.HeartbeatInterval = 1.0f;
                ModManager.Log($"[BSS Cooking] {__instance.Name} heartbeat interval: {oldInterval}s -> 1.0s (LOW VITALS - H:{__instance.Health.Percent:P1} S:{__instance.Stamina.Percent:P1} M:{__instance.Mana.Percent:P1})", ModManager.LogLevel.Debug);
            }
        }
        else
        {
            // Switch to 5-second ticks for efficiency when healthy
            if (__instance.HeartbeatInterval != 5.0f)
            {
                __instance.HeartbeatInterval = 5.0f;
                ModManager.Log($"[BSS Cooking] {__instance.Name} heartbeat interval: {oldInterval}s -> 5.0s (HEALTHY)", ModManager.LogLevel.Debug);
            }
        }
    }

    static bool IsLowOnVitals(Player player, Settings settings)
    {
        var threshold = settings.Cooking.CookingFastRegenVitalThreshold;
        
        // Any vital below threshold triggers fast regen
        if (player.Health.Percent < threshold || 
            player.Stamina.Percent < threshold || 
            player.Mana.Percent < threshold)
        {
            return true;
        }

        return false;
    }
    /// <summary>
    /// Add percentage-based regeneration bonus after base vital tick calculation.
    /// Runs AFTER base regen, adds flat bonus based on max vital percentage.
    /// </summary>
    public static void PostVitalHeartBeat(Creature __instance, CreatureVital vital, bool __result)
    {
        if (__instance == null || vital == null)
            return;

        var settings = PatchClass.Settings;
        if (settings?.EnableCooking != true)
        {
            ModManager.Log($"[BSS Cooking] PostVitalHeartBeat: EnableCooking={settings?.EnableCooking}", ModManager.LogLevel.Debug);
            return;
        }

        if (settings.Cooking.CookingUseLegacySpellBuffs)
        {
            ModManager.Log($"[BSS Cooking] PostVitalHeartBeat: Legacy buffs mode enabled, skipping natural regen", ModManager.LogLevel.Debug);
            return;
        }

        var cookingSkill = __instance.GetCreatureSkill(Skill.Cooking);
        if (cookingSkill.AdvancementClass < SkillAdvancementClass.Trained)
        {
            return;
        }

        // Don't add bonus if already at max
        if (vital.Current >= vital.MaxValue)
        {
            return; // Don't spam when at max
        }

        // Calculate percentage-based bonus
        var percentPerTick = cookingSkill.AdvancementClass == SkillAdvancementClass.Specialized
            ? settings.Cooking.CookingRegenPercentPerTickSpecialized
            : settings.Cooking.CookingRegenPercentPerTickTrained;

        if (percentPerTick <= 0)
        {
            ModManager.Log($"[BSS Cooking] {__instance.Name} PostVitalHeartBeat: percentPerTick={percentPerTick} (INVALID)", ModManager.LogLevel.Warn);
            return;
        }

        // Bonus scales with heartbeat interval (5sec = 5x bonus, 1sec = 1x bonus)
        var interval = __instance.HeartbeatInterval ?? 5.0f;
        var bonusAmount = (int)(vital.MaxValue * percentPerTick * interval);

        var vitalName = vital.Vital.ToString().Replace("Max", "");
        
        if (bonusAmount > 0)
        {
            var beforeCurrent = vital.Current;
            __instance.UpdateVitalDelta(vital, bonusAmount);
            var afterCurrent = vital.Current;
            var actualGain = afterCurrent - beforeCurrent;
            
            ModManager.Log($"[BSS Cooking] {__instance.Name} {vitalName} regen: +{actualGain} ({beforeCurrent}/{vital.MaxValue} -> {afterCurrent}/{vital.MaxValue}) [bonus={bonusAmount}, %={percentPerTick:P2}, interval={interval}s, spec={cookingSkill.AdvancementClass}]", ModManager.LogLevel.Info);
            
            if (vital.Vital == PropertyAttribute2nd.MaxHealth && actualGain > 0)
                __instance.DamageHistory.OnHeal((uint)actualGain);
        }
        else
        {
            ModManager.Log($"[BSS Cooking] {__instance.Name} {vitalName} regen: bonusAmount=0 (maxVital={vital.MaxValue}, %={percentPerTick}, interval={interval})", ModManager.LogLevel.Warn);
        }
    }


}
