namespace EmpyreanAlteration;

// Shared detection and quest-growth side effects for leveled items (shields vs weapons, Attuned flag).
internal static class QuestGrowthItemHelpers
{
    // Shields are usually MeleeWeapon with ValidLocations including Shield; must not use weapon spell ladders.
    internal static bool IsShield(WorldObject item)
    {
        if (item == null)
            return false;

        EquipMask? loc = item.ValidLocations;
        return loc.HasValue && loc.Value.HasFlag(EquipMask.Shield);
    }

    internal static void EnsureAttunedIfLeveled(WorldObject item, int level)
    {
        if (item == null || level < 1)
            return;

        if (item.Attuned == AttunedStatus.Attuned)
            return;

        // Attuned at max level instead of level 1
        int? maxLevel = item.ItemMaxLevel;
        if (maxLevel.HasValue && level >= maxLevel.Value)
            item.Attuned = AttunedStatus.Attuned;
    }
}
