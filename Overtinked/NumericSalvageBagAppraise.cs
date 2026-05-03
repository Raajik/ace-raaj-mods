using ACE.Server.Network.Structure;

namespace Overtinked;

// Examine LongDesc for numeric SalvageRules bags when OverrideNumericSalvageBagLongDescInAppraise is on.
[HarmonyPatchCategory(Settings.RecipeManagerCategory)]
internal static class NumericSalvageBagAppraise
{
    [HarmonyPostfix]
    [HarmonyPatch(typeof(AppraiseInfo), "BuildProperties")]
    public static void PostBuildProperties(AppraiseInfo __instance, WorldObject wo)
    {
        if (wo == null)
            return;

        if ((wo.ItemType & ItemType.TinkeringMaterial) == 0)
            return;

        Settings? s = PatchClass.CurrentSettings;
        if (s == null)
            return;

        if (SalvageEffectApplier.TryGetDefenseSalvageAppraiseLongDesc(s, wo.WeenieClassId, out _))
            return;

        if (!SalvageEffectApplier.TryGetNumericSalvageBagAppraiseLongDesc(s, wo.WeenieClassId, out string longDesc))
            return;

        if (__instance.PropertiesString == null)
            __instance.PropertiesString = new Dictionary<PropertyString, string>();

        __instance.PropertiesString[PropertyString.LongDesc] = longDesc;
    }
}
