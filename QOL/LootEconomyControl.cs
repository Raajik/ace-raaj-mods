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
        ModManager.Log("[QOL] LootEconomyControl initialized", ModManager.LogLevel.Info);
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Creature), nameof(Creature.GenerateTreasure), new Type[] { typeof(DamageHistoryInfo), typeof(Corpse) })]
    [HarmonyPriority(int.MaxValue)]
    public static void PostGenerateTreasure(Creature __instance, DamageHistoryInfo killer, Corpse corpse, List<WorldObject> __result)
    {
        if (_settings is null)
        {
            ModManager.Log("[QOL] LootEconomyControl: _settings is null!", ModManager.LogLevel.Warn);
            return;
        }

        if (!_settings.EnableLootEconomyControl)
            return;

        if (__result is null || __result.Count == 0)
            return;

        var valueMultiplier = _settings.LootValueMultiplier;
        var amountBoost = _settings.LootAmountReduction;

        ModManager.Log($"[QOL] LootEconomyControl: Processing {__result.Count} items, valueMult={valueMultiplier}, amount={amountBoost}", ModManager.LogLevel.Info);

        foreach (var item in __result)
        {
            if (item.ItemTotalXp.HasValue && item.ItemTotalXp.Value > 0)
                continue;

            var currentValue = item.Value ?? 0;
            if (currentValue > 0)
            {
                var newValue = (int)Math.Max(1, currentValue * valueMultiplier);
                item.Value = newValue;
                ModManager.Log($"[QOL] {item.Name}: {currentValue} -> {newValue}", ModManager.LogLevel.Info);
            }
        }

        if (amountBoost > 0 && amountBoost < 1.0)
        {
            int keepCount = (int)Math.Max(1, Math.Ceiling(__result.Count * (1.0 - amountBoost)));
            if (keepCount < __result.Count)
            {
                var toRemove = __result.Skip(keepCount).ToList();
                foreach (var item in toRemove)
                {
                    __result.Remove(item);
                    item.Destroy();
                }
                ModManager.Log($"[QOL] Removed {toRemove.Count} items, kept {keepCount}", ModManager.LogLevel.Info);
            }
        }
    }
}
