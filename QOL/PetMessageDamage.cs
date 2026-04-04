namespace QOL;

[CommandCategory(nameof(Features.PetMessageDamage))]
[HarmonyPatchCategory(nameof(Features.PetMessageDamage))]
internal class PetMessageDamage
{
    //Creature.MeleeAttack calls on dealing/receiving combat pet damage
    [HarmonyPostfix]
    [HarmonyPatch(typeof(Creature), nameof(Creature.TakeDamage), new Type[] { typeof(WorldObject), typeof(DamageType), typeof(float), typeof(bool) })]
    public static void PostTakeDamage(WorldObject source, DamageType damageType, float amount, bool crit, ref Creature __instance, ref uint __result)
    {
        if (source is Pet target && target.P_PetOwner is { Session: not null } petOwner)
        {
            if (!__instance.IsAlive)
                petOwner.SendMessage($"Your {source.Name} has slain {__instance.Name}.");
            else
                petOwner.SendMessage($"Your {source.Name} has {(crit ? "critically " : "")}hit {__instance.Name} for {(int)amount} {damageType} damage.", ChatMessageType.CombatSelf);
        }
        if (__instance is Pet pet && pet.P_PetOwner is { Session: not null } ownerMsg)
        {
            ownerMsg.SendMessage($"{pet.Name} has been {(crit ? "critically " : "")}hit for {(int)amount} by {source?.Name ?? "something"} {damageType} damage.", ChatMessageType.CombatEnemy);
            //else
            //    pet?.P_PetOwner?.SendMessage($"Your {pet.Name} has been killed by {source.Name}.");
        }
    }
}
