namespace Xenology;

internal static class HuntBroadcast
{
    internal static void AnnounceHuntStarted(Settings settings, ActiveHuntData hunt)
    {
        if (!settings.EnableXenology)
            return;

        XenologyDisplay.BroadcastWorldLine($"[Xenology] Hunt window started: {hunt.WindowStartUtc:u} – {hunt.WindowEndUtc:u} UTC.");

        if (hunt.TargetSpecies.Count == 0)
        {
            XenologyDisplay.BroadcastWorldLine("[Xenology] Bonus species: (none selected — add global kill data or relax filters.)");
            return;
        }

        for (var i = 0; i < hunt.TargetSpecies.Count; i++)
        {
            var wcid = hunt.TargetSpecies[i];
            var species = XenologyDisplay.WeenieName(wcid);
            hunt.TargetMultipliers.TryGetValue(wcid, out var mult);
            var n = i + 1;
            XenologyDisplay.BroadcastWorldLine($"[Xenology] Bonus target {n}/{hunt.TargetSpecies.Count}: {species} — hunt multiplier ×{mult:0.##} (WCID {wcid}).");
        }
    }

    internal static void AnnounceHuntEndedTop3(
        Settings settings,
        IReadOnlyList<(string Name, double HuntPts, long? XpGranted, string? XpFormula, IReadOnlyList<string> LootLines, double? TopPoolBonusXxp)> rows)
    {
        if (!settings.EnableXenology || rows.Count == 0)
            return;

        XenologyDisplay.BroadcastWorldLine("[Xenology] Hunt ended — top 3 by hunt points (rewards this window):");

        for (var i = 0; i < rows.Count; i++)
        {
            var r = rows[i];
            var place = i + 1;
            var placeLabel = place switch { 1 => "1st", 2 => "2nd", 3 => "3rd", _ => $"{place}th" };

            var xpPart = r.XpGranted is long xp && r.XpFormula is { } f
                ? $"character XP +{xp:N0} ({f})"
                : "character XP — (none; offline or placement XP disabled / no XP to next level)";

            var lootPart = !settings.HuntGrantLootTableRolls
                ? "(loot rolls disabled)"
                : (r.LootLines is { Count: > 0 }
                    ? string.Join("; ", r.LootLines)
                    : "(no loot items this window — offline, empty rolls, or no qualifying rolls)");

            var bonusPart = r.TopPoolBonusXxp is double bx && bx > 0
                ? $" | hunt pool bonus +{bx:0.##} xXP"
                : "";

            XenologyDisplay.BroadcastWorldLine(
                $"[Xenology] {placeLabel}: {r.Name} — {r.HuntPts:0.##} hunt pts | {xpPart} | loot: {lootPart}{bonusPart}.");
        }
    }
}
