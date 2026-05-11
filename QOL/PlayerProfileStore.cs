using System.Collections.Concurrent;
using AceRaajMods.Shared;

namespace QOL;

internal static class PlayerProfileStore
{
    static readonly ConcurrentDictionary<uint, PlayerProfile> _cache = new();
    static readonly object _ioLock = new();
    static string? _filePath;
    static string? _legacyFilePath;

    internal static void Initialize(string filePath, string legacyFilePath)
    {
        _filePath = filePath;
        _legacyFilePath = legacyFilePath;
        Directory.CreateDirectory(Path.GetDirectoryName(_filePath)!);
        LoadFile();
    }

    static void LoadFile()
    {
        if (_filePath == null)
            return;

        var path = ResolveLoadPath();
        if (path == null || !File.Exists(path))
            return;

        try
        {
            var json = File.ReadAllText(path);
            var raw = JsonSerializer.Deserialize<Dictionary<string, PlayerProfile>>(json);
            if (raw == null) return;
            foreach (var (key, profile) in raw)
                if (uint.TryParse(key, out uint guid))
                    _cache[guid] = profile;

            if (path != _filePath)
            {
                SaveSnapshot();
                TryDeleteLegacyFile();
            }
        }
        catch (Exception ex)
        {
            ModManager.Log($"[QOL] PlayerProfiles load failed: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    internal static PlayerProfile GetOrCreate(uint guid) =>
        _cache.GetOrAdd(guid, _ => new PlayerProfile());

    internal static void Save(uint guid, PlayerProfile profile)
    {
        _cache[guid] = profile;
        if (_filePath == null) return;
        lock (_ioLock)
        {
            try
            {
                SaveSnapshot();
            }
            catch (Exception ex)
            {
                ModManager.Log($"[QOL] PlayerProfiles save failed: {ex.Message}", ModManager.LogLevel.Warn);
            }
        }
    }

    // Called from PlayerEnterWorld postfix to populate fast-access preference caches.
    public static void PostfixPlayerEnterWorld(Player __instance)
    {
        if (__instance == null) return;
        uint guid = __instance.Guid.Full;
        var profile = GetOrCreate(guid);
        KillXpMessage.PlayerPrefs[guid] = profile.KillXpMode;

        if (ChallengeModesPatchClassBridge.IsAptitudeEnabled(__instance))
            XpTracker.SetAptitudeForcedAutoSpend(__instance, true);
        else
            XpTracker.SpendAutoPrefs[guid] = profile.XpSpendAuto;
    }

    static string? ResolveLoadPath()
    {
        if (_filePath != null && File.Exists(_filePath))
            return _filePath;

        if (!string.IsNullOrEmpty(_legacyFilePath) && File.Exists(_legacyFilePath))
            return _legacyFilePath;

        return null;
    }

    static void SaveSnapshot()
    {
        if (_filePath == null)
            return;

        Directory.CreateDirectory(Path.GetDirectoryName(_filePath)!);
        var data = _cache.ToDictionary(kvp => kvp.Key.ToString(), kvp => kvp.Value);
        var json = JsonSerializer.Serialize(data, new JsonSerializerOptions { WriteIndented = true });
        File.WriteAllText(_filePath, json);
        TryDeleteLegacyFile();
    }

    static void TryDeleteLegacyFile()
    {
        if (string.IsNullOrEmpty(_legacyFilePath) || !File.Exists(_legacyFilePath))
            return;

        try
        {
            File.Delete(_legacyFilePath);
        }
        catch
        {
        }
    }
}
