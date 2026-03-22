namespace AutoLoot;

public partial class PatchClass
{
    [HarmonyPostfix]
    [HarmonyPatch(typeof(Player), nameof(Player.PlayerEnterWorld))]
    public static void PostPlayerEnterWorld(ref Player __instance)
    {
        AutoLoot.OnPostPlayerEnterWorld(ref __instance);
    }

    // Postfixed manually from PatchClass.TryPatchGenerateTreasurePostfix (Start/OnWorldOpen) — do not add [HarmonyPatch] here or it runs twice.
    public static void PostGenerateTreasure(DamageHistoryInfo killer, Corpse corpse, Creature __instance, ref List<WorldObject> __result)
    {
        AutoLoot.OnPostGenerateTreasure(killer, corpse, __instance, ref __result);
    }
}
