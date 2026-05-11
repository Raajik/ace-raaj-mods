using WorldEvents.Cull.Models;

namespace WorldEvents;

internal static class CullPersistence
{
    static string DataDir => WorldEventsDataPaths.InModData("Cull");
    static string ActiveCullPath => Path.Combine(DataDir, "ActiveCull.json");
    static string LegacyWorldEventsActiveCullPath => WorldEventsDataPaths.InLegacyData("Cull", "ActiveCull.json");
    static string LegacyGlobalActiveCullPath => Path.Combine(ModManager.ModPath, "Data", "Cull", "ActiveCull.json");

    internal static void EnsureDirectories() => Directory.CreateDirectory(DataDir);

    internal static ActiveCullData? LoadActiveCull()
    {
        EnsureDirectories();
        try
        {
            if (File.Exists(ActiveCullPath))
                return JsonSerializer.Deserialize<ActiveCullData>(File.ReadAllText(ActiveCullPath));

            var legacyPath = ResolveLegacyPath();
            if (legacyPath != null)
            {
                var data = JsonSerializer.Deserialize<ActiveCullData>(File.ReadAllText(legacyPath));
                if (data != null)
                    SaveActiveCull(data);
                try
                {
                    File.Delete(legacyPath);
                }
                catch
                {
                }

                return data;
            }

            return null;
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Cull] LoadActiveCull failed: {ex.Message}", ModManager.LogLevel.Warn);
            return null;
        }
    }

    internal static void SaveActiveCull(ActiveCullData data)
    {
        EnsureDirectories();
        try
        {
            File.WriteAllText(ActiveCullPath, JsonSerializer.Serialize(data,
                new JsonSerializerOptions { WriteIndented = true }));
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Cull] SaveActiveCull failed: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    internal static void ClearActiveCull()
    {
        try { if (File.Exists(ActiveCullPath)) File.Delete(ActiveCullPath); }
        catch { }
    }

    static string? ResolveLegacyPath()
    {
        if (File.Exists(LegacyWorldEventsActiveCullPath))
            return LegacyWorldEventsActiveCullPath;

        if (File.Exists(LegacyGlobalActiveCullPath))
            return LegacyGlobalActiveCullPath;

        return null;
    }
}
