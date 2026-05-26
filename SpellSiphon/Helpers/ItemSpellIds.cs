using ACE.Entity.Models;
using ACE.Entity.Enum;
using ACE.Server.WorldObjects;

namespace Spellsiphon.Helpers;

// Spell-bearing items may store magic in PropertiesSpellBook, SpellDID, or imbue enchantments (PropertiesEnchantmentRegistry).
internal static class ItemSpellIds
{
	internal static List<int> Read(WorldObject item)
	{
		HashSet<int> ids = new();

		if (item == null)
			return ids.ToList();

		try
		{
			var book = item.Biota?.PropertiesSpellBook;
			if (book != null && book.Count > 0)
			{
				foreach (int id in book.Keys)
					if (id > 0)
						ids.Add(id);
			}
		}
		catch { }

		try
		{
			uint? did = item.SpellDID;
			if (!did.HasValue)
				did = item.GetProperty(PropertyDataId.Spell);
			if (did.HasValue && did.Value > 0)
				ids.Add((int)did.Value);
		}
		catch { }

		try
		{
			ICollection<PropertiesEnchantmentRegistry>? registry = item.Biota?.PropertiesEnchantmentRegistry;
			if (registry != null && registry.Count > 0)
			{
				foreach (PropertiesEnchantmentRegistry entry in registry)
				{
					if (entry.SpellId > 0)
						ids.Add(entry.SpellId);
				}
			}
		}
		catch { }

		return ids.ToList();
	}

	internal static bool LooksLikeCantripTierPrefix(string name)
	{
		if (string.IsNullOrWhiteSpace(name))
			return false;

		return name.StartsWith("Minor ", StringComparison.OrdinalIgnoreCase)
			|| name.StartsWith("Moderate ", StringComparison.OrdinalIgnoreCase)
			|| name.StartsWith("Major ", StringComparison.OrdinalIgnoreCase)
			|| name.StartsWith("Epic ", StringComparison.OrdinalIgnoreCase)
			|| name.StartsWith("Legendary ", StringComparison.OrdinalIgnoreCase);
	}
}
