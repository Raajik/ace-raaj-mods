using WorldEvents.Invasion.Models;

namespace WorldEvents;

internal static class InvasionPersistence
{
    static readonly string DataDir = WorldEventsDataPaths.InModData("Invasion");
    static readonly string ActiveFile = Path.Combine(DataDir, "ActiveInvasion.json");
    static readonly string LegacyModFile = WorldEventsDataPaths.InLegacyData("Invasion", "ActiveInvasion.json");
    static readonly string LegacyServerDataFile = WorldEventsDataPaths.InLegacyServerData("Invasion", "ActiveInvasion.json");

    static readonly JsonSerializerOptions _json = new() { WriteIndented = true };

    internal static void EnsureDirectories()
        => Directory.CreateDirectory(DataDir);

    internal static ActiveInvasionData? LoadActiveInvasion()
    {
        try
        {
            if (File.Exists(ActiveFile))
            {
                var text = File.ReadAllText(ActiveFile);
                return JsonSerializer.Deserialize<ActiveInvasionData>(text, _json);
            }

            var legacyPath = File.Exists(LegacyModFile) ? LegacyModFile : LegacyServerDataFile;
            if (File.Exists(legacyPath))
            {
                var text = File.ReadAllText(legacyPath);
                var data = JsonSerializer.Deserialize<ActiveInvasionData>(text, _json);
                if (data != null)
                    SaveActiveInvasion(data);
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
            ModManager.Log($"[Invasion] Failed to load active invasion: {ex.Message}", ModManager.LogLevel.Warn);
            return null;
        }
    }

    internal static void SaveActiveInvasion(ActiveInvasionData data)
    {
        try
        {
            EnsureDirectories();
            File.WriteAllText(ActiveFile, JsonSerializer.Serialize(data, _json));
        }
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
