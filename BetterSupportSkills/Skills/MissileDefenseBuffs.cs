using System.Diagnostics;
using ACE.Entity.Enum;
using ACE.Server.Entity;
using ACE.Server.WorldObjects;

namespace BetterSupportSkills.Skills;

[HarmonyPatchCategory(nameof(Features.MissileDefenseSkill))]
internal static class MissileDefenseBuffs
{
    [Conditional("DEBUG")]
    private static void DebugLog(string msg)
    {
        ModManager.Log($"[BSS MissileDefense] {msg}", ModManager.LogLevel.Debug);
    }

    /// <summary>
    /// Postfix on DamageEvent.CalculateDamage — gives Missile Defense users a chance to completely dodge spell damage.
    /// Also applies Arcane Lore Adaptation reduction if active.
    /// </summary>
    public static void PostfixCalculateDamage(DamageEvent __result, Creature attacker, Creature defender, WorldObject damageSource)
    {
        if (__result == null)
            return;

        var settings = PatchClass.Settings;
        if (settings == null)
            return;

        // Only process spell damage
        bool isSpellProjectile = damageSource is SpellProjectile || __result.Weapon is SpellProjectile;
        if (!isSpellProjectile)
            return;

        if (defender is not Player player)
            return;

        // ===== Missile Defense Spell Dodge =====
        if (settings.EnableMissileDefense)
        {
            TryDodgeSpell(player, __result, settings.MissileDefense);
        }

        // ===== Arcane Lore Adaptation =====
        // Only apply adaptation if damage wasn't completely dodged
        if (__result.Damage > 0 && settings.EnableArcaneLore && settings.ArcaneLore.EnableAdaptation)
        {
            ArcaneLoreBuffs.TryApplyAdaptationReduction(player, __result, settings.ArcaneLore);
        }

        // If damage was reduced to 0 by adaptation, treat it as a partial dodge
        if (__result.Damage <= 0 && __result.Damage > -1)
        {
            __result.Damage = 0;
        }
    }

    static void TryDodgeSpell(Player player, DamageEvent damageEvent, MissileDefenseSettings mdSettings)
    {
        var skill = player.GetCreatureSkill(Skill.MissileDefense);
        if (skill.AdvancementClass < SkillAdvancementClass.Trained)
            return;

        double chancePercent = skill.AdvancementClass == SkillAdvancementClass.Specialized
            ? mdSettings.DodgeChanceSpecPercent
            : mdSettings.DodgeChanceTrainedPercent;

        double dodgeChance = skill.Current * chancePercent;
        dodgeChance = Math.Min(dodgeChance, mdSettings.DodgeChanceCap);

        if (dodgeChance <= 0)
            return;

        double roll = ThreadSafeRandom.Next(0.0f, 1.0f);
        DebugLog($"Dodge roll for {player.Name}: skill={skill.Current}, chance={dodgeChance:P2}, roll={roll:F4}");

        if (roll <= dodgeChance)
        {
            damageEvent.Damage = 0;
            player.SendMessage("Your Missile Defense allows you to dodge the spell completely!", ChatMessageType.Magic);
            DebugLog($"{player.Name} dodged spell damage (roll {roll:F4} <= {dodgeChance:F4})");
        }
    }
}
