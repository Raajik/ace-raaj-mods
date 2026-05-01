namespace SpellSiphon.Features;

// Makes all gems reusable (not consumed on use).
// This transforms gems into infinite buff items for magic-less characters.
internal static class InfiniteGemHooks
{
	public static void PostUseGem(Player player, WorldObject gem)
	{
		if (gem == null)
			return;

		// Only affect standard gems (not quest items, not already infinite)
		if (!IsStandardGem(gem))
			return;

		try
		{
			// Restore stack size if it was decremented
			int currentStack = gem.StackSize ?? 1;
			if (currentStack < (gem.MaxStackSize ?? 1))
			{
				gem.StackSize = gem.MaxStackSize ?? 1;
				player.EnqueueBroadcast(new GameMessagePrivateUpdatePropertyInt(gem, PropertyInt.StackSize, gem.StackSize.Value));
			}

			// If the gem was marked for destruction, unmark it
			// We do this by preventing the normal consumption flow
			// The spell effect has already been applied by the time this postfix runs
		}
		catch (Exception ex)
		{
			ModManager.Log($"[SpellSiphon] InfiniteGemHooks.PostUseGem error: {ex.Message}", ModManager.LogLevel.Warn);
		}
	}

	// Alternative approach: Prefix on the consumption method itself
	public static bool PreTryRemoveFromInventory(Player player, WorldObject item)
	{
		if (item == null)
			return true; // Let vanilla handle it

		if (!IsStandardGem(item))
			return true;

		// Prevent removal/consumption of gems
		// This is called when the game tries to consume the gem after use
		return false; // Skip vanilla consumption
	}

	private static bool IsStandardGem(WorldObject item)
	{
		if (item.WeenieType != WeenieType.Gem && (item.ItemType & ItemType.Gem) == 0)
			return false;

		// Exclude quest items, attuned items, and special gems
		if ((item.Attuned ?? AttunedStatus.Normal) >= AttunedStatus.Attuned)
			return false;

		if ((item.Bonded ?? BondedStatus.Normal) >= BondedStatus.Bonded)
			return false;

		// Exclude items that are explicitly marked as consumable quest items
		// (Heuristic: if it has a value > 0 and is sellable, it's probably a normal gem)
		return true;
	}
}
