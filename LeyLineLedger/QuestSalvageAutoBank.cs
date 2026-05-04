using System.Linq;

using ACE.Entity.Enum;
using ACE.Entity.Enum.Properties;
using ACE.Server.Mods;
using ACE.Server.WorldObjects;
using HarmonyLib;

namespace LeyLineLedger;

/// <summary>
/// Auto-deposits quest salvage bags to material bank on acquisition.
/// Covers Clutch of Kings quest rewards, Pathwarden armor-return bags,
/// and any future quest salvage that follows the same WCID pattern.
/// </summary>
[HarmonyPatchCategory(nameof(QuestSalvageAutoBank))]
public static class QuestSalvageAutoBank
{
    /// <summary>
    /// Quest bag WCID → regular salvage WCID (used for bank property lookup).
    /// All quest bags deposit 100 units = 1 full standard bag.
    /// </summary>
    static readonly Dictionary<uint, uint> QuestToRegularSalvage = new()
    {
        // Clutch of Kings quest salvage bags
        { 29571, 21037 }, // Aquamarine
        { 29572, 21039 }, // Black Garnet
        { 29573, 21040 }, // Black Opal
        { 29574, 21048 }, // Emerald
        { 29575, 21049 }, // Fire Opal
        { 29576, 20985 }, // Granite
        { 29577, 21054 }, // Imperial Topaz
        { 29578, 21056 }, // Jet
        { 29579, 20988 }, // Mahogany
        { 29580, 21069 }, // Red Garnet
        { 29581, 20993 }, // Steel
        { 29582, 21079 }, // Sunstone
        { 30260, 21086 }, // White Sapphire

        // Pathwarden armor-return bags
        { 33620, 20985 }, // Granite
        { 33621, 20993 }, // Steel
    };

    /// <summary>
    /// Checks if a quest salvage bag should be auto-deposited when given via NPC emote.
    /// Returns true if handled (caller should skip original item creation).
    /// </summary>
    public static bool TryAutoDepositEmote(Player player, uint weenieClassId, int amount)
    {
        if (player is null || amount <= 0)
            return false;

        if (!IsEnabled())
            return false;

        if (!QuestToRegularSalvage.TryGetValue(weenieClassId, out uint regularWcid))
            return false;

        return DepositToBank(player, regularWcid, amount);
    }

    /// <summary>
    /// Checks if an item already in player inventory is a quest salvage bag and auto-deposits it.
    /// Covers loot drops, script injections, and any non-emote acquisition path.
    /// Returns true if handled (item is consumed and destroyed).
    /// </summary>
    public static bool TryAutoDepositInventory(Player player, WorldObject item)
    {
        if (player is null || item is null)
            return false;

        if (!IsEnabled())
            return false;

        if (!QuestToRegularSalvage.TryGetValue(item.WeenieClassId, out uint regularWcid))
            return false;

        int amount = item.StackSize ?? 1;
        if (!DepositToBank(player, regularWcid, amount))
            return false;

        // Remove and destroy the item from inventory
        player.TryRemoveFromInventory(item.Guid); // removes from Inventory dict and sends network removal
        item.Destroy();

        return true;
    }

    // Banks quest salvage bags left inside a container (e.g. dungeon chest) before ACE Reset clears unmanaged loot.
    public static void TryProcessContainer(Player player, Container container)
    {
        if (player is null || container is null)
            return;

        if (!IsEnabled())
            return;

        foreach (var item in container.Inventory.Values.ToList())
        {
            if (item.IsDestroyed)
                continue;

            if (!QuestToRegularSalvage.TryGetValue(item.WeenieClassId, out uint regularWcid))
                continue;

            int amount = item.StackSize ?? 1;
            if (!DepositToBank(player, regularWcid, amount))
                continue;

            if (container.TryRemoveFromInventory(item.Guid, out var removed))
                removed?.Destroy();
        }
    }

    static bool IsEnabled()
    {
        var settings = PatchClass.Settings;
        if (settings is null)
            return false;
        return settings.EnableQuestSalvageAutoBank || settings.EnablePathwardenAutoBank;
    }

    static bool DepositToBank(Player player, uint regularSalvageWcid, int bagCount)
    {
        var settings = PatchClass.Settings;
        if (settings?.SalvageBank?.Enabled != true)
            return false;

        var sb = settings.SalvageBank;
        int? ruleIndex = FindSalvageRuleIndex(sb, regularSalvageWcid);

        int bankProp;
        if (ruleIndex.HasValue && ruleIndex.Value < sb.DepositRules.Count)
        {
            var rule = sb.DepositRules[ruleIndex.Value];
            bankProp = rule.BankProperty != 0 ? rule.BankProperty : sb.FirstMaterialBankPropertyId + ruleIndex.Value;
        }
        else
        {
            // Fallback: estimate property based on regular salvage WCID offset
            int matIndex = (int)(regularSalvageWcid - 20981);
            if (matIndex < 0)
                return false;
            bankProp = sb.FirstMaterialBankPropertyId + matIndex;
        }

        int unitsPerBag = sb.Redeem?.UnitsPerBag ?? 100;
        long depositUnits = unitsPerBag * (long)bagCount;

        long current = player.GetProperty((PropertyInt64)bankProp) ?? 0;
        player.SetProperty((PropertyInt64)bankProp, current + depositUnits);

        // Resolve display name
        string materialName = GetMaterialName(regularSalvageWcid, settings);
        double bags = depositUnits / 100.0;
        player.SendMessage($"Quest reward: {bags:F2} {materialName} bag(s) deposited to bank.");

        return true;
    }

    static int? FindSalvageRuleIndex(SalvageBankSettings sb, uint salvageWcid)
    {
        for (int i = 0; i < sb.DepositRules.Count; i++)
        {
            var rule = sb.DepositRules[i];
            if (rule.WeenieClassId == salvageWcid)
                return i;
            if (rule.OutputBagWeenieClassId == salvageWcid)
                return i;
            if (rule.AdditionalDepositWeenieClassIds?.Contains(salvageWcid) == true)
                return i;
        }
        return null;
    }

    static string GetMaterialName(uint salvageWcid, Settings settings)
    {
        var rule = settings.SalvageBank?.DepositRules?.FirstOrDefault(r => r.WeenieClassId == salvageWcid);
        if (!string.IsNullOrEmpty(rule?.Name))
            return rule.Name;

        // Fallback: query weenie name from DB/cache
        try
        {
            var weenie = ACE.Database.DatabaseManager.World.GetCachedWeenie(salvageWcid);
            if (weenie != null)
                return weenie.GetName();
        }
        catch { }

        return $"Salvage (WCID {salvageWcid})";
    }

    // Non-emote pickup is still not Harmony-patched; chest/container close calls TryProcessContainer
    // from AutoLoot so bags in chests are banked before ClearUnmanagedInventory.
}
