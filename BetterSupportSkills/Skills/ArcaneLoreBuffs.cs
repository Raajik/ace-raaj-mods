using System.Collections.Concurrent;
using ACE.Common;
using ACE.Entity;
using ACE.Entity.Enum;
using ACE.Server.Entity;
using ACE.Server.WorldObjects;

namespace BetterSupportSkills.Skills;

[HarmonyPatchCategory(nameof(Features.ArcaneLoreSkill))]
internal static class ArcaneLoreBuffs
{
    private const bool EnableDebug = false;

    private static void DebugLog(string msg)
    {
        if (EnableDebug)
            ModManager.Log($"[BSS ArcaneLore] {msg}", ModManager.LogLevel.Info);
    }

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
        if (settings?.EnableArcaneLore != true)
            return;

        var arcaneSettings = settings.ArcaneLore;
        if (arcaneSettings == null)
            return;

        var skill = player.GetCreatureSkill(Skill.ArcaneLore);
        if (skill.AdvancementClass < SkillAdvancementClass.Trained)
            return;

        double percent = skill.AdvancementClass == SkillAdvancementClass.Specialized
            ? arcaneSettings.SpellDodgePercentSpecialized
            : arcaneSettings.SpellDodgePercentTrained;

        double chance = (skill.Current / 100.0) * percent;

        var id = player.Guid.Full;
        PlayerSpellDodgeChance[id] = chance;

        var skillWord = skill.AdvancementClass == SkillAdvancementClass.Specialized ? "specialized" : "trained";
        player.SendMessage($"Your {skillWord} Arcane Lore grants {(int)(chance * 100)}% chance to dodge incoming spells!");
    }

    public static ConcurrentDictionary<uint, double> PlayerSpellDodgeChance = new();

    public static void PostfixSpellProjectileCalculateDamage(SpellProjectile __instance, WorldObject source, Creature target, ref bool criticalHit, ref bool critDefended, ref bool overpower, ref float? __result)
    {
        if (__result == null || __result <= 0)
            return;

        if (target is not Player player)
            return;

        var settings = PatchClass.Settings;
        if (settings?.EnableArcaneLore != true)
            return;

        var id = player.Guid.Full;

        if (!PlayerSpellDodgeChance.ContainsKey(id))
            RefreshBuffs(player);

        if (!PlayerSpellDodgeChance.TryGetValue(id, out var dodgeChance))
            return;

        if (dodgeChance <= 0)
            return;

        var rng = ThreadSafeRandom.Next(0.0f, 1.0f);

        DebugLog($"Spell dodge check: rng={rng}, chance={dodgeChance}, target={target.Name}");

        if (rng < dodgeChance)
        {
            __result = 0;
            player.SendMessage("Your Arcane Lore allows you to completely dodge the spell!");
            DebugLog($"Spell dodged by {player.Name}");
        }
    }
}