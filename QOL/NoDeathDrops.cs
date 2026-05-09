using ACE.Server.WorldObjects;
using HarmonyLib;

namespace QOL;

[HarmonyPatchCategory(nameof(Features.NoDeathDrops))]
public static class NoDeathDrops
{
    /// <summary>
    /// Removes the "dropped on death" (Slippery bonded) behavior from all items.
    /// Items with BondedStatus.Slippery will no longer be forced onto the corpse.
    /// </summary>
    [HarmonyPostfix]
    [HarmonyPatch(typeof(Player), nameof(Player.GetSlipperyItems))]
    public static void PostGetSlipperyItems(ref List<WorldObject> __result)
    {
        __result = new List<WorldObject>();
    }

    /// <summary>
    /// Prevents all inventory/equipped items from dropping on death.
    /// Combined with PostGetSlipperyItems, this makes death completely safe for items.
    /// </summary>
    [HarmonyPostfix]
    [HarmonyPatch(typeof(Player), nameof(Player.CalculateDeathItems))]
    public static void PostCalculateDeathItems(ref List<WorldObject> __result)
    {
        __result = new List<WorldObject>();
    }

    /// <summary>
    /// Prevents Olthoi death item drops.
    /// </summary>
    [HarmonyPostfix]
    [HarmonyPatch(typeof(Player), nameof(Player.CalculateDeathItems_Olthoi))]
    public static void PostCalculateDeathItems_Olthoi(ref List<WorldObject> __result)
    {
        __result = new List<WorldObject>();
    }

    /// <summary>
    /// Prevents physical coin stacks from dropping on death.
    /// LeyLineLedger makes pyreals banked; this ensures no physical coins drop either.
    /// </summary>
    [HarmonyPostfix]
    [HarmonyPatch(typeof(Player), nameof(Player.GetNumCoinsDropped))]
    public static void PostGetNumCoinsDropped(ref int __result)
    {
        __result = 0;
    }
}
