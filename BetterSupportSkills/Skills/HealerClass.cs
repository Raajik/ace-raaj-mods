using ACE.Entity.Enum;
using ACE.Server.Entity;
using ACE.Server.WorldObjects;

namespace BetterSupportSkills.Skills;

internal static class HealerClass
{
    public static void PostDamageTargetHealerSmite(Creature target, WorldObject damageSource, Player __instance, ref DamageEvent __result)
    {
        if (__result is null || !__result.HasDamage || target == null)
            return;

        if (__result.CombatType != CombatType.Melee)
            return;

        var settings = PatchClass.Settings;
        if (settings?.EnableCombatClasses != true)
            return;

        if (SummoningClasses.GetPlayerClass(__instance) != "Healer")
            return;

        var healerSettings = settings.CombatClasses.Healer;
        if (healerSettings.SmiteChance <= 0 || healerSettings.SmiteSpellIds == null || healerSettings.SmiteSpellIds.Length == 0)
            return;

        if (Random.Shared.NextDouble() >= healerSettings.SmiteChance)
            return;

        if (!target.IsAlive)
            return;

        // Get tier from Life Magic skill
        int tier = HybridClasses.GetSpellTier(__instance, Skill.LifeMagic);
        if (tier < 1)
            return;

        BssAutoCaster.TryCastSpellWithFallback(__instance, healerSettings.SmiteSpellIds, tier, target, 1.0);
    }
}
