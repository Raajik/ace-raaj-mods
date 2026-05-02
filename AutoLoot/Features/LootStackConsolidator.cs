namespace AutoLoot;

using ACE.Server.WorldObjects;

/// <summary>
/// Merges duplicate same-WCID items into a single stack inside corpse/chest containers
/// after loot generation. Fixes the issue where creatures with multiple create-list
/// entries for the same item (e.g., 5 drudge charms) spawn them as separate
/// unmergeable WorldObjects instead of one stack.
/// </summary>
internal static class LootStackConsolidator
{
    internal static void TryConsolidateContainer(Container container)
    {
        if (container?.Inventory == null || container.Inventory.Count <= 1)
            return;

        // Group by WCID for ALL items, not just those already marked stackable.
        var groups = container.Inventory.Values
            .GroupBy(i => i.WeenieClassId)
            .Where(g => g.Count() > 1)
            .ToList();

        foreach (var group in groups)
        {
            var items = group.ToList();
            var baseItem = items[0];

            // Only consolidate items that are naturally stackable (weenie already has MaxStackSize > 1).
            // Do NOT force non-stackable items (e.g. quest items like drudge charms) to stack.
            if (!baseItem.MaxStackSize.HasValue || baseItem.MaxStackSize <= 1)
                continue;

            int total = baseItem.StackSize ?? 1;

            for (int i = 1; i < items.Count; i++)
            {
                var item = items[i];
                if (item.IsDestroyed)
                    continue;

                int added = item.StackSize ?? 1;
                int maxStack = baseItem.MaxStackSize ?? 100;

                if (total + added > maxStack)
                {
                    int canMerge = maxStack - total;
                    if (canMerge <= 0)
                        continue;

                    total += canMerge;
                    int remainder = added - canMerge;
                    item.SetStackSize(remainder);
                    baseItem.SetStackSize(total);
                    continue;
                }

                if (container.TryRemoveFromInventory(item.Guid, out _))
                {
                    total += added;
                    item.Destroy();
                }
            }

            if (total != (baseItem.StackSize ?? 1))
                baseItem.SetStackSize(total);
        }
    }
}
