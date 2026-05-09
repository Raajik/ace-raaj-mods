using ACE.Database;
using ACE.Database.Models.Shard;
using ACE.Server.Network;
using ACE.Server.WorldObjects;
using Microsoft.EntityFrameworkCore;
using System.Timers;

using ACE.Server.Mods;

namespace LeyLineLedger;

internal static class LootTracker
{
    private static System.Timers.Timer? _reportTimer;

    public static Settings Settings => PatchClass.Settings;

    public static void TryApply()
    {
        if (!Settings.LootTracker.Enabled)
            return;

        ModManager.Log($"[LeyLineLedger] LootTracker enabled, report interval: {Settings.LootTracker.ScanIntervalMinutes}min", ModManager.LogLevel.Info);

        _reportTimer?.Stop();
        _reportTimer?.Dispose();
        _reportTimer = new System.Timers.Timer(Settings.LootTracker.ScanIntervalMinutes * 60 * 1000);
        _reportTimer.Elapsed += (s, e) => RunLootReport();
        _reportTimer.Start();

        TryApplyPickupPatch();
    }

    public static void Stop()
    {
        _reportTimer?.Stop();
        _reportTimer?.Dispose();
        _reportTimer = null;
    }

    static void TryApplyPickupPatch()
    {
        try
        {
            var onPickup = AccessTools.Method(typeof(Player), "HandleActionAutoPickedUp");
            if (onPickup != null)
            {
                var postfix = AccessTools.Method(typeof(LootTracker), nameof(PostfixHandleActionAutoPickedUp));
                PatchClass.Harmony?.Patch(onPickup, null, new HarmonyMethod(postfix));
                ModManager.Log("[LeyLineLedger] LootTracker: hooked Player.HandleActionAutoPickedUp", ModManager.LogLevel.Info);
            }
        }
        catch (Exception ex)
        {
            ModManager.Log($"[LeyLineLedger] LootTracker: failed to hook pickup: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    public static void PostfixHandleActionAutoPickedUp(Player __instance, uint wcid)
    {
        if (__instance?.Session == null)
            return;

        if (!Settings.LootTracker.Enabled)
            return;

        if (!Settings.LootTracker.IncludeAdminBalances && __instance.IsAdmin)
            return;

        if (Settings.LootTracker.IgnoreWcids.Contains(wcid))
            return;

        try
        {
            var propId = GetLootCountProperty(wcid);
            if (propId == 0)
                return;

            var current = __instance.GetProperty((PropertyInt)propId) ?? 0;
            __instance.SetProperty((PropertyInt)propId, current + 1);
        }
        catch { }
    }

    static int GetLootCountProperty(uint wcid)
    {
        var start = Settings.LootTracker.LootCountPropertyStart;
        var bankedItem = Settings.Items.FirstOrDefault(i => i.Id == wcid);
        if (bankedItem != null)
        {
            return start + Array.IndexOf(Settings.Items.ToArray(), bankedItem);
        }

        var currency = Settings.Currencies.FirstOrDefault(c => c.Id == wcid);
        if (currency != null)
        {
            var currencyIndex = Settings.Currencies.IndexOf(currency);
            return start + Settings.Items.Count + currencyIndex;
        }

        return 0;
    }

    public static void RunLootReport()
    {
        if (!Settings.LootTracker.Enabled)
            return;

        try
        {
            var lootCounts = AggregateLootCounts();
            var hotItems = lootCounts
                .Where(kv => kv.Value >= Settings.LootTracker.MinLootCountForReport)
                .OrderByDescending(kv => kv.Value)
                .Take(Settings.LootTracker.ReportTopN)
                .ToList();

            LogLootReport(lootCounts, hotItems);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[LeyLineLedger] LootTracker report failed: {ex}", ModManager.LogLevel.Error);
        }
    }

    static Dictionary<uint, long> AggregateLootCounts()
    {
        var counts = new Dictionary<uint, long>();
        var propStart = Settings.LootTracker.LootCountPropertyStart;

        try
        {
            using var context = new ShardDbContext();

            var minProp = propStart;
            var maxProp = propStart + Settings.Items.Count + Settings.Currencies.Count + 100;

            var rows = context.BiotaPropertiesInt
                .Where(p => p.Type >= minProp && p.Type < maxProp)
                .ToList();

            var charIds = rows.Select(r => r.ObjectId).Distinct().ToList();

            var chars = context.Character
                .Where(c => charIds.Contains(c.Id))
                .Select(c => new { c.Id })
                .ToDictionary(c => c.Id, c => c.Id);

            var excludedCharIds = new HashSet<uint>();
            if (!Settings.LootTracker.IncludeAdminBalances)
            {
                foreach (var charId in chars.Keys)
                {
                    try
                    {
                        var isAdmin = context.BiotaPropertiesBool
                            .FirstOrDefault(p => p.ObjectId == charId && p.Type == (ushort)PropertyBool.IsAdmin);
                        if (isAdmin != null && isAdmin.Value)
                            excludedCharIds.Add(charId);
                    }
                    catch { }
                }
            }

            foreach (var row in rows)
            {
                if (excludedCharIds.Contains(row.ObjectId))
                    continue;

                var wcid = ResolvePropertyToWcid((int)row.Type);
                if (wcid == 0)
                    continue;

                if (Settings.LootTracker.IgnoreWcids.Contains(wcid))
                    continue;

                if (!counts.ContainsKey(wcid))
                    counts[wcid] = 0;
                counts[wcid] += row.Value;
            }
        }
        catch (Exception ex)
        {
            ModManager.Log($"[LeyLineLedger] LootTracker DB scan error: {ex}", ModManager.LogLevel.Error);
        }

        return counts;
    }

    static uint ResolvePropertyToWcid(int propId)
    {
        var propStart = Settings.LootTracker.LootCountPropertyStart;
        var offset = propId - propStart;

        if (offset < Settings.Items.Count)
        {
            var item = Settings.Items[offset];
            return item.Id;
        }

        offset -= Settings.Items.Count;
        if (offset < Settings.Currencies.Count)
        {
            var currency = Settings.Currencies[offset];
            return currency.Id;
        }

        return 0;
    }

    static void LogLootReport(Dictionary<uint, long> counts, List<KeyValuePair<uint, long>> hotItems)
    {
        ModManager.Log($"[LeyLineLedger] === Loot Report {DateTime.Now:yyyy-MM-dd HH:mm} ===", ModManager.LogLevel.Info);

        if (hotItems.Count == 0)
        {
            ModManager.Log("  No items above loot threshold yet.", ModManager.LogLevel.Info);
            return;
        }

        foreach (var (wcid, count) in hotItems)
        {
            var name = GetItemName(wcid);
            var inBank = Settings.Items.Any(i => i.Id == wcid);
            var suffix = inBank ? "(banked)" : "(suggest: add to bank)";
            ModManager.Log($"  {count:N0}x {name} [{wcid}] {suffix}", ModManager.LogLevel.Info);
        }

        if (Settings.LootTracker.AutoAddToBankThreshold > 0)
        {
            var candidates = counts
                .Where(kv => !Settings.Items.Any(i => i.Id == kv.Key) &&
                             !Settings.LootTracker.IgnoreWcids.Contains(kv.Key) &&
                             kv.Value >= Settings.LootTracker.AutoAddToBankThreshold)
                .OrderByDescending(kv => kv.Value);

            if (candidates.Any())
            {
                ModManager.Log("  --- Bank Add Suggestions ---", ModManager.LogLevel.Info);
                foreach (var (wcid, count) in candidates.Take(10))
                {
                    var name = GetItemName(wcid);
                    ModManager.Log($"  CONSIDER adding {name} [{wcid}] to bank (looted {count:N0}x server-wide)", ModManager.LogLevel.Info);
                }
            }
        }
    }

    static string GetItemName(uint wcid)
    {
        var banked = Settings.Items.FirstOrDefault(i => i.Id == wcid);
        if (banked != null)
            return banked.Name;

        var currency = Settings.Currencies.FirstOrDefault(c => c.Id == wcid);
        if (currency != null)
            return currency.Name;

        try
        {
            var weenie = DatabaseManager.World.GetCachedWeenie(wcid);
            return weenie?.GetName() ?? $"WCID {wcid}";
        }
        catch
        {
            return $"WCID {wcid}";
        }
    }

    [CommandHandler("economy loot", AccessLevel.Admin, CommandHandlerFlag.RequiresWorld)]
    [CommandHandler("economy lootreport", AccessLevel.Admin, CommandHandlerFlag.RequiresWorld)]
    public static void HandleLootReport(Session session, params string[] parameters)
    {
        if (!Settings.LootTracker.Enabled)
        {
            session.Player.SendMessage("LootTracker is disabled.");
            return;
        }

        var force = parameters.Length > 0 && parameters[0].Equals("force", StringComparison.OrdinalIgnoreCase);

        if (force)
        {
            RunLootReport();
            session.Player.SendMessage("Force loot scan complete. Check server logs.");
        }
        else
        {
            ShowLootReport(session);
        }
    }

    public static List<(uint Wcid, string Name, int Count)> GetHotItems(int lookbackDays, int minCount)
    {
        var results = new List<(uint, string, int)>();

        try
        {
            var counts = AggregateLootCounts();
            // Note: lookbackDays is not enforced because current storage (player properties)
            // does not retain timestamps. Time-based filtering requires a future refactor
            // to a dated log format (e.g., JSONL with timestamps).
            var filtered = counts
                .Where(kv => kv.Value >= minCount)
                .OrderByDescending(kv => kv.Value)
                .ToList();

            foreach (var (wcid, count) in filtered)
            {
                var name = GetItemName(wcid);
                results.Add((wcid, name, (int)count));
            }
        }
        catch (Exception ex)
        {
            ModManager.Log($"[LeyLineLedger] LootTracker.GetHotItems failed: {ex}", ModManager.LogLevel.Error);
        }

        return results;
    }

    internal static void ShowLootReport(Session session)
    {
        try
        {
            var counts = AggregateLootCounts();
            var hotItems = counts
                .Where(kv => kv.Value >= Settings.LootTracker.MinLootCountForReport)
                .OrderByDescending(kv => kv.Value)
                .Take(Settings.LootTracker.ReportTopN)
                .ToList();

            session.Player.SendMessage($"=== Loot Report (top {hotItems.Count}) ===");

            if (hotItems.Count == 0)
            {
                session.Player.SendMessage("No items above threshold yet.");
                return;
            }

            foreach (var (wcid, count) in hotItems)
            {
                var name = GetItemName(wcid);
                var inBank = Settings.Items.Any(i => i.Id == wcid);
                var suffix = inBank ? "" : " [SUGGEST: add to bank]";
                session.Player.SendMessage($"  {count:N0}x {name}{suffix}");
            }
        }
        catch (Exception ex)
        {
            session.Player.SendMessage($"Loot report error: {ex.Message}");
        }
    }
}