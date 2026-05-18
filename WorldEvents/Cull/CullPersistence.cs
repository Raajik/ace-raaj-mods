using WorldEvents.Cull.Models;

namespace WorldEvents;

internal static class CullPersistence
{
    static string DataDir => WorldEventsDataPaths.InModData("Data", "Cull");
    static string ActiveCullPath => Path.Combine(DataDir, "ActiveCull.json");
    static string LegacyActiveCullPath => Path.Combine(ModManager.ModPath, "WorldEvents", "Data", "Cull", "ActiveCull.json");
    static string OldActiveCullPath => Path.Combine(ModManager.ModPath, "Data", "Cull", "ActiveCull.json");

    internal static void EnsureDirectories() => Directory.CreateDirectory(DataDir);

    internal static ActiveCullData? LoadActiveCull()
    {
        EnsureDirectories();
        try
        {
            if (File.Exists(ActiveCullPath))
                return JsonSerializer.Deserialize<ActiveCullData>(File.ReadAllText(ActiveCullPath));

            // Migrate from post-deploy-nuke legacy (under Mods/)
            if (File.Exists(LegacyActiveCullPath))
            {
                var data = JsonSerializer.Deserialize<ActiveCullData>(File.ReadAllText(LegacyActiveCullPath));
                if (data != null)
                    SaveActiveCull(data);
                try { File.Delete(LegacyActiveCullPath); } catch { }
                return data;
            }

            // Migrate from older server-root Data/ path
            if (File.Exists(OldActiveCullPath))
            {
                var data = JsonSerializer.Deserialize<ActiveCullData>(File.ReadAllText(OldActiveCullPath));
                if (data != null)
                    SaveActiveCull(data);
                try { File.Delete(OldActiveCullPath); } catch { }
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
}
