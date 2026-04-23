namespace QOL;

// Clamps client give amount to 1 for stackable quest items handed to NPCs so emotes do not consume whole stacks.
[HarmonyPatchCategory(nameof(Features.GiveNpcSingleFromStack))]
internal static class GiveNpcSingleFromStack
{
    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), nameof(Player.HandleActionGiveObjectRequest), new Type[] { typeof(uint), typeof(uint), typeof(int) })]
    public static void Prefix(Player __instance, uint targetGuid, uint itemGuid, ref int amount)
    {
        Settings? cfg = PatchClass.Settings;
        if (cfg is not { EnableGiveNpcSingleFromStack: true })
            return;

        if (amount <= 1)
            return;

        var target = __instance.FindObject(targetGuid, Player.SearchLocations.Landblock, out _, out _, out _) as Container;
        if (target == null || target is Player)
            return;

        var item = __instance.FindObject(itemGuid, Player.SearchLocations.MyInventory | Player.SearchLocations.MyEquippedItems, out _, out _, out _);
        if (item == null)
            return;

        if ((item.MaxStackSize ?? 0) <= 1)
            return;

        if (!Stackable.IsStackableWcid(item.WeenieClassId))
            return;

        amount = 1;
    }
}
