namespace EmpyreanAlteration;

public static class ItemLeveling
{
    public static bool ApplyItemLevelProfile(WorldObject item, int tier, ItemLevelProfile profile)
    {
        if (item is null)
            return false;

        // Enforce a strict eligibility filter so only real gear can level.
        // Allowed: weapons and armor/clothing; plus name-based jewelry/trinket/shield detection.
        WeenieType weenieType = item.WeenieType;
        bool isDirectAllowed = weenieType == WeenieType.MeleeWeapon
            || weenieType == WeenieType.MissileLauncher
            || weenieType == WeenieType.Caster
            || weenieType == WeenieType.Clothing;

        string name = item.Name ?? string.Empty;
        bool isNameEquip = IsGenericEquipableByName(name);

        if (!isDirectAllowed && !isNameEquip)
            return false;

        if (item.HasItemLevel)
            return false;

        long baseXp = profile.BaseXp;
        if (baseXp <= 0)
            baseXp = 10_000;

        double scale = profile.ScaleByTier;
        if (scale <= 0)
            scale = 1.0;

        long xpCost = (long)(baseXp * Math.Pow(scale, tier - 1));

        int minLevel = profile.MinLevel;
        int maxLevel = profile.MaxLevel;
        if (minLevel > maxLevel)
            (minLevel, maxLevel) = (maxLevel, minLevel);

        int maxItemLevel = minLevel == maxLevel ? minLevel : Random.Shared.Next(minLevel, maxLevel + 1);
        if (maxItemLevel <= 0)
            return false;

        item.ItemXpStyle = ItemXpStyle.ScalesWithLevel;
        item.ItemTotalXp = 0;
        item.ItemMaxLevel = maxItemLevel;
        item.ItemBaseXp = xpCost;

        return true;
    }

    private static bool IsGenericEquipableByName(string name)
    {
        if (string.IsNullOrWhiteSpace(name))
            return false;

        string n = name;

        // Jewelry / trinket heuristics.
        if (n.Contains("Ring", StringComparison.OrdinalIgnoreCase)) return true;
        if (n.Contains("Bracelet", StringComparison.OrdinalIgnoreCase)) return true;
        if (n.Contains("Necklace", StringComparison.OrdinalIgnoreCase)) return true;
        if (n.Contains("Amulet", StringComparison.OrdinalIgnoreCase)) return true;
        if (n.Contains("Pendant", StringComparison.OrdinalIgnoreCase)) return true;
        if (n.Contains("Charm", StringComparison.OrdinalIgnoreCase)) return true;
        if (n.Contains("Trinket", StringComparison.OrdinalIgnoreCase)) return true;

        // Shields are armor.
        if (n.Contains("Shield", StringComparison.OrdinalIgnoreCase)) return true;

        return false;
    }
}
