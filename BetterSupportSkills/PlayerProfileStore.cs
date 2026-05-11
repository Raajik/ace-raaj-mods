using System.Collections.Concurrent;
using System.Text.Json;
using ACE.Server.WorldObjects;

namespace BetterSupportSkills;

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
        LoadFile();
    }

    static void LoadFile()
    {
        if (_filePath == null) return;
        try
        {
            var loadPath = ResolveLoadPath();
            if (loadPath == null) return;

            var json = File.ReadAllText(loadPath);
            var raw = JsonSerializer.Deserialize<Dictionary<string, PlayerProfile>>(json);
            if (raw == null) return;
            foreach (var (key, profile) in raw)
                if (uint.TryParse(key, out uint guid))
                    _cache[guid] = profile;

            if (!string.Equals(loadPath, _filePath, StringComparison.OrdinalIgnoreCase))
                SaveFile();
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BSS] PlayerProfiles load failed: {ex.Message}", ModManager.LogLevel.Warn);
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
                SaveFile();
            }
            catch (Exception ex)
            {
                ModManager.Log($"[BSS] PlayerProfiles save failed: {ex.Message}", ModManager.LogLevel.Warn);
            }
        }
    }

    static string? ResolveLoadPath()
    {
        if (_filePath != null && File.Exists(_filePath))
            return _filePath;

        if (_legacyFilePath != null && File.Exists(_legacyFilePath))
            return _legacyFilePath;

        return null;
    }

    static void SaveFile()
    {
        if (_filePath == null) return;

        var directory = Path.GetDirectoryName(_filePath);
        if (!string.IsNullOrWhiteSpace(directory))
            Directory.CreateDirectory(directory);

        var data = _cache.ToDictionary(kvp => kvp.Key.ToString(), kvp => kvp.Value);
        var json = JsonSerializer.Serialize(data, new JsonSerializerOptions { WriteIndented = true });
        File.WriteAllText(_filePath, json);

        if (_legacyFilePath != null && File.Exists(_legacyFilePath))
            File.Delete(_legacyFilePath);
    }

    // Postfix on Player.PlayerEnterWorld — populates fast-access CleavePlayerState from saved profile.
    public static void PostfixPlayerEnterWorld(Player __instance)
    {
        if (__instance == null) return;
        uint guid = __instance.Guid.Full;
        Skills.CleavePlayerState.ApplyProfile(guid, GetOrCreate(guid));
    }
}
