using Spellsiphon.Features;

namespace Spellsiphon.Commands;

using AceModQa;

internal static class SpellsiphonQaCommands
{
	[CommandHandler("spellsiphonqa", AccessLevel.Admin, CommandHandlerFlag.RequiresWorld, 0,
		"Spellsiphon QA utilities (Admin-only).",
		"Usage: /spellsiphonqa status | /spellsiphonqa manalattice auto | /spellsiphonqa manalattice auto off")]
	public static void HandleSpellsiphonQa(Session session, params string[] parameters)
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

		if (cmd == "status")
		{
			player.SendMessage("[Spellsiphon QA] Tool WCID: " + s.SpellsiphonToolWcid);
			player.SendMessage("[Spellsiphon QA] Mana Lattice WCID: " + s.ManaLatticeWcid);
		}
		else if (cmd == "manalattice")
		{
			string sub = parameters.Length > 1 ? parameters[1].ToLowerInvariant() : "status";
			if (sub == "auto")
			{
				string onOff = parameters.Length > 2 ? parameters[2].ToLowerInvariant() : "on";
				bool enabled = onOff != "off";
				ManaLatticeAutoBuff.SetAutoLatticeEnabled(player, enabled);
				player.SendMessage($"[Spellsiphon] Mana Lattice auto-buff: {(enabled ? "ON" : "OFF")}.");
			}
			else
			{
				bool enabled = ManaLatticeAutoBuff.IsAutoLatticeEnabled(player);
				player.SendMessage($"[Spellsiphon] Mana Lattice auto-buff: {(enabled ? "ON" : "OFF")}. Usage: /spellsiphonqa manalattice auto [off]");
			}
		}
		else
		{
			player.SendMessage("[Spellsiphon QA] Usage: /spellsiphonqa status | /spellsiphonqa manalattice auto [off]");
		}
	}
}
