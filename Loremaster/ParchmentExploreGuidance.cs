namespace Loremaster;

internal static class ParchmentExploreGuidance
{
    // Single-line summary for chat (start/status); avoids paragraph breaks.
    internal static string BuildOneLine(Player player, ParchmentTemplateSettings t)
    {
        var s = Build(player, t);
        if (string.IsNullOrWhiteSpace(s))
        {
            var raw = ParchmentContractRuntime.GetResolvedExploreLandblockRaw(player, t);
            return $"destination landblock 0x{raw:X8}";
        }

        var one = string.Join(" ", s.Split(new[] { ' ', '\n', '\r', '\t' }, StringSplitOptions.RemoveEmptyEntries));
        return one.Length > 180 ? string.Concat(one.AsSpan(0, 177), "…") : one;
    }

    internal static string Build(Player player, ParchmentTemplateSettings t)
    {
        uint raw = ParchmentContractRuntime.GetResolvedExploreLandblockRaw(player, t);
        string manual = BuildManualBlock(t);
        if (manual.Length > 0)
            return manual;

        return BuildAutoBlock(raw, t);
    }

    static string BuildManualBlock(ParchmentTemplateSettings t)
    {
        var parts = new List<string>();
        if (!string.IsNullOrWhiteSpace(t.ExploreOutdoorCoordsText))
            parts.Add(t.ExploreOutdoorCoordsText.Trim());
        if (!string.IsNullOrWhiteSpace(t.ExploreDungeonName))
            parts.Add($"Place: {t.ExploreDungeonName.Trim()}");
        if (!string.IsNullOrWhiteSpace(t.ExploreEntranceCoordsText))
            parts.Add($"Entrance: {t.ExploreEntranceCoordsText.Trim()}");
        return parts.Count == 0 ? "" : string.Join("\n", parts);
    }

    static string BuildAutoBlock(uint raw, ParchmentTemplateSettings t)
    {
        var lbId = new LandblockId(raw);
        Landblock? lb = null;
        try
        {
            lb = LandblockManager.GetLandblock(lbId, false, false);
        }
        catch
        {
        }

        var isDungeon = lb?.IsDungeon ?? false;
        var placeLabel = isDungeon ? "Dungeon area" : "Wilderness";

        Position? anchor = null;
        if (!string.IsNullOrWhiteSpace(t.ExploreAnchorLoc)
            && t.ExploreAnchorLoc.TryParsePosition(out var parsed))
            anchor = parsed;

        var coordHint = anchor is not null ? FormatPositionHint(anchor) : "";

        if (isDungeon)
        {
            var core =
                $"Explore {placeLabel} (landblock 0x{raw:X8}). Stand inside and use a Town Crier to report.";
            if (coordHint.Length > 0)
                return $"Suggested entrance / landmark: {coordHint}\n{core}";
            return core;
        }

        var outdoor =
            $"Travel to landblock 0x{raw:X8} ({placeLabel}). Stand there and use a Town Crier to report.";
        if (coordHint.Length > 0)
            return $"{coordHint}\n{outdoor}";
        return outdoor;
    }

    static string FormatPositionHint(Position pos)
    {
        try
        {
            var cell = pos.GetCell();
            return $"Cell 0x{cell:X8}, landblock 0x{pos.LandblockId.Raw:X8}";
        }
        catch
        {
            return "";
        }
    }
}
