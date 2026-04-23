using SharedLoot;

namespace Xenology;

internal static class HuntLootRewards
{
    internal static List<string> GrantPlacementLoot(Settings settings, int zeroBasedRank, double huntPoints, Player player)
    {
        var rolls = RollCountForPlace(settings, zeroBasedRank, huntPoints);
        if (rolls <= 0)
            return new List<string>();

        return GrantLootRollsSync(player, rolls, zeroBasedRank + 1, settings);
    }

    static int RollCountForPlace(Settings settings, int zeroBasedRank, double huntPoints)
    {
        return zeroBasedRank switch
        {
            0 => settings.HuntRewardRollsFirstPlace,
            1 => settings.HuntRewardRollsSecondPlace,
            2 => settings.HuntRewardRollsThirdPlace,
            _ => huntPoints > settings.HuntRewardParticipationMinPoints ? settings.HuntRewardRollsRemainingPlaces : 0,
        };
    }

    static List<string> GrantLootRollsSync(Player player, int rollCount, int place, Settings settings)
    {
        var names = new List<string>();
        if (rollCount <= 0)
            return names;

        var cfg = LootConfigStore.GetLoadedOrDefault();
        for (var r = 0; r < rollCount; r++)
        {
            var item = LootRoller.TryCreateRandomItem(cfg);
            if (item is null)
            {
                ModManager.Log($"[Xenology] Hunt loot roll produced no item for {player.Name} (place {place}).", ModManager.LogLevel.Warn);
                names.Add("(empty roll)");
                continue;
            }

            names.Add($"{item.Name} [WCID {item.WeenieClassId}]");

            var placeTag = $"place {place}";
            if (HuntBankInterop.TryLeyLineLedgerAutoBank(player, item, placeTag))
                continue;

            // SSF: ChallengeModes.SsfMode rejects TryCreateInInventoryWithNetworking when the item is not
            // Ironman-tagged. Banked trade notes never hit that path; rolled loot (motes, etc.) must be
            // tagged like vendor purchases and AutoLoot (see SsfMode PreTryCreateInInventoryWithNetworking).
            TagHuntRewardForSsfIfNeeded(player, item);

            if (!player.TryCreateInInventoryWithNetworking(item, out _))
            {
                // Heavy trade notes should be banked as pyreals via LeyLineLedger.HuntRewardBanking (see Currencies + tradenote heuristics).
                item.Location = player.Location.InFrontOf(0.5f);
                item.EnterWorld();
                player.SendMessage(
                    $"[Xenology] Hunt reward (place {place}) — could not add {item.Name} to your pack (over burden or no slot). Dropped at your feet.");
            }
            else
            {
                player.SendMessage($"[Xenology] Hunt reward (place {place}): {item.Name}.");
            }
        }

        return names;
    }

    static void TagHuntRewardForSsfIfNeeded(Player player, WorldObject item)
    {
        if (player.GetProperty(FakeBool.Ironman) != true)
            return;
        if (item.GetProperty(FakeBool.Ironman) == true)
            return;
        item.SetProperty(FakeBool.Ironman, true);
    }
}
