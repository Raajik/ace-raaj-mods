using ACE.Server.Network.Structure;

namespace Overtinked;

// Hemorrhage / Cleaving / Nether Rending: OvertinkedImbueStore (40133) + vanilla Nether bit. One short line in appraisal string table (Inscription) so it sits with other property rows; salvage bags carry the fuller LongDesc (SQL).
[HarmonyPatchCategory(Settings.RecipeManagerCategory)]
internal static class CustomImbueAppraise
{
    // Legacy: multi-line block appended to LongDesc (remove from appraisal only; DB LongDesc cleanup optional).
    private const string BlockMarkerLegacy = "\n--- ";

    [HarmonyPostfix]
    [HarmonyPriority(Priority.Last)]
    [HarmonyPatch(typeof(AppraiseInfo), "BuildProperties")]
    public static void PostBuildProperties(AppraiseInfo __instance, WorldObject wo)
    {
        if (wo == null || __instance == null)
            return;

        StripLegacyImbueLongDesc(__instance);

        Settings? s = PatchClass.CurrentSettings;
        if (s == null)
            return;

        OvertinkedImbueFlags flags = OvertinkedImbueStore.Get(wo);
        if (flags == OvertinkedImbueFlags.None)
            return;

        string imbueLine = BuildImbuePropertyLine(flags, s);
        if (string.IsNullOrEmpty(imbueLine))
            return;

        if (__instance.PropertiesString == null)
            __instance.PropertiesString = new Dictionary<PropertyString, string>();

        string existing = string.Empty;
        if (__instance.PropertiesString.TryGetValue(PropertyString.Inscription, out string? fromPacket) && !string.IsNullOrEmpty(fromPacket))
            existing = fromPacket.Trim();
        else if (!string.IsNullOrEmpty(wo.Inscription))
            existing = wo.Inscription.Trim();

        if (!string.IsNullOrEmpty(existing))
        {
            if (existing.Contains(imbueLine, StringComparison.Ordinal))
                return;

            __instance.PropertiesString[PropertyString.Inscription] = existing + " | " + imbueLine;
        }
        else
            __instance.PropertiesString[PropertyString.Inscription] = imbueLine;
    }

    private static void StripLegacyImbueLongDesc(AppraiseInfo info)
    {
        if (info.PropertiesString == null)
            return;

        if (!info.PropertiesString.TryGetValue(PropertyString.LongDesc, out string? ld) || ld == null)
            return;

        int i = ld.IndexOf(BlockMarkerLegacy, StringComparison.Ordinal);
        if (i < 0)
            return;

        info.PropertiesString[PropertyString.LongDesc] = ld.Substring(0, i).TrimEnd();
    }

    private static string BuildImbuePropertyLine(OvertinkedImbueFlags flags, Settings s)
    {
        List<string> parts = new List<string>(3);

        if ((flags & OvertinkedImbueFlags.Hemorrhage) != 0 && s.HemorrhageImbue?.Enabled == true)
        {
            HemorrhageImbueConfig h = s.HemorrhageImbue;
            string label = string.IsNullOrWhiteSpace(h.Name) ? "Hemorrhage" : h.Name.Trim();
            float yards = h.AoERadiusYards > 0f
                ? h.AoERadiusYards
                : HemorrhageAoE.GetRadiusMeters(h) / HemorrhageAoE.YardsToMeters;
            yards = (float)Math.Round(yards, 1);
            parts.Add($"{label}: +{h.StacksPerApplication} stacks/hit, max {h.MaxStacks}, {yards:0.#} yd AoE");
        }

        if ((flags & OvertinkedImbueFlags.Cleaving) != 0 && s.CleavingImbue?.Enabled == true)
        {
            CleavingImbueCombatConfig c = s.CleavingImbue;
            string label = string.IsNullOrWhiteSpace(c.Name) ? "Cleaving" : c.Name.Trim();
            int pct = (int)Math.Round(100f * c.SplashDamageFraction);
            float splashYd = (float)Math.Round(c.SplashRadiusMeters / HemorrhageAoE.YardsToMeters, 1);
            parts.Add($"{label}: {pct}% splash, {splashYd:0.#} yd radius, up to {c.MaxSplashTargets} extra targets");
        }

        if ((flags & OvertinkedImbueFlags.NetherRending) != 0 && s.NetherRendingImbue?.Enabled == true)
        {
            NetherRendingImbueCombatConfig n = s.NetherRendingImbue;
            string label = string.IsNullOrWhiteSpace(n.Name) ? "Nether Rending" : n.Name.Trim();
            int pct = (int)Math.Round(100f * n.NetherDamageFraction);
            parts.Add($"{label}: +{pct}% Nether from primary hit");
        }

        if (parts.Count == 0)
            return string.Empty;

        return string.Join("; ", parts);
    }
}
