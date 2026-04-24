using WorldEvents.Cull.Models;

namespace WorldEvents;

internal static class CullPersistence
{
    static string DataDir => Path.Combine(ModManager.ModPath, "Data", "Cull");
    static string ActiveCullPath => Path.Combine(DataDir, "ActiveCull.json");

    internal static void EnsureDirectories() => Directory.CreateDirectory(DataDir);

    internal static ActiveCullData? LoadActiveCull()
    {
        EnsureDirectories();
        try
        {
            if (!File.Exists(ActiveCullPath)) return null;
            return JsonSerializer.Deserialize<ActiveCullData>(File.ReadAllText(ActiveCullPath));
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
