using ACE.Server.WorldObjects;

namespace Windblown;

/// <summary>
/// Patches for Windblown item management:
/// 1. Block unwanted WCIDs from all creation paths (loot, gambling, admin spawns)
///    via prefix on WorldObjectFactory.CreateNewWorldObject(uint).
/// 2. Force Timewalker Kaleb (810001) to price all items at exactly 1 MMD.
/// </summary>
public partial class PatchClass
{
    /// <summary>
    /// WCIDs that should never be created.
    /// </summary>
    private static readonly HashSet<uint> BlockedCreationWcids = new()
    {
        24835, // Vanilla Drudge Charm -- custom TrophyLines drops use 850300-850303 instead
        31352, // Olthoi Slayer Carapace
        31354, // Olthoi Ripper Spine
        31355, // Olthoi Slasher Carapace
    };

    [HarmonyPrefix]
    [HarmonyPatch(typeof(WorldObjectFactory), nameof(WorldObjectFactory.CreateNewWorldObject), new[] { typeof(uint) })]
    public static bool PreCreateNewWorldObject_BlockedByWcid(ref uint weenieClassId, ref WorldObject __result)
    {
        if (BlockedCreationWcids.Contains(weenieClassId))
        {
            __result = null!;
            return false;
        }
        return true;
    }

    /// <summary>
    /// SAFETY NET: Force all items sold by Timewalker Kaleb (810001) to cost
    /// exactly 1 MMD even if SellPrice (float 38) is misconfigured.
    /// Primary fix is SellPrice=0 in SQL (see CustomTrophyNPC-Deployment-Standard.md),
    /// but this catches any future SellPrice drift.
    /// </summary>
    [HarmonyPostfix]
    [HarmonyPatch(typeof(Vendor), nameof(Vendor.GetSellCost), new[] { typeof(WorldObject) })]
    public static void PostGetSellCost_ForceKalebMMDPrice(Vendor __instance, ref uint __result)
    {
        if (__instance.WeenieClassId == 810001)
            __result = 1;
    }
}
