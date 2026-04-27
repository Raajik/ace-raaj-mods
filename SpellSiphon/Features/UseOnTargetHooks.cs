namespace SpellSiphon.Features;

// Restores immersive UX by intercepting generic "use on target" handling.
// Patched manually from PatchClass.Start() so failures cannot crash the server.
internal static class UseOnTargetHooks
{
	private static int PrefixDebugHits;
	private static int MortarDebugHits;

	internal static IEnumerable<MethodBase> FindTargets()
	{
		List<MethodBase> results = new();

		try
		{
			// ACE has multiple overloads/signatures depending on build.
			// We patch all HandleActionUseOnTarget instance methods we can find,
			// then the prefix decides if it's actually our gemcrush/powder apply case.
			AddTargetsFromAssembly(typeof(WorldObject).Assembly, results);
		}
		catch
		{
		}

		HashSet<MethodBase> distinct = new();
		for (int i = 0; i < results.Count; i++)
			distinct.Add(results[i]);

		return distinct;
	}

	private static void AddTargetsFromAssembly(System.Reflection.Assembly assembly, List<MethodBase> results)
	{
		try
		{
			Type[] types;
			try
			{
				types = assembly.GetTypes();
			}
			catch
			{
				return;
			}

			foreach (Type type in types)
			{
				// Only consider WorldObject-derived types. If we patch something else, our
				// prefix signature (__instance as WorldObject) won't bind correctly.
				if (!typeof(WorldObject).IsAssignableFrom(type))
					continue;

				MethodInfo[] methods;
				try
				{
					methods = type.GetMethods(System.Reflection.BindingFlags.Instance | System.Reflection.BindingFlags.Public | System.Reflection.BindingFlags.NonPublic);
				}
				catch
				{
					continue;
				}

				foreach (MethodInfo method in methods)
				{
					if (!string.Equals(method.Name, "HandleActionUseOnTarget", StringComparison.Ordinal))
						continue;

					// Harmony can't patch abstract/unimplemented methods. The base WorldObject virtual is
					// declared but may not be implemented on all builds.
					if (method.IsAbstract)
						continue;

					// GetMethodBody returns null for methods without an IL body.
					if (method.GetMethodBody() == null)
						continue;

					// Avoid patching the base declared WorldObject method.
					if (method.DeclaringType == typeof(WorldObject))
						continue;

					// Basic parameter sanity: method should accept a Player and a WorldObject.
					ParameterInfo[] parameters = method.GetParameters();
					if (parameters.Length < 2)
						continue;

					bool hasPlayerParam = false;
					bool hasWorldObjectParam = false;

					for (int i = 0; i < parameters.Length; i++)
					{
						Type pt = parameters[i].ParameterType;
						if (pt.IsByRef)
							pt = pt.GetElementType() ?? pt;

						if (pt.IsAssignableFrom(typeof(Player)) || typeof(Player).IsAssignableFrom(pt))
							hasPlayerParam = true;

						if (typeof(WorldObject).IsAssignableFrom(pt))
							hasWorldObjectParam = true;
					}

					if (!hasPlayerParam || !hasWorldObjectParam)
						continue;

					results.Add(method);
				}
			}
		}
		catch
		{
		}
	}

	internal static bool Prefix(WorldObject __instance, object[] __args)
	{
		Settings? s = PatchClass.Settings;
		if (s == null || !s.Enabled)
			return true;

		if (__instance == null || __args == null || __args.Length == 0)
			return true;

		WorldObject instanceNonNull = __instance;

		Player? player = null;
		WorldObject? target = null;

		for (int i = 0; i < __args.Length; i++)
		{
			object? arg = __args[i];
			if (arg == null)
				continue;

			if (player == null && arg is Player p)
				player = p;

					if (target == null && arg is WorldObject wo && wo != instanceNonNull)
				target = wo;
		}

		if (player == null || target == null)
			return true;

		Player playerNonNull = player!;
		WorldObject targetNonNull = target!;

		if (s.Verbose)
		{
			try
			{
				if (PrefixDebugHits < 50)
				{
					PrefixDebugHits++;
					ModManager.Log($"[Gemcrafter Debug] HandleActionUseOnTarget fired (instance={instanceNonNull.Name} wcid={instanceNonNull.WeenieClassId}) args={__args.Length}.", ModManager.LogLevel.Info);
				}

				string inst = $"{instanceNonNull.Name} (WCID {instanceNonNull.WeenieClassId}, WT {instanceNonNull.WeenieType}, ItemType {instanceNonNull.ItemType})";
				string targ = $"{targetNonNull.Name} (WCID {targetNonNull.WeenieClassId}, WT {targetNonNull.WeenieType}, ItemType {targetNonNull.ItemType})";
				uint effectiveCrusher = s.CrusherToolWcid != 0 ? s.CrusherToolWcid : instanceNonNull.WeenieClassId;
				playerNonNull.SendMessage($"[Gemcrafter Debug] HandleActionUseOnTarget instance={inst} target={targ} (CrusherToolWcid={s.CrusherToolWcid}, EffectiveCrusherWcid={effectiveCrusher})");
			}
			catch
			{
			}
		}

		// Mortar & Pestle crush override
		uint effectiveCrusherToolWcid = s.CrusherToolWcid != 0 ? s.CrusherToolWcid : __instance.WeenieClassId;
		if (effectiveCrusherToolWcid != 0 && __instance.WeenieClassId == effectiveCrusherToolWcid)
		{
			if (s.Verbose)
			{
				try
				{
					playerNonNull.SendMessage("[Gemcrafter Debug] Entered mortar logic block.");
				}
				catch
				{
				}
			}

			WorldObject intendedTarget = targetNonNull;

			// Some ACE builds pass a non-item "target" into HandleActionUseOnTarget.
			// When that happens, use the player's last selected/appraised object instead.
			try
			{
				var appraisalId = playerNonNull.RequestedAppraisalTarget;
				if (appraisalId != null)
				{
					WorldObject? appraised = playerNonNull.FindObject(appraisalId.Value, Player.SearchLocations.Everywhere, out _, out _, out _);
					if (appraised != null)
						intendedTarget = appraised;
				}
			}
			catch
			{
				// If appraisal fallback fails, keep using the raw target param.
			}

			bool looksLikeGem = LooksLikeGem(intendedTarget!, s);
			if (MortarDebugHits < 25)
			{
				MortarDebugHits++;
				try
				{
					ModManager.Log($"[Gemcrafter Debug] Mortar tool used: rawTarget={targetNonNull?.Name} WCID={targetNonNull?.WeenieClassId} WT={targetNonNull?.WeenieType} ItemType={targetNonNull?.ItemType} intended={intendedTarget?.Name} WCID={intendedTarget?.WeenieClassId} WT={intendedTarget?.WeenieType} ItemType={intendedTarget?.ItemType} looksLikeGem={looksLikeGem}", ModManager.LogLevel.Info);
				}
				catch
				{
				}
			}

			// 1) Mortar on gem => consume gem + store its spells on the mortar itself.
			if (looksLikeGem)
			{
				List<int> spellIds = ReadGemSpellIds(intendedTarget!);
				if (spellIds.Count == 0)
				{
					playerNonNull.SendMessage("[Gemcrafter] That gem has no spells to crush.");
					return false;
				}

				bool consumed = InventoryHelpers.TryRemoveOneFromPlayer(playerNonNull, intendedTarget!, s.Verbose, out _, out string debug);
				if (!consumed)
				{
					if (s.Verbose)
						playerNonNull.SendMessage($"[Gemcrafter] Consume debug: {debug}");
					playerNonNull.SendMessage("[Gemcrafter] Failed to consume the gem.");
					return false;
				}

				bool wrote = ItemPayload.TryWriteSpellPayload(__instance, spellIds);
				if (!wrote)
				{
					playerNonNull.SendMessage("[Gemcrafter] Failed to infuse the mortar. (payload write failed)");
					return false;
				}

				try { __instance.UiEffects |= UiEffects.Magical; }
				catch { }

				playerNonNull.SendMessage("[Gemcrafter] You infuse the mortar. Now use it on equipment to apply the spells.");
				return false;
			}

			// 2) Mortar on equipment => apply stored spells from the mortar itself.
			if (IsEligibleEquipmentTarget(intendedTarget!))
			{
				List<int> spellIds = ItemPayload.ReadSpellPayload(__instance);
				if (spellIds.Count == 0)
				{
					playerNonNull.SendMessage("[Gemcrafter] Your mortar isn't infused with any spells yet. Crush a gem first.");
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

					if (LootMutator.TryAddSpellId(intendedTarget!, id))
					{
						added++;
						addedNames.Add(name);
					}
				}

				if (added <= 0)
				{
					playerNonNull.SendMessage("[Gemcrafter] No transferable spells were found in the mortar.");
					return false;
				}

				ItemPayload.ClearSpellPayload(__instance);
				playerNonNull.SendMessage($"[Gemcrafter] {intendedTarget!.Name} gains: {string.Join(", ", addedNames.Distinct())}");
				return false;
			}

			return true;
		}

		return true;
	}

	private static bool LooksLikeGem(WorldObject item, Settings s)
	{
		if (s.GemWcidAllowlist != null && s.GemWcidAllowlist.Count > 0)
			return s.GemWcidAllowlist.Contains(item.WeenieClassId);

		return (item.ItemType & ItemType.Gem) != 0 || item.WeenieType == WeenieType.Gem;
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

