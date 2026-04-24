using WorldEvents.Invasion.Models;

namespace WorldEvents;

internal static class InvasionPersistence
{
    static readonly string DataDir = Path.Combine("Data", "Invasion");
    static readonly string ActiveFile = Path.Combine(DataDir, "ActiveInvasion.json");

    static readonly JsonSerializerOptions _json = new() { WriteIndented = true };

    internal static void EnsureDirectories()
        => Directory.CreateDirectory(DataDir);

    internal static ActiveInvasionData? LoadActiveInvasion()
    {
        try
        {
            if (!File.Exists(ActiveFile)) return null;
            var text = File.ReadAllText(ActiveFile);
            return JsonSerializer.Deserialize<ActiveInvasionData>(text, _json);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Invasion] Failed to load active invasion: {ex.Message}", ModManager.LogLevel.Warn);
            return null;
        }
    }

    internal static void SaveActiveInvasion(ActiveInvasionData data)
    {
        try { File.WriteAllText(ActiveFile, JsonSerializer.Serialize(data, _json)); }
        catch (Exception ex)
        {
            ModManager.Log($"[Invasion] Failed to save active invasion: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    internal static void ClearActiveInvasion()
    {
        try { if (File.Exists(ActiveFile)) File.Delete(ActiveFile); }
        catch { }
    }
}
