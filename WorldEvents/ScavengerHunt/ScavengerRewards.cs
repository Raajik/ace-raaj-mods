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
            if (player == null) continue;

            // Flat XP for all participants
            var xp = settings.ScavengerHunt.XpPerTurnIn;
            if (xp > 0)
            {
                HuntXpInterop.GrantQuestXpWithoutMultiplier(player, xp);
                player.SendMessage($"[ScavengerHunt] Event complete! +{xp:N0} flat XP for participating.");
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
                    TagSsfIfNeeded(player, item);
                    if (!player.TryCreateInInventoryWithNetworking(item, out _))
                    {
                        item.Location = player.Location.InFrontOf(0.5f);
                        item.EnterWorld();
                        player.SendMessage($"[ScavengerHunt] #{i + 1} place reward: {item.Name} — pack full, dropped at your feet.");
                    }
                    else
                    {
                        player.SendMessage($"[ScavengerHunt] #{i + 1} place reward: {item.Name}.");
                    }
                }
                else
                {
                    ModManager.Log($"[ScavengerHunt] Loot roll empty for {player.Name} (#{i + 1}, floor {floor}).", ModManager.LogLevel.Warn);
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
