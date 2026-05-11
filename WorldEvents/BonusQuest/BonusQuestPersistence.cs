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
        WorldEventsDataPaths.InModData("BonusQuest");

    static string ActiveWindowFile =>
        Path.Combine(DataDirectory, "ActiveBonusQuest.json");

    static string LegacyDataDirectory =>
        WorldEventsDataPaths.InLegacyData("BonusQuest");

    static string LegacyActiveWindowFile =>
        Path.Combine(LegacyDataDirectory, "ActiveBonusQuest.json");

    static string LogDirectory =>
        Path.Combine(DataDirectory, "QuestLog");

    static string LegacyLogDirectory =>
        Path.Combine(LegacyDataDirectory, "QuestLog");

    static string ParticipationDirectory =>
        Path.Combine(DataDirectory, "Participation");

    static string LegacyParticipationDirectory =>
        Path.Combine(LegacyDataDirectory, "Participation");

    internal static string LogFile =>
        Path.Combine(LogDirectory, "QuestCompletionLog.jsonl");

    internal static string LegacyLogFile =>
        Path.Combine(LegacyLogDirectory, "QuestCompletionLog.jsonl");

    internal static string ParticipationFile =>
        Path.Combine(ParticipationDirectory, "AccountParticipation.jsonl");

    internal static string LegacyParticipationFile =>
        Path.Combine(LegacyParticipationDirectory, "AccountParticipation.jsonl");

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
            var path = File.Exists(ActiveWindowFile) ? ActiveWindowFile : LegacyActiveWindowFile;
            if (!File.Exists(path))
                return null;

            var json = File.ReadAllText(path);
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
            DeleteLegacyIfPresent(LegacyActiveWindowFile);
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
            DeleteLegacyIfPresent(LegacyActiveWindowFile);
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
            MergeLegacyAppendOnlyFile(LegacyLogFile, LogFile);
            var sb = new StringBuilder();
            foreach (var e in entries)
                sb.AppendLine($"{{\"t\":{e.TimestampUnix},\"g\":{e.PlayerGuid},\"q\":{JsonSerializer.Serialize(e.QuestName)}}}");

            if (sb.Length > 0)
            {
                File.AppendAllText(LogFile, sb.ToString());
                DeleteLegacyIfPresent(LegacyLogFile);
            }
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
            MergeLegacyAppendOnlyFile(LegacyParticipationFile, ParticipationFile);
            var line = $"{{\"t\":{entry.TimestampUnix},\"aid\":{entry.AccountId},\"aname\":{JsonSerializer.Serialize(entry.AccountName)}," +
                       $"\"pg\":{entry.PlayerGuid},\"pname\":{JsonSerializer.Serialize(entry.PlayerName)}," +
                       $"\"event\":{JsonSerializer.Serialize(entry.EventType)},\"detail\":{JsonSerializer.Serialize(entry.EventDetail)}," +
                       $"\"window\":{JsonSerializer.Serialize(entry.WindowStartUtc)}}}" + Environment.NewLine;
            File.AppendAllText(ParticipationFile, line);
            DeleteLegacyIfPresent(LegacyParticipationFile);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BonusQuest] AppendParticipationEntry failed: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    static void MergeLegacyAppendOnlyFile(string legacyPath, string newPath)
    {
        if (!File.Exists(legacyPath))
            return;

        try
        {
            var legacyContent = File.ReadAllText(legacyPath);
            if (string.IsNullOrEmpty(legacyContent))
            {
                File.Delete(legacyPath);
                return;
            }

            if (!File.Exists(newPath))
            {
                File.WriteAllText(newPath, legacyContent);
            }
            else
            {
                var currentContent = File.ReadAllText(newPath);
                File.WriteAllText(newPath, legacyContent + currentContent);
            }

            File.Delete(legacyPath);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BonusQuest] MergeLegacyAppendOnlyFile failed: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    static void DeleteLegacyIfPresent(string path)
    {
        if (!File.Exists(path))
            return;

        try
        {
            File.Delete(path);
        }
        catch
        {
        }
    }
}
