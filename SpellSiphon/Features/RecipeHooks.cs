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
/// Native ACE RecipeManager integration for Spellsiphon extraction.
/// Provides skill-based confirmation dialog and proper item consumption.
/// </summary>
internal static class RecipeHooks
{
	private const uint SpellsiphonRecipeId = 900001;

	// Cross-thread state for success tracking (ActionChain may run on different threads)
	private static readonly ConcurrentDictionary<uint, bool> ExtractionSuccess = new();

	// Static recipe instance (created once, reused)
	private static Recipe? _spellsiphonRecipe;

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
			SuccessMessage = "[SpellSiphon] Negative spells have been cleansed from the item!",
			FailMessage = "",  // Custom message sent in PostHandleRecipe postfix.
			SuccessDestroySourceChance = 1.0,
			SuccessDestroySourceAmount = 1,
			SuccessDestroyTargetChance = 0.0,   // Target item survives on success.
			SuccessDestroyTargetAmount = 0,
			FailDestroySourceChance = 1.0,   // Spellsiphon is consumed on failure.
			FailDestroySourceAmount = 1,
			FailDestroyTargetChance = 0.0,   // Target item survives on failure.
			FailDestroyTargetAmount = 0,
			DataId = 0,
			LastModified = DateTime.UtcNow
		};

		return _spellsiphonRecipe;
	}

	// ==================== PATCH: GetRecipe ====================
	// Injects our recipe when Spellsiphon is used on a spell-bearing item.

	internal static void PostGetRecipe(Player player, WorldObject source, WorldObject target, ref Recipe __result)
	{
		Settings? s = PatchClass.Settings;
		if (s == null || !s.Enabled)
			return;

		if (source?.WeenieClassId != s.SpellsiphonToolWcid)
			return;

		// Charged, JSON payload, or spellbook-only tools are apply-ready — do not hijack GetRecipe into extraction (would strip the real target).
		if (ItemPayload.IsSpellsiphonApplyReady(source, s.SpellsiphonToolWcid))
			return;

		if (!IsValidSourceItem(target, s))
			return;

		// Gem-only mode: only inject when ACE matched no recipe (avoid stealing unrelated combos).
		if (!s.EnableAnyItemExtraction)
		{
			if (__result != null)
				return;

			__result = GetSpellsiphonRecipe();
			return;
		}

		// Any spell-bearing item: Spellsiphon extraction must win over vanilla item-on-item matches
		// (food stacks, misc use recipes) so extraction dialog still runs.
		__result = GetSpellsiphonRecipe();
	}

	// ==================== PATCH: GetRecipeChance ====================
	// Calculates custom success rate for Spellsiphon extraction.

	internal static void PostGetRecipeChance(Player player, WorldObject source, WorldObject target, Recipe recipe, ref double? __result)
	{
		Settings? s = PatchClass.Settings;
		if (s == null || !s.Enabled)
			return;

		if (recipe?.Id != SpellsiphonRecipeId)
			return;

		__result = CalculateSuccessRate(player, s);
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

		// No pre-capture needed for cleansing; target survives and is inspected in PostHandleRecipe.
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
	// On success: removes negative/harmful spells from the target item.

	internal static void PostHandleRecipe(Player player, WorldObject source, WorldObject target, Recipe recipe, double successChance)
	{
		Settings? s = PatchClass.Settings;
		if (s == null || !s.Enabled)
			return;

		if (recipe?.Id != SpellsiphonRecipeId)
			return;

		if (!ExtractionSuccess.TryRemove(player.Guid.Full, out bool success))
			return;

		if (!success)
		{
			player.SendMessage(
				"The item's latent magic overwhelms your Spellsiphon, destroying it!",
				ChatMessageType.Magic);
			return;
		}

		if (target == null)
			return;

		// Remove negative/harmful spells from the target item
		var removed = RemoveNegativeSpells(target, s);

		if (removed.Count > 0)
		{
			// Broadcast update so client sees the change
			try { target.EnqueueBroadcastUpdateObject(); }
			catch { }

			var names = removed.Select(id => LootMutator.TryGetSpellName(id)).Where(n => !string.IsNullOrEmpty(n)).ToList();
			player.SendMessage($"[SpellSiphon] Cleansed {removed.Count} negative spell(s) from {target.Name}: {string.Join(", ", names)}.");
		}
		else
		{
			player.SendMessage($"[SpellSiphon] {target.Name} has no negative spells to cleanse.");
		}
	}

	// ==================== NEGATIVE SPELL CLEANSING ====================

	private static List<int> RemoveNegativeSpells(WorldObject item, Settings s)
	{
		var removed = new List<int>();
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
				player.SendMessage("[SpellSiphon] The Endless Mana Lattice holds no spells.");
			else
				player.SendMessage("[SpellSiphon] This Mana Lattice has no spells. Infuse it with a charged Spellsiphon, or ensure BetterLootControl can pre-roll spells (SpellSiphon loaded with a non-empty spell pool in Settings.json).");
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
				ModManager.Log($"[SpellSiphon] ManaLattice cast error for spell {spellId}: {ex.Message}", ModManager.LogLevel.Warn);
			}
		}

		if (castCount > 0)
		{
			string label = isEndless ? "Endless Mana Lattice" : "Mana Lattice";
			player.SendMessage($"[SpellSiphon] The {label} pulses with {castCount} spell(s).");
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
