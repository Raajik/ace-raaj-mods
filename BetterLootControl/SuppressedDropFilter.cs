using System.Collections.Generic;
using System.Linq;
using ACE.Entity.Enum;
using ACE.Server.WorldObjects;

namespace BetterLootControl;

/// <summary>
/// Strips suppressed WCIDs (e.g. Quarterstaff New 22168) from creature corpse loot
/// after GenerateTreasure. Uses the SuppressedDropWcids list in Settings.
/// </summary>
[HarmonyPatch]
internal static class SuppressedDropFilter
{
    [HarmonyPatch(typeof(Creature), nameof(Creature.GenerateTreasure), new[] { typeof(ACE.Server.Entity.DamageHistoryInfo), typeof(Corpse) })]
    [HarmonyPostfix]
    public static void PostGenerateTreasureSuppressDrops(ACE.Server.Entity.DamageHistoryInfo killer, Corpse corpse)
    {
        var settings = PatchClass.CurrentSettings;
        if (settings is null || !settings.EnableSuppressedDropFilter)
            return;

        var suppressed = settings.SuppressedDropWcids;
        if (suppressed is null || suppressed.Count == 0)
            return;

        if (corpse?.Inventory is null || corpse.Inventory.Count == 0)
            return;

        var toRemove = new List<WorldObject>();
        foreach (var kvp in corpse.Inventory)
        {
            var item = kvp.Value;
            if (item is not null && suppressed.Contains((int)item.WeenieClassId))
                toRemove.Add(item);
        }

        foreach (var item in toRemove)
        {
            if (corpse.TryRemoveFromInventory(item.Guid, out var removed))
            {
                removed.Destroy();
            }
        }
    }
}
