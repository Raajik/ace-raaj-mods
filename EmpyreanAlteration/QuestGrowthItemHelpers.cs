namespace EmpyreanAlteration;

// Shared detection and quest-growth side effects for leveled items (shields vs weapons).
internal static class QuestGrowthItemHelpers
{
    // Cloak slot at runtime (matches LootGrowthItem.IsCloakRoll for equipped / post-loot items).
    internal static bool IsCloakEquipment(WorldObject item)
    {
        if (item == null)
            return false;

        EquipMask? loc = item.ValidLocations;
        return loc.HasValue && (loc.Value & EquipMask.Cloak) != 0;
    }

    // Shields are usually MeleeWeapon with ValidLocations including Shield; must not use weapon spell ladders.
    internal static bool IsShield(WorldObject item)
    {
        if (item == null)
            return false;

        EquipMask? loc = item.ValidLocations;
        return loc.HasValue && loc.Value.HasFlag(EquipMask.Shield);
    }
}
