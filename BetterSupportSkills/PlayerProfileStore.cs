using System.Collections.Concurrent;
using System.Text.Json;
using ACE.Server.WorldObjects;

namespace BetterSupportSkills;

internal static class PlayerProfileStore
{
    static readonly ConcurrentDictionary<uint, PlayerProfile> _cache = new();
    static readonly object _ioLock = new();
    static string? _filePath;

    internal static void Initialize(string modDirectory)
    {
        _filePath = Path.Combine(modDirectory, "PlayerProfiles.json");
        LoadFile();
    }

    static void LoadFile()
    {
        if (_filePath == null || !File.Exists(_filePath)) return;
        try
        {
            var json = File.ReadAllText(_filePath);
            var raw = JsonSerializer.Deserialize<Dictionary<string, PlayerProfile>>(json);
            if (raw == null) return;
            foreach (var (key, profile) in raw)
                if (uint.TryParse(key, out uint guid))
                    _cache[guid] = profile;
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
                var data = _cache.ToDictionary(kvp => kvp.Key.ToString(), kvp => kvp.Value);
                var json = JsonSerializer.Serialize(data, new JsonSerializerOptions { WriteIndented = true });
                File.WriteAllText(_filePath, json);
            }
            catch (Exception ex)
            {
                ModManager.Log($"[BSS] PlayerProfiles save failed: {ex.Message}", ModManager.LogLevel.Warn);
            }
        }
    }

    // Postfix on Player.PlayerEnterWorld — populates fast-access CleavePlayerState from saved profile.
    public static void PostfixPlayerEnterWorld(Player __instance)
    {
        if (__instance == null) return;
        uint guid = __instance.Guid.Full;
        Skills.CleavePlayerState.ApplyProfile(guid, GetOrCreate(guid));
    }
}
