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
            if (participantCount == 1 && s.SoloCompetitorBonus.Enable)
                floor = (LootRarityFloor)Math.Min((int)floor + s.SoloCompetitorBonus.LootFloorBonus, (int)LootRarityFloor.ExtremelyRare);

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

            // Solo competitor completion XP bonus
            if (participantCount == 1 && s.SoloCompetitorBonus.Enable && i == 0)
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
    }

    static void TagSsfIfNeeded(Player player, WorldObject item)
    {
        if (player.GetProperty(FakeBool.Ironman) != true) return;
        if (item.GetProperty(FakeBool.Ironman) == true) return;
        item.SetProperty(FakeBool.Ironman, true);
    }
}
