namespace EmpyreanAlteration;

// Shared shape for quest inventory init and loot mutator item leveling: real equippable gear only.
internal static class ItemLevelingEligibility
{
    internal static bool IsEquippableGearShape(WorldObject item)
    {
        if (item == null)
            return false;

        WeenieType type = item.WeenieType;

        if (type is WeenieType.MeleeWeapon or WeenieType.MissileLauncher or WeenieType.Caster or WeenieType.Clothing)
            return true;

        EquipMask? validLoc = item.ValidLocations;
        return validLoc.HasValue && validLoc.Value != 0;
    }
}
