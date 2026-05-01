namespace SpellSiphon.Commands;

using AceModQa;

internal static class SpellSiphonQaCommands
{
	[CommandHandler("spellsiphonqa", AccessLevel.Admin, CommandHandlerFlag.RequiresWorld, 0,
		"SpellSiphon QA utilities (Admin-only).",
		"Usage: /spellsiphonqa status")]
	public static void HandleSpellSiphonQa(Session session, params string[] parameters)
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

		if (cmd == "status")
		{
			player.SendMessage("[SpellSiphon QA] Tool WCID: " + s.SpellsiphonToolWcid);
			player.SendMessage("[SpellSiphon QA] Mana Lattice WCID: " + s.ManaLatticeWcid);
		}
		else
		{
			player.SendMessage("[SpellSiphon QA] Usage: /spellsiphonqa status");
		}
	}
}
