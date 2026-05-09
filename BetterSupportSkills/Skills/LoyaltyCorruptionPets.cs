using ACE.Entity;
using ACE.Entity.Enum;

namespace BetterSupportSkills.Skills;

// Loyalty specialized: owner's CombatPets periodically cast Corruption on attack (tier from owner's Summoning skill).
[HarmonyPatchCategory(nameof(Features.LoyaltySkill))]
internal static class LoyaltyCorruptionPets
{
    static readonly ConcurrentDictionary<uint, double> LastCorruptionCastByPet = new();

    static bool TryGetCorruptionSpell(Player owner, LoyaltySettings ls, out Spell spell)
    {
        spell = new Spell(0);
        uint[] ids = ls.CorruptionSpellIds;
        if (ids is null || ids.Length == 0)
            return false;

        var nonZero = ids.Where(id => id > 0).ToArray();
        if (nonZero.Length == 0)
            return false;

        int tierStep = Math.Max(1, ls.SummoningSkillPerTier);
        var summoning = owner.GetCreatureSkill(Skill.Summoning);
        int idx = (int)(summoning.Current / tierStep);
        if (idx < 0)
            idx = 0;
        if (idx >= nonZero.Length)
            idx = nonZero.Length - 1;

        uint spellId = nonZero[idx];
        var sp = new Spell(spellId);
        if (sp.NotFound)
            return false;

        spell = sp;
        return true;
    }

    static void TryCastCorruption(Creature attacker)
    {
        if (PatchClass.Settings is not { EnableLoyalty: true } settings)
            return;

        if (attacker is not CombatPet pet)
            return;

        var owner = pet.P_PetOwner;
        if (owner is null)
            return;

        var loyalty = owner.GetCreatureSkill(Skill.Loyalty);
        if (loyalty.AdvancementClass != SkillAdvancementClass.Specialized)
            return;

        if (!TryGetCorruptionSpell(owner, settings.Loyalty, out var spell))
            return;

        var target = pet.AttackTarget as Creature;
        if (target is null || target.IsDead)
            return;

        double now = Time.GetUnixTime();
        double cooldown = Math.Max(0.1, settings.Loyalty.CooldownSeconds);
        uint guid = pet.Guid.Full;

        double last = LastCorruptionCastByPet.GetValueOrDefault(guid);
        if (now - last < cooldown)
            return;

        LastCorruptionCastByPet[guid] = now;

        pet.TryCastSpell_WithRedirects(spell, target);
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Creature), nameof(Creature.MeleeAttack))]
    public static void PostMeleeAttack(Creature __instance, ref float __result)
    {
        TryCastCorruption(__instance);
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Creature), nameof(Creature.RangeAttack))]
    public static void PostRangeAttack(Creature __instance)
    {
        TryCastCorruption(__instance);
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(WorldObject), nameof(WorldObject.Destroy), new[] { typeof(bool), typeof(bool) })]
    public static void PostDestroyCleanup(bool raiseNotifyOfDestructionEvent, bool fromLandblockUnload, WorldObject __instance)
    {
        if (__instance is CombatPet pet)
            LastCorruptionCastByPet.TryRemove(pet.Guid.Full, out _);
    }
}
