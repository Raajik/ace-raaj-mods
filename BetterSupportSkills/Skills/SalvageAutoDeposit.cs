using System.Collections.Concurrent;
using ACE.Entity.Enum;
using ACE.Entity.Enum.Properties;
using ACE.Server.Mods;
using ACE.Server.WorldObjects;
using ACE.Server.Network;
using ACE.Server.Network.GameMessages.Messages;

namespace BetterSupportSkills.Skills;

[HarmonyPatchCategory(nameof(Features.SalvageSkill))]
public static class SalvageAutoDeposit
{
    static readonly ConcurrentDictionary<uint, bool> AutoSalvageEnabled = new();
    static readonly ConcurrentDictionary<uint, Dictionary<int, double>> PlayerAccumulated = new();
    static readonly ConcurrentDictionary<uint, DateTime> LastMessageTime = new();
    const int MESSAGE_INTERVAL_SECONDS = 60;

    public static bool IsEnabled(Player player) => AutoSalvageEnabled.GetOrAdd(player.Guid.Full, _ => false);

    public static void SetEnabled(Player player, bool enabled)
    {
        var guid = player.Guid.Full;
        if (enabled)
            AutoSalvageEnabled[guid] = true;
        else
            AutoSalvageEnabled.TryRemove(guid, out _);
    }

    // Called by AutoLoot when auto-salvage is enabled and loot priority should intercept ALL salvage
    public static void OnPickupSalvage(Player player, WorldObject item)
    {
        if (player is null || item is null)
            return;

        var settings = PatchClass.Settings;
        if (settings?.EnableSalvage != true)
            return;

        var salvage = settings.Salvage;
        if (salvage is null)
            return;

        // Verify it's salvage (WCID 20981-21089)
        if (item.WeenieClassId < 20981 || item.WeenieClassId > 21089)
            return;

        int materialIndex = GetMaterialIndex(item.WeenieClassId);
        if (materialIndex < 0)
            return;

        // Calculate units from item (full units, no percentage when intercepting)
        int rawUnits = GetSalvageUnits(item, salvage.UnitsPerItem);
        if (rawUnits <= 0)
            return;

        // Deposit full amount (100%) when auto-salvage intercepts at pickup
        double depositUnits = rawUnits;

        int bankProp = 40201 + materialIndex;
        long current = player.GetProperty((PropertyInt64)bankProp) ?? 0;
        player.SetProperty((PropertyInt64)bankProp, (long)(current + depositUnits));
    }

    // ── Intercept salvage bags entering inventory ────────────────────────────

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), nameof(Player.TryCreateInInventoryWithNetworking), new[] { typeof(WorldObject) })]
    public static bool PreTryCreateInInventory(Player __instance, WorldObject item, ref bool __result)
    {
        if (__instance is null || item is null)
            return true;

        if (!IsEnabled(__instance))
            return true;

        var settings = PatchClass.Settings;
        if (settings?.EnableSalvage != true)
            return true;

        // Check if salvage stack (WCID 20981-21089)
        if (!IsSalvageStack(item.WeenieClassId))
            return true;

        var salvage = settings.Salvage;
        if (salvage is null)
            return true;

        int materialIndex = GetMaterialIndex(item.WeenieClassId);
        if (materialIndex < 0)
            return true;

        int rawUnits = GetSalvageUnits(item, salvage.UnitsPerItem);
        if (rawUnits <= 0)
            return true;

        // Deposit full amount (100%)
        int bankProp = 40201 + materialIndex;
        long current = __instance.GetProperty((PropertyInt64)bankProp) ?? 0;
        __instance.SetProperty((PropertyInt64)bankProp, current + rawUnits);

        // Accumulate for message
        var playerId = __instance.Guid.Full;
        var accum = PlayerAccumulated.GetOrAdd(playerId, _ => new Dictionary<int, double>());
        lock (accum)
        {
            if (!accum.ContainsKey(materialIndex))
                accum[materialIndex] = 0;
            accum[materialIndex] += rawUnits;
        }

        // Check if we should send a summary message
        var now = DateTime.UtcNow;
        if (!LastMessageTime.TryGetValue(playerId, out var lastTime) ||
            (now - lastTime).TotalSeconds >= MESSAGE_INTERVAL_SECONDS)
        {
            LastMessageTime[playerId] = now;
            SendAccumulatedMessage(__instance, accum);
        }

        // Destroy the item so it doesn't enter inventory
        item.Destroy();
        __result = true;
        return false;
    }

    static void SendAccumulatedMessage(Player player, Dictionary<int, double> accum)
    {
        if (accum.Count == 0)
            return;

        var parts = new List<string>();
        double totalBags = 0;

        lock (accum)
        {
            foreach (var kvp in accum)
            {
                int matIndex = kvp.Key;
                double units = kvp.Value;
                double bags = units / 100.0; // Convert to bags
                totalBags += bags;
                if (bags >= 0.01)
                {
                    string matName = GetMaterialName(matIndex);
                    parts.Add($"{bags:F2} {matName}");
                }
            }
            accum.Clear();
        }

        if (parts.Count == 0)
            return;

        // Sort by amount descending
        parts.Sort((a, b) => string.Compare(b, a, StringComparison.Ordinal));

        string msg;
        if (parts.Count == 1)
            msg = $"Auto-salvage: {parts[0]} bag(s) deposited to bank.";
        else if (parts.Count == 2)
            msg = $"Auto-salvage: {parts[0]} and {parts[1]} bag(s) deposited.";
        else
            msg = $"Auto-salvage: {string.Join(", ", parts.Take(parts.Count - 1))}, and {parts.Last()} bag(s) deposited.";

        player.SendMessage(msg);
    }

    static bool IsSalvageStack(uint wcid) => wcid >= 20981 && wcid <= 21089;

    static int GetMaterialIndex(uint wcid)
    {
        int index = (int)wcid - 20981;
        return (index >= 0 && index <= 70) ? index : -1;
    }

    static int GetSalvageUnits(WorldObject item, int unitsPerItem)
    {
        int work = item.ItemWorkmanship ?? 0;
        if (work > 0)
            return work;
        int structure = item.Structure ?? 0;
        if (structure > 0)
            return structure;
        ModManager.Log($"[BSS Salvage] DEBUG: No workmanship/structure - wcid={item.WeenieClassId}, name={item.Name}, work={work}, structure={structure}, using unitsPerItem={unitsPerItem}", ModManager.LogLevel.Info);
        return unitsPerItem;
    }

    static string GetMaterialName(int index)
    {
        string[] names = { "Ceramic", "Porcelain", "Cloth", "Linen", "Satin", "Silk", "Velvet", "Wool", "Gems", "Agate", "Amber", "Amethyst", "Aquamarine", "Azurite", "Black Garnet", "Black Opal", "Bloodstone", "Carnelian", "Citrine", "Diamond", "Emerald", "Fire Opal", "Green Garnet", "Green Jade", "Hematite", "Imperial Topaz", "Jet", "Lapis Lazuli", "Lavender Jade", "Leather", "Malachite", "Marble", "Moonstone", "Obsidian", "Onyx", "Opal", "Peridot", "Porcelain", "Pyreal", "Red Garnet", "Red Jade", "Rose Quartz", "Ruby", "Sandstone", "Sapphire", "Serpentine", "Silk", "Silver", "Smoky Quartz", "Sunstone", "Teak", "Tiger Eye", "Tourmaline", "Turquoise", "White Jade", "White Quartz", "White Sapphire", "Yellow Garnet", "Yellow Topaz", "Zircon", "Armoredillo Hide", "Bronze", "Gold", "Granite", "Iron", "Mahogany", "Oak", "Pine", "Reedshark Hide" };
        return (index >= 0 && index < names.Length) ? names[index] : "Unknown";
    }
}
