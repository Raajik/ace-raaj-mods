using ACE.Server.Network.Structure;

namespace Overtinked;

// Hemorrhage / Cleaving live only in OvertinkedImbueStore (no PropertyInt.ImbuedEffect). Client imbue list stays empty unless we add text here.
[HarmonyPatchCategory(Settings.RecipeManagerCategory)]
internal static class CustomImbueAppraise
{
    private const string BlockMarker = "\n--- ";

    [HarmonyPostfix]
    [HarmonyPriority(Priority.Last)]
    [HarmonyPatch(typeof(AppraiseInfo), "BuildProperties")]
    public static void PostBuildProperties(AppraiseInfo __instance, WorldObject wo)
    {
        if (wo == null || __instance == null)
            return;

        Settings? s = PatchClass.CurrentSettings;
        if (s == null)
            return;

        OvertinkedImbueFlags flags = OvertinkedImbueStore.Get(wo);
        if (flags == OvertinkedImbueFlags.None)
            return;

        List<string> lines = new List<string>(3);

        if ((flags & OvertinkedImbueFlags.Hemorrhage) != 0 && s.HemorrhageImbue?.Enabled == true)
        {
            HemorrhageImbueConfig h = s.HemorrhageImbue;
            string label = string.IsNullOrWhiteSpace(h.Name) ? "Hemorrhage" : h.Name.Trim();
            float aoeM = HemorrhageAoE.GetRadiusMeters(h);
            lines.Add(
                $"{label}: stacking damage over time on hit (+{h.StacksPerApplication} stacks per hit, max {h.MaxStacks}); spreads stacks within ~{aoeM:0.#}m (~{(aoeM / HemorrhageAoE.YardsToMeters):0.#} yd).");
        }

        if ((flags & OvertinkedImbueFlags.Cleaving) != 0 && s.CleavingImbue?.Enabled == true)
        {
            CleavingImbueCombatConfig c = s.CleavingImbue;
            string label = string.IsNullOrWhiteSpace(c.Name) ? "Cleaving" : c.Name.Trim();
            int pct = (int)Math.Round(100f * c.SplashDamageFraction);
            lines.Add(
                $"{label}: splashes {pct}% of primary hit damage to foes within {c.SplashRadiusMeters:0.#}m (up to {c.MaxSplashTargets} extra targets).");
        }

        if (lines.Count == 0)
            return;

        string block = BlockMarker + string.Join("\n", lines);
        if (__instance.PropertiesString == null)
            __instance.PropertiesString = new Dictionary<PropertyString, string>();

        string baseDesc = __instance.PropertiesString.TryGetValue(PropertyString.LongDesc, out string? ld) && ld != null
            ? ld
            : (wo.LongDesc ?? string.Empty);

        if (baseDesc.Contains(BlockMarker, StringComparison.Ordinal))
            return;

        __instance.PropertiesString[PropertyString.LongDesc] = baseDesc + block;
    }
}
