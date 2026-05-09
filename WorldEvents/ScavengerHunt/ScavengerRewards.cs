using SharedLoot;

namespace WorldEvents;

internal static class ScavengerRewards
{
    internal static void DistributeRewards(ActiveScavengerHuntData data, Settings settings)
    {
        if (data.PlayerTurnInCounts.Count == 0)
        {
            ModManager.Log("[ScavengerHunt] No participants — rewards skipped.", ModManager.LogLevel.Info);
            return;
        }

        var ranked = data.PlayerTurnInCounts
            .OrderByDescending(kv => kv.Value)
            .ToList();

        var cfg = LootConfigStore.GetLoadedOrDefault();
        var topN = Math.Min(settings.ScavengerHunt.BonusLootTopN, ranked.Count);

        for (var i = 0; i < ranked.Count; i++)
        {
            var (guid, count) = ranked[i];
            var player = PlayerManager.GetOnlinePlayer(guid);

            // Flat XP for all participants
            if (player != null)
            {
                var xp = settings.ScavengerHunt.XpPerTurnIn;
                if (xp > 0)
                {
                    HuntXpInterop.GrantQuestXpWithoutMultiplier(player, xp);
                    player.SendMessage($"[ScavengerHunt] Event complete! +{xp:N0} flat XP for participating.");
                }
            }

            // Bonus loot for top N
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
                        EventLootDelivery.QueueLootFromWorldObject(guid, "ScavengerHunt", $"#{i + 1} place", item, ironman: false);
                    }
                    else
                    {
                        TagSsfIfNeeded(player, item);
                        EventLootDelivery.TryDeliverLootNow(player, item, "[ScavengerHunt]", $"#{i + 1} place reward", tryHuntBankFirst: false);
                    }
                }
                else
                {
                    var who = player?.Name ?? $"0x{guid:X8}";
                    ModManager.Log($"[ScavengerHunt] Loot roll empty for {who} (#{i + 1}, floor {floor}).", ModManager.LogLevel.Warn);
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
