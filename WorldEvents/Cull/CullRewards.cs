using SharedLoot;
using WorldEvents.Cull.Models;

namespace WorldEvents;

internal static class CullRewards
{
    internal static void DistributeRewards(ActiveCullData cull, Settings s, int participantCount = -1)
    {
        var ranked = cull.KillsByPlayer
            .Where(kv => kv.Value > 0)
            .OrderByDescending(kv => kv.Value)
            .Take(3)
            .ToList();

        if (ranked.Count == 0) return;

        if (participantCount < 0)
            participantCount = cull.KillsByPlayer.Count;

        var cfg = LootConfigStore.GetLoadedOrDefault();
        var top = new List<(string Name, int Kills, int Rank)>();

        for (var i = 0; i < ranked.Count; i++)
        {
            var (guid, kills) = ranked[i];
            var name = cull.PlayerNames.TryGetValue(guid, out var n) ? n : $"GUID:{guid}";
            top.Add((name, kills, i + 1));

            var player = PlayerManager.GetOnlinePlayer(guid);

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
                if (participantCount == 1 && s.SoloCompetitorBonus.Enable)
                    floor = (LootRarityFloor)Math.Min((int)floor + s.SoloCompetitorBonus.LootFloorBonus, (int)LootRarityFloor.ExtremelyRare);

                item = LootRoller.TryCreateFromMinRarity(cfg, floor);
            }

            if (item == null)
            {
                ModManager.Log($"[Cull] Loot roll empty for {name} (#{i + 1}, floor {floor}).", ModManager.LogLevel.Warn);
                continue;
            }

            if (player == null)
            {
                EventLootDelivery.QueueLootFromWorldObject(guid, "Cull", $"#{i + 1} ({kills} kills)", item, ironman: false);
                continue;
            }

            TagSsfIfNeeded(player, item);
            EventLootDelivery.TryDeliverLootNow(player, item, "[EVENT - Cull]", $"#{i + 1} ({kills} kills)", tryHuntBankFirst: false);

            // Solo competitor completion XP bonus
            if (player != null && participantCount == 1 && s.SoloCompetitorBonus.Enable && i == 0)
            {
                var xpToNext = LevelXpMath.GetXpToNextLevel(player);
                if (xpToNext > 0)
                {
                    var grant = (long)(xpToNext * 0.20 * s.SoloCompetitorBonus.XpMultiplier);
                    if (grant > 0)
                    {
                        HuntXpInterop.GrantQuestXpWithoutMultiplier(player, grant);
                        var awarded = HuntQuestXpDisplay.EstimateCharacterXpAfterAchievementChain(player, grant);
                        player.SendMessage($"[EVENT - Cull] Solo competitor bonus: +{awarded:N0} character XP.");
                    }
                }
            }
        }

        if (participantCount == 1 && s.SoloCompetitorBonus.Enable && ranked.Count > 0)
        {
            var soloName = cull.PlayerNames.TryGetValue(ranked[0].Key, out var sn) ? sn : $"GUID:{ranked[0].Key}";
            WorldEventsBroadcast.Send(s.SoloCompetitorBonus.BroadcastMessage.Replace("{Name}", soloName));
        }

        CullBroadcast.AnnounceResults(cull, top);

        // ── Quest Points (all participants) ────────────────────────────────────
        var allSorted = cull.KillsByPlayer
            .Where(kv => kv.Value > 0)
            .OrderByDescending(kv => kv.Value)
            .ToList();

        for (var i = 0; i < allSorted.Count; i++)
        {
            var guid = allSorted[i].Key;
            var player = PlayerManager.GetOnlinePlayer(guid);
            if (player == null) continue;
            PlacementQuestPoints.GrantByRank(player, i, participantCount, "Cull");
        }
    }

    static void TagSsfIfNeeded(Player player, WorldObject item)
    {
        if (player.GetProperty(FakeBool.Ironman) != true) return;
        if (item.GetProperty(FakeBool.Ironman) == true) return;
        item.SetProperty(FakeBool.Ironman, true);
    }
}
