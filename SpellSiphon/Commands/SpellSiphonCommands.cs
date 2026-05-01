namespace SpellSiphon.Commands;

internal static class SpellSiphonCommands
{
	[CommandHandler("spellsiphon", AccessLevel.Admin, CommandHandlerFlag.RequiresWorld, 0,
		"SpellSiphon debug and status commands.",
		"Usage: /spellsiphon status | spawn [count]")]
	public static void HandleSpellSiphon(Session session, params string[] parameters)
	{
		if (session?.Player is not Player player)
			return;

		Settings? s = PatchClass.Settings;
		if (s == null || !s.Enabled)
		{
			player.SendMessage("[SpellSiphon] Mod is disabled or settings not loaded.");
			return;
		}

		string cmd = parameters.Length > 0 ? parameters[0].ToLowerInvariant() : "status";

		switch (cmd)
		{
			case "status":
				player.SendMessage($"[SpellSiphon] Enabled={s.Enabled}, Verbose={s.Verbose}");
				player.SendMessage($"[SpellSiphon] ToolWcid={s.SpellsiphonToolWcid}, ManaLatticeWcid={s.ManaLatticeWcid}");
				player.SendMessage($"[SpellSiphon] Base success={s.BaseExtractionSuccessRate}%, CharmedSmith=+{s.CharmedSmithBonus}%, MIT bonus={s.MitBonusPerPoint}% per point, Max={s.MaxSuccessRate}%");
				player.SendMessage($"[SpellSiphon] Source survive on success={s.SuccessSourceSurviveChance}%, strip on failure={s.FailureStripChance}%");
				break;

			case "spawn":
				HandleSpawn(player, s, parameters);
				break;

			default:
				player.SendMessage("[SpellSiphon] Usage: /spellsiphon status | spawn [count]");
				break;
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

		player.SendMessage($"[SpellSiphon] Spawned {created} gem(s).");
	}
}
