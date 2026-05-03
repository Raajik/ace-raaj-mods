using System.Collections.Generic;
using ACE.Server.Network.Structure;

namespace LeyLineLedger;

// LongDesc suffix for skeleton keys — caps match BetterKeys PatchClass.EnsureKeyMap().
[HarmonyPatchCategory(nameof(SkeletonKeyAppraise))]
internal static class SkeletonKeyAppraise
{
    static readonly Dictionary<uint, string> DefaultSuffixByWcid = BuildDefaultSuffixMap();

    static Dictionary<uint, string> BuildDefaultSuffixMap()
    {
        Dictionary<uint, string> d = new();
        void addMany(string suffix, params uint[] wcids)
        {
            foreach (uint w in wcids)
                d[w] = suffix;
        }

        addMany("(1kD)", 6876);
        addMany("(1kC)", 24477);
        addMany("(5kD)", 38456, 38917, 38918, 38919, 38920);
        addMany("(5kC)", 48746, 48747, 48748, 48749, 48750, 48914, 51558, 51586, 51648, 51954, 51963, 52010,
            72048, 72338, 72474, 72600, 72628, 72635, 72669, 72807, 87168);
        return d;
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(AppraiseInfo), "BuildProperties")]
    public static void PostBuildProperties(AppraiseInfo __instance, WorldObject wo)
    {
        if (wo == null || wo is not Key)
            return;

        Settings? s = PatchClass.Settings;
        if (s?.SkeletonKeyAppraisal?.Enabled != true)
            return;

        if (!TryResolveSuffix(s, wo.WeenieClassId, out string suffix))
            return;

        if (__instance.PropertiesString == null)
            __instance.PropertiesString = new Dictionary<PropertyString, string>();

        if (!__instance.PropertiesString.TryGetValue(PropertyString.LongDesc, out string? existing) || string.IsNullOrWhiteSpace(existing))
            existing = wo.LongDesc ?? string.Empty;

        if (existing.IndexOf(suffix, StringComparison.Ordinal) >= 0)
            return;

        string trimmed = existing.TrimEnd();
        __instance.PropertiesString[PropertyString.LongDesc] = string.IsNullOrEmpty(trimmed) ? suffix : $"{trimmed} {suffix}";
    }

    static bool TryResolveSuffix(Settings s, uint wcid, out string suffix)
    {
        Dictionary<uint, string>? map = s.SkeletonKeyAppraisal?.SuffixByWcid;
        if (map != null && map.Count > 0 && map.TryGetValue(wcid, out string? o) && !string.IsNullOrWhiteSpace(o))
        {
            suffix = o.Trim();
            return true;
        }

        return DefaultSuffixByWcid.TryGetValue(wcid, out suffix!);
    }
}
