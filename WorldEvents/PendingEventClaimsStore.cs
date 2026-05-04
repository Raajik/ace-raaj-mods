using System.Collections.Concurrent;
using System.Text.Json;

namespace WorldEvents;

// Queued world-event loot for offline (or skipped) players; claimed via /claim.
public sealed class PendingEventLootEntry
{
    public string Id { get; set; } = Guid.NewGuid().ToString("N");
    public DateTime CreatedUtc { get; set; } = DateTime.UtcNow;
    public string Source { get; set; } = "";
    public string Label { get; set; } = "";
    public uint Wcid { get; set; }
    public int StackSize { get; set; } = 1;
    public bool Ironman { get; set; }
}

internal sealed class PendingEventClaimsFile
{
    public List<PendingEventLootEntry> Pending { get; set; } = new();
}

internal static class PendingEventClaimsStore
{
    internal static readonly string BasePath = Path.Combine(ModManager.ModPath, "WorldEvents", "PendingClaims");
    private static readonly ConcurrentDictionary<string, object> FileLocks = new(StringComparer.Ordinal);

    internal static void Enqueue(uint characterGuidFull, PendingEventLootEntry entry)
    {
        var key = characterGuidFull.ToString("X8");
        var lockObj = FileLocks.GetOrAdd(key, _ => new object());
        lock (lockObj)
        {
            var path = PathFor(key);
            Directory.CreateDirectory(BasePath);
            var file = LoadFile(path);
            file.Pending.Add(entry);
            SaveFile(path, file);
        }

        ModManager.Log($"[WorldEvents] Queued pending loot {entry.Source} ({entry.Label}) WCID {entry.Wcid} for character {key}.", ModManager.LogLevel.Info);
    }

    internal static int ClaimAllForPlayer(Player player, out int failedCreates)
    {
        failedCreates = 0;
        if (player?.Guid == null)
            return 0;

        var key = player.Guid.Full.ToString("X8");
        var lockObj = FileLocks.GetOrAdd(key, _ => new object());
        List<PendingEventLootEntry> toGrant;
        lock (lockObj)
        {
            var path = PathFor(key);
            if (!File.Exists(path))
                return 0;

            var file = LoadFile(path);
            if (file.Pending.Count == 0)
                return 0;

            toGrant = file.Pending.ToList();
            file.Pending = new List<PendingEventLootEntry>();
            SaveFile(path, file);
        }

        var granted = 0;
        var requeue = new List<PendingEventLootEntry>();
        foreach (var entry in toGrant)
        {
            if (!EventLootDelivery.TryCreateAndDeliver(player, entry))
            {
                failedCreates++;
                requeue.Add(entry);
            }
            else
            {
                granted++;
            }
        }

        if (requeue.Count > 0)
        {
            lock (lockObj)
            {
                var path = PathFor(key);
                Directory.CreateDirectory(BasePath);
                var file = LoadFile(path);
                file.Pending.AddRange(requeue);
                SaveFile(path, file);
            }
        }

        return granted;
    }

    internal static int PeekCount(uint characterGuidFull)
    {
        var key = characterGuidFull.ToString("X8");
        var path = PathFor(key);
        if (!File.Exists(path))
            return 0;
        try
        {
            return LoadFile(path).Pending.Count;
        }
        catch
        {
            return 0;
        }
    }

    static string PathFor(string hexKey) => Path.Combine(BasePath, $"{hexKey}.json");

    static PendingEventClaimsFile LoadFile(string path)
    {
        if (!File.Exists(path))
            return new PendingEventClaimsFile();
        try
        {
            var json = File.ReadAllText(path);
            var f = JsonSerializer.Deserialize<PendingEventClaimsFile>(json);
            return f ?? new PendingEventClaimsFile();
        }
        catch
        {
            return new PendingEventClaimsFile();
        }
    }

    static void SaveFile(string path, PendingEventClaimsFile file)
    {
        var opts = new JsonSerializerOptions { WriteIndented = true };
        File.WriteAllText(path, JsonSerializer.Serialize(file, opts));
    }
}
