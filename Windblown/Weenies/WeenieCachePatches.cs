using ACE.Database;
using Windblown.Weenies;

// IMPORTANT: this MUST be the same namespace as `Windblown.PatchClass` in `PatchClass.cs`.
// `partial` only joins types within the same namespace; `Windblown.Weenies.PatchClass` would be
// a different class entirely and its [HarmonyPatch] attributes would never auto-attach.
namespace Windblown;

/// <summary>
/// Harmony prefix on <c>WorldDatabaseWithEntityCache.GetCachedWeenie</c> that returns our in-memory
/// custom weenie when the requested WCID/class name is registered in <see cref="WeenieRegistry"/>.
/// Falls through to the vanilla DB lookup otherwise (so non-custom WCIDs and the base WCIDs we clone
/// from continue to work).
///
/// Patches live on PatchClass (partial) so they auto-attach via <c>base.Start()</c> per the ACE.BaseMod pattern.
/// </summary>
public partial class PatchClass
{
    [HarmonyPrefix]
    [HarmonyPatch(typeof(WorldDatabaseWithEntityCache), nameof(WorldDatabaseWithEntityCache.GetCachedWeenie), new[] { typeof(uint) })]
    public static bool PreGetCachedWeenieByWcid(uint weenieClassId, ref Weenie __result)
    {
        if (!WeenieRegistry.IsReady) return true;
        if (WeenieRegistry.TryGet(weenieClassId, out var w) && w != null)
        {
            __result = w;
            return false;
        }
        return true;
    }

    [HarmonyPrefix]
    [HarmonyPatch(typeof(WorldDatabaseWithEntityCache), nameof(WorldDatabaseWithEntityCache.GetCachedWeenie), new[] { typeof(string) })]
    public static bool PreGetCachedWeenieByName(string weenieClassName, ref Weenie __result)
    {
        if (!WeenieRegistry.IsReady) return true;
        if (!string.IsNullOrEmpty(weenieClassName) && WeenieRegistry.TryGetByClassName(weenieClassName, out var w) && w != null)
        {
            __result = w;
            return false;
        }
        return true;
    }
}
