namespace EmpyreanAlteration;

// Client-visible level cap overlay on the item icon (same table ACE uses for rare leveled loot).
internal static class ItemLevelingPresentation
{
    internal static void ApplyMaxLevelIconOverlayForXpItem(WorldObject item)
    {
        // Icon overlay disabled: vanilla table only goes to 5, higher caps render as broken squares.
    }
}
