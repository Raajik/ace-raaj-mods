namespace WorldEvents;

internal static class HuntPersistence
{
    static readonly JsonSerializerOptions JsonOptions = new()
    {
        WriteIndented = true,
        ReadCommentHandling = JsonCommentHandling.Skip,
        PropertyNameCaseInsensitive = true,
    };

    internal static string DataDirectory =>
        WorldEventsDataPaths.InModData("Hunt");

    internal static string LegacyDataDirectory =>
        WorldEventsDataPaths.InLegacyData();

    internal static string GlobalFile =>
        Path.Combine(DataDirectory, "GlobalSpeciesKills.json");

    internal static string LegacyGlobalFile =>
        Path.Combine(LegacyDataDirectory, "GlobalSpeciesKills.json");

    internal static string PlayersDirectory =>
        Path.Combine(DataDirectory, "Players");

    internal static string LegacyPlayersDirectory =>
        Path.Combine(LegacyDataDirectory, "Players");

    internal static string ActiveHuntFile =>
        Path.Combine(DataDirectory, "ActiveHunt.json");

    internal static string LegacyActiveHuntFile =>
        Path.Combine(LegacyDataDirectory, "ActiveHunt.json");

    internal static string PlayerFile(uint guidFull) =>
        Path.Combine(PlayersDirectory, $"{guidFull:X}.json");

    internal static string LegacyPlayerFile(uint guidFull) =>
        Path.Combine(LegacyPlayersDirectory, $"{guidFull:X}.json");

    internal static void EnsureDirectories()
    {
        Directory.CreateDirectory(DataDirectory);
        Directory.CreateDirectory(PlayersDirectory);
    }

    internal static GlobalSpeciesKillsData LoadGlobal()
    {
        try
        {
            var path = File.Exists(GlobalFile) ? GlobalFile : LegacyGlobalFile;
            if (!File.Exists(path))
                return new GlobalSpeciesKillsData();

            var json = File.ReadAllText(path);
            return JsonSerializer.Deserialize<GlobalSpeciesKillsData>(json, JsonOptions) ?? new GlobalSpeciesKillsData();
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Hunt] LoadGlobal failed: {ex.Message}", ModManager.LogLevel.Error);
            return new GlobalSpeciesKillsData();
        }
    }

    internal static void SaveGlobal(GlobalSpeciesKillsData data)
    {
        try
        {
            EnsureDirectories();
            var json = JsonSerializer.Serialize(data, JsonOptions);
            File.WriteAllText(GlobalFile, json);
            DeleteIfExists(LegacyGlobalFile);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Hunt] SaveGlobal failed: {ex.Message}", ModManager.LogLevel.Error);
        }
    }

    internal static PlayerHuntData LoadPlayer(uint guidFull)
    {
        try
        {
            var path = ResolvePlayerReadPath(guidFull);
            if (!File.Exists(path))
                return new PlayerHuntData();

            var json = File.ReadAllText(path);
            return JsonSerializer.Deserialize<PlayerHuntData>(json, JsonOptions) ?? new PlayerHuntData();
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Hunt] LoadPlayer {guidFull:X} failed: {ex.Message}", ModManager.LogLevel.Warn);
            return new PlayerHuntData();
        }
    }

    internal static void SavePlayer(uint guidFull, PlayerHuntData data)
    {
        try
        {
            EnsureDirectories();
            var path = PlayerFile(guidFull);
            var json = JsonSerializer.Serialize(data, JsonOptions);
            File.WriteAllText(path, json);
            DeleteIfExists(LegacyPlayerFile(guidFull));
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Hunt] SavePlayer {guidFull:X} failed: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    internal static ActiveHuntData? LoadActiveHunt()
    {
        try
        {
            var path = File.Exists(ActiveHuntFile) ? ActiveHuntFile : LegacyActiveHuntFile;
            if (!File.Exists(path))
                return null;

            var json = File.ReadAllText(path);
            return JsonSerializer.Deserialize<ActiveHuntData>(json, JsonOptions);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Hunt] LoadActiveHunt failed: {ex.Message}", ModManager.LogLevel.Warn);
            return null;
        }
    }

    internal static void SaveActiveHunt(ActiveHuntData data)
    {
        try
        {
            EnsureDirectories();
            var json = JsonSerializer.Serialize(data, JsonOptions);
            File.WriteAllText(ActiveHuntFile, json);
            DeleteIfExists(LegacyActiveHuntFile);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Hunt] SaveActiveHunt failed: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    internal static void ClearActiveHunt()
    {
        try
        {
            if (File.Exists(ActiveHuntFile))
                File.Delete(ActiveHuntFile);
            DeleteIfExists(LegacyActiveHuntFile);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Hunt] ClearActiveHunt failed: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    static string ResolvePlayerReadPath(uint guidFull)
    {
        var newPath = PlayerFile(guidFull);
        if (File.Exists(newPath))
            return newPath;

        var legacyPath = LegacyPlayerFile(guidFull);
        return File.Exists(legacyPath) ? legacyPath : newPath;
    }

    static void DeleteIfExists(string path)
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
