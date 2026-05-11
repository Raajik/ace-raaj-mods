namespace WorldEvents;

internal static class ScavengerPersistence
{
    static readonly JsonSerializerOptions JsonOptions = new()
    {
        WriteIndented = true,
        ReadCommentHandling = JsonCommentHandling.Skip,
        PropertyNameCaseInsensitive = true,
    };

    internal static string DataDirectory =>
        WorldEventsDataPaths.InModData("ScavengerHunt");

    internal static string ActiveEventFile =>
        Path.Combine(DataDirectory, "ActiveEvent.json");

    internal static string LegacyActiveEventFile =>
        WorldEventsDataPaths.InLegacyData("ScavengerHunt", "ActiveEvent.json");

    internal static void EnsureDirectories()
    {
        Directory.CreateDirectory(DataDirectory);
    }

    internal static ActiveScavengerHuntData? Load()
    {
        try
        {
            var path = File.Exists(ActiveEventFile) ? ActiveEventFile : LegacyActiveEventFile;
            if (!File.Exists(path))
                return null;

            var json = File.ReadAllText(path);
            return JsonSerializer.Deserialize<ActiveScavengerHuntData>(json, JsonOptions);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[ScavengerHunt] Load failed: {ex.Message}", ModManager.LogLevel.Warn);
            return null;
        }
    }

    internal static void Save(ActiveScavengerHuntData data)
    {
        try
        {
            EnsureDirectories();
            var json = JsonSerializer.Serialize(data, JsonOptions);
            File.WriteAllText(ActiveEventFile, json);
            DeleteLegacyIfPresent();
        }
        catch (Exception ex)
        {
            ModManager.Log($"[ScavengerHunt] Save failed: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    internal static void Clear()
    {
        try
        {
            if (File.Exists(ActiveEventFile))
                File.Delete(ActiveEventFile);
            DeleteLegacyIfPresent();
        }
        catch (Exception ex)
        {
            ModManager.Log($"[ScavengerHunt] Clear failed: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    static void DeleteLegacyIfPresent()
    {
        if (!File.Exists(LegacyActiveEventFile))
            return;

        try
        {
            File.Delete(LegacyActiveEventFile);
        }
        catch
        {
        }
    }
}
