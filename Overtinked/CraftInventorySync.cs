namespace Overtinked;

// Mirrors RecipeManager.UpdateObj inventory half so tinkered/imbued items reorder in the server pack
// like vanilla after GameMessageUpdateObject (see ACE.Server Managers RecipeManager.UpdateObj).
internal static class CraftInventorySync
{
    internal static void MirrorRecipeManagerUpdateObj(Player player, WorldObject obj)
    {
        if (player == null || obj == null)
            return;

        player.EnqueueBroadcast(new GameMessageUpdateObject(obj));

        if (obj.CurrentWieldedLocation != null)
        {
            player.EnqueueBroadcast(new GameMessageObjDescEvent(player));
            return;
        }

        WorldObject? invObj = player.FindObject(obj.Guid.Full, Player.SearchLocations.MyInventory, out _, out _, out _);
        if (invObj != null)
            player.MoveItemToFirstContainerSlot(obj);
    }
}
