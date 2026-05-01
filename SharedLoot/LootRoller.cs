using ACE.Common;
using ACE.Server.Factories;
using ACE.Server.WorldObjects;
using System.Reflection;

namespace SharedLoot;

public static class LootRoller
{
    public static WorldObject? TryCreateRandomItem(LootConfig config)
    {
        if (config is null)
            return null;

        var roll = ThreadSafeRandom.Next(0.0f, 1.0f);

        // Salvage rolls independently with its own chance before the normal rarity chain.
        if (config.salvage?.items != null && config.salvage.items.Count > 0
            && roll < config.SalvageChance)
        {
            return CreateItemFromCategory(config.salvage);
        }

        LootCategory? category = null;

        // Check each category for valid items - with null checks
        if (config.extremelyRare?.items != null && config.extremelyRare.items.Count > 0 
            && roll < config.ExtremelyRareChance)
            category = config.extremelyRare;
        else if (config.rare?.items != null && config.rare.items.Count > 0 
            && roll < config.ExtremelyRareChance + config.RareChance)
            category = config.rare;
        else if (config.uncommon?.items != null && config.uncommon.items.Count > 0 
            && roll < config.ExtremelyRareChance + config.RareChance + config.UncommonChance)
            category = config.uncommon;
        else if (config.common?.items != null && config.common.items.Count > 0)
            category = config.common;

        if (category is null)
            return null;

        return CreateItemFromCategory(category);
    }

    /// <summary>
    /// Rolls independently for a bonus gear item (in addition to normal rarity loot).
    /// If LivingEquipment is loaded, the item has a chance to be pre-awakened / pre-imbued.
    /// </summary>
    public static WorldObject? TryCreateGearItem(LootConfig config)
    {
        if (config?.gear?.items == null || config.gear.items.Count == 0)
            return null;

        if (ThreadSafeRandom.Next(0.0f, 1.0f) >= config.GearChance)
            return null;

        var item = CreateItemFromCategory(config.gear);
        if (item != null)
            TryApplyLivingEquipment(item);

        return item;
    }

    // Selects uniformly from categories at or above `floor` (all with items), then picks a random item within.
    // Falls back to the next lower floor if no category qualifies. Returns null if nothing qualifies.
    public static WorldObject? TryCreateFromMinRarity(LootConfig config, LootRarityFloor floor)
    {
        if (config is null) return null;

        var candidates = new List<LootCategory>();
        if ((int)floor <= (int)LootRarityFloor.Any && config.common?.items?.Count > 0)
            candidates.Add(config.common);
        if ((int)floor <= (int)LootRarityFloor.Uncommon && config.uncommon?.items?.Count > 0)
            candidates.Add(config.uncommon);
        if ((int)floor <= (int)LootRarityFloor.Rare && config.rare?.items?.Count > 0)
            candidates.Add(config.rare);
        if (config.extremelyRare?.items?.Count > 0)
            candidates.Add(config.extremelyRare);

        // Fall back progressively if nothing qualifies at this floor
        if (candidates.Count == 0)
        {
            if (floor > LootRarityFloor.Any)
                return TryCreateFromMinRarity(config, (LootRarityFloor)((int)floor - 1));
            return null;
        }

        var category = candidates[ThreadSafeRandom.Next(0, candidates.Count - 1)];
        return CreateItemFromCategory(category);
    }

    static WorldObject? CreateItemFromCategory(LootCategory category)
    {
        if (category.items is null || category.items.Count == 0)
            return null;

        if (category.items.Count == 0)
            return null;

        int randomIndex = ThreadSafeRandom.Next(0, category.items.Count - 1);
        var selectedItem = category.items[randomIndex];

        try
        {
            WorldObject item = WorldObjectFactory.CreateNewWorldObject((uint)selectedItem.wcid);
            if (item is null)
                return null;

            int stackSize;

            // Auto-detect crystals, pearls, jewels for 1-3 stacking
            bool isCrystalPearlOrJewel = item.Name.Contains("Crystal", StringComparison.OrdinalIgnoreCase)
                                      || item.Name.Contains("Pearl", StringComparison.OrdinalIgnoreCase)
                                      || item.Name.Contains("Jewel", StringComparison.OrdinalIgnoreCase)
                                      || item.Name.Contains("Gem", StringComparison.OrdinalIgnoreCase)
                                      || item.Name.Contains("Foolproof", StringComparison.OrdinalIgnoreCase);

            if (isCrystalPearlOrJewel)
            {
                stackSize = ThreadSafeRandom.Next(1, 3);
            }
            else if (selectedItem.stackSizeMin > 0 && selectedItem.stackSizeMax >= selectedItem.stackSizeMin)
            {
                stackSize = ThreadSafeRandom.Next(selectedItem.stackSizeMin, selectedItem.stackSizeMax);
            }
            else
            {
                stackSize = selectedItem.stackSize;
                if (category.stackSizeChance > 0 && ThreadSafeRandom.Next(0.0f, 1.0f) < category.stackSizeChance)
                    stackSize *= 2;
            }

            // Enable stacking for non-salvage items when stackSize > 1
            if (stackSize > 1 && !SalvageBagShaper.IsSalvageWcid((uint)selectedItem.wcid))
            {
                item.MaxStackSize = 100;
            }

            item.SetStackSize(stackSize);

            // Apply salvage bag shape if this is a salvage WCID
            SalvageBagShaper.ApplyShape(item);

            return item;
        }
        catch
        {
            return null;
        }
    }

    /// <summary>
    /// Cross-mod bridge: if LivingEquipment is loaded, runs its loot mutator on the item
    /// so it may spawn pre-awakened and/or pre-imbued.
    /// </summary>
    static void TryApplyLivingEquipment(WorldObject item)
    {
        try
        {
            var asm = AppDomain.CurrentDomain.GetAssemblies()
                .FirstOrDefault(a => a.GetName().Name == "LivingEquipment");
            if (asm == null) return;

            var type = asm.GetType("LivingEquipment.LootMutator");
            if (type == null) return;

            // LootMutator.ApplyToLootItem(WorldObject item, int treasureTier)
            var method = type.GetMethod("ApplyToLootItem",
                System.Reflection.BindingFlags.NonPublic |
                System.Reflection.BindingFlags.Static);
            if (method == null) return;

            // Pass tier 5 as a middle-tier default; LivingEquipment only uses it for
            // pre-awakened tier weights, so it affects rarity distribution.
            method.Invoke(null, new object[] { item, 5 });
        }
        catch { /* swallow — LivingEquipment not present or incompatible */ }
    }
}
