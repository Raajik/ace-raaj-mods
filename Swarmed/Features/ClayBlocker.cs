namespace Swarmed.Features;

using ACE.Entity;
using ACE.Entity.Models;
using ACE.Server.Factories;
using ACE.Server.WorldObjects;
using HarmonyLib;

/// <summary>
/// Nuclear option: blocks every code path that tries to instantiate WCID 1 (the modified human / "Clay" placeholder).
/// Catches generator spawns, emote spawns, mod spawns, loot drops, and biota reloads.
/// </summary>
[HarmonyPatchCategory(nameof(ClayBlocker))]
public static class ClayBlocker
{
    const uint ClayWcid = 1;
    const string ClayName = "Clay";

    // ── CreateNewWorldObject(uint) ──
    [HarmonyPrefix]
    [HarmonyPatch(typeof(WorldObjectFactory), nameof(WorldObjectFactory.CreateNewWorldObject), new[] { typeof(uint) })]
    static bool PreCreateNewWorldObjectUint(uint weenieClassId, ref WorldObject __result)
    {
        if (weenieClassId == ClayWcid)
        {
            __result = null;
            return false;
        }
        return true;
    }

    // ── CreateNewWorldObject(string) ──
    [HarmonyPrefix]
    [HarmonyPatch(typeof(WorldObjectFactory), nameof(WorldObjectFactory.CreateNewWorldObject), new[] { typeof(string) })]
    static bool PreCreateNewWorldObjectString(string weenieClassName, ref WorldObject __result)
    {
        if (weenieClassName != null && weenieClassName.Equals(ClayName, StringComparison.OrdinalIgnoreCase))
        {
            __result = null;
            return false;
        }
        return true;
    }

    // ── CreateNewWorldObject(Weenie) ──
    [HarmonyPrefix]
    [HarmonyPatch(typeof(WorldObjectFactory), nameof(WorldObjectFactory.CreateNewWorldObject), new[] { typeof(Weenie) })]
    static bool PreCreateNewWorldObjectWeenie(Weenie weenie, ref WorldObject __result)
    {
        if (weenie?.WeenieClassId == ClayWcid)
        {
            __result = null;
            return false;
        }
        return true;
    }

    // ── CreateNewWorldObject(PropertiesCreateList) ──
    [HarmonyPrefix]
    [HarmonyPatch(typeof(WorldObjectFactory), nameof(WorldObjectFactory.CreateNewWorldObject), new[] { typeof(ACE.Entity.Models.PropertiesCreateList) })]
    static bool PreCreateNewWorldObjectCreateList(ACE.Entity.Models.PropertiesCreateList item, ref WorldObject __result)
    {
        if (item?.WeenieClassId == ClayWcid)
        {
            __result = null;
            return false;
        }
        return true;
    }

    // ── CreateWorldObject(Weenie, ObjectGuid) ──
    [HarmonyPrefix]
    [HarmonyPatch(typeof(WorldObjectFactory), nameof(WorldObjectFactory.CreateWorldObject), new[] { typeof(Weenie), typeof(ObjectGuid) })]
    static bool PreCreateWorldObjectWeenieGuid(Weenie weenie, ObjectGuid guid, ref WorldObject __result)
    {
        if (weenie?.WeenieClassId == ClayWcid)
        {
            __result = null;
            return false;
        }
        return true;
    }

#if REALM
    // ── CreateWorldObject(Weenie, ObjectGuid, AppliedRuleset) ──
    [HarmonyPrefix]
    [HarmonyPatch(typeof(WorldObjectFactory), nameof(WorldObjectFactory.CreateWorldObject), new[] { typeof(Weenie), typeof(ObjectGuid), typeof(AppliedRuleset) })]
    static bool PreCreateWorldObjectWeenieGuidRealm(Weenie weenie, ObjectGuid guid, AppliedRuleset ruleset, ref WorldObject __result)
    {
        if (weenie?.WeenieClassId == ClayWcid)
        {
            __result = null;
            return false;
        }
        return true;
    }
#endif

    // ── CreateWorldObject(Biota) ──
    // Note: global using Biota = ACE.Entity.Models.Biota in Swarmed
    [HarmonyPrefix]
    [HarmonyPatch(typeof(WorldObjectFactory), nameof(WorldObjectFactory.CreateWorldObject), new[] { typeof(Biota) })]
    static bool PreCreateWorldObjectBiota(Biota biota, ref WorldObject __result)
    {
        if (biota?.WeenieClassId == ClayWcid)
        {
            __result = null;
            return false;
        }
        return true;
    }
}
