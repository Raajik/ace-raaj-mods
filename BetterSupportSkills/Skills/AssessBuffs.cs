using System.Collections.Concurrent;
using ACE.Entity;
using ACE.Server.Entity;

namespace BetterSupportSkills.Skills;

[HarmonyPatchCategory(nameof(Features.AssessCreatureSkill))]
internal static class AssessCreatureBuffs
{
    public static ConcurrentDictionary<uint, int> PlayerDamageBonus = new();

    public static void OnPlayerLogin(Player player) => RefreshBuffs(player);
    public static void OnPlayerWorldOpen(Player player) => RefreshBuffs(player);

    public static bool PrefixPlayerEnterWorld(Player __instance)
    {
        RefreshBuffs(__instance);
        return true;
    }

    public static void RefreshBuffs(Player player)
    {
        var settings = PatchClass.Settings;
        if (settings?.EnableAssessCreature != true)
            return;

        var skill = player.GetCreatureSkill(Skill.AssessCreature);
        if (skill.AdvancementClass < SkillAdvancementClass.Trained)
            return;

        bool specialized = skill.AdvancementClass == SkillAdvancementClass.Specialized;
        int drBonus = specialized ? 30 : 10;

        var id = player.Guid.Full;
        PlayerDamageBonus[id] = drBonus;

        ModManager.Log($"[BSS AssessCreature] Buff to {player.Name}: +{drBonus} DR vs creatures", ModManager.LogLevel.Info);
    }

    public static void PostfixCalculateDamage(ref DamageEvent __result)
    {
        if (__result?.Attacker is not Player player)
            return;

        if (PatchClass.Settings?.EnableAssessCreature != true)
            return;

        var id = player.Guid.Full;
        if (!PlayerDamageBonus.TryGetValue(id, out var drBonus))
            return;

        var damageRatingMod = Creature.GetPositiveRatingMod(drBonus);
        __result.DamageBeforeMitigation *= damageRatingMod;
    }
}
