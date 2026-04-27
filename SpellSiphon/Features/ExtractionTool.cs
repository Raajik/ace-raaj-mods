namespace SpellSiphon.Features;

internal static class MortarAndPestleHooks
{
	// Patched manually from PatchClass (BaseMod only scans PatchClass for [HarmonyPatch]).
	public static bool PreTryMutate(Player player, WorldObject source, WorldObject target, Recipe recipe, uint dataId, HashSet<uint> modified, ref bool __result)
	{
		Settings? s = PatchClass.Settings;
		if (s == null || !s.Enabled)
			return true;

		if (player == null || source == null || target == null)
			return true;

		if (s.CrusherToolWcid == 0 || s.InfusedPowderWcids == null || s.InfusedPowderWcids.Count == 0)
			return true;

		if (source.WeenieClassId != s.CrusherToolWcid)
			return true;

		if (!IsCrushableGem(target, s))
			return true;

		List<int> spellIds = ReadGemSpellIds(target);
		if (spellIds.Count == 0)
		{
			player.SendMessage("[Gemcrafter] That gem has no spells to crush.");
			__result = false;
			return false;
		}

		WorldObject? removedGem;
		bool consumed = InventoryHelpers.TryRemoveOneFromPlayer(player, target, s.Verbose, out removedGem, out string debug);
		if (!consumed)
		{
			if (s.Verbose)
				player.SendMessage($"[Gemcrafter] Consume debug: {debug}");
			player.SendMessage("[Gemcrafter] Failed to consume the gem.");
			__result = false;
			return false;
		}

		uint powderWcid = s.InfusedPowderWcids[0];
		WorldObject? powder = WorldObjectFactory.CreateNewWorldObject(powderWcid);
		if (powder == null)
		{
			if (removedGem != null)
				player.TryCreateInInventoryWithNetworking(removedGem);
			player.SendMessage("[Gemcrafter] Failed to create infused powder.");
			__result = false;
			return false;
		}

		// Prevent stacking from wiping payload properties.
		try
		{
			powder.MaxStackSize = 1;
			powder.StackSize = 1;
		}
		catch
		{
		}

		ItemPayload.TryWriteSpellPayload(powder, spellIds);

		// Make sure the output visually reads as magical even if the base powder is mundane.
		try { powder.UiEffects |= UiEffects.Magical; }
		catch { }

		if (!player.TryCreateInInventoryWithNetworking(powder))
		{
			powder.Destroy();
			if (removedGem != null)
				player.TryCreateInInventoryWithNetworking(removedGem);
			player.SendMessage("[Gemcrafter] No space in inventory for infused powder; gem returned.");
			__result = false;
			return false;
		}

		player.SendMessage($"[Gemcrafter] You crush the gem into infused powder.");

		__result = true;
		return false;
	}

	private static bool IsCrushableGem(WorldObject gem, Settings s)
	{
		if (s.GemWcidAllowlist != null && s.GemWcidAllowlist.Count > 0)
			return s.GemWcidAllowlist.Contains(gem.WeenieClassId);

		if ((gem.ItemType & ItemType.Gem) == 0 && gem.WeenieType != WeenieType.Gem)
			return false;

		return true;
	}

	private static List<int> ReadGemSpellIds(WorldObject gem)
	{
		HashSet<int> ids = new();

		try
		{
			var book = gem.Biota?.PropertiesSpellBook;
			if (book != null && book.Count > 0)
				foreach (int id in book.Keys)
					if (id > 0)
						ids.Add(id);
		}
		catch
		{
		}

		try
		{
			uint? did = gem.SpellDID;
			if (!did.HasValue)
				did = gem.GetProperty(PropertyDataId.Spell);

			if (did.HasValue && did.Value > 0)
				ids.Add((int)did.Value);
		}
		catch
		{
		}

		return ids.ToList();
	}
}

