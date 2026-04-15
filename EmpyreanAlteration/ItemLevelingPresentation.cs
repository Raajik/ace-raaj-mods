namespace EmpyreanAlteration;

// Client-visible level cap overlay on the item icon (same table ACE uses for rare leveled loot).
internal static class ItemLevelingPresentation
{
    internal static void ApplyMaxLevelIconOverlayForXpItem(WorldObject item)
    {
        if (item == null)
            return;

        int? maxLevel = item.ItemMaxLevel;
        if (!maxLevel.HasValue || maxLevel.Value < 1)
            return;

        List<uint> overlays = LootGenerationFactory.IconOverlay_ItemMaxLevel;
        if (overlays == null || overlays.Count == 0)
            return;

        int idx = Math.Min(maxLevel.Value, overlays.Count) - 1;
        if (idx < 0)
            idx = 0;

        item.IconOverlayId = overlays[idx];
    }
}
