using ACE.Common;
using ACE.Server.Factories;
using ACE.Server.WorldObjects;

namespace SharedLoot;

public static class LootRoller
{
    public static WorldObject? TryCreateRandomItem(LootConfig config)
    {
        if (config is null)
            return null;

        var roll = ThreadSafeRandom.Next(0.0f, 1.0f);

        LootCategory category;
        if (roll < config.ExtremelyRareChance && config.extremelyRare.items.Count > 0)
            category = config.extremelyRare;
        else if (roll < config.ExtremelyRareChance + config.RareChance && config.rare.items.Count > 0)
            category = config.rare;
        else if (roll < config.ExtremelyRareChance + config.RareChance + config.UncommonChance && config.uncommon.items.Count > 0)
            category = config.uncommon;
        else
            category = config.common;

        return CreateItemFromCategory(category);
    }

    static WorldObject? CreateItemFromCategory(LootCategory category)
    {
        if (category.items is null || category.items.Count == 0)
            return null;

        int lastIndex = category.items.Count - 1;
        int randomIndex = ThreadSafeRandom.Next(0, lastIndex);
        var selectedItem = category.items[randomIndex];

        try
        {
            WorldObject item = WorldObjectFactory.CreateNewWorldObject((uint)selectedItem.wcid);
            if (item is null)
                return null;

            int stackSize = selectedItem.stackSize;
            if (category.stackSizeChance > 0 && ThreadSafeRandom.Next(0.0f, 1.0f) < category.stackSizeChance)
                stackSize *= 2;

            item.SetStackSize(stackSize);
            return item;
        }
        catch
        {
            return null;
        }
    }
}
