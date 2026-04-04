namespace AceModQa;

using ACE.Server.WorldObjects;

public static class QaSpellbook
{
	public static HashSet<int> ReadSpellbookIds(WorldObject item)
	{
		HashSet<int> ids = new();
		if (item == null)
			return ids;

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
		catch
		{
		}

		return ids;
	}

	public static List<int> DiffAdded(HashSet<int> before, HashSet<int> after)
	{
		if (before == null || after == null)
			return new List<int>();

		return after.Except(before).OrderBy(x => x).ToList();
	}

	public static string FormatSpellList(IEnumerable<int> spellIds, Func<int, string> spellNameResolver)
	{
		try
		{
			List<string> parts = new();
			foreach (int id in spellIds)
			{
				if (id <= 0)
					continue;

				string name = spellNameResolver(id);
				parts.Add($"{name} ({id})");
			}

			return string.Join(", ", parts);
		}
		catch
		{
			return string.Empty;
		}
	}
}

