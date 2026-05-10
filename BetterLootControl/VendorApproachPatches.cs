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

            var postfix = new HarmonyMethod(typeof(VendorApproachPatches), nameof(PostVendorLoadInventory));
            harmony.Patch(target, postfix: postfix);

            ModManager.Log("[BLC] VendorApproachPatches: Patched Vendor.LoadInventory with postfix", ModManager.LogLevel.Info);
            File.AppendAllText("BLC_VENDOR.txt", DateTime.Now + " [BLC] Patched Vendor.LoadInventory" + Environment.NewLine);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BLC] VendorApproachPatches error: {ex}", ModManager.LogLevel.Error);
        }
    }

    public static void PostVendorLoadInventory(Vendor __instance)
    {
        try
        {
            if (__instance == null)
                return;

            File.AppendAllText("BLC_VENDOR.txt", DateTime.Now.ToString("HH:mm:ss.fff") + " [BLC] PostVendorLoadInventory FIRED vendor=" + __instance.Name + " (WCID=" + __instance.WeenieClassId + ")" + Environment.NewLine);

            VendorLootRotation.OnVendorApproachPrefix(null, VendorType.Open, 0, __instance);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BLC] PostVendorLoadInventory error: {ex}", ModManager.LogLevel.Warn);
        }
    }
}