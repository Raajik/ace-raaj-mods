using SharedLoot;
using WorldEvents.Cull.Models;

namespace WorldEvents;

internal static class CullRewards
{
    internal static void DistributeRewards(ActiveCullData cull, Settings s)
    {
        var ranked = cull.KillsByPlayer
            .Where(kv => kv.Value > 0)
            .OrderByDescending(kv => kv.Value)
            .Take(3)
            .ToList();

        if (ranked.Count == 0) return;

        var cfg = LootConfigStore.GetLoadedOrDefault();
        var floors = new[] { LootRarityFloor.Rare, LootRarityFloor.Uncommon, LootRarityFloor.Any };
        var top = new List<(string Name, int Kills, int Rank)>();

        for (var i = 0; i < ranked.Count; i++)
        {
            var (guid, kills) = ranked[i];
            var name = cull.PlayerNames.TryGetValue(guid, out var n) ? n : $"GUID:{guid}";
            top.Add((name, kills, i + 1));

            var player = PlayerManager.GetOnlinePlayer(guid);
            if (player == null) continue;

            var floor = floors[i];
            var item = LootRoller.TryCreateFromMinRarity(cfg, floor);
            if (item == null)
            {
                ModManager.Log($"[Cull] Loot roll empty for {name} (#{i + 1}, floor {floor}).", ModManager.LogLevel.Warn);
                continue;
            }

            TagSsfIfNeeded(player, item);

            if (!player.TryCreateInInventoryWithNetworking(item, out _))
            {
                item.Location = player.Location.InFrontOf(0.5f);
                item.EnterWorld();
                player.SendMessage($"[EVENT - Cull] #{i + 1} ({kills} kills): {item.Name} — pack full, dropped at your feet.");
            }
            else
            {
                player.SendMessage($"[EVENT - Cull] #{i + 1} ({kills} kills): {item.Name}.");
            }
        }

        CullBroadcast.AnnounceResults(cull, top);
    }

    static void TagSsfIfNeeded(Player player, WorldObject item)
    {
        if (player.GetProperty(FakeBool.Ironman) != true) return;
        if (item.GetProperty(FakeBool.Ironman) == true) return;
        item.SetProperty(FakeBool.Ironman, true);
    }
}
