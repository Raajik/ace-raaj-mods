using System.Reflection;
using ACE.Entity.Enum;
using Spellsiphon.Features;
using Spellsiphon.Helpers;

namespace Spellsiphon.Commands;

internal static class SpellsiphonCommands
{
	[CommandHandler("spellsiphon", AccessLevel.Admin, CommandHandlerFlag.RequiresWorld, 0,
		"Spellsiphon debug and status commands.",
		"Usage: /spellsiphon status | probe | spawn [count]")]
	public static void HandleSpellsiphon(Session session, params string[] parameters)
	{
		if (session?.Player is not Player player)
			return;

		Settings? s = PatchClass.Settings;
		if (s == null || !s.Enabled)
		{
			player.SendMessage("[Spellsiphon] Mod is disabled or settings not loaded.");
			return;
		}

		string cmd = parameters.Length > 0 ? parameters[0].ToLowerInvariant() : "status";

		switch (cmd)
		{
			case "status":
			{
				string? dllPath = Assembly.GetExecutingAssembly().Location;
				player.SendMessage($"[Spellsiphon] Enabled={s.Enabled}, Verbose={s.Verbose}");
				player.SendMessage($"[Spellsiphon] DLL={dllPath}");
				if (!string.IsNullOrEmpty(dllPath) && File.Exists(dllPath))
				{
					var built = File.GetLastWriteTimeUtc(dllPath).ToString("u");
					player.SendMessage($"[Spellsiphon] DLL built (UTC)={built}");
				}
				player.SendMessage($"[Spellsiphon] ToolWcid={s.SpellsiphonToolWcid}, GlyphBase={s.GlyphExtractionBaseWcid}, VendorSales={s.EnableVendorSales}");
				player.SendMessage($"[Spellsiphon] Base success={s.BaseExtractionSuccessRate}%, Max={s.MaxSuccessRate}%");
				player.SendMessage("[Spellsiphon] Expect Ace_Log: UseObjectOnTarget prefix + GetRecipe postfix Priority.Last");
				break;
			}

			case "probe":
				HandleProbe(player, s);
				break;

			case "spawn":
				HandleSpawn(player, s, parameters);
				break;

			default:
				player.SendMessage("[Spellsiphon] Usage: /spellsiphon status | probe | spawn [count]");
				break;
		}
	}

	private static void HandleProbe(Player player, Settings s)
	{
		WorldObject? glyph = null;
		for (uint wcid = s.GlyphExtractionBaseWcid; wcid <= s.GlyphExtractionBaseWcid + 9; wcid++)
		{
			glyph = player.GetInventoryItemsOfWCID(wcid).FirstOrDefault();
			if (glyph != null)
				break;
		}

		if (glyph != null)
		{
			int tier = (int)(glyph.WeenieClassId - s.GlyphExtractionBaseWcid);
			int targetType = glyph.GetProperty(PropertyInt.TargetType) ?? -1;
			player.SendMessage($"[Spellsiphon] Pack glyph WCID={glyph.WeenieClassId} tier={tier} TargetType={targetType} (want 560015)");
		}
		else
			player.SendMessage("[Spellsiphon] No glyph 850210-850219 in pack.");

		WorldObject? best = null;
		int bestCount = 0;
		WeenieType[] probeTypes = { WeenieType.Clothing, WeenieType.MeleeWeapon, WeenieType.Missile, WeenieType.Gem };
		foreach (WeenieType wt in probeTypes)
		{
			foreach (WorldObject item in player.GetInventoryItemsOfTypeWeenieType(wt))
			{
				int count = ItemSpellIds.Read(item).Count;
				if (count > bestCount)
				{
					bestCount = count;
					best = item;
				}
			}
		}

		if (best == null || bestCount == 0)
		{
			player.SendMessage("[Spellsiphon] No spell-bearing items in pack to sample.");
			return;
		}

		var ids = ItemSpellIds.Read(best);
		player.SendMessage($"[Spellsiphon] Richest pack item: {best.Name} WCID={best.WeenieClassId} spellIds={bestCount}");
		if (glyph != null)
		{
			int tier = (int)(glyph.WeenieClassId - s.GlyphExtractionBaseWcid);
			int eligible = RecipeHooks.FilterSpellsForGlyphTier(ids, tier).Count;
			player.SendMessage($"[Spellsiphon] Tier {tier} eligible on that item={eligible}");
		}
	}

	private static void HandleSpawn(Player player, Settings s, string[] parameters)
	{
		int count = 5;
		if (parameters.Length > 1 && int.TryParse(parameters[1], out int parsed) && parsed > 0)
			count = Math.Min(50, parsed);

		uint[] gemWcids = new uint[] { 2422, 2400, 2425, 2419 };
		int created = 0;

		for (int i = 0; i < count; i++)
		{
			uint wcid = gemWcids[i % gemWcids.Length];
			WorldObject? gem = null;
			try { gem = WorldObjectFactory.CreateNewWorldObject(wcid); }
			catch { }

			if (gem == null) continue;

			try
			{
				player.TryCreateInInventoryWithNetworking(gem);
				List<int> picks = LootMutator.PickRandomSpellIds(s, gem, min: 1, max: Math.Max(1, s.MaxSpellsOnLootgenGem));
				if (picks.Count == 0) picks.Add(1109);
				foreach (int id in picks)
					LootMutator.TryAddSpellId(gem, id);
				created++;
			}
			catch { }
		}

		player.SendMessage($"[Spellsiphon] Spawned {created} gem(s).");
	}
}
