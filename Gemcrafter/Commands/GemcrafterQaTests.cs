namespace Gemcrafter.Commands;

using AceModQa;

internal sealed class GemcrafterSmokeTest : IQaTestCase
{
	public string Name => "smoke";

	public QaResult Run(Player player)
	{
		Settings? s = PatchClass.Settings;
		if (s == null || !s.Enabled)
			return QaResult.Fail("Settings not loaded or mod disabled.");

		return GemcrafterQaCommands.RunSmokeForRunner(player, s);
	}
}

