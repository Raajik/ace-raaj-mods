using ACE.Server.WorldObjects;
using Spellsiphon.Helpers;

namespace Spellsiphon.Features;

// Overtinked RecipeManagerEx prefixes RecipeManager.UseObjectOnTarget at Normal priority.
// Spellsiphon runs at First but Harmony still invokes later prefixes — Overtinked must no-op for our tools.
internal static class OvertinkedInterop
{
	internal static bool ShouldSuppressOvertinkedCraftFlow(WorldObject? source, WorldObject? target)
	{
		Settings? s = PatchClass.Settings;
		if (s == null || !s.Enabled || source == null || target == null)
			return false;

		if (source.WeenieClassId == s.SpellsiphonToolWcid)
		{
			if (ItemPayload.IsSpellsiphonApplyReady(source, s.SpellsiphonToolWcid))
				return false;

			return true;
		}

		if (RecipeHooks.IsGlyphExtractionTool(source.WeenieClassId))
		{
			if (ItemPayload.IsGlyphApplyReady(source))
				return false;

			return true;
		}

		return false;
	}
}
