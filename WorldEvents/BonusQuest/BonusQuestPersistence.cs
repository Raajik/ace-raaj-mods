namespace WorldEvents;

using WorldEvents.BonusQuest.Models;

internal static class BonusQuestPersistence
{
    static readonly JsonSerializerOptions JsonOptions = new()
    {
        WriteIndented = true,
        ReadCommentHandling = JsonCommentHandling.Skip,
        PropertyNameCaseInsensitive = true,
    };

    static string DataDirectory =>
        Path.Combine(ModManager.ModPath, "WorldEvents", "Data", "BonusQuest");

    static string ActiveWindowFile =>
        Path.Combine(DataDirectory, "ActiveBonusQuest.json");

    static string LogDirectory =>
        Path.Combine(DataDirectory, "QuestLog");

    static string ParticipationDirectory =>
        Path.Combine(DataDirectory, "Participation");

    internal static string LogFile =>
        Path.Combine(LogDirectory, "QuestCompletionLog.jsonl");

    internal static string ParticipationFile =>
        Path.Combine(ParticipationDirectory, "AccountParticipation.jsonl");

    internal static void EnsureDirectories()
    {
        Directory.CreateDirectory(DataDirectory);
        Directory.CreateDirectory(LogDirectory);
        Directory.CreateDirectory(ParticipationDirectory);
    }

    internal static ActiveBonusQuestData? LoadActiveWindow()
    {
        try
        {
            if (!File.Exists(ActiveWindowFile))
                return null;

            var json = File.ReadAllText(ActiveWindowFile);
            return JsonSerializer.Deserialize<ActiveBonusQuestData>(json, JsonOptions);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BonusQuest] LoadActiveWindow failed: {ex.Message}", ModManager.LogLevel.Warn);
            return null;
        }
    }

    internal static void SaveActiveWindow(ActiveBonusQuestData data)
    {
        try
        {
            EnsureDirectories();
            File.WriteAllText(ActiveWindowFile, JsonSerializer.Serialize(data, JsonOptions));
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BonusQuest] SaveActiveWindow failed: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    internal static void ClearActiveWindow()
    {
        try
        {
            if (File.Exists(ActiveWindowFile))
                File.Delete(ActiveWindowFile);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BonusQuest] ClearActiveWindow failed: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    internal static void AppendLogEntries(IEnumerable<QuestCompletionLogEntry> entries)
    {
        try
        {
            EnsureDirectories();
            var sb = new StringBuilder();
            foreach (var e in entries)
                sb.AppendLine($"{{\"t\":{e.TimestampUnix},\"g\":{e.PlayerGuid},\"q\":{JsonSerializer.Serialize(e.QuestName)}}}");

            if (sb.Length > 0)
                File.AppendAllText(LogFile, sb.ToString());
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BonusQuest] AppendLogEntries failed: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    internal static void AppendParticipationEntry(AccountEventParticipationEntry entry)
    {
        try
        {
            EnsureDirectories();
            var line = $"{{\"t\":{entry.TimestampUnix},\"aid\":{entry.AccountId},\"aname\":{JsonSerializer.Serialize(entry.AccountName)}," +
                       $"\"pg\":{entry.PlayerGuid},\"pname\":{JsonSerializer.Serialize(entry.PlayerName)}," +
                       $"\"event\":{JsonSerializer.Serialize(entry.EventType)},\"detail\":{JsonSerializer.Serialize(entry.EventDetail)}," +
                       $"\"window\":{JsonSerializer.Serialize(entry.WindowStartUtc)}}}" + Environment.NewLine;
            File.AppendAllText(ParticipationFile, line);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BonusQuest] AppendParticipationEntry failed: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }
}
