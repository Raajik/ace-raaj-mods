using System;
using ACE.Database;
using ACE.Database.Models.World;

namespace Overtinked;

// When cookbook has no row for salvage × target WCID (custom / awakened gear), GetRecipe returns null.
// If target already has workmanship, optionally supply a tinkering shell or mutation-matched recipe so MIT proceeds.
// TryMutate (PreTryMutateCore) still applies the correct imbue/salvage rule by source WCID / mutation DataId.
internal static class WorkmanshipImbueFallback
{
	private static readonly object MutationCacheLock = new();

	private static Dictionary<uint, Recipe>? _mutationDataIdToRecipe;

	private static readonly Dictionary<ImbuedEffectType, uint> ImbuedEffectToMutationDataId = new()
	{
		[ImbuedEffectType.MeleeDefense] = 0x38000038,
		[ImbuedEffectType.MissileDefense] = 0x38000039,
		[ImbuedEffectType.MagicDefense] = 0x38000037,
		[ImbuedEffectType.ArmorRending] = 0x38000025,
		[ImbuedEffectType.CripplingBlow] = 0x38000024,
		[ImbuedEffectType.CriticalStrike] = 0x38000023,
		[ImbuedEffectType.AcidRending] = 0x3800003A,
		[ImbuedEffectType.BludgeonRending] = 0x3800003B,
		[ImbuedEffectType.ColdRending] = 0x3800003C,
		[ImbuedEffectType.ElectricRending] = 0x3800003D,
		[ImbuedEffectType.FireRending] = 0x3800003E,
		[ImbuedEffectType.PierceRending] = 0x3800003F,
		[ImbuedEffectType.SlashRending] = 0x38000040,
		[ImbuedEffectType.Spellbook] = 0x38000041,
	};

	internal static void TryApply(ref Recipe __result, Player? player, WorldObject? source, WorldObject? target, Settings? s)
	{
		if (__result != null)
			return;

		if (s == null || player == null || source == null || target == null)
			return;

		if (!WorkmanshipTargets.HasQualifyingWorkmanship(target))
			return;

		uint sw = source.WeenieClassId;

		bool hasSalvageRule = SalvageEffectApplier.GetRule(s, sw) != null;
		bool imbueSalvage = ImbueSalvageWcids.IsImbueSalvage(sw, s);
		bool buffedJewelry = IsBuffedJewelrySalvage(s, sw);

		if (!hasSalvageRule && !imbueSalvage && !buffedJewelry)
			return;

		if (hasSalvageRule)
		{
			if (!s.EnableWorkmanshipSalvageRuleFallback)
				return;

			Recipe? shell = LoadShellRecipe(s);
			if (shell != null)
				__result = shell;

			return;
		}

		if (!s.EnableWorkmanshipImbueJewelryRecipeFallback)
			return;

		ImbuedEffectType? imbue = ImbueSalvageWcids.GetImbueForWcid(sw);
		if (imbue.HasValue && ImbuedEffectToMutationDataId.TryGetValue(imbue.Value, out uint dataId))
		{
			Recipe? mutationRecipe = ResolveMutationRecipe(s, dataId);
			if (mutationRecipe != null)
			{
				__result = mutationRecipe;
				return;
			}
		}

		Recipe? fallbackShell = LoadShellRecipe(s);
		if (fallbackShell != null)
			__result = fallbackShell;
	}

	private static bool IsBuffedJewelrySalvage(Settings s, uint wcid)
	{
		if (s.BuffedImbueRules == null || s.BuffedImbueRules.Count == 0)
			return false;

		foreach (BuffedImbueRule r in s.BuffedImbueRules)
		{
			if (!r.Enabled || r.Wcids == null)
				continue;
			if (r.Wcids.Contains(wcid))
				return true;
		}

		return false;
	}

	private static Recipe? LoadShellRecipe(Settings s)
	{
		uint rid = s.WorkmanshipSalvageFallbackShellRecipeId;
		if (rid == 0)
			return null;

		Recipe? cooked = DatabaseManager.World.GetCachedRecipe(rid);
		if (cooked == null)
		{
			ModManager.Log($"[Overtinked] Workmanship imbue fallback: shell recipe {rid} not in world cache.", ModManager.LogLevel.Warn);
			return null;
		}

		if (!cooked.IsTinkering())
		{
			ModManager.Log($"[Overtinked] Workmanship imbue fallback: recipe {rid} is not tinkering — refusing shell.", ModManager.LogLevel.Warn);
			return null;
		}

		return cooked;
	}

	private static Recipe? ResolveMutationRecipe(Settings s, uint mutationDataId)
	{
		EnsureMutationCache(s);
		if (_mutationDataIdToRecipe == null)
			return null;

		_mutationDataIdToRecipe.TryGetValue(mutationDataId, out Recipe? r);
		return r;
	}

	private static void EnsureMutationCache(Settings s)
	{
		if (_mutationDataIdToRecipe != null)
			return;

		lock (MutationCacheLock)
		{
			if (_mutationDataIdToRecipe != null)
				return;

			uint scanMin = s.WorkmanshipImbueMutationRecipeScanMinId;
			uint scanMax = s.WorkmanshipImbueMutationRecipeScanMaxId;

			if (scanMin > scanMax)
			{
				(scanMin, scanMax) = (scanMax, scanMin);
				ModManager.Log("[Overtinked] Workmanship imbue fallback: mutation scan MinId > MaxId — swapped bounds.", ModManager.LogLevel.Warn);
			}

			uint spanCap = s.WorkmanshipImbueMutationRecipeScanMaxSpan;
			if (spanCap == 0)
				spanCap = 2500;

			const uint HardCapMutationScanSpan = 10000;
			if (spanCap > HardCapMutationScanSpan)
			{
				ModManager.Log($"[Overtinked] Workmanship imbue fallback: WorkmanshipImbueMutationRecipeScanMaxSpan {spanCap} exceeds hard cap {HardCapMutationScanSpan}; clamped.", ModManager.LogLevel.Warn);
				spanCap = HardCapMutationScanSpan;
			}

			uint origScanMax = scanMax;
			ulong range = (ulong)scanMax - scanMin + 1UL;

			if (range > spanCap)
			{
				ulong newEnd = (ulong)scanMin + spanCap - 1UL;
				if (newEnd > uint.MaxValue)
					scanMax = uint.MaxValue;
				else if (newEnd < scanMin)
					scanMax = scanMin;
				else
					scanMax = (uint)newEnd;

				ModManager.Log(
					$"[Overtinked] Workmanship imbue fallback: mutation scan span {(ulong)origScanMax - scanMin + 1UL} exceeds MaxSpan {spanCap}; clamped max id {origScanMax} → {scanMax}.",
					ModManager.LogLevel.Warn);
			}

			ulong scanCount = (ulong)scanMax - scanMin + 1UL;
			Dictionary<uint, Recipe> dict = new();

			try
			{
				for (ulong offset = 0; offset < scanCount; offset++)
				{
					uint id = (uint)((ulong)scanMin + offset);
					Recipe? r = DatabaseManager.World.GetCachedRecipe(id);
					if (r == null || !r.IsTinkering())
						continue;

					uint md = r.DataId;
					if (!dict.ContainsKey(md))
						dict[md] = r;
				}
			}
			catch (Exception ex)
			{
				ModManager.Log($"[Overtinked] Workmanship imbue fallback: mutation scan failed ({ex.Message}). Indexed entries cleared.", ModManager.LogLevel.Error);
				dict.Clear();
			}

			_mutationDataIdToRecipe = dict;
			ModManager.Log($"[Overtinked] Workmanship imbue fallback: indexed {dict.Count} tinkering mutation DataIds from recipe ids {scanMin}-{scanMax}.", ModManager.LogLevel.Info);
		}
	}
}
