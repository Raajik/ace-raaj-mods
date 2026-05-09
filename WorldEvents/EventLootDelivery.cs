using ACE.Server.Factories;

namespace WorldEvents;

internal static class EventLootDelivery
{
    internal static bool TryCreateAndDeliver(Player player, PendingEventLootEntry entry)
    {
        if (player == null)
            return false;

        var item = WorldObjectFactory.CreateNewWorldObject(entry.Wcid);
        if (item == null)
            return false;

        // Always set stack size for salvage bags - the newly created item may not have StackSize property set by default
        if (entry.StackSize > 1)
            item.SetStackSize(entry.StackSize);

        TagSsfIfNeeded(player, item);
        if (entry.Ironman)
            item.SetProperty(FakeBool.Ironman, true);

        var tag = $"{entry.Source} {entry.Label}".Trim();
        // Try auto-banking for ANY bankable item (currency or ledger items), not just Hunt
        if (HuntBankInterop.TryLeyLineLedgerAutoBank(player, item, tag))
        {
            var sourceTag = string.IsNullOrWhiteSpace(entry.Source) ? "WorldEvents" : entry.Source;
            player.SendMessage($"[{sourceTag}] Claimed {item.Name} ({entry.Label}) -- sent to bank.");
            return true;
        }

        if (!player.TryCreateInInventoryWithNetworking(item, out _))
        {
            item.Location = player.Location.InFrontOf(0.5f);
            item.EnterWorld();
            player.SendMessage($"[WorldEvents] Claimed {item.Name} ({entry.Label}) -- pack full, dropped at your feet.");
        }
        else
        {
            player.SendMessage($"[WorldEvents] Claimed {item.Name} ({entry.Label}).");
        }

        return true;
    }

    internal static bool TryDeliverLootNow(Player player, WorldObject item, string source, string label, bool tryHuntBankFirst)
    {
        if (player == null || item == null)
            return false;

        var tag = $"{source} {label}".Trim();
        if (tryHuntBankFirst && HuntBankInterop.TryLeyLineLedgerAutoBank(player, item, tag))
            return true;

        if (!player.TryCreateInInventoryWithNetworking(item, out _))
        {
            item.Location = player.Location.InFrontOf(0.5f);
            item.EnterWorld();
            player.SendMessage($"[{source}] {label}: {item.Name} -- pack full, dropped at your feet.");
        }
        else
        {
            player.SendMessage($"[{source}] {label}: {item.Name}.");
        }

        return true;
    }

    internal static void QueueLootFromWorldObject(uint characterGuidFull, string source, string label, WorldObject item, bool ironman)
    {
        if (item == null)
            return;

        var entry = new PendingEventLootEntry
        {
            Source = source,
            Label = label,
            Wcid = item.WeenieClassId,
            StackSize = item.StackSize ?? 1,
            Ironman = ironman || item.GetProperty(FakeBool.Ironman) == true,
        };

        item.Destroy();
        PendingEventClaimsStore.Enqueue(characterGuidFull, entry);
    }

    internal static void TagSsfIfNeeded(Player player, WorldObject item)
    {
        if (player.GetProperty(FakeBool.Ironman) != true)
            return;
        if (item.GetProperty(FakeBool.Ironman) == true)
            return;
        item.SetProperty(FakeBool.Ironman, true);
    }
}
