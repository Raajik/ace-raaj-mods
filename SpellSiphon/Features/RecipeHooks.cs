using System.Collections.Concurrent;
using ACE.Database;
using ACE.Database.Models.World;
using ACE.Entity.Enum;
using ACE.Server.Managers;
using ACE.Server.Network.GameMessages.Messages;
using ACE.Server.WorldObjects;
using HarmonyLib;

namespace SpellSiphon.Features;

/// <summary>
/// Native ACE RecipeManager integration for Spellsiphon (cleansing) and Glyph of Extraction (extraction).
/// Uses separate recipe IDs so target-destruction behavior differs between the two tools.
/// </summary>
internal static class RecipeHooks
{
	private const uint SpellsiphonRecipeId = 900001;        // Extraction: target destroyed
	private const uint SpellsiphonCleanseRecipeId = 900002; // Cleansing: target survives

	// Rare crystals: secondary roll after primary success; UI chance = primary × RareCrystalSecondarySuccessChance
	private static readonly HashSet<uint> RareCrystalWcids = new()
	{
		30183, 30184, 30186, 30187, 30188, 30189, 30194, 30195,
		30197, 30198, 30199, 30205, 30209, 30214, 30215, 30216,
		30217, 30218, 30221, 30222, 30224, 30225, 30226, 30228,
		30229, 30233, 30242, 30245, 30246
	};

	private readonly record struct ExtractionState(List<int> SpellIds, bool IsRareCrystal, bool IsGlyph, uint GlyphWcid, int GlyphTier);

	// Cross-thread state for extraction (ActionChain may run on different threads)
	private static readonly ConcurrentDictionary<uint, ExtractionState> ExtractionStates = new();
	private static readonly ConcurrentDictionary<uint, bool> ExtractionSuccess = new();

	// Static recipe instances (created once, reused)
	private static Recipe? _spellsiphonRecipe;
	private static Recipe? _spellsiphonCleanseRecipe;

	// ==================== RECIPE FACTORIES ====================

	private static Recipe GetSpellsiphonRecipe()
	{
		if (_spellsiphonRecipe != null)
			return _spellsiphonRecipe;

		_spellsiphonRecipe = new Recipe
		{
			Id = SpellsiphonRecipeId,
			Skill = (uint)Skill.MagicItemTinkering,
			Difficulty = 250,
			SuccessWCID = 0,
			SuccessAmount = 0,
			FailWCID = 0,
			FailAmount = 0,
			SuccessMessage = "[SpellSiphon] The spells are successfully extracted!",
			FailMessage = "",
			SuccessDestroySourceChance = 1.0,
			SuccessDestroySourceAmount = 1,
			SuccessDestroyTargetChance = 1.0,
			SuccessDestroyTargetAmount = 1,
			FailDestroySourceChance = 1.0,
			FailDestroySourceAmount = 1,
			FailDestroyTargetChance = 1.0,
			FailDestroyTargetAmount = 1,
			DataId = 0,
			LastModified = DateTime.UtcNow
		};

		ModManager.Log($"[SpellSiphon] Created extraction recipe {SpellsiphonRecipeId}: target destroyed on success/fail.");
		return _spellsiphonRecipe;
	}

	private static Recipe GetSpellsiphonCleanseRecipe()
	{
		if (_spellsiphonCleanseRecipe != null)
			return _spellsiphonCleanseRecipe;

		_spellsiphonCleanseRecipe = new Recipe
		{
			Id = SpellsiphonCleanseRecipeId,
			Skill = (uint)Skill.MagicItemTinkering,
			Difficulty = 250,
			SuccessWCID = 0,
			SuccessAmount = 0,
			FailWCID = 0,
			FailAmount = 0,
			SuccessMessage = "[SpellSiphon] Negative spells have been cleansed from the item!",
			FailMessage = "",
			SuccessDestroySourceChance = 1.0,
			SuccessDestroySourceAmount = 1,
			SuccessDestroyTargetChance = 0.0, // Target survives on success
			SuccessDestroyTargetAmount = 0,
			FailDestroySourceChance = 1.0,    // Spellsiphon consumed on failure
			FailDestroySourceAmount = 1,
			FailDestroyTargetChance = 0.0,    // Target survives on failure
			FailDestroyTargetAmount = 0,
			DataId = 0,
			LastModified = DateTime.UtcNow
		};

		ModManager.Log($"[SpellSiphon] Created cleanse recipe {SpellsiphonCleanseRecipeId}: target survives on success/fail.");
		return _spellsiphonCleanseRecipe;
	}

	// ==================== GLYPH WCID HELPERS ====================

	private static bool IsGlyphWcid(uint wcid, out int tier)
	{
		uint baseWcid = PatchClass.Settings?.GlyphExtractionBaseWcid ?? 850210;
		if (wcid >= baseWcid && wcid <= baseWcid + 9)
		{
			tier = (int)(wcid - baseWcid);
			return true;
		}
		tier = -1;
		return false;
	}

	// ==================== PATCH: UseObjectOnTarget (Prefix) ====================
	// Blocks our tools on invalid targets BEFORE the generic "cannot be used on" message.

	[HarmonyPrefix]
	[HarmonyPatch(typeof(RecipeManager), nameof(RecipeManager.UseObjectOnTarget))]
	internal static bool PreUseObjectOnTarget(Player player, WorldObject source, WorldObject target, bool confirmed)
	{
		Settings? s = PatchClass.Settings;
		if (s == null || !s.Enabled)
			return true;

		if (player == null || source == null || target == null)
			return true;

		bool isSpellsiphon = source.WeenieClassId == s.SpellsiphonToolWcid;
		bool isGlyph = IsGlyphWcid(source.WeenieClassId, out int glyphTier);

		if (!isSpellsiphon && !isGlyph)
			return true;

		// Charged tools: let normal flow proceed (UseOnTargetHooks handles apply)
		if (isSpellsiphon && ItemPayload.IsSpellsiphonApplyReady(source, s.SpellsiphonToolWcid))
			return true;
		if (isGlyph && ItemPayload.IsGlyphApplyReady(source))
			return true;

		var spellIds = ReadItemSpellIds(target);

		if (isSpellsiphon)
		{
			if (spellIds.Count == 0)
			{
				player.SendMessage("[SpellSiphon] The Spellsiphon finds no spells on this item.", ChatMessageType.Magic);
				player.SendUseDoneEvent();
				return false;
			}
			if (!s.EnableAnyItemExtraction && target.WeenieType != WeenieType.Gem && (target.ItemType & ItemType.Gem) == 0)
			{
				player.SendMessage("[SpellSiphon] The Spellsiphon can only be used on gems.", ChatMessageType.Magic);
				player.SendUseDoneEvent();
				return false;
			}
		}
		else if (isGlyph)
		{
			var eligible = FilterSpellsForGlyphTier(spellIds, glyphTier);
			if (eligible.Count == 0)
			{
				string expected = glyphTier == 0
					? "cantrips or unique non-tiered spells"
					: $"Level {glyphTier} spells";
				player.SendMessage($"[SpellSiphon] Glyph of Extraction has no valid extraction targets on this item. Try it on an item that carries {expected}.", ChatMessageType.Magic);
				player.SendUseDoneEvent();
				return false;
			}
		}

		return true;
	}

	// ==================== PATCH: GetRecipe ====================
	// Injects the appropriate recipe based on tool type.

	internal static void PostGetRecipe(Player player, WorldObject source, WorldObject target, ref Recipe __result)
	{
		Settings? s = PatchClass.Settings;
		if (s == null || !s.Enabled)
			return;

		if (source == null)
			return;

		bool isSpellsiphon = source.WeenieClassId == s.SpellsiphonToolWcid;
		bool isGlyph = IsGlyphWcid(source.WeenieClassId, out int glyphTier);

		if (!isSpellsiphon && !isGlyph)
			return;

		// Charged tools are apply-ready — do not hijack GetRecipe.
		if (isSpellsiphon && ItemPayload.IsSpellsiphonApplyReady(source, s.SpellsiphonToolWcid))
			return;
		if (isGlyph && ItemPayload.IsGlyphApplyReady(source))
			return;

		if (!IsValidSourceItem(target, s))
			return;

		// For Glyph tools: check tier eligibility BEFORE injecting the recipe.
		if (isGlyph)
		{
			var allSpellIds = ReadItemSpellIds(target);
			var eligible = FilterSpellsForGlyphTier(allSpellIds, glyphTier);
			if (eligible.Count == 0)
			{
				string tierName = GetGlyphTierName(glyphTier);
				string expected = glyphTier == 0
					? "cantrips or unique non-tiered spells"
					: $"Level {glyphTier} spells";
				player.SendMessage($"[SpellSiphon] {tierName} has no valid extraction targets on this item. Try it on an item that carries {expected}.", ChatMessageType.Magic);
				return;
			}
		}

		Recipe recipe = isSpellsiphon ? GetSpellsiphonCleanseRecipe() : GetSpellsiphonRecipe();

		// Gem-only mode: only inject when ACE matched no recipe.
		if (!s.EnableAnyItemExtraction)
		{
			if (__result != null)
				return;

			__result = recipe;
			return;
		}

		// Any spell-bearing item: our recipe wins over vanilla item-on-item matches.
		__result = recipe;
	}

	// ==================== PATCH: GetRecipeChance ====================
	// Calculates custom success rate.

	internal static void PostGetRecipeChance(Player player, WorldObject source, WorldObject target, Recipe recipe, ref double? __result)
	{
		Settings? s = PatchClass.Settings;
		if (s == null || !s.Enabled)
			return;

		if (recipe?.Id != SpellsiphonRecipeId && recipe?.Id != SpellsiphonCleanseRecipeId)
			return;

		// Spellsiphon cleansing is always 100% success
		if (recipe.Id == SpellsiphonCleanseRecipeId)
		{
			__result = 1.0;
			return;
		}

		double primary = CalculateSuccessRate(player, s);

		// Rare crystals need primary success then secondary roll.
		if (target != null && RareCrystalWcids.Contains(target.WeenieClassId))
		{
			float secondary = Math.Clamp(s.RareCrystalSecondarySuccessChance, 0f, 1f);
			primary *= secondary;
		}

		__result = primary;
	}

	// ==================== PATCH: HandleRecipe (Prefix) ====================
	// Captures spell IDs from target BEFORE destruction (extraction path only).

	internal static void PreHandleRecipe(Player player, WorldObject source, WorldObject target, Recipe recipe, double successChance)
	{
		Settings? s = PatchClass.Settings;
		if (s == null || !s.Enabled)
			return;

		if (recipe?.Id != SpellsiphonRecipeId && recipe?.Id != SpellsiphonCleanseRecipeId)
			return;

		// Spellsiphon cleansing: no pre-capture needed; target survives and is inspected in PostHandleRecipe.
		if (source != null && source.WeenieClassId == s?.SpellsiphonToolWcid)
			return;

		// Glyph extraction: filter spells by tier eligibility and capture state.
		bool isGlyph = IsGlyphWcid(source.WeenieClassId, out int glyphTier);
		List<int> spellIds = ReadItemSpellIds(target);

		if (isGlyph)
		{
			var eligible = FilterSpellsForGlyphTier(spellIds, glyphTier);
			if (eligible.Count == 0)
			{
				ExtractionStates[player.Guid.Full] = new ExtractionState(new List<int>(), false, true, source.WeenieClassId, glyphTier);
				return;
			}
			spellIds = eligible;
		}

		bool isRare = target != null && RareCrystalWcids.Contains(target.WeenieClassId);
		ExtractionStates[player.Guid.Full] = new ExtractionState(spellIds, isRare, isGlyph, source.WeenieClassId, glyphTier);
	}

	// ==================== PATCH: CreateDestroyItems (Postfix) ====================
	// Captures success/fail result for both recipes.

	internal static void PostCreateDestroyItems(Player player, Recipe recipe, WorldObject source, WorldObject target, double successChance, bool success)
	{
		Settings? s = PatchClass.Settings;
		if (s == null || !s.Enabled)
			return;

		if (recipe?.Id != SpellsiphonRecipeId && recipe?.Id != SpellsiphonCleanseRecipeId)
			return;

		ExtractionSuccess[player.Guid.Full] = success;
	}

	// ==================== PATCH: HandleRecipe (Postfix) ====================
	// Branches: Spellsiphon → cleanse negative spells; Glyph → extract spells.

	internal static void PostHandleRecipe(Player player, WorldObject source, WorldObject target, Recipe recipe, double successChance)
	{
		Settings? s = PatchClass.Settings;
		if (s == null || !s.Enabled)
			return;

		if (recipe?.Id != SpellsiphonRecipeId && recipe?.Id != SpellsiphonCleanseRecipeId)
			return;

		if (!ExtractionSuccess.TryRemove(player.Guid.Full, out bool success))
			return;

		bool isSpellsiphon = source?.WeenieClassId == s?.SpellsiphonToolWcid;

		// ======== SPELLSIPHON CLEANSING PATH ========
		if (isSpellsiphon)
		{
			if (!success)
			{
				player.SendMessage(
					"The item's latent magic overwhelms your Spellsiphon, destroying it!",
					ChatMessageType.Magic);
				return;
			}

			if (target == null)
				return;

			var removed = RemoveNegativeSpells(target, s);

			if (removed.Count > 0)
			{
				// Broadcast update so client sees the change
				try { target.EnqueueBroadcastUpdateObject(); }
				catch { }

				var names = removed.Select(id => LootMutator.TryGetSpellName(id)).Where(n => !string.IsNullOrEmpty(n)).ToList();
				string namesJoined = string.Join(", ", names);
				player.SendMessage($"[SpellSiphon] Cleansed {removed.Count} negative spell(s) from {target.Name}: {namesJoined}.");
			}
			else
			{
				player.SendMessage($"[SpellSiphon] {target.Name} has no negative spells to cleanse.");
			}
			return;
		}

		// ======== GLYPH EXTRACTION PATH ========
		if (!ExtractionStates.TryRemove(player.Guid.Full, out var state))
			return;

		// Glyph with no eligible spells: early message about no valid targets
		if (state.IsGlyph && state.SpellIds.Count == 0)
		{
			string tierName = GetGlyphTierName(state.GlyphTier);
			string expected = state.GlyphTier == 0
				? "cantrips or unique non-tiered spells"
				: $"Level {state.GlyphTier} spells";
			player.SendMessage($"[SpellSiphon] {tierName} has no valid extraction targets on this item. Try it on an item that carries {expected}.", ChatMessageType.Magic);
			return;
		}

		if (!success || state.SpellIds == null || state.SpellIds.Count == 0)
		{
			if (!success)
			{
				string toolLabel = state.IsGlyph ? GetGlyphTierName(state.GlyphTier) : "Spellsiphon";
				player.SendMessage(
					$"The item's latent magic overwhelms your {toolLabel}, destroying it!",
					ChatMessageType.Magic);

				// Belt-and-suspenders: ensure target is destroyed on extraction failure.
				if (target != null && !target.IsDestroyed)
				{
					try { target.Destroy(); }
					catch (Exception ex)
					{
						ModManager.Log($"[SpellSiphon] PostHandleRecipe manual target.Destroy failed: {ex.Message}", ModManager.LogLevel.Warn);
					}
				}
			}
			return;
		}

		if (state.IsRareCrystal)
		{
			float secondary = Math.Clamp(s.RareCrystalSecondarySuccessChance, 0f, 1f);
			if (ThreadSafeRandom.Next(0.0f, 1.0f) > secondary)
			{
				player.SendMessage("[SpellSiphon] The crystal's ancient magic resists your attempt.");
				return;
			}
		}

		var spellIds = state.SpellIds;

		// Extract 1-3 spells, prioritizing cantrips and unique spells over ranked ones
		int extractCount = Math.Min(spellIds.Count, ThreadSafeRandom.Next(1, 4));

		var sorted = spellIds
			.OrderByDescending(id => IsCantrip(id))
			.ThenByDescending(id => !HasRomanNumeralSuffix(id))
			.ThenBy(_ => ThreadSafeRandom.Next(0, 1000000))
			.ToList();

		var extracted = sorted.Take(extractCount).ToList();
		extracted = DeduplicateByHighestLevel(extracted);
		extracted = DeduplicateByHighestLevel(extracted);

		WorldObject? charged;
		string resultLabel;

		if (state.IsGlyph)
		{
			charged = CreateChargedGlyph(player, extracted, state.GlyphWcid, state.GlyphTier);
			resultLabel = GetGlyphTierName(state.GlyphTier);
		}
		else
		{
			charged = CreateChargedSpellsiphon(player, extracted, s);
			resultLabel = "Spellsiphon";
		}

		if (charged == null)
		{
			player.SendMessage($"[SpellSiphon] ERROR: Failed to create charged {resultLabel}. Report this.");
			return;
		}

		bool addedToInventory = player.TryCreateInInventoryWithNetworking(charged);
		if (!addedToInventory)
		{
			charged.Location = player.Location;
			charged.EnterWorld();
			player.SendMessage($"[SpellSiphon] Your inventory is full. The charged {resultLabel} drops at your feet.");
		}
		else
		{
			try
			{
				player.EnqueueBroadcast(new GameMessageUpdateObject(charged));
				player.MoveItemToFirstContainerSlot(charged);
			}
			catch { }
		}

		var spellNames = extracted.Select(id => LootMutator.TryGetSpellName(id)).Where(n => !string.IsNullOrEmpty(n)).ToList();
		string spellNamesJoined = string.Join(", ", spellNames);
		player.SendMessage($"[SpellSiphon] Extracted {extracted.Count} spell(s): {spellNamesJoined}.");
	}

	// ==================== NEGATIVE SPELL CLEANSING ====================

	private static List<int> RemoveNegativeSpells(WorldObject item, Settings? s)
	{
		var removed = new List<int>();
		if (s == null)
			return removed;

		try
		{
			var book = item.Biota?.PropertiesSpellBook;
			if (book == null || book.Count == 0)
				return removed;

			var toRemove = new List<int>();
			foreach (int id in book.Keys)
			{
				if (id <= 0)
					continue;

				try
				{
					var spell = new ACE.Server.Entity.Spell(id);
					if (spell == null || spell.Id == 0)
						continue;

					// Primary filter: ACE flags non-beneficial spells as harmful
					bool isHarmful = !spell.IsBeneficial;

					// Secondary filter: configurable name denylist
					if (!isHarmful && s.NegativeSpellNameContains != null && s.NegativeSpellNameContains.Count > 0)
					{
						string name = spell.Name ?? "";
						isHarmful = ContainsAny(name, s.NegativeSpellNameContains);
					}

					if (isHarmful)
						toRemove.Add(id);
				}
				catch
				{
					// If we can't inspect the spell, leave it alone
				}
			}

			foreach (int id in toRemove)
			{
				if (book.Remove(id))
					removed.Add(id);
			}

			// If spellbook is now empty, clear the magical UI effect
			if (book.Count == 0)
			{
				try
				{
					item.UiEffects = (item.UiEffects ?? 0) & ~UiEffects.Magical;
					item.CalculateObjDesc();
				}
				catch { }
			}
		}
		catch { }

		return removed;
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

	// ==================== GLYPH TIER FILTERING ====================

	private static List<int> FilterSpellsForGlyphTier(List<int> spellIds, int tier)
	{
		var result = new List<int>();
		foreach (int id in spellIds)
		{
			if (tier == 0)
			{
				if (IsCantrip(id) || !HasRomanNumeralSuffix(id))
					result.Add(id);
			}
			else
			{
				try
				{
					var spell = new ACE.Server.Entity.Spell(id);
					if (spell != null && spell.Level == tier)
						result.Add(id);
				}
				catch { }
			}
		}
		return result;
	}

	private static string GetGlyphTierName(int tier)
	{
		return "Glyph of Extraction";
	}

	// ==================== HELPERS ====================

	private static bool IsValidSourceItem(WorldObject item, Settings s)
	{
		if (!s.EnableAnyItemExtraction)
			return (item.ItemType & ItemType.Gem) != 0 || item.WeenieType == WeenieType.Gem;

		return ReadItemSpellIds(item).Count > 0;
	}

	private static double CalculateSuccessRate(Player player, Settings s)
	{
		float baseRate = s.BaseExtractionSuccessRate;
		float augmentBonus = 0f;
		try
		{
			if (player.AugmentationBonusSalvage > 0)
				augmentBonus = s.CharmedSmithBonus;
		}
		catch { }

		float mit = player.GetCreatureSkill(Skill.MagicItemTinkering).Current;
		float mitBonus = mit * s.MitBonusPerPoint;

		return Math.Clamp(baseRate + augmentBonus + mitBonus, 0f, s.MaxSuccessRate) / 100.0;
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

	private static List<int> DeduplicateByHighestLevel(List<int> spellIds)
	{
		var result = new List<int>();
		var nameMap = new Dictionary<string, (int id, int level)>();

		foreach (int id in spellIds)
		{
			try
			{
				var spell = new ACE.Server.Entity.Spell(id);
				string name = spell.Name ?? "";
				string prefix = StripRomanNumerals(name);
				int level = (int)spell.Level;

				if (!nameMap.ContainsKey(prefix) || level > nameMap[prefix].level)
					nameMap[prefix] = (id, level);
			}
			catch
			{
				if (!result.Contains(id)) result.Add(id);
			}
		}

		foreach (var kvp in nameMap)
			if (!result.Contains(kvp.Value.id)) result.Add(kvp.Value.id);

		return result;
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

	private static bool IsCantrip(int spellId)
	{
		try
		{
			var spell = new ACE.Server.Entity.Spell(spellId);
			string name = spell.Name ?? "";
			if (name.Contains("Cantrip", StringComparison.OrdinalIgnoreCase)) return true;
			if (spell.Level <= 2 && spell.Duration <= 120) return true;
		}
		catch { }
		return false;
	}

	private static bool HasRomanNumeralSuffix(int spellId)
	{
		try
		{
			var spell = new ACE.Server.Entity.Spell(spellId);
			string name = spell.Name ?? "";
			var parts = name.Trim().Split(' ');
			if (parts.Length > 1 && IsRomanNumeral(parts[^1])) return true;
		}
		catch { }
		return false;
	}

	// ==================== CHARGED SPELLSIPHON CREATION ====================

	private static WorldObject? CreateChargedSpellsiphon(Player player, List<int> spellIds, Settings? s)
	{
		if (s == null)
			return null;

		try
		{
			var weenie = DatabaseManager.World.GetCachedWeenie(s.SpellsiphonToolWcid);
			if (weenie == null)
				return null;

			var charged = WorldObjectFactory.CreateNewWorldObject(weenie);
			if (charged == null)
				return null;

			charged.SetProperty((PropertyBool)ItemPayload.IsChargedSpellsiphonProp, true);
			charged.SetProperty((PropertyInt)ItemPayload.SpellsiphonSpellCountProp, spellIds.Count);
			ItemPayload.TryWriteSpellPayload(charged, spellIds);

			if (charged.Biota != null)
			{
				charged.Biota.PropertiesSpellBook ??= new Dictionary<int, float>();
				foreach (int id in spellIds)
				{
					if (!charged.Biota.PropertiesSpellBook.ContainsKey(id))
						charged.Biota.PropertiesSpellBook[id] = 1.0f;
				}
			}

			charged.SetProperty(PropertyInt.MaxStackSize, 1);
			charged.SetProperty(PropertyInt.StackSize, 1);
			charged.SetProperty(PropertyInt.Bonded, (int)BondedStatus.Bonded);

			try
			{
				charged.UiEffects = (charged.UiEffects ?? 0) | UiEffects.Magical;
				charged.CalculateObjDesc();
			}
			catch { }

			try { charged.Name = $"Charged Spellsiphon ({spellIds.Count})"; }
			catch { }

			return charged;
		}
		catch (Exception ex)
		{
			ModManager.Log($"[SpellSiphon] CreateChargedSpellsiphon failed: {ex}");
			return null;
		}
	}

	// ==================== CHARGED GLYPH CREATION ====================

	private static WorldObject? CreateChargedGlyph(Player player, List<int> spellIds, uint glyphWcid, int tier)
	{
		try
		{
			var weenie = DatabaseManager.World.GetCachedWeenie(glyphWcid);
			if (weenie == null)
				return null;

			var charged = WorldObjectFactory.CreateNewWorldObject(weenie);
			if (charged == null)
				return null;

			charged.SetProperty((PropertyBool)ItemPayload.IsChargedGlyphProp, true);
			charged.SetProperty((PropertyInt)ItemPayload.GlyphExtractionTierProp, tier);
			charged.SetProperty((PropertyInt)ItemPayload.GlyphSpellCountProp, spellIds.Count);
			ItemPayload.TryWriteSpellPayload(charged, spellIds);

			if (charged.Biota != null)
			{
				charged.Biota.PropertiesSpellBook ??= new Dictionary<int, float>();
				foreach (int id in spellIds)
				{
					if (!charged.Biota.PropertiesSpellBook.ContainsKey(id))
						charged.Biota.PropertiesSpellBook[id] = 1.0f;
				}
			}

			charged.SetProperty(PropertyInt.MaxStackSize, 1);
			charged.SetProperty(PropertyInt.StackSize, 1);
			charged.SetProperty(PropertyInt.Bonded, (int)BondedStatus.Bonded);

			try
			{
				charged.UiEffects = (charged.UiEffects ?? 0) | UiEffects.Acid;
				uint overlayDid = 0x06006C33 + (uint)tier;
				charged.SetProperty(PropertyDataId.IconOverlay, overlayDid);
				charged.CalculateObjDesc();
			}
			catch { }

			string tierName = GetGlyphTierName(tier);
			try { charged.Name = $"{tierName} ({spellIds.Count})"; }
			catch { }

			return charged;
		}
		catch (Exception ex)
		{
			ModManager.Log($"[SpellSiphon] CreateChargedGlyph failed: {ex}");
			return null;
		}
	}
}
