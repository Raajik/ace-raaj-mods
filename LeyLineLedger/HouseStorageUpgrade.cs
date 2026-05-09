using ACE.Entity.Enum.Properties;

namespace LeyLineLedger;

internal static class HouseStorageUpgrade
{
    internal static void TryBegin(Player player)
    {
        Settings? s = PatchClass.Settings;
        if (s?.HouseStorage.Enabled != true)
        {
            player.SendMessage("House storage upgrades are disabled.");
            return;
        }

        int tier = player.GetProperty((PropertyInt)s.HouseStorage.TierIndexProperty) ?? 0;
        if (tier >= s.HouseStorage.Tiers.Count)
        {
            player.SendMessage("You have reached the maximum house storage upgrade tier.");
            return;
        }

        HouseStorageTier cost = s.HouseStorage.Tiers[tier];
        int mmdProp = s.Items.FirstOrDefault(x => x.Id == 20630)?.Prop ?? 40000;
        BankItem? writItem = s.Items.FirstOrDefault(x => x.Id == 11710);
        if (writItem is null)
        {
            player.SendMessage("Writ of Refuge is not configured in LeyLineLedger Items; cannot purchase upgrade.");
            return;
        }

        long mmd = player.GetBanked(mmdProp);
        long writ = player.GetBanked(writItem.Prop);
        if (mmd < cost.MmdFromBank || writ < cost.WritFromBank)
        {
            player.SendMessage(
                $"Not enough banked currency for upgrade tier {tier + 1}. Need {cost.MmdFromBank} MMD and {cost.WritFromBank} Writ of Refuge (banked).");
            return;
        }

        string body =
            $"Purchase storage upgrade tier {tier + 1} for {cost.MmdFromBank} MMD and {cost.WritFromBank} Writ of Refuge from your bank, gaining {cost.SlotsAdded} bonus slot record(s) on your character?";

        if (!player.ConfirmationManager.EnqueueSend(new Confirmation_HouseStorageUpgrade(player.Guid), body))
            player.SendMessage("You already have a confirmation dialog open.");
    }

    internal static void ApplyConfirmed(Player player)
    {
        Settings? s = PatchClass.Settings;
        if (s?.HouseStorage.Enabled != true)
            return;

        int tier = player.GetProperty((PropertyInt)s.HouseStorage.TierIndexProperty) ?? 0;
        if (tier >= s.HouseStorage.Tiers.Count)
            return;

        HouseStorageTier cost = s.HouseStorage.Tiers[tier];
        int mmdProp = s.Items.FirstOrDefault(x => x.Id == 20630)?.Prop ?? 40000;
        BankItem? writItem = s.Items.FirstOrDefault(x => x.Id == 11710);
        if (writItem is null)
            return;

        long mmd = player.GetBanked(mmdProp);
        long writ = player.GetBanked(writItem.Prop);
        if (mmd < cost.MmdFromBank || writ < cost.WritFromBank)
        {
            player.SendMessage("Bank balances changed; upgrade cancelled.");
            return;
        }

        player.IncBanked(mmdProp, -cost.MmdFromBank);
        player.IncBanked(writItem.Prop, -cost.WritFromBank);

        int curSlots = player.GetProperty((PropertyInt)s.HouseStorage.BonusSlotsProperty) ?? 0;
        player.SetProperty((PropertyInt)s.HouseStorage.BonusSlotsProperty, curSlots + cost.SlotsAdded);
        player.SetProperty((PropertyInt)s.HouseStorage.TierIndexProperty, tier + 1);

        player.SendMessage($"House storage upgrade complete: +{cost.SlotsAdded} bonus slot(s) recorded (tier {tier + 1}). Tie PropertyInt {s.HouseStorage.BonusSlotsProperty} to housing hooks if needed.");
    }
}
