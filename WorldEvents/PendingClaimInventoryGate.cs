namespace WorldEvents;

// Blocks /claim (and periodic auto-claim) when pending loot cannot fit: ACE 3x encumbrance cap and free pack slots.
internal static class PendingClaimInventoryGate
{
    internal static bool CanClaimPendingNow(Player player, IReadOnlyList<PendingEventLootEntry> entries, out string blockReason)
    {
        blockReason = "";
        if (player == null || entries == null || entries.Count == 0)
            return true;

        var needInventory = new List<WorldObject>();
        try
        {
            foreach (var entry in entries)
            {
                var item = WorldObjectFactory.CreateNewWorldObject(entry.Wcid);
                if (item == null)
                    continue;

                if (entry.StackSize > 1 && item.StackSize.HasValue)
                    item.SetStackSize(entry.StackSize);

                EventLootDelivery.TagSsfIfNeeded(player, item);
                if (entry.Ironman)
                    item.SetProperty(FakeBool.Ironman, true);

                // Skip bankable items (currency or ledger items) from inventory check - they auto-bank
                if (HuntBankInterop.CanAutoBankHuntLoot(player, item))
                {
                    item.Destroy();
                    continue;
                }

                needInventory.Add(item);
            }

            if (needInventory.Count == 0)
                return true;

            if (!player.CanAddToInventory(needInventory, out var tooEncumbered, out var notEnoughSlots))
            {
                foreach (var o in needInventory)
                {
                    try
                    {
                        o.Destroy();
                    }
                    catch
                    {
                        // ignore
                    }
                }

                needInventory.Clear();

                if (tooEncumbered)
                {
                    blockReason =
                        "[WorldEvents] Cannot claim — you are at or over the 3x carrying-capacity limit. Drop or bank weight, then use /claim.";
                    return false;
                }

                if (notEnoughSlots)
                {
                    blockReason =
                        "[WorldEvents] Cannot claim — not enough free pack slots for pending rewards. Make space, then use /claim.";
                    return false;
                }

                blockReason =
                    "[WorldEvents] Cannot claim — not enough pack space or carrying capacity. Free slots or reduce weight, then use /claim.";
                return false;
            }

            foreach (var o in needInventory)
            {
                try
                {
                    o.Destroy();
                }
                catch
                {
                    // ignore
                }
            }

            return true;
        }
        catch (Exception ex)
        {
            foreach (var o in needInventory)
            {
                try
                {
                    o.Destroy();
                }
                catch
                {
                    // ignore
                }
            }

            ModManager.Log($"[WorldEvents] Pending claim inventory gate: {ex.Message}", ModManager.LogLevel.Warn);
            blockReason = "[WorldEvents] Cannot validate claim right now. Try again in a moment or contact staff if this persists.";
            return false;
        }
    }
}
