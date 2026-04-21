namespace BetterSupportSkills.Skills;

// Placeholder classes for skill bonuses - actual implementations to be added later
[HarmonyPatchCategory(nameof(Features.AlchemySkill))]
public static class AlchemyBonus { }

[HarmonyPatchCategory(nameof(Features.ArcaneLoreSkill))]
public static class ArcaneLoreBonus { }

[HarmonyPatchCategory(nameof(Features.AssessCreatureSkill))]
public static class AssessCreatureBonus { }

[HarmonyPatchCategory(nameof(Features.CookingSkill))]
public static class CookingBonus { }

[HarmonyPatchCategory(nameof(Features.DeceptionSkill))]
public static class DeceptionBonus { }

[HarmonyPatchCategory(nameof(Features.DirtyFightingSkill))]
public static class DirtyFightingBonus { }

[HarmonyPatchCategory(nameof(Features.DualWieldSkill))]
public static class DualWieldBonus { }

[HarmonyPatchCategory(nameof(Features.FletchingSkill))]
public static class FletchingBonus { }

[HarmonyPatchCategory(nameof(Features.HealingSkill))]
public static class HealingBonus { }

[HarmonyPatchCategory(nameof(Features.LockpickSkill))]
public static class LockpickBonus { }

[HarmonyPatchCategory(nameof(Features.ManaConversionSkill))]
public static class ManaConversionBonus
{
    static readonly ConcurrentDictionary<uint, double> EquipmentManaBonusApplied = new();

    public static void ApplyEquipmentManaBonus(Player player)
    {
        var settings = PatchClass.Settings;
        if (settings?.EnableManaConversion != true)
            return;

        var skill = player.GetCreatureSkill(Skill.ManaConversion);
        if (skill.AdvancementClass < SkillAdvancementClass.Trained)
            return;

        var mcSettings = settings.ManaConversion;
        double bonus = skill.AdvancementClass == SkillAdvancementClass.Specialized
            ? mcSettings.EquipmentManaEfficiencySpecialized
            : mcSettings.EquipmentManaEfficiencyTrained;

        if (bonus <= 0)
            return;

        uint playerId = player.Guid.Full;
        if (EquipmentManaBonusApplied.ContainsKey(playerId))
            return;

        foreach (var item in player.EquippedObjects.Values)
        {
            var mc = item.GetProperty(PropertyFloat.ManaConversionMod) ?? 0.0f;
            item.SetProperty(PropertyFloat.ManaConversionMod, mc + (float)bonus);
        }

        EquipmentManaBonusApplied[playerId] = bonus;
        ModManager.Log($"[BSS] Applied mana efficiency {bonus} to {player.Name}", ModManager.LogLevel.Info);
    }
}

[HarmonyPatchCategory(nameof(Features.MissileDefenseSkill))]
public static class MissileDefenseBonus { }

[HarmonyPatchCategory(nameof(Features.RecklessnessSkill))]
public static class BssRecklessnessBonus { }

[HarmonyPatchCategory(nameof(Features.SneakAttackSkill))]
public static class SneakAttackBonus { }