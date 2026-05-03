using ACE.Server.Network.Structure;

namespace Overtinked;

// Examine/appraisal LongDesc for defense salvage when OverrideDefenseSalvageLongDescInAppraise is on (text from SalvageEffectApplier / Settings).
[HarmonyPatchCategory(Settings.RecipeManagerCategory)]
internal static class DefenseSalvageAppraise
{
    [HarmonyPostfix]
    [HarmonyPatch(typeof(AppraiseInfo), "BuildProperties")]
    public static void PostBuildProperties(AppraiseInfo __instance, WorldObject wo)
    {
        if (wo == null)
            return;

        Settings? s = PatchClass.CurrentSettings;
        if (s == null || !SalvageEffectApplier.TryGetDefenseSalvageAppraiseLongDesc(s, wo.WeenieClassId, out string longDesc))
            return;

        if (__instance.PropertiesString == null)
            __instance.PropertiesString = new Dictionary<PropertyString, string>();

        __instance.PropertiesString[PropertyString.LongDesc] = longDesc;
    }
}
