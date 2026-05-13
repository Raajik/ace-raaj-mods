using System;
using System.Reflection;
using ACE.Entity.Enum;
using ACE.Server.WorldObjects;
using HarmonyLib;

namespace BetterLootControl;

/// <summary>
/// Applies vendor approach rotation via manual Harmony.Patch on
/// Vendor.LoadInventory — a regular private method that runs in the
/// approach action chain BEFORE ApproachVendor creates the packet.
/// Manually patched from Start() where it always executes.
/// </summary>
public static class VendorApproachPatches
{
    public static void Apply(Harmony harmony)
    {
        try
        {
            var target = AccessTools.Method(typeof(Vendor), "LoadInventory", Type.EmptyTypes);
            if (target == null)
            {
                ModManager.Log("[BLC] VendorApproachPatches: Could not find Vendor.LoadInventory", ModManager.LogLevel.Error);
                return;
            }

            var prefix = new HarmonyMethod(typeof(VendorApproachPatches), nameof(PreVendorLoadInventory));
            var postfix = new HarmonyMethod(typeof(VendorApproachPatches), nameof(PostVendorLoadInventory));
            harmony.Patch(target, prefix: prefix, postfix: postfix);

            ModManager.Log("[BLC] VendorApproachPatches: Patched Vendor.LoadInventory with postfix", ModManager.LogLevel.Info);
            File.AppendAllText("BLC_VENDOR.txt", DateTime.Now + " [BLC] Patched Vendor.LoadInventory" + Environment.NewLine);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BLC] VendorApproachPatches error: {ex}", ModManager.LogLevel.Error);
        }
    }

    public static void PreVendorLoadInventory(Vendor __instance)
    {
        if (__instance == null) return;
        try
        {
            bool isLoaded = false;
            try
            {
                var prop = AccessTools.Property(typeof(Vendor), "inventoryloaded");
                if (prop != null)
                    isLoaded = (bool)prop.GetValue(__instance);
            }
            catch { }

            string msg = $"{DateTime.Now:HH:mm:ss.fff} [VENDEBUG] PreLoadInventory: {__instance.Name} WCID={__instance.WeenieClassId} Guid={__instance.Guid.Full} inventoryloaded={isLoaded} Default={__instance.DefaultItemsForSale?.Count} Unique={__instance.UniqueItemsForSale?.Count}{Environment.NewLine}";
            File.AppendAllText("BLC_VENDOR.txt", msg);
        }
        catch { }
    }

    public static void PostVendorLoadInventory(Vendor __instance)
    {
        try
        {
            if (__instance == null)
                return;

            string msg = $"{DateTime.Now:HH:mm:ss.fff} [VENDEBUG] PostLoadInventory: {__instance.Name} WCID={__instance.WeenieClassId} Guid={__instance.Guid.Full} Default={__instance.DefaultItemsForSale?.Count} Unique={__instance.UniqueItemsForSale?.Count}{Environment.NewLine}";
            File.AppendAllText("BLC_VENDOR.txt", msg);

            VendorLootRotation.OnVendorApproachPrefix(null, VendorType.Open, 0, __instance);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BLC] PostVendorLoadInventory error: {ex}", ModManager.LogLevel.Warn);
        }
    }
}