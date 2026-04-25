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

    static bool IsMagicalItem(WorldObject item)
    {
        if (item == null) return false;

        if (item.ImbuedEffect != 0)
            return true;

        try
        {
            if (item.EpicCantrips?.Count > 0)
                return true;
            if (item.LegendaryCantrips?.Count > 0)
                return true;
            if (item.Biota?.PropertiesSpellBook?.Count > 0)
                return true;
        }
        catch { }

        return false;
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
        var maxCap = _settings.LootValueMaxCap;
        var magicalReduction = _settings.LootMagicalItemExtraReduction;
        int valueAdjusted = 0;
        int magicalAdjusted = 0;
        int capped = 0;

        if (valueMult > 0 && valueMult < 1.0)
        {
            foreach (var item in items)
            {
                // Skip quest / empyrean growth items
                if (item.ItemTotalXp.HasValue && item.ItemTotalXp.Value > 0)
                    continue;

                var currentValue = item.Value ?? 0;
                if (currentValue <= 0)
                    continue;

                var newValue = (int)Math.Max(1, currentValue * valueMult);

                // Extra reduction for magical items (cantrips, imbues)
                if (magicalReduction > 0 && magicalReduction < 1.0 && IsMagicalItem(item))
                {
                    newValue = (int)Math.Max(1, newValue * magicalReduction);
                    magicalAdjusted++;
                }

                // Hard cap regardless of tier
                if (maxCap > 0 && newValue > maxCap)
                {
                    newValue = maxCap;
                    capped++;
                }

                item.Value = newValue;
                valueAdjusted++;
            }
        }

        var reduction = _settings.LootAmountReduction;
        int removedCount = 0;
        if (reduction > 0 && reduction < 1.0)
        {
            int keepCount = (int)Math.Max(1, Math.Ceiling(items.Count * (1.0 - reduction)));
            if (keepCount < items.Count)
            {
                foreach (var item in items.Skip(keepCount))
                {
                    corpse.TryRemoveFromInventory(item.Guid);
                    item.Destroy();
                    removedCount++;
                }
            }
        }

        if (valueAdjusted > 0 || removedCount > 0)
        {
            ModManager.Log($"[QOL] LootEconomyControl: {items.Count} items, {valueAdjusted} values adjusted (×{valueMult}), {magicalAdjusted} magical extra-reduced (×{magicalReduction}), {capped} capped at {maxCap}p, {removedCount} removed. Corpse: {corpse.Name}", ModManager.LogLevel.Info);
        }
    }
}
