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
        var topN = Math.Min(settings.PoiHunt.LootForTopN, ranked.Count);

        for (var i = 0; i < ranked.Count; i++)
        {
            var (guid, count) = ranked[i];
            var player = PlayerManager.GetOnlinePlayer(guid);

            // Grant XP per find
            if (player != null)
            {
                var xpTotal = (long)settings.PoiHunt.XpPerFind * count;
                if (xpTotal > 0)
                {
                    HuntXpInterop.GrantQuestXpWithoutMultiplier(player, xpTotal);
                    player.SendMessage($"[PoiHunt] Event complete! +{xpTotal:N0} XP for {count} find{(count == 1 ? "" : "s")}.");
                }
            }

            // Grant loot to top N
            if (i < topN)
            {
                WorldObject? item;
                LootRarityFloor floor;

                if (i == 2)
                {
                    // 3rd place: salvage bag
                    item = SalvageBagShaper.CreateRandomSalvageBag();
                    floor = LootRarityFloor.Any;
                }
                else
                {
                    floor = i == 0 ? LootRarityFloor.Uncommon : LootRarityFloor.Any;
                    item = LootRoller.TryCreateFromMinRarity(cfg, floor);
                }

                if (item != null)
                {
                    if (player == null)
                    {
                        EventLootDelivery.QueueLootFromWorldObject(guid, "PoiHunt", $"#{i + 1} place", item, ironman: false);
                    }
                    else
                    {
                        TagSsfIfNeeded(player, item);
                        EventLootDelivery.TryDeliverLootNow(player, item, "[PoiHunt]", $"#{i + 1} place reward", tryHuntBankFirst: false);
                    }
                }
                else
                {
                    var who = player?.Name ?? $"0x{guid:X8}";
                    ModManager.Log($"[PoiHunt] Loot roll empty for {who} (#{i + 1}, floor {floor}).", ModManager.LogLevel.Warn);
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
