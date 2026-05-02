using ACE.Entity.Enum.Properties;
using ACE.Server.Network.Structure;
using ACE.Server.WorldObjects;
using HarmonyLib;

namespace EmpyreanAlteration.Features;

/// <summary>
/// Global QOL: when enabled, treats every item as unattuned (AttunedStatus.Normal).
/// Allows trading/selling of quest rewards, Coalesced Mana, and any other attuned items.
/// </summary>
[HarmonyPatch(typeof(WorldObject), nameof(WorldObject.Attuned), MethodType.Getter)]
internal static class DisableAttunedQOL
{
    [HarmonyPostfix]
    public static void Postfix(WorldObject __instance, ref ACE.Entity.Enum.AttunedStatus? __result)
    {
        var s = PatchClass.Settings;
        if (s?.Enabled != true || !s.DisableAttunedGlobally)
            return;

        // Only override if the item would otherwise be attuned
        if (__result.HasValue && __result.Value != ACE.Entity.Enum.AttunedStatus.Normal)
            __result = ACE.Entity.Enum.AttunedStatus.Normal;
    }
}

/// <summary>
/// Also override the Attuned property in examine/appraisal packets so the
/// client doesn't display "Attuned" on items that are functionally droppable.
/// </summary>
[HarmonyPatchCategory("DisableAttunedQOL")]
[HarmonyPatch(typeof(AppraiseInfo), "BuildProperties")]
internal static class DisableAttunedAppraisal
{
    [HarmonyPostfix]
    public static void Postfix(AppraiseInfo __instance)
    {
        var s = PatchClass.Settings;
        if (s?.Enabled != true || !s.DisableAttunedGlobally)
            return;

        if (__instance.PropertiesInt != null && __instance.PropertiesInt.ContainsKey(PropertyInt.Attuned))
            __instance.PropertiesInt[PropertyInt.Attuned] = (int)ACE.Entity.Enum.AttunedStatus.Normal;
    }
}
