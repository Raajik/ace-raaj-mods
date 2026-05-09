namespace Loremaster;

using ACE.Server.Managers;

public partial class PatchClass
{
    // When enabled, ACE's Portal max-level gate reads PropertyManager "use_portal_max_level_requirement" as false
    // so high-level characters may use portals with MaxLevel set (see Portal.CheckUseRequirements on ACE).
    [HarmonyPostfix]
    [HarmonyPatch(typeof(PropertyManager), nameof(PropertyManager.GetBool), new Type[] { typeof(string), typeof(bool), typeof(bool) })]
    public static void PostGetBoolForPortalMaxLevel(string key, bool fallback, bool cacheFallback, ref Property<bool> __result)
    {
        if (Settings?.BypassPortalMaxLevelRestriction != true)
            return;

        if (key != "use_portal_max_level_requirement")
            return;

        __result = new Property<bool>(false, __result.Description);
    }
}
