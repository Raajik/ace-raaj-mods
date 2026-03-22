namespace AceModQa;

using ACE.DatLoader;

public static class QaSpell
{
	public static int? FindSpellIdByNameContains(string fragment)
	{
		if (string.IsNullOrWhiteSpace(fragment))
			return null;

		try
		{
			var spells = DatManager.PortalDat?.SpellTable?.Spells;
			if (spells == null)
				return null;

			foreach (var kvp in spells)
			{
				string? name = kvp.Value?.Name;
				if (string.IsNullOrWhiteSpace(name))
					continue;

				if (name.Contains(fragment, StringComparison.OrdinalIgnoreCase))
					return (int)kvp.Key;
			}
		}
		catch
		{
		}

		return null;
	}
}

