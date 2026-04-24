using SharedLoot;

namespace WorldEvents;

internal static class InvasionLootRewards
{
    // ── Wave-end placement rewards (mirrors Hunt top-3 structure) ─────────

    /// <summary>
    /// Called at wave end. Top 3 get placement loot; if fewer than 3 participants
    /// the top player collects any unclaimed placements. Solo clear gets all 3.
    /// </summary>
    internal static void DistributeWaveRewards(Settings s)
    {
        if (!s.InvasionGrantLoot) return;

        var ranked = InvasionKillTracker.GetRanked();
        if (ranked.Count == 0) return;

        var cfg = LootConfigStore.GetLoadedOrDefault();
        var solo = ranked.Count == 1;

        // Award up to 3 placement slots; unclaimed slots fold onto top player
        for (var slot = 0; slot < 3; slot++)
        {
            var recipientIdx = Math.Min(slot, ranked.Count - 1);
            var (guid, name, points) = ranked[recipientIdx];
            if (points <= 0) continue;

            var player = PlayerManager.GetOnlinePlayer(guid);
            if (player == null) continue;

            var floor = PlacementFloor(slot);
            var label = solo && slot > 0
                ? $"solo bonus (#{slot + 1})"
                : PlacementLabel(slot);

            GrantItem(player, cfg, floor, label);
        }
    }

    // ── Boss-kill rewards ─────────────────────────────────────────────────

    /// <summary>
    /// Called immediately when boss dies. All boss recipients get Uncommon+.
    /// Solo clear: top player gets 3 separate boss rolls.
    /// </summary>
    internal static void DistributeBossKillRewards(Settings s)
    {
        if (!s.InvasionGrantLoot) return;

        var ranked = InvasionKillTracker.GetRanked();
        if (ranked.Count == 0) return;

        var cfg = LootConfigStore.GetLoadedOrDefault();
        var solo = ranked.Count == 1;
        var topN = Math.Max(1, s.InvasionBossLootTopN);

        if (solo)
        {
            // Solo clear: top player gets 3 boss rolls
            var (guid, _, points) = ranked[0];
            if (points <= 0) return;
            var player = PlayerManager.GetOnlinePlayer(guid);
            if (player == null) return;

            for (var i = 0; i < 3; i++)
                GrantItem(player, cfg, LootRarityFloor.Uncommon, $"solo boss kill (roll {i + 1}/3)");
        }
        else
        {
            // Top N participants each get one Uncommon+ boss drop
            for (var i = 0; i < Math.Min(topN, ranked.Count); i++)
            {
                var (guid, _, points) = ranked[i];
                if (points <= 0) continue;
                var player = PlayerManager.GetOnlinePlayer(guid);
                if (player == null) continue;
                GrantItem(player, cfg, LootRarityFloor.Uncommon, $"boss kill (#{i + 1})");
            }
        }
    }

    // ── Helpers ───────────────────────────────────────────────────────────

    // 1st=Rare, 2nd=Uncommon, 3rd=Any — same as Hunt
    static LootRarityFloor PlacementFloor(int zeroIndex) => zeroIndex switch
    {
        0 => LootRarityFloor.Rare,
        1 => LootRarityFloor.Uncommon,
        _ => LootRarityFloor.Any,
    };

    static string PlacementLabel(int zeroIndex) => zeroIndex switch
    {
        0 => "1st place",
        1 => "2nd place",
        _ => "3rd place",
    };

    static void GrantItem(Player player, LootConfig cfg, LootRarityFloor floor, string label)
    {
        var item = LootRoller.TryCreateFromMinRarity(cfg, floor);
        if (item == null)
        {
            ModManager.Log($"[Invasion] Loot roll empty for {player.Name} ({label}, floor {floor}).", ModManager.LogLevel.Warn);
            return;
        }

        TagForSsfIfNeeded(player, item);

        if (!player.TryCreateInInventoryWithNetworking(item, out _))
        {
            item.Location = player.Location.InFrontOf(0.5f);
            item.EnterWorld();
            player.SendMessage($"[EVENT - Invasion] {label}: {item.Name} — pack full, dropped at your feet.");
        }
        else
        {
            player.SendMessage($"[EVENT - Invasion] {label}: {item.Name}.");
        }
    }

    static void TagForSsfIfNeeded(Player player, WorldObject item)
    {
        if (player.GetProperty(FakeBool.Ironman) != true) return;
        if (item.GetProperty(FakeBool.Ironman) == true) return;
        item.SetProperty(FakeBool.Ironman, true);
    }
}
