namespace AceRaajMods.Shared;

/// <summary>
/// Shared item name utilities used across mods (VendorLootRotation, AwakenedItemAwakener,
/// LootGrowthItem, SpecialCreatureLoot) to produce consistent short awakened names.
/// </summary>
public static class ItemNameHelper
{
    /// <summary>
    /// Strips a full item name down to its base item type.
    /// Removes Decal plugin text (everything after first comma),
    /// then for "X of Y" names takes "X", otherwise takes the last word.
    /// </summary>
    public static string StripToBaseItemType(string name)
    {
        if (string.IsNullOrWhiteSpace(name))
            return "Item";

        // Strip everything after the first comma (removes Decal stat/skill/craft text)
        int commaIdx = name.IndexOf(',');
        string clean = commaIdx >= 0 ? name.Substring(0, commaIdx).Trim() : name.Trim();

        if (string.IsNullOrWhiteSpace(clean))
            return "Item";

        // For "X of Y" names, the base type is the first word (e.g., "Ring of Protection" → "Ring")
        int ofIdx = clean.IndexOf(" of ", StringComparison.OrdinalIgnoreCase);
        if (ofIdx >= 0)
        {
            clean = clean.Substring(0, ofIdx).Trim();
        }
        else
        {
            // Otherwise, the base type is the last word (e.g., "Frost Sceptre" → "Sceptre")
            string[] words = clean.Split(' ', StringSplitOptions.RemoveEmptyEntries);
            clean = words.Length > 0 ? words[^1] : clean;
        }

        if (string.IsNullOrWhiteSpace(clean))
            return "Item";

        // Capitalize first letter
        return char.ToUpperInvariant(clean[0]) + clean.Substring(1);
    }
}