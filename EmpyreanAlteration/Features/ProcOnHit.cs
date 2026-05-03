namespace EmpyreanAlteration.Features;

[CommandCategory(nameof(AlterationFeature.ProcOnHit))]
[HarmonyPatchCategory(nameof(AlterationFeature.ProcOnHit))]
internal class ProcOnHit
{
    [HarmonyPrefix]
    [HarmonyPatch(typeof(Cloak), nameof(Cloak.TryProcSpell), new Type[] { typeof(Creature), typeof(WorldObject), typeof(WorldObject), typeof(float) })]
    public static bool PreTryProcSpell(Creature defender, WorldObject attacker, WorldObject cloak, float damage_percent, ref Cloak __instance, ref bool __result)
    {
        // Override vanilla TryProcSpell: still roll the equipped cloak (vanilla behavior), then allow procs from other equipped items with HasProc.
        __result = false;

        if (cloak != null && Cloak.IsCloak(cloak))
        {
            if (Cloak.RollProc(cloak, damage_percent) && Cloak.HandleProcSpell(defender, attacker, cloak))
                __result = true;
        }

        if (defender is Player wielder)
        {
            var equipped = wielder.EquippedObjects.Values.Where(i => i.HasProc && !Aetheria.IsAetheria(i.WeenieClassId) && !Cloak.IsCloak(i));

            foreach (WorldObject c in equipped)
            {
                if (!Cloak.RollProc(c, damage_percent))
                    continue;

                if (Cloak.HandleProcSpell(defender, attacker, c))
                    __result = true;
            }
        }

        return false;
    }
}
