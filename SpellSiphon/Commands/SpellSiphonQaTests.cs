namespace Spellsiphon.Commands;

using AceModQa;

internal sealed class SpellsiphonSmokeTest : IQaTestCase
{
	public string Name => "smoke";

	public QaResult Run(Player player)
	{
		Settings? s = PatchClass.Settings;
		if (s == null || !s.Enabled)
			return QaResult.Fail("Settings not loaded or mod disabled.");

		// Basic smoke test: verify settings are sane
		if (s.SpellsiphonToolWcid == 0)
			return QaResult.Fail("SpellsiphonToolWcid is not configured.");

		if (s.ManaLatticeWcid == 0)
			return QaResult.Fail("ManaLatticeWcid is not configured.");

		return QaResult.Pass("Spellsiphon configuration looks valid.");
	}
}
