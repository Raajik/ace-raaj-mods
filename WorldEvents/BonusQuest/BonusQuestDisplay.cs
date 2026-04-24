using ACE.Database;

namespace WorldEvents;

internal static class BonusQuestDisplay
{
    // Strip common quest stamp suffixes before prettifying
    static readonly string[] StripSuffixes =
    {
        "QuestComplete", "QuestCompleted", "Quest", "Stamp",
        "Done", "Complete", "Completed", "Flag", "Start",
        "Finish", "Finished", "Step", "End",
    };

    internal static string QuestDisplayName(string stamp)
    {
        if (string.IsNullOrWhiteSpace(stamp))
            return stamp;

        // Try world DB message field first
        try
        {
            var dbQuest = DatabaseManager.World.GetCachedQuest(stamp);
            if (!string.IsNullOrWhiteSpace(dbQuest?.Message))
                return dbQuest.Message.Trim();
        }
        catch { }

        // Clean up the stamp string
        var name = stamp;

        // Strip trailing _ + suffix combinations
        foreach (var suffix in StripSuffixes)
        {
            var candidate = $"_{suffix}";
            if (name.EndsWith(candidate, StringComparison.OrdinalIgnoreCase))
            {
                name = name[..^candidate.Length];
                break;
            }
        }

        // Split underscores into spaces
        name = name.Replace('_', ' ');

        // Insert spaces at camelCase boundaries: aA → a A, AAb → A Ab
        name = Regex.Replace(name, @"(?<=[a-z\d])(?=[A-Z])", " ");
        name = Regex.Replace(name, @"(?<=[A-Z]+)(?=[A-Z][a-z])", " ");

        // Collapse multiple spaces, trim
        name = Regex.Replace(name, @"\s+", " ").Trim();

        // Title-case each word
        return string.Join(" ", name
            .Split(' ', StringSplitOptions.RemoveEmptyEntries)
            .Select(w => w.Length == 0 ? w : char.ToUpper(w[0]) + w[1..]));
    }

    internal static string FormatQuestList(IEnumerable<string> questNames)
    {
        var parts = questNames.Select(QuestDisplayName).ToList();
        return parts.Count switch
        {
            0 => "(none)",
            1 => parts[0],
            2 => $"{parts[0]} and {parts[1]}",
            _ => string.Join(", ", parts[..^1]) + $", and {parts[^1]}",
        };
    }
}
