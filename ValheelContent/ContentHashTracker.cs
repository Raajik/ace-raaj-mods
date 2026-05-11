using System.Text.Json;

namespace ValheelContent;

internal static class ContentHashTracker
{
    private static readonly JsonSerializerOptions JsonOptions = new()
    {
        WriteIndented = true,
        PropertyNamingPolicy = JsonNamingPolicy.CamelCase
    };

    public static ImportState? LoadState(string statePath)
    {
        try
        {
            if (!File.Exists(statePath))
                return null;

            var json = File.ReadAllText(statePath);
            return JsonSerializer.Deserialize<ImportState>(json, JsonOptions);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Valheel] Failed to load import state from {statePath}: {ex.Message}. Will re-import everything.", ModManager.LogLevel.Warn);
            return null;
        }
    }

    public static void SaveState(string statePath, ImportState state)
    {
        try
        {
            var directory = Path.GetDirectoryName(statePath);
            if (!string.IsNullOrWhiteSpace(directory))
                Directory.CreateDirectory(directory);

            var json = JsonSerializer.Serialize(state, JsonOptions);
            File.WriteAllText(statePath, json);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Valheel] Failed to save import state to {statePath}: {ex.Message}", ModManager.LogLevel.Error);
        }
    }
}

public class ImportState
{
    public DateTime LastImportUtc { get; set; }
    public Dictionary<string, string> FileHashes { get; set; } = new(StringComparer.OrdinalIgnoreCase);
}
