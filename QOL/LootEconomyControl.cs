using System;
using System.Collections.Generic;
using System.Linq;
using ACE.Server.WorldObjects;
using HarmonyLib;

namespace QOL;

[HarmonyPatchCategory(nameof(Features.LootEconomyControl))]
public static class LootEconomyControl
{
    private static Settings? _settings;

    public static void Initialize(Settings settings)
    {
        _settings = settings;
    }

    // GenerateTreasure is void — __result would be null. We read corpse.Inventory instead.
    [HarmonyPostfix]
    [HarmonyPatch(typeof(Creature), nameof(Creature.GenerateTreasure), new Type[] { typeof(DamageHistoryInfo), typeof(Corpse) })]
    [HarmonyPriority(int.MaxValue)]
    public static void PostGenerateTreasure(DamageHistoryInfo killer, Corpse corpse)
    {
        if (_settings is null || !_settings.EnableLootEconomyControl)
            return;

        if (corpse?.Inventory == null || corpse.Inventory.Count == 0)
            return;

        var items = corpse.Inventory.Values.ToList();

        var valueMult = _settings.LootValueMultiplier;
        if (valueMult > 0 && valueMult < 1.0)
        {
            foreach (var item in items)
            {
                // Skip quest / empyrean growth items
                if (item.ItemTotalXp.HasValue && item.ItemTotalXp.Value > 0)
                    continue;

                var currentValue = item.Value ?? 0;
                if (currentValue > 0)
                    item.Value = (int)Math.Max(1, currentValue * valueMult);
            }
        }

        var reduction = _settings.LootAmountReduction;
        if (reduction > 0 && reduction < 1.0)
        {
            int keepCount = (int)Math.Max(1, Math.Ceiling(items.Count * (1.0 - reduction)));
            if (keepCount < items.Count)
            {
                foreach (var item in items.Skip(keepCount))
                {
                    corpse.TryRemoveFromInventory(item.Guid);
                    item.Destroy();
                }
            }
        }
    }
}
