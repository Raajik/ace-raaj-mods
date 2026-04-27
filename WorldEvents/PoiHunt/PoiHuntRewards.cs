using SharedLoot;
using WorldEvents.PoiHunt.Models;

namespace WorldEvents;

internal static class PoiHuntRewards
{
    internal static void DistributeRewards(ActivePoiHuntData data, Settings settings)
    {
        if (data.PlayerFindCounts.Count == 0)
        {
            ModManager.Log("[PoiHunt] No participants — rewards skipped.", ModManager.LogLevel.Info);
            return;
        }

        var ranked = data.PlayerFindCounts
            .OrderByDescending(kv => kv.Value)
            .ToList();

        var cfg = LootConfigStore.GetLoadedOrDefault();
        var floors = new[] { LootRarityFloor.Rare, LootRarityFloor.Uncommon, LootRarityFloor.Any };
        var topN = Math.Min(settings.PoiHunt.LootForTopN, ranked.Count);

        for (var i = 0; i < ranked.Count; i++)
        {
            var (guid, count) = ranked[i];
            var player = PlayerManager.GetOnlinePlayer(guid);
            if (player == null) continue;

            // Grant XP per find
            var xpTotal = (long)settings.PoiHunt.XpPerFind * count;
            if (xpTotal > 0)
            {
                HuntXpInterop.GrantQuestXpWithoutMultiplier(player, xpTotal);
                player.SendMessage($"[PoiHunt] Event complete! +{xpTotal:N0} XP for {count} find{(count == 1 ? "" : "s")}.");
            }

            // Grant loot to top N
            if (i < topN)
            {
                var floor = i < floors.Length ? floors[i] : LootRarityFloor.Any;
                var item = LootRoller.TryCreateFromMinRarity(cfg, floor);
                if (item != null)
                {
                    TagSsfIfNeeded(player, item);
                    if (!player.TryCreateInInventoryWithNetworking(item, out _))
                    {
                        item.Location = player.Location.InFrontOf(0.5f);
                        item.EnterWorld();
                        player.SendMessage($"[PoiHunt] #{i + 1} place reward: {item.Name} — pack full, dropped at your feet.");
                    }
                    else
                    {
                        player.SendMessage($"[PoiHunt] #{i + 1} place reward: {item.Name}.");
                    }
                }
                else
                {
                    ModManager.Log($"[PoiHunt] Loot roll empty for {player.Name} (#{i + 1}, floor {floor}).", ModManager.LogLevel.Warn);
                }
            }
        }
    }

    static void TagSsfIfNeeded(Player player, WorldObject item)
    {
        if (player.GetProperty(FakeBool.Ironman) != true) return;
        if (item.GetProperty(FakeBool.Ironman) == true) return;
        item.SetProperty(FakeBool.Ironman, true);
    }
}
