using ACE.Entity;
using ACE.Entity.Enum;
using ACE.Server.Entity;
using ACE.Server.WorldObjects;

namespace BetterSupportSkills.Skills;

/// <summary>
/// Druid pet thorns: when a Druid (Spec Summoning + Life Magic) has specialized Shield + trained Dirty Fighting,
/// their pets reflect thorns damage when hit and deal AoE thorns damage on every attack.
/// </summary>
[HarmonyPatchCategory(nameof(Features.DruidPetThorns))]
internal static class DruidPetThorns
{
    static bool IsDruidWithThorns(Player player)
    {
        if (PatchClass.Settings is not { EnableDruidPetThorns: true } settings)
            return false;

        if (!settings.DruidPetThorns.Enabled)
            return false;

        // Must be Druid class
        if (SummoningClasses.GetPlayerClass(player) != "Druid")
            return false;

        // Must have specialized Shield
        var shield = player.GetCreatureSkill(Skill.Shield);
        if (shield.AdvancementClass != SkillAdvancementClass.Specialized)
            return false;

        // Must have trained Dirty Fighting (same prerequisite as player thorns)
        var df = player.GetCreatureSkill(Skill.DirtyFighting);
        if (df.AdvancementClass < SkillAdvancementClass.Trained)
            return false;

        return true;
    }

    static double CalculateThornsDamage(Player owner)
    {
        var shieldSkill = owner.GetCreatureSkill(Skill.Shield);
        double basePercent = 0.05; // Specialized = 5%
        double shieldSkillValue = shieldSkill.Current;

        if (shieldSkillValue <= 0)
            return 0;

        double damage = shieldSkillValue * basePercent;
        double multiplier = PatchClass.Settings?.DruidPetThorns.DamageMultiplier ?? 1.0;
        return damage * multiplier;
    }

    /// <summary>
    /// Pet AoE on attack: when a Druid's pet melee-attacks, deal thorns damage to all enemies near the primary target.
    /// </summary>
    [HarmonyPostfix]
    [HarmonyPatch(typeof(Creature), nameof(Creature.MeleeAttack))]
    public static void PostMeleeAttack(Creature __instance, ref float __result)
    {
        TryApplyPetAoE(__instance);
    }

    /// <summary>
    /// Pet AoE on attack: when a Druid's pet range-attacks, deal thorns damage to all enemies near the primary target.
    /// </summary>
    [HarmonyPostfix]
    [HarmonyPatch(typeof(Creature), nameof(Creature.RangeAttack))]
    public static void PostRangeAttack(Creature __instance)
    {
        TryApplyPetAoE(__instance);
    }

    static void TryApplyPetAoE(Creature attacker)
    {
        if (attacker is not CombatPet pet)
            return;

        var owner = pet.P_PetOwner;
        if (owner is null)
            return;

        if (!IsDruidWithThorns(owner))
            return;

        var target = pet.AttackTarget as Creature;
        if (target is null || target.IsDead)
            return;

        double thornsDamage = CalculateThornsDamage(owner);
        if (thornsDamage <= 0)
            return;

        double radius = PatchClass.Settings?.DruidPetThorns.AoERadius ?? 5.0;
        var lb = target.CurrentLandblock;
        if (lb == null)
            return;

        var raw = lb.GetWorldObjectsForPhysicsHandling();
        if (raw == null)
            return;

        int hitCount = 0;
        foreach (WorldObject o in raw)
        {
            if (o is not Creature victim || victim == target || victim == pet)
                continue;

            if (victim.IsDead || !victim.Attackable)
                continue;

            float dist = target.GetDistance(victim);
            if (dist > radius)
                continue;

            // Don't hit other players' pets or friendly targets
            if (victim is Player p && !owner.CanDamage(p))
                continue;

            try
            {
                victim.TakeDamage(pet, DamageType.Bludgeon, (float)thornsDamage);
                victim.PlayAnimation(PlayScript.EnchantUpGreen);
                hitCount++;
            }
            catch { /* ignore */ }
        }

        if (hitCount > 0)
        {
            owner.SendMessage($"Your pet's thorns lash out, dealing {(int)thornsDamage} damage to {hitCount} nearby enemy(ies).");
        }
    }

    /// <summary>
    /// Pet thorns on defense: called from ShieldThorns when a pet is the defender.
    /// </summary>
    public static void TryApplyPetThorns(CombatPet pet, Creature attacker, bool isEvade, bool isBlock)
    {
        if (attacker == null || attacker.IsDead)
            return;

        var owner = pet.P_PetOwner;
        if (owner is null)
            return;

        if (!IsDruidWithThorns(owner))
            return;

        // Specialized shield thorns applies on all hits (not just evades/blocks)
        double thornsDamage = CalculateThornsDamage(owner);
        if (thornsDamage <= 0)
            return;

        try
        {
            var totalDamage = attacker.TakeDamage(pet, DamageType.Bludgeon, (float)thornsDamage);
            pet.PlayAnimation(PlayScript.EnchantUpGreen);
            owner.SendMessage($"Your pet's thorns reflect {totalDamage} damage from the {(isEvade ? "evaded" : isBlock ? "blocked" : "incoming")} attack!");
        }
        catch { /* ignore */ }
    }
}
