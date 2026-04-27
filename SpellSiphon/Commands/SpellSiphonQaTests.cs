namespace SpellSiphon.Commands;

using AceModQa;

internal sealed class SpellSiphonSmokeTest : IQaTestCase
{
	public string Name => "smoke";

	public QaResult Run(Player player)
	{
		Settings? s = PatchClass.Settings;
		if (s == null || !s.Enabled)
			return QaResult.Fail("Settings not loaded or mod disabled.");

		return SpellSiphonQaCommands.RunSmokeForRunner(player, s);
	}
}

