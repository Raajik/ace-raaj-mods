namespace SpellSiphon.Commands;

using AceModQa;

internal static class SpellSiphonQaCommands
{
	// Deterministic, server-side QA helpers so we can validate Gemcrafter without client UI friction.
	private static readonly uint DefaultMortarWcid = 4751;

	[CommandHandler("gemqa", AccessLevel.Admin, CommandHandlerFlag.RequiresWorld, 0,
		"Gemcrafter QA utilities (Admin-only).",
		"Usage: /gemqa runall | smoke | status | infuse <spellId|name fragment> | apply")]
	public static void HandleGemqa(Session session, params string[] parameters)
	{
		if (session?.Player is not Player player)
			return;

		Settings? s = PatchClass.Settings;
		if (s == null || !s.Enabled)
		{
			player.SendMessage("[Gemcrafter QA] Mod is disabled or settings not loaded.");
			return;
		}

		string sub = parameters.Length > 0 ? parameters[0].ToLowerInvariant() : "help";
		switch (sub)
		{
			case "runall":
				RunAll(player, s);
				return;

			case "smoke":
				RunSmokeForRunner(player, s);
				return;

			case "status":
				Status(player, s);
				return;

			case "infuse":
				Infuse(player, s, parameters.Skip(1).ToArray());
				return;

			case "apply":
				Apply(player, s);
				return;

			default:
				player.SendMessage("Gemcrafter QA: /gemqa runall | smoke | status | infuse <spellId|name fragment> | apply");
				return;
		}
	}

	private static void RunAll(Player player, Settings s)
	{
		QaRunner.RunAll(player, "Gemcrafter", new IQaTestCase[]
		{
			new SpellSiphonSmokeTest(),
		});
	}

	internal static QaResult RunSmokeForRunner(Player player, Settings s)
	{
		WorldObject? mortar = EnsureMortar(player, s, createIfMissing: true);
		if (mortar == null)
		{
			player.SendMessage("[Gemcrafter QA] FAIL: Could not ensure Mortar & Pestle.");
			return QaResult.Fail("Could not ensure Mortar & Pestle.");
		}

		WorldObject? target = ResolveOrCreateTestEquipment(player);
		if (target == null)
		{
			player.SendMessage("[Gemcrafter QA] FAIL: Could not resolve or create test equipment.");
			return QaResult.Fail("Could not resolve or create test equipment.");
		}

		// Pick one transferable spell + one excluded spell to validate the filter.
		int? transferableId = QaSpell.FindSpellIdByNameContains("Blade Protection Self");
		int? excludedId = QaSpell.FindSpellIdByNameContains("Portal") ?? QaSpell.FindSpellIdByNameContains("Recall") ?? QaSpell.FindSpellIdByNameContains("Summon");

		if (!transferableId.HasValue)
		{
			player.SendMessage("[Gemcrafter QA] FAIL: Could not find a transferable spell in portal.dat (name contains 'Blade Protection Self').");
			return QaResult.Fail("Could not find a transferable spell in portal.dat.");
		}

		List<int> payload = new() { transferableId.Value };
		if (excludedId.HasValue && excludedId.Value != transferableId.Value)
			payload.Add(excludedId.Value);

		ItemPayload.ClearSpellPayload(mortar);

		if (!ItemPayload.TryWriteSpellPayload(mortar, payload))
		{
			player.SendMessage("[Gemcrafter QA] FAIL: Could not write payload to mortar.");
			return QaResult.Fail("Could not write payload to mortar.");
		}

		HashSet<int> before = QaSpellbook.ReadSpellbookIds(target);
		var applyResult = ApplyMortarPayloadToTarget(player, s, mortar, target);
		HashSet<int> after = QaSpellbook.ReadSpellbookIds(target);

		if (!applyResult.Success)
		{
			player.SendMessage($"[Gemcrafter QA] FAIL: {applyResult.Message}");
			return QaResult.Fail(applyResult.Message);
		}

		bool hasTransferable = after.Contains(transferableId.Value);
		bool hasExcluded = excludedId.HasValue && after.Contains(excludedId.Value);

		if (!hasTransferable)
		{
			player.SendMessage("[Gemcrafter QA] FAIL: Transferable spell was not added to target.");
			DumpDiff(player, before, after);
			return QaResult.Fail("Transferable spell was not added to target.");
		}

		if (hasExcluded)
		{
			player.SendMessage("[Gemcrafter QA] FAIL: Excluded spell was added to target (filter broke).");
			DumpDiff(player, before, after);
			return QaResult.Fail("Excluded spell was added to target.");
		}

		player.SendMessage($"[Gemcrafter QA] PASS: Applied {applyResult.Added} spell(s) to {target.Name}.");
		player.SendMessage($"[Gemcrafter QA] Added: {string.Join(", ", applyResult.AddedSpellNames)}");
		return QaResult.Pass($"Applied {applyResult.Added} spell(s).");
	}

	private static void Status(Player player, Settings s)
	{
		WorldObject? mortar = EnsureMortar(player, s, createIfMissing: false);
		uint crusherWcid = s.CrusherToolWcid != 0 ? s.CrusherToolWcid : DefaultMortarWcid;

		player.SendMessage($"[Gemcrafter QA] Enabled={s.Enabled}, Verbose={s.Verbose}, CrusherToolWcid={s.CrusherToolWcid}, EffectiveCrusherWcid={crusherWcid}");

		if (mortar == null)
		{
			player.SendMessage($"[Gemcrafter QA] Mortar: not found (WCID {crusherWcid}).");
			return;
		}

		List<int> payload = ItemPayload.ReadSpellPayload(mortar);
		if (payload.Count == 0)
		{
			player.SendMessage($"[Gemcrafter QA] Mortar: {mortar.Name} (WCID {mortar.WeenieClassId}) payload: <empty>");
			return;
		}

		List<string> names = payload.Select(id => $"{LootMutator.TryGetSpellName(id)} ({id})").ToList();
		player.SendMessage($"[Gemcrafter QA] Mortar: {mortar.Name} (WCID {mortar.WeenieClassId}) payload: {string.Join(", ", names)}");
	}

	private static void Infuse(Player player, Settings s, string[] args)
	{
		if (args.Length == 0)
		{
			player.SendMessage("[Gemcrafter QA] Usage: /gemqa infuse <spellId|name fragment>");
			return;
		}

		WorldObject? mortar = EnsureMortar(player, s, createIfMissing: true);
		if (mortar == null)
		{
			player.SendMessage("[Gemcrafter QA] FAIL: Could not ensure Mortar & Pestle.");
			return;
		}

		string query = string.Join(' ', args).Trim();
		int? spellId = null;

		if (int.TryParse(query, out int id) && id > 0)
		{
			spellId = id;
		}
		else
		{
			spellId = QaSpell.FindSpellIdByNameContains(query);
		}

		if (!spellId.HasValue)
		{
			player.SendMessage($"[Gemcrafter QA] FAIL: Could not find a spell matching '{query}'.");
			return;
		}

		ItemPayload.ClearSpellPayload(mortar);

		if (!ItemPayload.TryWriteSpellPayload(mortar, new List<int> { spellId.Value }))
		{
			player.SendMessage("[Gemcrafter QA] FAIL: Could not write payload to mortar.");
			return;
		}

		player.SendMessage($"[Gemcrafter QA] Mortar infused: {mortar.Name} (WCID {mortar.WeenieClassId}) with {LootMutator.TryGetSpellName(spellId.Value)} ({spellId.Value})");
	}

	private static void Apply(Player player, Settings s)
	{
		WorldObject? target = ResolveAppraisedEquipment(player);
		if (target == null)
		{
			player.SendMessage("[Gemcrafter QA] Appraise a target equipment item first, then /gemqa apply.");
			return;
		}

		WorldObject? mortar = EnsureMortar(player, s, createIfMissing: false);
		if (mortar == null)
		{
			uint crusherWcid = s.CrusherToolWcid != 0 ? s.CrusherToolWcid : DefaultMortarWcid;
			player.SendMessage($"[Gemcrafter QA] FAIL: Could not find Mortar & Pestle (WCID {crusherWcid}) in inventory.");
			return;
		}

		HashSet<int> before = QaSpellbook.ReadSpellbookIds(target);
		var result = ApplyMortarPayloadToTarget(player, s, mortar, target);
		HashSet<int> after = QaSpellbook.ReadSpellbookIds(target);

		if (!result.Success)
		{
			player.SendMessage($"[Gemcrafter QA] FAIL: {result.Message}");
			return;
		}

		player.SendMessage($"[Gemcrafter QA] PASS: {target.Name} gains: {string.Join(", ", result.AddedSpellNames)}");
		DumpDiff(player, before, after);
	}

	private static WorldObject? EnsureMortar(Player player, Settings s, bool createIfMissing)
	{
		uint crusherWcid = s.CrusherToolWcid != 0 ? s.CrusherToolWcid : DefaultMortarWcid;

		try
		{
			foreach (WorldObject item in player.AllItems())
			{
				if (item != null && item.WeenieClassId == crusherWcid)
					return item;
			}
		}
		catch
		{
		}

		if (!createIfMissing)
			return null;

		WorldObject? mortar = null;
		try
		{
			mortar = WorldObjectFactory.CreateNewWorldObject(crusherWcid);
		}
		catch
		{
		}

		if (mortar == null)
			return null;

		try
		{
			player.TryCreateInInventoryWithNetworking(mortar);
			return mortar;
		}
		catch
		{
			return null;
		}
	}

	private static WorldObject? ResolveOrCreateTestEquipment(Player player)
	{
		WorldObject? appraised = ResolveAppraisedEquipment(player);
		if (appraised != null)
			return appraised;

		// Try to create a few common equipment WCIDs (these exist on most shards).
		uint[] candidates = new uint[]
		{
			623,   // Heavy Necklace
			295,   // Bracelet
			75,    // Helmet
			124,   // Jerkin
		};

		for (int i = 0; i < candidates.Length; i++)
		{
			try
			{
				WorldObject? item = WorldObjectFactory.CreateNewWorldObject(candidates[i]);
				if (item == null)
					continue;

				if (!IsEligibleEquipmentTarget(item))
					continue;

				player.TryCreateInInventoryWithNetworking(item);
				player.SendMessage($"[Gemcrafter QA] Created test item: {item.Name} (WCID {item.WeenieClassId})");
				return item;
			}
			catch
			{
			}
		}

		return null;
	}

	private static WorldObject? ResolveAppraisedEquipment(Player player)
	{
		try
		{
			var id = player.RequestedAppraisalTarget;
			if (id == null)
				return null;

			WorldObject? item = player.FindObject(id.Value, Player.SearchLocations.Everywhere, out _, out _, out _);
			if (item == null)
				return null;

			if (!IsEligibleEquipmentTarget(item))
				return null;

			return item;
		}
		catch
		{
			return null;
		}
	}

	private static void DumpDiff(Player player, HashSet<int> before, HashSet<int> after)
	{
		try
		{
			List<int> added = QaSpellbook.DiffAdded(before, after);
			if (added.Count == 0)
			{
				player.SendMessage("[Gemcrafter QA] Diff: <no spellbook changes detected>");
				return;
			}

			string formatted = QaSpellbook.FormatSpellList(added, LootMutator.TryGetSpellName);
			player.SendMessage($"[Gemcrafter QA] Diff added: {formatted}");
		}
		catch
		{
		}
	}

	private static (bool Success, int Added, List<string> AddedSpellNames, string Message) ApplyMortarPayloadToTarget(Player player, Settings s, WorldObject mortar, WorldObject target)
	{
		List<int> spellIds = ItemPayload.ReadSpellPayload(mortar);
		if (spellIds.Count == 0)
			return (false, 0, new List<string>(), "Mortar payload is empty.");

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
				addedNames.Add($"{name} ({id})");
			}
		}

		if (added <= 0)
			return (false, 0, new List<string>(), "No transferable spells were added.");

		ItemPayload.ClearSpellPayload(mortar);
		return (true, added, addedNames, string.Empty);
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
}

