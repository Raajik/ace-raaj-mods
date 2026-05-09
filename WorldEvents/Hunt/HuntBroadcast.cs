namespace WorldEvents;

internal static class HuntBroadcast
{
    static readonly string[] HuntStartFlavors =
    {
        "[EVENT - Hunt] A new hunt has begun! The targets are {0}! {1} remains — good luck, hunters!",
        "[EVENT - Hunt] The hunt is on! Bonus species this window: {0}. You have {1} — may your aim be true!",
        "[EVENT - Hunt] Hear ye! A new hunt is underway. Seek out {0} — {1} left on the clock. Happy hunting!",
        "[EVENT - Hunt] The wild calls — a new hunt begins! Targets: {0}. {1} remains. Fortune favors the bold!",
        "[EVENT - Hunt] Time to hunt! Bonus kills this window go to those slaying {0}. {1} on the clock — get moving!",
        "[EVENT - Hunt] A new bounty has been declared! {0} are your marks. {1} to make your name known!",
        "[EVENT - Hunt] Steel yourselves — the hunt begins now! Track down {0}. {1} to climb the leaderboards!",
    };

    static readonly string[] NoTargetsFlavors =
    {
        "[EVENT - Hunt] A new hunt has begun, but the wilds are quiet — no bonus targets this window. Keep killing to unlock future hunts!",
        "[EVENT - Hunt] The hunt starts, yet the land holds its secrets. No bonus species this round — build up your kill data first!",
        "[EVENT - Hunt] A new window opens, but no targets have risen to the surface yet. Keep hunting and they'll emerge!",
    };

    static readonly string[] HuntEndFlavors =
    {
        "[EVENT - Hunt] The hunt has ended! Here are the top hunters",
        "[EVENT - Hunt] Swords down — the window has closed! Top hunters",
        "[EVENT - Hunt] The bounty board is tallied! Hunt results",
        "[EVENT - Hunt] The dust settles. Here's who came out on top",
        "[EVENT - Hunt] Well fought, hunters! Final standings",
    };

    internal static void AnnounceHuntStarted(Settings settings, ActiveHuntData hunt)
    {
        if (!settings.EnableHunt) return;

        var random = Random.Shared;
        if (hunt.TargetSpecies.Count == 0)
        {
            var noTargetMsg = NoTargetsFlavors[random.Next(NoTargetsFlavors.Length)];
            HuntDisplay.BroadcastWorldLine(noTargetMsg);
            return;
        }

        var remaining = FormatRemaining(hunt.WindowEndUtc);
        var targets = BuildTargetList(hunt);
        var template = HuntStartFlavors[random.Next(HuntStartFlavors.Length)];
        HuntDisplay.BroadcastWorldLine(string.Format(template, targets, remaining));
    }

    internal static void AnnounceHuntEndedTop3(
        Settings settings,
        int bracketIdx,
        IReadOnlyList<(string Name, double HuntPts, long? XpGranted, string? XpFormula, IReadOnlyList<string> LootLines, double? TopPoolBonusXxp)> rows)
    {
        if (!settings.EnableHunt || rows.Count == 0) return;

        var bracketLabel = HuntLevels.BracketLabel(bracketIdx);
        var endTemplate = HuntEndFlavors[Random.Shared.Next(HuntEndFlavors.Length)];
        HuntDisplay.BroadcastWorldLine($"{endTemplate} — {bracketLabel} bracket:");

        for (var i = 0; i < rows.Count; i++)
        {
            var r = rows[i];
            var place = (i + 1) switch { 1 => "1st", 2 => "2nd", 3 => "3rd", var n => $"{n}th" };
            var xpAbbrev = r.XpGranted is long && settings.HuntGrantPlacementCharacterXp
                ? HuntXpRewards.FormatAbbreviatedNextLevelFraction(settings, i)
                : "";
            var xpPart = r.XpGranted is long xp ? $"+{xp:N0} XP{xpAbbrev}" : "no XP";
            var lootPart = settings.HuntGrantLootTableRolls && r.LootLines is { Count: > 0 }
                ? string.Join(", ", r.LootLines) : null;
            var bonusPart = r.TopPoolBonusXxp is double bx && bx > 0 ? $" | +{bx:0.##} Hunt XP bonus" : "";
            var msg = $"[EVENT - Hunt] {place}: {r.Name} — {r.HuntPts:0.##} pts | {xpPart}{bonusPart}";
            if (lootPart != null) msg += $" | {lootPart}";
            HuntDisplay.BroadcastWorldLine(msg);
        }
    }

    static string BuildTargetList(ActiveHuntData hunt)
    {
        var parts = new List<string>();
        for (var i = 0; i < hunt.TargetSpecies.Count; i++)
        {
            var id = hunt.TargetSpecies[i];
            hunt.TargetMultipliers.TryGetValue(id, out var mult);
            var name = HuntDisplay.SpeciesName(id);
            var suffix = mult > 1.0 ? $" (×{mult:0.#})" : "";
            parts.Add($"{name}{suffix}");
        }
        return parts.Count switch
        {
            0 => "none",
            1 => parts[0],
            2 => $"{parts[0]} and {parts[1]}",
            _ => string.Join(", ", parts[..^1]) + $", and {parts[^1]}"
        };
    }

    static string FormatRemaining(DateTime endUtc)
    {
        var span = endUtc - DateTime.UtcNow;
        if (span.TotalSeconds <= 0) return "0 minutes";
        if (span.TotalMinutes < 1) return "less than a minute";
        var mins = (int)Math.Ceiling(span.TotalMinutes);
        return mins == 1 ? "1 minute" : $"{mins} minutes";
    }
}
