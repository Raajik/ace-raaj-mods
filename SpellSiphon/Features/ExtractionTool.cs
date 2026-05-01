namespace SpellSiphon.Features;

// Legacy recipe-based extraction hooks.
// Deprecated in favor of immersive use-on-target workflow (UseOnTargetHooks).
// Kept for backward compatibility; does not register automatically.
internal static class ExtractionHooks
{
	public static bool PreTryMutate(Player player, WorldObject source, WorldObject target, Recipe recipe, uint dataId, HashSet<uint> modified, ref bool __result)
	{
		// Deprecated: all extraction logic now lives in UseOnTargetHooks.
		return true;
	}
}
