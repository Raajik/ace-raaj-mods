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

    /// </summary>    private static readonly HashSet<uint> BlockedCreationWcids = new()
    {
        266, // Auroch Horn,
        3670, // Copper Heart,
        3671, // Granite Heart,
        3672, // Iron Heart,
        3673, // Wood Heart,
        3688, // Bronze Armoredillo Spine,
        3689, // Grey Spine,
        3690, // Sandy Armoredillo Spine,
        3691, // Shore Armoredillo Spine,
        4240, // Small Mattekar Hide,
        4241, // Mattekar Hide,
        5892, // Hoary Mattekar Hide,
        7039, // Fire Auroch Horn / Platinum Golem Heart,
        7044, // Great Mattekar Horn,
        7338, // Diamond Heart,
        8424, // Island Armoredillo Spine,
        9098, // Vial of Organic Acid (Grievver Acid),
        9324, // Obsidian Heart,
        9412, // Dire Mattekar Paw,
        9413, // Dread Mattekar Paw,
        10868, // Canescent Mattekar Pelt,
        11350, // Elaniwood Golem Heart,
        11351, // Mud Golem Heart,
        11352, // Sand Golem Heart,
        11353, // Vapor Golem Heart,
        11354, // Water Golem Heart,
        12003, // Tundra Mattekar Hide,
        14589, // Ebon Mattekar Hide,
        19476, // Grievver Tibia,
        22950, // Hoary Armoredillo Spine,
        22951, // Plate Armoredillo Spine,
        23096, // Swarthy Mattekar Hide,
        23201, // Glacial Golem Heart,
        23202, // Platinum Golem Heart,
        23203, // Pyreal Golem Heart,
        28520, // Gold Golem Heart,
        34962, // Infused Blood Golem Heart,
        48941, // Burning Sands Golem Heart,
        24835, // Vanilla Drudge Charm,
        31352, // Olthoi Slayer Carapace,
        31354, // Olthoi Ripper Spine,
        31355, // Olthoi Slasher Carapace,
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