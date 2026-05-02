namespace WorldEvents;

public partial class PatchClass
{
    /// <summary>
    /// Swallows NullReferenceException inside PhysicsObj.handle_visible_cells_non_player
    /// caused by stale PhysicsObj entries with null WeenieObj in the visible cells list.
    /// Prevents the world thread from crashing during heavy Invasion spawning.
    /// </summary>
    [HarmonyFinalizer]
    [HarmonyPatch(typeof(PhysicsObj), nameof(PhysicsObj.handle_visible_cells_non_player))]
    public static Exception? FinalizerHandleVisibleCellsNonPlayer(Exception? __exception)
    {
        if (__exception is NullReferenceException)
        {
            ModManager.Log("[Invasion] Suppressed NRE in handle_visible_cells_non_player to prevent world thread crash.", ModManager.LogLevel.Warn);
            return null;
        }
        return __exception;
    }
}
