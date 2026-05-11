using System.Text.Json;

namespace WorldEvents;

internal sealed class PendingClaimsAutoPreferenceFile
{
    public bool PeriodicAutoClaim { get; set; }
}

// Per-character disk preference for 2h periodic auto-claim (/claim auto toggles). Survives logouts (JSON next to PendingClaims).
internal static class PendingClaimsAutoPreferenceStore
{
    internal static readonly string BasePath = WorldEventsDataPaths.InModData("PendingClaimsAuto");
    internal static readonly string LegacyBasePath = WorldEventsDataPaths.InLegacyModRoot("PendingClaimsAuto");

    internal static bool IsPeriodicAutoEnabled(uint characterGuidFull)
    {
        var path = PathFor(characterGuidFull);
        var legacyPath = LegacyPathFor(characterGuidFull);

        if (!File.Exists(path) && !File.Exists(legacyPath))
            return false;

        try
        {
            if (!File.Exists(path) && File.Exists(legacyPath))
            {
                var legacyJson = File.ReadAllText(legacyPath);
                var legacy = JsonSerializer.Deserialize<PendingClaimsAutoPreferenceFile>(legacyJson);
                if (legacy?.PeriodicAutoClaim == true)
                {
                    SetPeriodicAuto(characterGuidFull, true);
                    return true;
                }

                return false;
            }

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
        var legacyPath = LegacyPathFor(characterGuidFull);
        if (!enabled)
        {
            if (File.Exists(path))
                File.Delete(path);
            if (File.Exists(legacyPath))
                File.Delete(legacyPath);
            return;
        }

        var opts = new JsonSerializerOptions { WriteIndented = true };
        File.WriteAllText(path, JsonSerializer.Serialize(new PendingClaimsAutoPreferenceFile { PeriodicAutoClaim = true }, opts));

        if (File.Exists(legacyPath))
        {
            try
            {
                File.Delete(legacyPath);
            }
            catch
            {
            }
        }
    }

    internal static string PathFor(uint characterGuidFull) =>
        Path.Combine(BasePath, $"{characterGuidFull:X8}.json");

    static string LegacyPathFor(uint characterGuidFull) =>
        Path.Combine(LegacyBasePath, $"{characterGuidFull:X8}.json");
}
