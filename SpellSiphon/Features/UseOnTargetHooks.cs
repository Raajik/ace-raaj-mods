using ACE.Common;
using ACE.Database;
using ACE.Entity.Enum;
using ACE.Server.Network.GameMessages.Messages;
using ACE.Server.WorldObjects;

namespace SpellSiphon.Features;

// v2.1 — Apply step only. Extraction is handled by native RecipeManager (RecipeHooks.cs).
// Charged Spellsiphon + equipment/gem/ManaLattice = apply (100% success).
internal static class UseOnTargetHooks
{
	internal static IEnumerable<System.Reflection.MethodBase> FindTargets()
	{
		List<MethodBase> results = new();

		try
		{
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

					if (method.IsAbstract)
						continue;

					if (method.GetMethodBody() == null)
						continue;

					if (method.DeclaringType == typeof(WorldObject))
						continue;

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

			if (target == null && arg is WorldObject wo && wo != instanceNonNull && wo is not Player)
				target = wo;
		}

		if (player == null || target == null)
			return true;

		Player playerNonNull = player!;
		WorldObject targetNonNull = target!;

		// === Apply-ready Spellsiphon (charged / payload / spellbook) + equipment/gem/ManaLattice ===
		if (ItemPayload.IsSpellsiphonApplyReady(instanceNonNull, s.SpellsiphonToolWcid) && IsValidApplyTarget(targetNonNull, s))
		{
			return HandleApplyStep(playerNonNull, instanceNonNull, targetNonNull, s, isGlyph: false);
		}

		// === Apply-ready Glyph of Extraction (charged / payload / spellbook) + equipment/gem/ManaLattice ===
		if (ItemPayload.IsGlyphApplyReady(instanceNonNull) && IsValidApplyTarget(targetNonNull, s))
		{
			return HandleApplyStep(playerNonNull, instanceNonNull, targetNonNull, s, isGlyph: true);
		}

		return true;
	}

	// ==================== APPLY ====================

	private static bool HandleApplyStep(Player player, WorldObject chargedTool, WorldObject targetItem, Settings s, bool isGlyph)
	{
		// Arcane Lore skill check (difficulty 1 — always passes, triggers skill animation)
		var arcaneLore = player.GetCreatureSkill(Skill.ArcaneLore);
		if (arcaneLore == null)
		{
			player.SendUseDoneEvent();
			return true;
		}
		var skillChance = SkillCheck.GetSkillChance((int)arcaneLore.Current, 1);
		if (ThreadSafeRandom.Next(0.0f, 1.0f) > skillChance)
		{
			player.SendUseDoneEvent();
			return true; // Should never happen with difficulty 1, but silent fallback
		}

		List<int> spellIds = ItemPayload.ReadSpellPayload(chargedTool);
		if (spellIds.Count == 0)
			spellIds = ReadItemSpellIds(chargedTool);

		if (spellIds.Count == 0)
		{
			string label = isGlyph ? "That Glyph" : "That Spellsiphon";
			player.SendMessage($"[SpellSiphon] {label} holds no extracted spells.");
			player.SendUseDoneEvent();
			return false;
		}

		bool isGem = targetItem.WeenieType == WeenieType.Gem || (targetItem.ItemType & ItemType.Gem) != 0;
		bool isManaLattice = targetItem.WeenieClassId == s.ManaLatticeWcid;
		int added = 0;
		List<string> addedNames = new();

		// Track existing spells for deduplication
		var existingSpells = ReadItemSpellIds(targetItem);
		var finalSpells = new List<int>(existingSpells);

		foreach (int id in spellIds)
		{
			string name = LootMutator.TryGetSpellName(id);
			if (ContainsAny(name, s.ExcludeTransferSpellNameContains))
				continue;

			if (TryMergeSpell(finalSpells, id))
			{
				added++;
				addedNames.Add(name);
			}
		}

		if (added <= 0)
		{
			player.SendMessage("[SpellSiphon] No transferable spells could be applied.");
			player.SendUseDoneEvent();
			return false;
		}

		// Write merged spells to target
		ApplySpellsToItem(targetItem, finalSpells);

		// Give default mana pool if item had no spells before
		if (existingSpells.Count == 0)
		{
			GiveDefaultManaPool(targetItem, s);
		}

		// Broadcast target update so client sees new spells
		try { targetItem.EnqueueBroadcastUpdateObject(); }
		catch { }

		TryMoveInventoryItemToFirstSlot(player, targetItem);

		string toolLabel = isGlyph ? $"Glyph of Extraction" : "Spellsiphon";

		if (isManaLattice)
		{
			// Transform Mana Lattice into reusable buff gem
			TransformToBuffGem(targetItem, addedNames, s);
			player.SendMessage($"[SpellSiphon] The Mana Lattice absorbs {addedNames[0]} and becomes a reusable buff gem.");
		}
		else if (isGem)
		{
			player.SendMessage($"[SpellSiphon] The gem is infused with {addedNames[0]} and can now be reused infinitely.");
		}
		else
		{
			player.SendMessage($"[SpellSiphon] {targetItem.Name} gains: {string.Join(", ", addedNames.Distinct())}");
		}

		TryConsumeChargedToolFromPlayer(player, chargedTool, isGlyph);

		player.SendUseDoneEvent();
		return false;
	}

	// ==================== HELPERS ====================

	private static void TryMoveInventoryItemToFirstSlot(Player player, WorldObject item)
	{
		if (item.CurrentWieldedLocation != null)
			return;

		if (player.FindObject(item.Guid.Full, Player.SearchLocations.MyInventory, out _, out _, out _) == null)
			return;

		try
		{
			player.EnqueueBroadcast(new GameMessageUpdateObject(item));
			player.MoveItemToFirstContainerSlot(item);
		}
		catch { }
	}

	private static void TryConsumeChargedToolFromPlayer(Player player, WorldObject charged, bool isGlyph)
	{
		if (charged == null)
			return;

		try
		{
			if (player.FindObject(charged.Guid.Full, Player.SearchLocations.MyInventory | Player.SearchLocations.MyEquippedItems, out _, out _, out _) != null)
			{
				if (player.TryRemoveFromInventoryWithNetworking(charged.Guid, out _, Player.RemoveFromInventoryAction.ConsumeItem))
					return;
			}

			charged.Destroy();
		}
		catch
		{
			try { charged.Destroy(); }
			catch { }
		}
	}

	private static bool IsValidApplyTarget(WorldObject item, Settings s)
	{
		if (item.WeenieClassId == s.ManaLatticeWcid)
			return true;

		WeenieType wt = item.WeenieType;
		if (wt == WeenieType.MeleeWeapon || wt == WeenieType.MissileLauncher || wt == WeenieType.Caster || wt == WeenieType.Clothing)
			return true;

		if ((item.ItemType & ItemType.Gem) != 0 || item.WeenieType == WeenieType.Gem)
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

	private static void TransformToBuffGem(WorldObject manaLattice, List<string> spellNames, Settings s)
	{
		try
		{
			// Update name to Endless Mana Lattice
			try { manaLattice.Name = "Endless Mana Lattice"; }
			catch { }

			// Mark as endless gem so emotes handle it
			manaLattice.SetProperty((PropertyBool)ItemPayload.IsEndlessManaLatticeProp, true);

			// Make it bonded so it doesn't drop on death (but can be traded)
			manaLattice.SetProperty(PropertyInt.Bonded, (int)BondedStatus.Bonded);

			// Add magical overlay and recalculate visuals
			try
			{
				manaLattice.UiEffects = (manaLattice.UiEffects ?? 0) | UiEffects.Magical;
				manaLattice.CalculateObjDesc();
			}
			catch { }

			// Broadcast update
			try { manaLattice.EnqueueBroadcastUpdateObject(); }
			catch { }
		}
		catch { }
	}

	private static List<int> ReadItemSpellIds(WorldObject item)
	{
		HashSet<int> ids = new();

		try
		{
			var book = item.Biota?.PropertiesSpellBook;
			if (book != null && book.Count > 0)
				foreach (int id in book.Keys)
					if (id > 0) ids.Add(id);
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

		return ids.ToList();
	}

	private static bool TryMergeSpell(List<int> existingSpells, int newSpellId)
	{
		try
		{
			var newSpell = new ACE.Server.Entity.Spell(newSpellId);
			string newPrefix = StripRomanNumerals(newSpell.Name ?? "");
			int newLevel = (int)newSpell.Level;

			for (int i = 0; i < existingSpells.Count; i++)
			{
				var existing = new ACE.Server.Entity.Spell(existingSpells[i]);
				string existingPrefix = StripRomanNumerals(existing.Name ?? "");
				if (existingPrefix == newPrefix)
				{
					if (newLevel > (int)existing.Level)
					{
						existingSpells[i] = newSpellId;
						return true;
					}
					return false;
				}
			}

			existingSpells.Add(newSpellId);
			return true;
		}
		catch
		{
			existingSpells.Add(newSpellId);
			return true;
		}
	}

	private static string StripRomanNumerals(string name)
	{
		if (string.IsNullOrWhiteSpace(name)) return name;
		var parts = name.Trim().Split(' ');
		if (parts.Length > 1 && IsRomanNumeral(parts[^1]))
			return string.Join(" ", parts[..^1]);
		return name;
	}

	private static bool IsRomanNumeral(string text)
	{
		if (string.IsNullOrWhiteSpace(text)) return false;
		string[] romans = { "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX", "X", "XI", "XII" };
		return romans.Contains(text.Trim().ToUpper());
	}

	private static void ApplySpellsToItem(WorldObject item, List<int> spellIds)
	{
		try
		{
			if (item.Biota != null)
			{
				item.Biota.PropertiesSpellBook ??= new Dictionary<int, float>();
				item.Biota.PropertiesSpellBook.Clear();
				foreach (int id in spellIds)
				{
					if (!item.Biota.PropertiesSpellBook.ContainsKey(id))
						item.Biota.PropertiesSpellBook[id] = 1.0f;
				}
			}
		}
		catch { }
	}

	private static void GiveDefaultManaPool(WorldObject item, Settings s)
	{
		try
		{
			item.SetProperty(PropertyInt.ItemMaxMana, s.DefaultItemMaxMana);
			item.SetProperty(PropertyInt.ItemCurMana, s.DefaultItemMaxMana);
			item.SetProperty(PropertyFloat.ManaRate, s.DefaultItemManaRegen);
		}
		catch { }
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
