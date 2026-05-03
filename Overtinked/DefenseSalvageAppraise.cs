using System.Globalization;
using ACE.Server.Network.Structure;

namespace Overtinked;

// Examine/appraisal LongDesc for defense salvage so bonus text follows Settings.json (DefenseImbueBonus + optional format strings) without world SQL.
[HarmonyPatchCategory(Settings.RecipeManagerCategory)]
internal static class DefenseSalvageAppraise
{
    private const string DefaultSalvagedFormat = "Apply this material to treasure-generated armor to imbue the target with a +{0} bonus to {1} Defense.";
    private const string DefaultFoolproofFormat = "Apply this material to a treasure-generated armor to imbue the target with a +{0} bonus to {1} Defense.";

    private static readonly Dictionary<uint, (string Kind, bool Foolproof)> DefenseSalvageByWcid = new()
    {
        [21066] = ("Melee", false),
        [21088] = ("Missile", false),
        [21089] = ("Magic", false),
        [30101] = ("Melee", true),
        [30105] = ("Missile", true),
        [30106] = ("Magic", true),
    };

    [HarmonyPostfix]
    [HarmonyPatch(typeof(AppraiseInfo), "BuildProperties")]
    public static void PostBuildProperties(AppraiseInfo __instance, WorldObject wo)
    {
        if (wo == null)
            return;

        Settings? s = PatchClass.CurrentSettings;
        if (s == null || !s.OverrideDefenseSalvageLongDescInAppraise || s.DefenseImbueBonus <= 0)
            return;

        if (!DefenseSalvageByWcid.TryGetValue(wo.WeenieClassId, out var entry))
            return;

        string fmt = entry.Foolproof
            ? (string.IsNullOrWhiteSpace(s.DefenseSalvageLongDescFoolproofFormat) ? DefaultFoolproofFormat : s.DefenseSalvageLongDescFoolproofFormat.Trim())
            : (string.IsNullOrWhiteSpace(s.DefenseSalvageLongDescSalvagedFormat) ? DefaultSalvagedFormat : s.DefenseSalvageLongDescSalvagedFormat.Trim());

        string text = string.Format(CultureInfo.InvariantCulture, fmt, s.DefenseImbueBonus, entry.Kind);

        if (__instance.PropertiesString == null)
            __instance.PropertiesString = new Dictionary<PropertyString, string>();

        __instance.PropertiesString[PropertyString.LongDesc] = text;
    }
}
