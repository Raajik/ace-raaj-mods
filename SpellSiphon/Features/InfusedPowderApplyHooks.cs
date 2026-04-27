namespace SpellSiphon.Features;

internal static class InfusedPowderApplyHooks
{
	// Patched manually from PatchClass (BaseMod only scans PatchClass for [HarmonyPatch]).
	public static bool PreTryMutate(Player player, WorldObject source, WorldObject target, Recipe recipe, uint dataId, HashSet<uint> modified, ref bool __result)
	{
		Settings? s = PatchClass.Settings;
		if (s == null || !s.Enabled)
			return true;

		if (player == null || source == null || target == null)
			return true;

		if (s.InfusedPowderWcids == null || s.InfusedPowderWcids.Count == 0)
			return true;

		if (!s.InfusedPowderWcids.Contains(source.WeenieClassId))
			return true;

		if (!IsEligibleEquipmentTarget(target))
		{
			player.SendMessage("[Gemcrafter] You can only apply infused powder to equipment.");
			__result = false;
			return false;
		}

		List<int> spellIds = ItemPayload.ReadSpellPayload(source);
		if (spellIds.Count == 0)
		{
			player.SendMessage("[Gemcrafter] That powder isn't infused with any spells.");
			__result = false;
			return false;
		}

		WorldObject? removedPowder;
		bool consumed = InventoryHelpers.TryRemoveOneFromPlayer(player, source, s.Verbose, out removedPowder, out string consumeDebug);
		if (!consumed)
		{
			if (s.Verbose)
				player.SendMessage($"[Gemcrafter] Consume debug: {consumeDebug}");
			player.SendMessage("[Gemcrafter] Failed to consume the powder.");
			__result = false;
			return false;
		}

		int max = Math.Max(1, s.TransferMaxSpellsPerApply);
		int added = 0;
		List<string> addedNames = new();

		foreach (int id in spellIds)
		{
			if (added >= max)
				break;

			string name = LootMutator.TryGetSpellName(id);
			if (ContainsAny(name, s.ExcludeTransferSpellNameContains))
				continue;

			if (LootMutator.TryAddSpellId(target, id))
			{
				added++;
				addedNames.Add(name);
			}
		}

		if (added <= 0)
		{
			if (removedPowder != null)
				player.TryCreateInInventoryWithNetworking(removedPowder);
			player.SendMessage("[Gemcrafter] No transferable spells were found in that powder.");
			__result = false;
			return false;
		}

		player.SendMessage($"[Gemcrafter] {target.Name} gains: {string.Join(", ", addedNames.Distinct())}");
		__result = true;
		return false;
	}

	private static bool IsEligibleEquipmentTarget(WorldObject item)
	{
		WeenieType wt = item.WeenieType;
		if (wt == WeenieType.MeleeWeapon || wt == WeenieType.MissileLauncher || wt == WeenieType.Caster || wt == WeenieType.Clothing)
			return true;

		// Some jewelry comes through as Generic but has equip slots.
		EquipMask? loc = item.ValidLocations;
		if (loc.HasValue && loc.Value != 0)
			return true;

		string name = item.Name ?? string.Empty;
		if (name.Contains("Ring", StringComparison.OrdinalIgnoreCase)) return true;
		if (name.Contains("Bracelet", StringComparison.OrdinalIgnoreCase)) return true;
		if (name.Contains("Necklace", StringComparison.OrdinalIgnoreCase)) return true;
		if (name.Contains("Amulet", StringComparison.OrdinalIgnoreCase)) return true;
		if (name.Contains("Pendant", StringComparison.OrdinalIgnoreCase)) return true;
		if (name.Contains("Charm", StringComparison.OrdinalIgnoreCase)) return true;
		if (name.Contains("Trinket", StringComparison.OrdinalIgnoreCase)) return true;

		return false;
	}

	private static bool ContainsAny(string name, List<string>? frags)
	{
		if (frags == null || frags.Count == 0)
			return false;

		foreach (string frag in frags)
		{
			if (string.IsNullOrWhiteSpace(frag))
				continue;

			if (name.Contains(frag, StringComparison.OrdinalIgnoreCase))
				return true;
		}

		return false;
	}
}

