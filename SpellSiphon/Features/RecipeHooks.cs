using System.Collections.Concurrent;
using ACE.Database;
using ACE.Database.Models.World;
using ACE.Entity.Enum;
using ACE.Server.Managers;
using ACE.Server.Network.GameMessages.Messages;
using ACE.Server.WorldObjects;
using HarmonyLib;

namespace Spellsiphon.Features;

/// <summary>
/// Native ACE RecipeManager integration for Spellsiphon and Glyph of Extraction.
/// Provides skill-based confirmation dialog and proper item consumption.
/// </summary>
internal static class RecipeHooks
{
	private const uint SpellsiphonRecipeId = 900001;

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

	// Static recipe instance (created once, reused)
	private static Recipe? _spellsiphonRecipe;

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
				player.SendMessage("[Spellsiphon] The Spellsiphon finds no spells to extract on this item.", ChatMessageType.Magic);
				player.SendUseDoneEvent();
				return false;
			}
			if (!s.EnableAnyItemExtraction && target.WeenieType != WeenieType.Gem && (target.ItemType & ItemType.Gem) == 0)
			{
				player.SendMessage("[Spellsiphon] The Spellsiphon can only extract spells from gems.", ChatMessageType.Magic);
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
				player.SendMessage($"[Spellsiphon] Glyph of Extraction has no valid extraction targets on this item. Try it on an item that carries {expected}.", ChatMessageType.Magic);
				player.SendUseDoneEvent();
				return false;
			}
		}

		return true;
	}

	private static Recipe GetSpellsiphonRecipe()
	{
		if (_spellsiphonRecipe != null)
			return _spellsiphonRecipe;

		_spellsiphonRecipe = new Recipe
		{
			Id = SpellsiphonRecipeId,
			Skill = (uint)Skill.MagicItemTinkering,
			Difficulty = 250, // Tuned for ~33% base success
			SuccessWCID = 0,
			SuccessAmount = 0,
			FailWCID = 0,
			FailAmount = 0,
			SuccessMessage = "[Spellsiphon] The spells are successfully extracted!",
			FailMessage = "",  // Custom message sent in PostHandleRecipe postfix.
			SuccessDestroySourceChance = 1.0,
			SuccessDestroySourceAmount = 1,
			SuccessDestroyTargetChance = 1.0,
			SuccessDestroyTargetAmount = 1,
			FailDestroySourceChance = 1.0,   // Tool is consumed on failure.
			FailDestroySourceAmount = 1,
			FailDestroyTargetChance = 1.0,   // Target item ALSO destroyed on failure.
			FailDestroyTargetAmount = 1,
			DataId = 0,
			LastModified = DateTime.UtcNow
		};

		ModManager.Log($"[Spellsiphon] Created recipe {SpellsiphonRecipeId}: FailDestroyTargetAmount={_spellsiphonRecipe.FailDestroyTargetAmount}, FailDestroyTargetChance={_spellsiphonRecipe.FailDestroyTargetChance}");

		return _spellsiphonRecipe;
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

	// ==================== PATCH: GetRecipe ====================
	// Injects our recipe when Spellsiphon OR Glyph is used on a spell-bearing item.

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

		// Charged tools are apply-ready — do not hijack GetRecipe into extraction.
		if (isSpellsiphon && ItemPayload.IsSpellsiphonApplyReady(source, s.SpellsiphonToolWcid))
			return;

		if (isGlyph && ItemPayload.IsGlyphApplyReady(source))
			return;

		if (!IsValidSourceItem(target, s))
			return;

		// For Glyph tools: check tier eligibility BEFORE injecting the recipe.
		// If no eligible spells, send message and bail so the tool is NOT consumed.
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
				player.SendMessage($"[Spellsiphon] {tierName} has no valid extraction targets on this item. Try it on an item that carries {expected}.", ChatMessageType.Magic);
				return; // Do NOT inject recipe — tool stays intact
			}
		}

		// Gem-only mode: only inject when ACE matched no recipe (avoid stealing unrelated combos).
		if (!s.EnableAnyItemExtraction)
		{
			if (__result != null)
				return;

			__result = GetSpellsiphonRecipe();
			return;
		}

		// Any spell-bearing item: extraction must win over vanilla item-on-item matches
		__result = GetSpellsiphonRecipe();
	}

	// ==================== PATCH: GetRecipeChance ====================
	// Calculates custom success rate.

	internal static void PostGetRecipeChance(Player player, WorldObject source, WorldObject target, Recipe recipe, ref double? __result)
	{
		Settings? s = PatchClass.Settings;
		if (s == null || !s.Enabled)
			return;

		if (recipe?.Id != SpellsiphonRecipeId)
			return;

		double primary = CalculateSuccessRate(player, s);

		// Match PostHandleRecipe: rare crystals need primary success then secondary roll — show compound chance in crafting dialog.
		if (target != null && RareCrystalWcids.Contains(target.WeenieClassId))
		{
			float secondary = Math.Clamp(s.RareCrystalSecondarySuccessChance, 0f, 1f);
			primary *= secondary;
		}

		__result = primary;
	}

	// ==================== PATCH: HandleRecipe (Prefix) ====================
	// Captures spell IDs from target BEFORE destruction.

	internal static void PreHandleRecipe(Player player, WorldObject source, WorldObject target, Recipe recipe, double successChance)
	{
		Settings? s = PatchClass.Settings;
		if (s == null || !s.Enabled)
			return;

		if (recipe?.Id != SpellsiphonRecipeId)
			return;

		if (source == null)
			return;

		bool isGlyph = IsGlyphWcid(source.WeenieClassId, out int glyphTier);
		List<int> spellIds;

		if (isGlyph)
		{
			// Glyph extraction: filter spells by tier eligibility
			spellIds = ReadItemSpellIds(target);
			var eligible = FilterSpellsForGlyphTier(spellIds, glyphTier);

			if (eligible.Count == 0)
			{
				// Store empty state — PostHandleRecipe will emit the "no valid targets" message
				ExtractionStates[player.Guid.Full] = new ExtractionState(new List<int>(), false, true, source.WeenieClassId, glyphTier);
				return;
			}

			spellIds = eligible;
		}
		else
		{
			spellIds = ReadItemSpellIds(target);
		}

		bool isRare = target != null && RareCrystalWcids.Contains(target.WeenieClassId);
		ExtractionStates[player.Guid.Full] = new ExtractionState(spellIds, isRare, isGlyph, source.WeenieClassId, glyphTier);
	}

	// ==================== PATCH: CreateDestroyItems (Postfix) ====================
	// Captures success/fail result.

	internal static void PostCreateDestroyItems(Player player, Recipe recipe, WorldObject source, WorldObject target, double successChance, bool success)
	{
		Settings? s = PatchClass.Settings;
		if (s == null || !s.Enabled)
			return;

		if (recipe?.Id != SpellsiphonRecipeId)
			return;

		ExtractionSuccess[player.Guid.Full] = success;
	}

	// ==================== PATCH: HandleRecipe (Postfix) ====================
	// Creates charged tool on success.

	internal static void PostHandleRecipe(Player player, WorldObject source, WorldObject target, Recipe recipe, double successChance)
	{
		Settings? s = PatchClass.Settings;
		if (s == null || !s.Enabled)
			return;

		if (recipe?.Id != SpellsiphonRecipeId)
			return;

		if (!ExtractionStates.TryRemove(player.Guid.Full, out var state))
			return;

		if (!ExtractionSuccess.TryRemove(player.Guid.Full, out bool success))
			return;

		// Glyph with no eligible spells: early message about no valid targets
		if (state.IsGlyph && state.SpellIds.Count == 0)
		{
			string tierName = GetGlyphTierName(state.GlyphTier);
			string expected = state.GlyphTier == 0
				? "cantrips or unique non-tiered spells"
				: $"Level {state.GlyphTier} spells";
			player.SendMessage($"[Spellsiphon] {tierName} has no valid extraction targets on this item. Try it on an item that carries {expected}.", ChatMessageType.Magic);
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

				// Belt-and-suspenders: ensure target is destroyed on extraction failure
				// (recipe FailDestroyTargetAmount=1 should already do this, but some quest
				// items may silently survive the recipe consumption path).
				if (target != null && !target.IsDestroyed)
				{
					try { target.Destroy(); }
					catch (Exception ex)
					{
						ModManager.Log($"[Spellsiphon] PostHandleRecipe manual target.Destroy failed: {ex.Message}", ModManager.LogLevel.Warn);
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
				player.SendMessage("[Spellsiphon] The crystal's ancient magic resists your attempt.");
				return;
			}
		}

		var spellIds = state.SpellIds;

		// Extract 1-3 spells, prioritizing cantrips and unique spells over ranked ones
		int extractCount = Math.Min(spellIds.Count, ThreadSafeRandom.Next(1, 4)); // 1 to 3 inclusive

		// Sort by priority: cantrips > unique (no Roman numeral) > ranked
		var sorted = spellIds
			.OrderByDescending(id => IsCantrip(id))
			.ThenByDescending(id => !HasRomanNumeralSuffix(id))
			.ThenBy(_ => ThreadSafeRandom.Next(0, 1000000))
			.ToList();

		var extracted = sorted.Take(extractCount).ToList();

		// Deduplicate: keep highest level per spell name prefix
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
			player.SendMessage($"[Spellsiphon] ERROR: Failed to create charged {resultLabel}. Report this.");
			return;
		}

		// Add to player inventory
		bool addedToInventory = player.TryCreateInInventoryWithNetworking(charged);
		if (!addedToInventory)
		{
			charged.Location = player.Location;
			charged.EnterWorld();
			player.SendMessage($"[Spellsiphon] Your inventory is full. The charged {resultLabel} drops at your feet.");
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
		player.SendMessage($"[Spellsiphon] Extracted {extracted.Count} spell(s): {string.Join(", ", spellNames)}.");
	}

	// ==================== GLYPH TIER FILTERING ====================

	private static List<int> FilterSpellsForGlyphTier(List<int> spellIds, int tier)
	{
		var result = new List<int>();
		foreach (int id in spellIds)
		{
			if (tier == 0)
			{
				// Tier 0: Cantrips and unique (non-Roman-numeral) spells only
				if (IsCantrip(id) || !HasRomanNumeralSuffix(id))
					result.Add(id);
			}
			else
			{
				// Tier N (N >= 1): exact spell level N
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
		// All tiers share the same base name; icon overlay distinguishes them.
		return "Glyph of Extraction";
	}

	// ==================== HELPERS ====================

	private static bool IsValidSourceItem(WorldObject item, Settings s)
	{
		if (!s.EnableAnyItemExtraction)
			return (item.ItemType & ItemType.Gem) != 0 || item.WeenieType == WeenieType.Gem;

		// Same sources as PreHandleRecipe / ReadItemSpellIds (SpellDID + PropertyDataId.Spell, not only spellbook).
		return ReadItemSpellIds(item).Count > 0;
	}

	private static double CalculateSuccessRate(Player player, Settings s)
	{
		float baseRate = s.BaseExtractionSuccessRate; // 33%

		// Charmed Smith augment (29273 / AugmentationBonusSalvage) = +5%
		float augmentBonus = 0f;
		try
		{
			if (player.AugmentationBonusSalvage > 0)
				augmentBonus = s.CharmedSmithBonus;
		}
		catch { }

		// Magic Item Tinkering skill bonus
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
			// Also treat level 1-2 spells with short duration as cantrip-tier
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

	private static WorldObject? CreateChargedSpellsiphon(Player player, List<int> spellIds, Settings s)
	{
		try
		{
			var weenie = DatabaseManager.World.GetCachedWeenie(s.SpellsiphonToolWcid);
			if (weenie == null)
				return null;

			var charged = WorldObjectFactory.CreateNewWorldObject(weenie);
			if (charged == null)
				return null;

			// Mark as charged
			charged.SetProperty((PropertyBool)ItemPayload.IsChargedSpellsiphonProp, true);
			charged.SetProperty((PropertyInt)ItemPayload.SpellsiphonSpellCountProp, spellIds.Count);
			ItemPayload.TryWriteSpellPayload(charged, spellIds);

			// Add spells to spellbook so they show in item info panel
			if (charged.Biota != null)
			{
				charged.Biota.PropertiesSpellBook ??= new Dictionary<int, float>();
				foreach (int id in spellIds)
				{
					if (!charged.Biota.PropertiesSpellBook.ContainsKey(id))
						charged.Biota.PropertiesSpellBook[id] = 1.0f;
				}
			}

			// Make unstackable; Bonded differs from base tool so stacks never merge with uncharged.
			charged.SetProperty(PropertyInt.MaxStackSize, 1);
			charged.SetProperty(PropertyInt.StackSize, 1);
			charged.SetProperty(PropertyInt.Bonded, (int)BondedStatus.Bonded);

			// Visuals: magical overlay
			try
			{
				charged.UiEffects = (charged.UiEffects ?? 0) | UiEffects.Magical;
				charged.CalculateObjDesc();
			}
			catch { }

			// Name: count only
			try { charged.Name = $"Charged Spellsiphon ({spellIds.Count})"; }
			catch { }

			return charged;
		}
		catch (Exception ex)
		{
			ModManager.Log($"[Spellsiphon] CreateChargedSpellsiphon failed: {ex}");
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

			// Mark as charged
			charged.SetProperty((PropertyBool)ItemPayload.IsChargedGlyphProp, true);
			charged.SetProperty((PropertyInt)ItemPayload.GlyphExtractionTierProp, tier);
			charged.SetProperty((PropertyInt)ItemPayload.GlyphSpellCountProp, spellIds.Count);
			ItemPayload.TryWriteSpellPayload(charged, spellIds);

			// Add spells to spellbook so they show in item info panel
			if (charged.Biota != null)
			{
				charged.Biota.PropertiesSpellBook ??= new Dictionary<int, float>();
				foreach (int id in spellIds)
				{
					if (!charged.Biota.PropertiesSpellBook.ContainsKey(id))
						charged.Biota.PropertiesSpellBook[id] = 1.0f;
				}
			}

			// Make unstackable; Bonded so stacks don't merge with blanks.
			charged.SetProperty(PropertyInt.MaxStackSize, 1);
			charged.SetProperty(PropertyInt.StackSize, 1);
			charged.SetProperty(PropertyInt.Bonded, (int)BondedStatus.Bonded);

			// Visuals: Acid (green) outline = charged glyph look + tiered number overlay
			try
			{
				charged.UiEffects = (charged.UiEffects ?? 0) | UiEffects.Acid;
				uint overlayDid = 0x06006C33 + (uint)tier; // 6C33 + tier → 6C33..6C3C
				charged.SetProperty(PropertyDataId.IconOverlay, overlayDid);
				charged.CalculateObjDesc();
			}
			catch { }

			// Name: count only
			string tierName = GetGlyphTierName(tier);
			try { charged.Name = $"{tierName} ({spellIds.Count})"; }
			catch { }

			return charged;
		}
		catch (Exception ex)
		{
			ModManager.Log($"[Spellsiphon] CreateChargedGlyph failed: {ex}");
			return null;
		}
	}

	// ==================== PATCH: OnCastSpell ====================
	// Handles Endless Mana Lattice activation (double-click with ActivationResponse.CastSpell).
	// Casts all spells from the item's spellbook instead of just SpellDID.

	internal static bool PrefixOnCastSpell(WorldObject __instance, WorldObject activator)
	{
		Settings? s = PatchClass.Settings;
		if (s == null || !s.Enabled)
			return true;

		if (activator is not Player player)
			return true;

		if (__instance.WeenieClassId != s.ManaLatticeWcid)
			return true;

		bool isEndless = (__instance.GetProperty((PropertyBool)ItemPayload.IsEndlessManaLatticeProp) ?? false)
			|| __instance.Name?.Contains("Endless Mana Lattice", StringComparison.OrdinalIgnoreCase) == true;

		List<int> spellIds = ReadItemSpellIdsForCast(__instance);
		if (spellIds.Count == 0)
		{
			if (isEndless)
				player.SendMessage("[Spellsiphon] The Endless Mana Lattice holds no spells.");
			else
				player.SendMessage("[Spellsiphon] This Mana Lattice has no spells. Infuse it with a charged Spellsiphon, or ensure BetterLootControl can pre-roll spells (Spellsiphon loaded with a non-empty spell pool in Settings.json).");
			return false;
		}

		int castCount = 0;
		foreach (int spellId in spellIds)
		{
			try
			{
				var spell = new ACE.Server.Entity.Spell(spellId);
				if (spell == null || spell.Id == 0)
					continue;

				player.TryCastSpell(spell, player, __instance, tryResist: false);
				castCount++;
			}
			catch (Exception ex)
			{
				ModManager.Log($"[Spellsiphon] ManaLattice cast error for spell {spellId}: {ex.Message}", ModManager.LogLevel.Warn);
			}
		}

		if (castCount > 0)
		{
			string label = isEndless ? "Endless Mana Lattice" : "Mana Lattice";
			player.SendMessage($"[Spellsiphon] The {label} pulses with {castCount} spell(s).");
		}

		return false;
	}

	private static List<int> ReadItemSpellIdsForCast(WorldObject item)
	{
		List<int> result = new();
		try
		{
			var book = item.Biota?.PropertiesSpellBook;
			if (book != null && book.Count > 0)
				foreach (int id in book.Keys)
					if (id > 0) result.Add(id);
		}
		catch { }

		try
		{
			uint? did = item.SpellDID;
			if (!did.HasValue)
				did = item.GetProperty(PropertyDataId.Spell);
			if (did.HasValue && did.Value > 0)
				result.Add((int)did.Value);
		}
		catch { }

		return result;
	}
}
