namespace Gemcrafter.Commands;

internal static class GemcrafterCommands
{
	// Legacy (powder) apply state removed; mortar now stores the payload.

	[CommandHandler("gemspawn", AccessLevel.Admin, CommandHandlerFlag.RequiresWorld, 0,
		"Creates spell-filled gems in your inventory for testing.",
		"Usage: /gemspawn [count]  (default 5)")]
	public static void HandleGemspawn(Session session, params string[] parameters)
	{
		if (session?.Player is not Player player)
			return;

		Settings? s = PatchClass.Settings;
		if (s == null || !s.Enabled)
		{
			player.SendMessage("[Gemcrafter] Mod is disabled or settings not loaded.");
			return;
		}

		int count = 5;
		if (parameters.Length > 0 && int.TryParse(parameters[0], out int parsed) && parsed > 0)
			count = Math.Min(50, parsed);

		// Common gem WCIDs seen on many shards. We'll cycle these.
		uint[] gemWcids = new uint[]
		{
			2422, // Green Garnet
			2400, // Yellow Garnet
			2425, // Yellow Topaz
			2419, // Opal
		};

		int created = 0;
		for (int i = 0; i < count; i++)
		{
			uint wcid = gemWcids[i % gemWcids.Length];
			WorldObject? gem = null;
			try
			{
				gem = WorldObjectFactory.CreateNewWorldObject(wcid);
			}
			catch
			{
			}

			if (gem == null)
				continue;

			try
			{
				// Create it first (some ACE builds don't fully initialize Biota until the object is in-world/in-inventory).
				player.TryCreateInInventoryWithNetworking(gem);

				// Ensure it has at least one spell so /gemcrush works.
				List<int> picks = GemLootMutator.PickRandomSpellIds(s, gem, min: 1, max: Math.Max(1, s.MaxSpellsOnLootgenGem));
				if (picks.Count == 0)
					picks.Add(1109); // Blade Protection Self I fallback

				foreach (int id in picks)
					GemLootMutator.TryAddSpellId(gem, id);

				created++;
			}
			catch
			{
			}
		}

		player.SendMessage($"[Gemcrafter] Spawned {created} gem(s).");
	}

	[CommandHandler("gemcrush", AccessLevel.Player, CommandHandlerFlag.RequiresWorld, 0,
		"Crushes a selected gem and infuses your Mortar & Pestle (bypasses client use restrictions).",
		"Usage: /gemcrush [<wcid|name|0xinstance>]  (uses appraised gem if omitted; use 0x... for duplicate names)")]
	public static void HandleGemcrush(Session session, params string[] parameters)
	{
		if (session?.Player is not Player player)
			return;

		Settings? s = PatchClass.Settings;
		if (s == null || !s.Enabled)
		{
			player.SendMessage("[Gemcrafter] Mod is disabled or settings not loaded.");
			return;
		}

		uint crusherWcid = s.CrusherToolWcid;
		if (crusherWcid == 0)
			crusherWcid = 4751; // Mortar & Pestle default on most shards

		string first = parameters.Length > 0 ? parameters[0].Trim() : string.Empty;
		if (string.Equals(first, "list", StringComparison.OrdinalIgnoreCase))
		{
			player.SendMessage("[Gemcrafter] Listing crushable gems (have spells)...");
			PrintGemCandidates(player, Array.Empty<string>(), requireTransferable: false, requireHasSpells: true, settings: s);
			return;
		}

		if (string.Equals(first, "listtransferable", StringComparison.OrdinalIgnoreCase))
		{
			player.SendMessage("[Gemcrafter] Listing crushable gems (have at least one transferable spell)...");
			PrintGemCandidates(player, Array.Empty<string>(), requireTransferable: true, requireHasSpells: true, settings: s);
			return;
		}

		WorldObject? gem = null;
		if (parameters.Length > 0)
		{
			gem = FindInventoryItemByQuery(player, parameters, requireGem: true, out int matches);
			if (gem == null)
			{
				player.SendMessage("[Gemcrafter] No matching gem found in your inventory.");
				PrintGemCandidates(player, parameters);
				return;
			}

			if (matches > 1)
			{
				player.SendMessage("[Gemcrafter] Multiple matching gems found. Use WCID for an exact match:");
				PrintGemCandidates(player, parameters);
				return;
			}
		}

		gem ??= GetLastAppraisedObject(session);
		if (gem == null)
		{
			player.SendMessage("[Gemcrafter] No gem found. Appraise a gem or use: /gemcrush <wcid|name fragment>");
			PrintGemCandidates(player, Array.Empty<string>());
			return;
		}

		bool looksLikeGem = (gem.ItemType & ItemType.Gem) != 0 || gem.WeenieType == WeenieType.Gem;
		if (!looksLikeGem)
		{
			player.SendMessage($"[Gemcrafter] Appraised item is not a gem (WCID {gem.WeenieClassId}, WT {gem.WeenieType}, ItemType {gem.ItemType}).");
			player.SendMessage("[Gemcrafter] Try: /gemcrush <wcid|name fragment>  (listing gem candidates)");
			PrintGemCandidates(player, Array.Empty<string>());
			return;
		}

		List<int> spellIds = ReadGemSpellIds(gem);

		if (spellIds.Count == 0)
		{
			player.SendMessage("[Gemcrafter] That gem has no spells to crush.");
			return;
		}

		WorldObject? mortar = null;
		try
		{
			// Find a mortar in your inventory (or nested containers).
			foreach (WorldObject item in EnumerateCarriedItems(player))
			{
				if (item != null && item.WeenieClassId == crusherWcid)
				{
					mortar = item;
					break;
				}
			}
		}
		catch
		{
		}

		if (mortar == null)
		{
			player.SendMessage($"[Gemcrafter] Couldn't find a Mortar & Pestle (WCID {crusherWcid}) in your inventory.");
			player.SendMessage("[Gemcrafter] Put one in your pack, then try /gemcrush again.");
			return;
		}

		bool consumed = InventoryHelpers.TryRemoveOneFromPlayer(player, gem, s.Verbose, out _, out string debug);
		if (!consumed)
		{
			if (s.Verbose)
				player.SendMessage($"[Gemcrafter] Consume debug: {debug}");
			// Some shards create/duplicate stackable items with missing ContainerId until first full interaction.
			// For testing flows, allow infusion to proceed without consumption if removal fails.
			player.SendMessage("[Gemcrafter] Failed to consume the gem. (continuing without consumption)");
		}

		if (!ItemPayload.TryWriteSpellPayload(mortar, spellIds))
		{
			player.SendMessage("[Gemcrafter] Failed to infuse the mortar. (payload write failed)");
			return;
		}

		try { mortar.UiEffects |= UiEffects.Magical; }
		catch { }

		List<string> spellNames = new();
		foreach (int id in spellIds.Distinct())
			spellNames.Add($"{GemLootMutator.TryGetSpellName(id)} ({id})");

		player.SendMessage($"[Gemcrafter] Mortar infused: {mortar.Name} (WCID {mortar.WeenieClassId}).");
		player.SendMessage($"[Gemcrafter] Stored: {string.Join(", ", spellNames)}");
		player.SendMessage("[Gemcrafter] Now apply with: /gemapply <wcid|name fragment>  (or appraise equipment and run /gemapply)");
	}

	[CommandHandler("gemapply", AccessLevel.Player, CommandHandlerFlag.RequiresWorld, 0,
		"Applies your Mortar & Pestle infusion to a selected equipment item (bypasses client use restrictions).",
		"Usage: /gemapply [<wcid|name|0xinstance>]  (uses appraised equipment if omitted; use 0x... for duplicate names)")]
	public static void HandleGemapply(Session session, params string[] parameters)
	{
		if (session?.Player is not Player player)
			return;

		Settings? s = PatchClass.Settings;
		if (s == null || !s.Enabled)
		{
			player.SendMessage("[Gemcrafter] Mod is disabled or settings not loaded.");
			return;
		}

		string first = parameters.Length > 0 ? parameters[0].Trim() : string.Empty;
		if (string.Equals(first, "list", StringComparison.OrdinalIgnoreCase))
		{
			player.SendMessage("[Gemcrafter] Listing equipment candidates...");
			PrintEquipmentCandidates(player, Array.Empty<string>());
			return;
		}

		WorldObject? target = null;
		if (parameters.Length > 0)
		{
			target = FindInventoryItemByQuery(player, parameters, requireGem: false, out int matches);
			if (target == null)
			{
				player.SendMessage("[Gemcrafter] No matching equipment found in your pack or equipped slots.");
				PrintEquipmentCandidates(player, parameters);
				return;
			}

			if (matches > 1)
			{
				player.SendMessage("[Gemcrafter] Multiple matching equipment items found. Use WCID for an exact match:");
				PrintEquipmentCandidates(player, parameters);
				return;
			}
		}

		target ??= GetLastAppraisedObject(session);
		if (target == null)
		{
			player.SendMessage("[Gemcrafter] No equipment found. Appraise equipment or use: /gemapply <wcid|name fragment>");
			PrintEquipmentCandidates(player, Array.Empty<string>());
			return;
		}

		if (!IsEligibleEquipmentTarget(target))
		{
			player.SendMessage($"[Gemcrafter] Appraised item is not eligible equipment (WCID {target.WeenieClassId}, WT {target.WeenieType}, ItemType {target.ItemType}).");
			player.SendMessage("[Gemcrafter] Try: /gemapply <wcid|name fragment>  (listing equipment candidates)");
			PrintEquipmentCandidates(player, Array.Empty<string>());
			return;
		}

		uint crusherWcid = s.CrusherToolWcid;
		if (crusherWcid == 0)
			crusherWcid = 4751;

		WorldObject? mortar = null;
		try
		{
			foreach (WorldObject item in EnumerateCarriedItems(player))
			{
				if (item != null && item.WeenieClassId == crusherWcid)
				{
					mortar = item;
					break;
				}
			}
		}
		catch
		{
		}

		if (mortar == null)
		{
			player.SendMessage($"[Gemcrafter] Couldn't find a Mortar & Pestle (WCID {crusherWcid}) in your inventory.");
			return;
		}

		var spellIds = ItemPayload.ReadSpellPayload(mortar);
		if (spellIds.Count == 0)
		{
			player.SendMessage("[Gemcrafter] Your mortar isn't infused with any spells yet. Crush a gem first.");
			return;
		}

		int max = Math.Max(1, s.TransferMaxSpellsPerApply);
		int added = 0;
		List<string> addedNames = new();

		foreach (int id in spellIds)
		{
			if (added >= max)
				break;

			string name = GemLootMutator.TryGetSpellName(id);
			if (ContainsAny(name, s.ExcludeTransferSpellNameContains))
				continue;

			if (GemLootMutator.TryAddSpellId(target, id))
			{
				added++;
				addedNames.Add(name);
			}
		}

		if (added <= 0)
		{
			player.SendMessage("[Gemcrafter] No transferable spells were found in the mortar infusion.");
			return;
		}

		ItemPayload.ClearSpellPayload(mortar);
		player.SendMessage($"[Gemcrafter] {target.Name} gains: {string.Join(", ", addedNames.Distinct())}");
	}

	// Pack contents plus worn/held items (AllItems() alone often omits equipped slots).
	private static List<WorldObject> EnumerateCarriedItems(Player player)
	{
		List<WorldObject> list = new();
		HashSet<uint> seen = new();

		try
		{
			foreach (WorldObject item in player.AllItems())
			{
				if (item == null)
					continue;

				if (!seen.Add(item.Guid.Full))
					continue;

				list.Add(item);
			}
		}
		catch
		{
		}

		try
		{
			if (player.EquippedObjects == null)
				return list;

			foreach (WorldObject equipment in player.EquippedObjects.Values)
			{
				if (equipment == null)
					continue;

				if (!seen.Add(equipment.Guid.Full))
					continue;

				list.Add(equipment);
			}
		}
		catch
		{
		}

		return list;
	}

	private static bool TryParseInventoryInstanceId(string query, out uint fullGuid)
	{
		fullGuid = 0;
		if (string.IsNullOrWhiteSpace(query))
			return false;

		query = query.Trim();
		if (query.StartsWith("0x", StringComparison.OrdinalIgnoreCase))
		{
			return uint.TryParse(query.AsSpan(2), System.Globalization.NumberStyles.HexNumber, System.Globalization.CultureInfo.InvariantCulture, out fullGuid)
				&& fullGuid != 0;
		}

		// Unambiguous instance id (e.g. 8000032E) — avoids clashing with short WCIDs like 2400.
		if (query.Length == 8 && query.All(c => Uri.IsHexDigit(c)))
		{
			return uint.TryParse(query, System.Globalization.NumberStyles.HexNumber, System.Globalization.CultureInfo.InvariantCulture, out fullGuid)
				&& fullGuid != 0;
		}

		return false;
	}

	private static WorldObject? FindInventoryItemByQuery(Player player, string[] parameters, bool requireGem, out int matches)
	{
		matches = 0;
		try
		{
			string query = string.Join(' ', parameters).Trim();
			if (string.IsNullOrWhiteSpace(query))
				return null;

			// Exact instance match (duplicate same-name / same-WCID items from /gemspawn).
			if (TryParseInventoryInstanceId(query, out uint guidFull))
			{
				foreach (WorldObject item in EnumerateCarriedItems(player))
				{
					if (item == null)
						continue;

					if (requireGem)
					{
						bool looksLikeGem = (item.ItemType & ItemType.Gem) != 0 || item.WeenieType == WeenieType.Gem;
						if (!looksLikeGem)
							continue;
					}
					else
					{
						if (!IsEligibleEquipmentTarget(item))
							continue;
					}

					if (item.Guid.Full == guidFull)
					{
						matches = 1;
						return item;
					}
				}

				matches = 0;
				return null;
			}

			uint? wcid = null;
			if (uint.TryParse(query, out uint parsed) && parsed > 0)
				wcid = parsed;

			List<WorldObject> found = new();
			foreach (WorldObject item in EnumerateCarriedItems(player))
			{
				if (item == null)
					continue;

				// Type-filter first so name fragments don't accidentally match the wrong kind of item.
				if (requireGem)
				{
					bool looksLikeGem = (item.ItemType & ItemType.Gem) != 0 || item.WeenieType == WeenieType.Gem;
					if (!looksLikeGem)
						continue;
				}
				else
				{
					if (!IsEligibleEquipmentTarget(item))
						continue;
				}

				// Then match by WCID or name fragment.
				if (wcid.HasValue)
				{
					if (item.WeenieClassId != wcid.Value)
						continue;
				}
				else
				{
					string name = item.Name ?? string.Empty;
					if (!name.Contains(query, StringComparison.OrdinalIgnoreCase))
						continue;
				}

				found.Add(item);
				if (wcid.HasValue)
					break;
			}

			matches = found.Count;
			if (found.Count == 0)
				return null;

			// Prefer exact name match when possible.
			if (!wcid.HasValue)
			{
				string q = query;
				WorldObject? exact = found.FirstOrDefault(x => string.Equals(x.Name ?? string.Empty, q, StringComparison.OrdinalIgnoreCase));
				if (exact != null)
					return exact;
			}

			return found[0];
		}
		catch
		{
			matches = 0;
			return null;
		}
	}

	private static void PrintGemCandidates(Player player, string[] parameters)
	{
		PrintGemCandidates(player, parameters, requireTransferable: false, requireHasSpells: false, settings: null);
	}

	private static void PrintGemCandidates(Player player, string[] parameters, bool requireTransferable, bool requireHasSpells, Settings? settings)
	{
		string query = string.Join(' ', parameters).Trim();
		int shown = 0;

		try
		{
			foreach (WorldObject item in EnumerateCarriedItems(player))
			{
				if (item == null)
					continue;

				bool looksLikeGem = (item.ItemType & ItemType.Gem) != 0 || item.WeenieType == WeenieType.Gem;
				if (!looksLikeGem)
					continue;

				if (requireTransferable)
				{
					// Only show gems that have at least one spell that would transfer.
					// This uses the same name-fragment filter as the apply step.
					Settings? s = settings ?? PatchClass.Settings;
					List<int> ids = ReadGemSpellIds(item);
					bool anyTransferable = false;
					int transferableCount = 0;
					string firstTransferable = string.Empty;

					for (int i = 0; i < ids.Count; i++)
					{
						int id = ids[i];
						string spellName = GemLootMutator.TryGetSpellName(id);
						if (ContainsAny(spellName, s?.ExcludeTransferSpellNameContains))
							continue;

						anyTransferable = true;
						transferableCount++;
						if (string.IsNullOrWhiteSpace(firstTransferable))
							firstTransferable = spellName;
						break;
					}

					if (!anyTransferable)
						continue;

					// For listtransferable, make the output self-explaining.
					if (string.IsNullOrWhiteSpace(query))
					{
						player.SendMessage($"[Gemcrafter] Gem candidate: {item.Name} (WCID {item.WeenieClassId}) transferableSpells={transferableCount} sample={firstTransferable}");
						shown++;
						if (shown >= 10)
							break;
						continue;
					}
				}

				if (requireHasSpells)
				{
					List<int> ids = ReadGemSpellIds(item);
					if (ids.Count == 0)
						continue;
				}

				if (!string.IsNullOrWhiteSpace(query))
				{
					string name = item.Name ?? string.Empty;
					if (!name.Contains(query, StringComparison.OrdinalIgnoreCase) && item.WeenieClassId.ToString() != query)
						continue;
				}

				player.SendMessage($"[Gemcrafter] Gem candidate: {item.Name} (WCID {item.WeenieClassId})");
				shown++;
				if (shown >= 10)
					break;
			}
		}
		catch
		{
		}

		if (shown == 0)
			player.SendMessage("[Gemcrafter] (No gem candidates found in pack or equipped slots.)");
	}

	private static void PrintEquipmentCandidates(Player player, string[] parameters)
	{
		string query = string.Join(' ', parameters).Trim();
		int shown = 0;

		try
		{
			foreach (WorldObject item in EnumerateCarriedItems(player))
			{
				if (item == null)
					continue;

				if (!IsEligibleEquipmentTarget(item))
					continue;

				if (!string.IsNullOrWhiteSpace(query))
				{
					string name = item.Name ?? string.Empty;
					if (!name.Contains(query, StringComparison.OrdinalIgnoreCase) && item.WeenieClassId.ToString() != query)
						continue;
				}

				player.SendMessage($"[Gemcrafter] Equip candidate: {item.Name} (WCID {item.WeenieClassId})");
				shown++;
				if (shown >= 10)
					break;
			}
		}
		catch
		{
		}

		if (shown == 0)
			player.SendMessage("[Gemcrafter] (No equipment candidates found in pack or equipped slots.)");
	}

	private static List<int> ReadGemSpellIds(WorldObject gem)
	{
		HashSet<int> ids = new();

		try
		{
			var book = gem.Biota?.PropertiesSpellBook;
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

		// Many “spell gems” store a single spell on PropertyDataId.Spell instead of SpellBook.
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

	private static bool IsEligibleEquipmentTarget(WorldObject item)
	{
		WeenieType wt = item.WeenieType;
		if (wt == WeenieType.MeleeWeapon || wt == WeenieType.MissileLauncher || wt == WeenieType.Caster || wt == WeenieType.Clothing)
			return true;

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

	[CommandHandler("gemmakepowder", AccessLevel.Admin, CommandHandlerFlag.RequiresWorld, 0,
		"Admin test helper: creates infused powder with a spell payload.",
		"Usage: /gemmakepowder <spellId|name fragment>")]
	public static void HandleGemmakepowder(Session session, params string[] parameters)
	{
		if (session?.Player is not Player player)
			return;

		Settings? s = PatchClass.Settings;
		if (s == null || !s.Enabled)
		{
			player.SendMessage("[Gemcrafter] Mod is disabled or settings not loaded.");
			return;
		}

		if (s.InfusedPowderWcids == null || s.InfusedPowderWcids.Count == 0)
		{
			player.SendMessage("[Gemcrafter] Configure InfusedPowderWcids first.");
			return;
		}

		if (parameters.Length == 0)
		{
			player.SendMessage("[Gemcrafter] Usage: /gemmakepowder <spellId|name fragment>");
			return;
		}

		string query = string.Join(' ', parameters).Trim();
		int? spellId = null;

		if (int.TryParse(query, out int id) && id > 0)
		{
			spellId = id;
		}
		else
		{
			// Find first spell whose name contains the fragment.
			try
			{
				var spells = DatManager.PortalDat?.SpellTable?.Spells;
				if (spells != null)
				{
					foreach (var kvp in spells)
					{
						string? name = kvp.Value?.Name;
						if (string.IsNullOrWhiteSpace(name))
							continue;

						if (name.Contains(query, StringComparison.OrdinalIgnoreCase))
						{
							spellId = (int)kvp.Key;
							break;
						}
					}
				}
			}
			catch
			{
			}
		}

		if (!spellId.HasValue)
		{
			player.SendMessage($"[Gemcrafter] Could not find a spell matching '{query}'.");
			return;
		}

		uint powderWcid = s.InfusedPowderWcids[0];
		WorldObject? powder = WorldObjectFactory.CreateNewWorldObject(powderWcid);
		if (powder == null)
		{
			player.SendMessage("[Gemcrafter] Failed to create infused powder.");
			return;
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

		ItemPayload.TryWriteSpellPayload(powder, new List<int> { spellId.Value });
		try { powder.UiEffects |= UiEffects.Magical; }
		catch { }

		player.TryCreateInInventoryWithNetworking(powder);
		player.SendMessage($"[Gemcrafter] Created infused powder with: {GemLootMutator.TryGetSpellName(spellId.Value)} ({spellId.Value})");
	}

	[CommandHandler("gemcrafter", AccessLevel.Player, CommandHandlerFlag.RequiresWorld, 0,
		"Gemcrafter debug/status commands.",
		"Usage: /gemcrafter [status|spellpool|item|tool]")]
	public static void HandleGemcrafter(Session session, params string[] parameters)
	{
		if (session?.Player is not Player player)
			return;

		string sub = parameters.Length > 0 ? parameters[0].ToLowerInvariant() : "status";
		switch (sub)
		{
			case "status":
				PrintStatus(player);
				return;

			case "spellpool":
				PrintSpellPool(player);
				return;

			case "item":
				PrintSelectedItem(session, player);
				return;

			case "tool":
				PrintSelectedWcidHint(session, player);
				return;

			default:
				player.SendMessage("Gemcrafter: /gemcrafter status | spellpool | item | tool");
				return;
		}
	}

	private static void PrintStatus(Player player)
	{
		Settings? s = PatchClass.Settings;
		if (s == null)
		{
			player.SendMessage("[Gemcrafter] Settings not loaded.");
			return;
		}

		player.SendMessage($"[Gemcrafter] Enabled={s.Enabled}, Verbose={s.Verbose}");
		player.SendMessage($"[Gemcrafter] LootgenGemMagic={s.EnableLootgenGemMagic}, MinSpells={s.MinSpellsOnLootgenGem}, MaxSpells={s.MaxSpellsOnLootgenGem}");
		player.SendMessage($"[Gemcrafter] CrusherToolWcid={s.CrusherToolWcid}, InfusedPowderWcids=[{string.Join(", ", s.InfusedPowderWcids ?? new List<uint>())}]");
		player.SendMessage($"[Gemcrafter] TransferMaxSpellsPerApply={s.TransferMaxSpellsPerApply}");
	}

	private static void PrintSpellPool(Player player)
	{
		var (count, sampleNames) = GemLootMutator.GetSpellPoolStats();
		player.SendMessage($"[Gemcrafter] Spell pool size: {count}");
		if (sampleNames.Count > 0)
			player.SendMessage($"[Gemcrafter] Sample: {string.Join(", ", sampleNames)}");
	}

	private static void PrintSelectedItem(Session session, Player player)
	{
		WorldObject? item = GetLastAppraisedObject(session);
		if (item == null)
		{
			player.SendMessage("[Gemcrafter] Select/appraise an item first, then try again.");
			return;
		}

		player.SendMessage($"[Gemcrafter] Held: {item.Name} (WCID {item.WeenieClassId}, WT {item.WeenieType}, ItemType {item.ItemType})");

		try
		{
			var book = item.Biota?.PropertiesSpellBook;
			if (book != null && book.Count > 0)
			{
				var names = book.Keys.Take(10).Select(GemLootMutator.TryGetSpellName).ToList();
				player.SendMessage($"[Gemcrafter] Spells({book.Count}): {string.Join(", ", names)}");
			}
		}
		catch
		{
		}

		var payload = ItemPayload.ReadSpellPayload(item);
		if (payload.Count > 0)
			player.SendMessage($"[Gemcrafter] Payload: {string.Join(", ", payload.Select(GemLootMutator.TryGetSpellName))}");
	}

	private static void PrintSelectedWcidHint(Session session, Player player)
	{
		WorldObject? held = GetLastAppraisedObject(session);
		if (held == null)
		{
			player.SendMessage("[Gemcrafter] Select/appraise the Mortar & Pestle (or powder) first, then try again.");
			return;
		}

		// This just tells you the WCID to paste into Settings.json.
		player.SendMessage($"[Gemcrafter] Held WCID is {held.WeenieClassId}. Update Settings.json CrusherToolWcid or InfusedPowderWcid accordingly, then /mod f Gemcrafter.");
	}

	// Returns the last appraised/selected WorldObject for the given session, if any.
	// This works for inventory items that cannot be wielded.
	private static WorldObject? GetLastAppraisedObject(Session session)
	{
		try
		{
			var targetId = session.Player.RequestedAppraisalTarget;
			if (targetId == null)
				return null;

			return session.Player.FindObject(targetId.Value, Player.SearchLocations.Everywhere, out _, out _, out _);
		}
		catch
		{
			return null;
		}
	}
}

