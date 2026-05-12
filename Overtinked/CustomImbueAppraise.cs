using ACE.Server.Network.Enum;
using ACE.Server.Network.Structure;

namespace Overtinked;

// Hemorrhage / Cleaving / Nether Rending / Shatter: OvertinkedImbueStore (40133) + vanilla Nether bit.
// Retail client imbue names come only from PropertyInt.ImbuedEffect; custom imbues cannot appear in that bitmask without a client patch.
// After full AppraiseInfo.BuildProfile: replace appraisal LongDesc (no weenie template text) and strip AppraisalLongDescDecoration
// so the client does not splice workmanship/material/gems into the middle of custom imbue lines.
[HarmonyPatchCategory(Settings.RecipeManagerCategory)]
internal static class CustomImbueAppraise
{
    // Legacy: multi-line block appended to LongDesc (remove from appraisal only; DB LongDesc cleanup optional).
    private const string BlockMarkerLegacy = "\n--- ";

    [HarmonyPostfix]
    [HarmonyPriority(Priority.Last)]
    [HarmonyPatch(typeof(AppraiseInfo), nameof(AppraiseInfo.BuildProfile))]
    public static void PostBuildProfile(AppraiseInfo __instance, WorldObject wo, Player examiner, bool success)
    {
        if (wo == null || __instance == null || !success)
            return;

        StripLegacyImbueLongDesc(__instance);

        Settings? s = PatchClass.CurrentSettings;
        if (s == null)
            return;

        // -- Defense imbue bonus line (for vanilla defense-imbue items) --
        // The salvage bag says "+X" but the resulting armor piece has no display.
        // Inject the multiplier amount from DefenseImbueBonus into examine text.
        if (s.DefenseImbueBonus > 0 && wo.ImbuedEffect != 0)
        {
            string? kind = null;
            if (wo.ImbuedEffect.HasFlag(ImbuedEffectType.MeleeDefense))
                kind = "Melee";
            else if (wo.ImbuedEffect.HasFlag(ImbuedEffectType.MissileDefense))
                kind = "Missile";
            else if (wo.ImbuedEffect.HasFlag(ImbuedEffectType.MagicDefense))
                kind = "Magic";

            if (kind != null)
            {
                __instance.PropertiesString ??= new Dictionary<PropertyString, string>();
                __instance.PropertiesString.TryGetValue(PropertyString.LongDesc, out string? current);
                string bonusLine = $"Imbues +{s.DefenseImbueBonus} {kind} Defense";
                string replacement = string.IsNullOrWhiteSpace(current)
                    ? bonusLine
                    : current + "\n" + bonusLine;
                __instance.PropertiesString[PropertyString.LongDesc] = replacement;
                __instance.Flags |= IdentifyResponseFlags.StringStatsTable;
            }
        }

        OvertinkedImbueFlags flags = OvertinkedImbueStore.Get(wo);
        if (flags == OvertinkedImbueFlags.None)
            return;

        string imbueLine = BuildImbuePropertyLine(flags, s);
        if (string.IsNullOrEmpty(imbueLine))
            return;

        __instance.PropertiesString ??= new Dictionary<PropertyString, string>();

        // Full replace: current item name + imbue stats only (drops template LongDesc). Stops >> / workmanship merges on client.
        string nameLine = string.IsNullOrWhiteSpace(wo.Name) ? string.Empty : wo.Name.Trim();
        string replacement2 = string.IsNullOrEmpty(nameLine)
            ? imbueLine
            : nameLine + "\n" + imbueLine;

        __instance.PropertiesString[PropertyString.LongDesc] = replacement2;
        __instance.PropertiesInt.Remove(PropertyInt.AppraisalLongDescDecoration);
        __instance.Flags |= IdentifyResponseFlags.StringStatsTable;
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

        if ((flags & OvertinkedImbueFlags.Shatter) != 0 && s.ShatterImbue?.Enabled == true)
        {
            ShatterImbueConfig sh = s.ShatterImbue;
            string label = string.IsNullOrWhiteSpace(sh.Name) ? "Shatter" : sh.Name.Trim();
            int dPct = (int)Math.Round(100f * sh.DamageBonusPerStack);
            int bPct = (int)Math.Round(100f * sh.BrokenDamageBonusFraction);
            parts.Add($"{label}: +{dPct}% dmg/stack on target (max {sh.MaxStacks}), +{bPct}% when broken (all types)");
        }

        if (parts.Count == 0)
            return string.Empty;

        return string.Join("; ", parts);
    }
}
