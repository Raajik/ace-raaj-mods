namespace Gemcrafter.Features;

// Temporarily disabled: this dynamic loot-factory patch caused startup/shutdown instability on your ACE build.
// We'll re-enable once we identify a stable, patchable loot hook for your server version.
internal static class GemLootMutator
{
	private static readonly object _poolLock = new();
	private static bool _poolBuilt;
	private static List<int> _spellPool = new();
	private static List<string> _spellPoolSampleNames = new();

	// (loot patch disabled)

	internal static (int count, List<string> sampleNames) GetSpellPoolStats()
	{
		lock (_poolLock)
			return (_spellPool.Count, new List<string>(_spellPoolSampleNames));
	}

	internal static void ForceRebuildPool()
	{
		lock (_poolLock)
		{
			_poolBuilt = false;
			_spellPool.Clear();
			_spellPoolSampleNames.Clear();
		}
	}

	private static bool IsEligibleLootgenGem(WorldObject item, Settings s)
	{
		if (s.GemWcidAllowlist != null && s.GemWcidAllowlist.Count > 0)
			return s.GemWcidAllowlist.Contains(item.WeenieClassId);

		// Conservative heuristic:
		// - Must be a gem itemtype
		// - Must be stackable (most tinkering gems are)
		// - Must not be jewelry/clothing/weapon
		if ((item.ItemType & ItemType.Gem) == 0)
			return false;

		WeenieType wt = item.WeenieType;
		if (wt == WeenieType.MeleeWeapon || wt == WeenieType.MissileLauncher || wt == WeenieType.Caster || wt == WeenieType.Clothing)
			return false;

		int maxStack = item.MaxStackSize ?? 1;
		if (maxStack <= 1)
			return false;

		return true;
	}

	private static void EnsureSpellPoolBuilt(Settings s)
	{
		if (_poolBuilt)
			return;

		lock (_poolLock)
		{
			if (_poolBuilt)
				return;

			try
			{
				var spells = DatManager.PortalDat?.SpellTable?.Spells;
				if (spells == null || spells.Count == 0)
				{
					_poolBuilt = true;
					return;
				}

				// Start from “real” player spell set, then filter by name rules.
				HashSet<uint> baseSet = new(Player.PlayerSpellTable);
				List<int> pool = new();

				foreach (uint id in baseSet)
				{
					if (!spells.TryGetValue(id, out var sb) || sb == null)
						continue;

					string name = sb.Name ?? string.Empty;
					if (string.IsNullOrWhiteSpace(name))
						continue;

					if (!s.IncludePortalRecallSummonOnGems && LooksLikePortalRecallSummon(name))
						continue;

					if (!s.IncludeCantrips && LooksLikeCantrip(name))
						continue;

					if (ContainsAny(name, s.ExcludeSpellNameContains))
						continue;

					if (s.IncludeSpellNameContains != null && s.IncludeSpellNameContains.Count > 0 && !ContainsAny(name, s.IncludeSpellNameContains))
						continue;

					pool.Add((int)id);
				}

				_spellPool = pool.Distinct().ToList();
				_spellPoolSampleNames = _spellPool
					.Take(12)
					.Select(TryGetSpellName)
					.ToList();
			}
			catch (Exception ex)
			{
				ModManager.Log($"[Gemcrafter] Spell pool build failed: {ex.Message}", ModManager.LogLevel.Error);
			}
			finally
			{
				_poolBuilt = true;
			}
		}
	}

	private static bool HasAnySpell(WorldObject item)
	{
		try
		{
			return item.Biota?.PropertiesSpellBook != null && item.Biota.PropertiesSpellBook.Count > 0;
		}
		catch
		{
			return false;
		}
	}

	private static int? PickSpellIdNotPresent(WorldObject item)
	{
		for (int attempts = 0; attempts < 25; attempts++)
		{
			int pick = _spellPool[Random.Shared.Next(0, _spellPool.Count)];
			if (!HasSpellId(item, pick))
				return pick;
		}

		// Fall back to first not present
		foreach (int id in _spellPool)
			if (!HasSpellId(item, id))
				return id;

		return null;
	}

	private static bool HasSpellId(WorldObject item, int spellId)
	{
		try
		{
			return item.Biota?.PropertiesSpellBook?.ContainsKey(spellId) == true;
		}
		catch
		{
			return false;
		}
	}

	internal static List<int> PickRandomSpellIds(Settings s, WorldObject item, int min, int max)
	{
		try
		{
			EnsureSpellPoolBuilt(s);
			if (_spellPool.Count == 0)
				return new List<int>();

			int lo = Math.Max(1, min);
			int hi = Math.Max(lo, max);
			int count = Random.Shared.Next(lo, hi + 1);

			HashSet<int> picks = new();
			for (int i = 0; i < 100 && picks.Count < count; i++)
			{
				int? id = PickSpellIdNotPresent(item);
				if (id.HasValue)
					picks.Add(id.Value);
			}

			return picks.ToList();
		}
		catch
		{
			return new List<int>();
		}
	}

	internal static bool TryAddSpellId(WorldObject item, int spellId)
	{
		try
		{
			if (item.Biota is null)
				return false;

			item.Biota.PropertiesSpellBook ??= new Dictionary<int, float>();
			var book = item.Biota.PropertiesSpellBook;
			if (!book.ContainsKey(spellId))
				book[spellId] = 1.0f;

			item.UiEffects |= UiEffects.Magical;
			return true;
		}
		catch
		{
			return false;
		}
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

	private static bool LooksLikeCantrip(string name)
	{
		return name.StartsWith("Minor ", StringComparison.OrdinalIgnoreCase)
			|| name.StartsWith("Moderate ", StringComparison.OrdinalIgnoreCase)
			|| name.StartsWith("Major ", StringComparison.OrdinalIgnoreCase)
			|| name.StartsWith("Epic ", StringComparison.OrdinalIgnoreCase)
			|| name.StartsWith("Legendary ", StringComparison.OrdinalIgnoreCase);
	}

	private static bool LooksLikePortalRecallSummon(string name)
	{
		return name.Contains("Portal", StringComparison.OrdinalIgnoreCase)
			|| name.Contains("Recall", StringComparison.OrdinalIgnoreCase)
			|| name.Contains("Summon", StringComparison.OrdinalIgnoreCase);
	}

	internal static string TryGetSpellName(int spellId)
	{
		try
		{
			var spells = DatManager.PortalDat?.SpellTable?.Spells;
			if (spells != null && spells.TryGetValue((uint)spellId, out var sb) && !string.IsNullOrWhiteSpace(sb?.Name))
				return sb.Name!;
		}
		catch
		{
		}

		return spellId.ToString();
	}
}

