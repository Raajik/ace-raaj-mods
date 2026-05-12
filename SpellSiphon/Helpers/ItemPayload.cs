namespace SpellSiphon.Helpers;

internal static class ItemPayload
{
	internal const int PayloadPrimarySpellIdProp = 40100;
	internal const int PayloadSpellListJsonProp = 40101;
	internal const int IsChargedSpellsiphonProp = 40102;
	internal const int SpellsiphonTierProp = 40103;
	internal const int SpellsiphonSpellCountProp = 40104;
	internal const int IsEndlessManaLatticeProp = 40105;
	internal const int IsChargedGlyphProp = 40106;
	internal const int GlyphExtractionTierProp = 40107;
	internal const int GlyphSpellCountProp = 40108;

	internal static bool TryWriteSpellPayload(WorldObject item, List<int> spellIds)
	{
		if (item == null || spellIds == null || spellIds.Count == 0)
			return false;

		try
		{
			int primary = spellIds[0];
			item.SetProperty((PropertyInt)PayloadPrimarySpellIdProp, primary);

			string json = JsonSerializer.Serialize(spellIds.Distinct().ToList());
			item.SetProperty((PropertyString)PayloadSpellListJsonProp, json);
			return true;
		}
		catch
		{
			return false;
		}
	}

	internal static List<int> ReadSpellPayload(WorldObject item)
	{
		List<int> result = new();
		if (item == null)
			return result;

		try
		{
			string json = item.GetProperty((PropertyString)PayloadSpellListJsonProp);
			if (!string.IsNullOrWhiteSpace(json))
			{
				var list = JsonSerializer.Deserialize<List<int>>(json);
				if (list != null)
					result.AddRange(list.Where(x => x > 0));
			}
		}
		catch
		{
		}

		if (result.Count == 0)
		{
			try
			{
				int? primary = item.GetProperty((PropertyInt)PayloadPrimarySpellIdProp);
				if (primary.HasValue && primary.Value > 0)
					result.Add(primary.Value);
			}
			catch
			{
			}
		}

		return result.Distinct().ToList();
	}

	internal static void ClearSpellPayload(WorldObject item)
	{
		if (item == null)
			return;

		try
		{
			item.SetProperty((PropertyInt)PayloadPrimarySpellIdProp, 0);
			item.SetProperty((PropertyString)PayloadSpellListJsonProp, "[]");
		}
		catch
		{
		}
	}

	// True when this WCID is in the Glyph range (850210-850219) and it holds extracted spells to apply.
	internal static bool IsGlyphApplyReady(WorldObject? tool)
	{
		if (tool == null)
			return false;

		uint wcid = tool.WeenieClassId;
		if (wcid < 850210 || wcid > 850219)
			return false;

		if (tool.GetProperty((PropertyBool)IsChargedGlyphProp) == true)
			return true;

		if (ReadSpellPayload(tool).Count > 0)
			return true;

		try
		{
			var book = tool.Biota?.PropertiesSpellBook;
			return book != null && book.Count > 0;
		}
		catch
		{
			return false;
		}
	}

	// Kept for backward compat — Spellsiphon-specific apply-ready check.
	internal static bool IsSpellsiphonApplyReady(WorldObject? tool, uint spellsiphonToolWcid)
	{
		if (tool == null || tool.WeenieClassId != spellsiphonToolWcid)
			return false;

		if (tool.GetProperty((PropertyBool)IsChargedSpellsiphonProp) == true)
			return true;

		if (ReadSpellPayload(tool).Count > 0)
			return true;

		try
		{
			var book = tool.Biota?.PropertiesSpellBook;
			return book != null && book.Count > 0;
		}
		catch
		{
			return false;
		}
	}
}
