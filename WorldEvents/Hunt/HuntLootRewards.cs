using ACE.Entity.Enum;
using SharedLoot;

namespace WorldEvents;

internal static class HuntLootRewards
{
    internal static List<string> GrantPlacementLoot(Settings settings, int zeroBasedRank, double huntPoints, Player player, int participantCount = 1)
    {
        if (!settings.HuntGrantLootTableRolls)
            return new List<string>();

        // Only top 3 get loot
        if (zeroBasedRank >= 3)
            return new List<string>();

        var floor = RarityFloorForPlace(zeroBasedRank);
        if (participantCount == 1 && settings.SoloCompetitorBonus.Enable)
            floor = (LootRarityFloor)Math.Min((int)floor + settings.SoloCompetitorBonus.LootFloorBonus, (int)LootRarityFloor.ExtremelyRare);
        return GrantLootRollSync(player, zeroBasedRank + 1, floor, settings, isSalvage: zeroBasedRank == 2);
    }

    // 1st: uncommon+; 2nd: common+; 3rd: salvage
    static LootRarityFloor RarityFloorForPlace(int zeroBasedRank) => zeroBasedRank switch
    {
        0 => LootRarityFloor.Uncommon,
        1 => LootRarityFloor.Any,
        _ => LootRarityFloor.Any,
    };

    static List<string> GrantLootRollSync(Player player, int place, LootRarityFloor floor, Settings settings, bool isSalvage = false)
    {
        var names = new List<string>();
        var cfg = LootConfigStore.GetLoadedOrDefault();

        WorldObject? item;
        if (isSalvage)
            item = SalvageBagShaper.CreateRandomSalvageBag();
        else
            item = LootRoller.TryCreateFromMinRarity(cfg, floor);

        if (item is null)
        {
            ModManager.Log($"[Hunt] Hunt loot roll produced no item for {player.Name} (place {place}, floor {floor}).", ModManager.LogLevel.Warn);
            names.Add("(empty roll)");
            return names;
        }

        names.Add($"{item.Name} [WCID {item.WeenieClassId}]");

        var placeTag = $"place {place}";
        if (HuntBankInterop.TryLeyLineLedgerAutoBank(player, item, placeTag))
            return names;

        // SSF: ChallengeModes.SsfMode rejects TryCreateInInventoryWithNetworking when the item is not
        // Ironman-tagged. Banked trade notes never hit that path; rolled loot (motes, etc.) must be
        // tagged like vendor purchases and AutoLoot (see SsfMode PreTryCreateInInventoryWithNetworking).
        TagHuntRewardForSsfIfNeeded(player, item);

        if (!player.TryCreateInInventoryWithNetworking(item, out _))
        {
            item.Location = player.Location.InFrontOf(0.5f);
            item.EnterWorld();
            player.SendMessage(
                $"[Hunt] Hunt reward (place {place}) — could not add {item.Name} to your pack. Dropped at your feet.");
        }
        else
        {
            player.SendMessage($"[Hunt] Hunt reward (place {place}): {item.Name}.");
        }

        return names;
    }

    static string FormatHuntLootBroadcastLine(WorldObject item, bool isSalvage)
    {
        if (isSalvage && item.MaterialType != MaterialType.Unknown)
            return $"{item.MaterialType} salvage (1 bag)";
        return item.Name ?? "loot";
    }

    static void TagHuntRewardForSsfIfNeeded(Player player, WorldObject item)
    {
        if (player.GetProperty(FakeBool.Ironman) != true) return;
        if (item.GetProperty(FakeBool.Ironman) == true) return;
        item.SetProperty(FakeBool.Ironman, true);
    }
}
