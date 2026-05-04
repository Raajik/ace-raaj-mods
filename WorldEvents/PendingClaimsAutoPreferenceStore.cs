using System.Text.Json;

namespace WorldEvents;

internal sealed class PendingClaimsAutoPreferenceFile
{
    public bool PeriodicAutoClaim { get; set; }
}

// Per-character disk preference for 2h periodic auto-claim (/claim auto on). Survives logouts (JSON next to PendingClaims).
internal static class PendingClaimsAutoPreferenceStore
{
    internal static readonly string BasePath = Path.Combine(ModManager.ModPath, "WorldEvents", "PendingClaimsAuto");

    internal static bool IsPeriodicAutoEnabled(uint characterGuidFull)
    {
        var path = PathFor(characterGuidFull);
        if (!File.Exists(path))
            return false;

        try
        {
            var json = File.ReadAllText(path);
            var f = JsonSerializer.Deserialize<PendingClaimsAutoPreferenceFile>(json);
            return f?.PeriodicAutoClaim == true;
        }
        catch
        {
            return false;
        }
    }

    internal static void SetPeriodicAuto(uint characterGuidFull, bool enabled)
    {
        Directory.CreateDirectory(BasePath);
        var path = PathFor(characterGuidFull);
        if (!enabled)
        {
            if (File.Exists(path))
                File.Delete(path);
            return;
        }

        var opts = new JsonSerializerOptions { WriteIndented = true };
        File.WriteAllText(path, JsonSerializer.Serialize(new PendingClaimsAutoPreferenceFile { PeriodicAutoClaim = true }, opts));
    }

    internal static string PathFor(uint characterGuidFull) =>
        Path.Combine(BasePath, $"{characterGuidFull:X8}.json");
}
