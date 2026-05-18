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
        WorldEventsDataPaths.InModData("Data", "ScavengerHunt");

    internal static string ActiveEventFile =>
        Path.Combine(DataDirectory, "ActiveEvent.json");

    internal static void EnsureDirectories()
    {
        Directory.CreateDirectory(DataDirectory);
    }

    internal static ActiveScavengerHuntData? Load()
    {
        try
        {
            if (!File.Exists(ActiveEventFile))
                return null;

            var json = File.ReadAllText(ActiveEventFile);
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
        }
        catch (Exception ex)
        {
            ModManager.Log($"[ScavengerHunt] Clear failed: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }
}
