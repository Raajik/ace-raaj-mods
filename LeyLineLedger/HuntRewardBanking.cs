using System.Linq;

namespace LeyLineLedger;

// Called by Hunt (and optionally other mods) for hunt loot: bank currency and Items[]-listed stacks without using inventory.
public static class HuntRewardBanking
{
    // True if TryAutoBankHuntLoot would bank this item (currency or ledger stack) without mutating player or item.
    public static bool CanAutoBankHuntLoot(Player player, WorldObject item)
    {
        if (PatchClass.Settings is null || player is null || item is null)
            return false;

        return TryBankCurrency(player, item, out _, commit: false)
            || TryBankLedgerStack(player, item, out _, out _, commit: false);
    }

    public static bool TryAutoBankHuntLoot(Player player, WorldObject item, string placeTag)
    {
        if (PatchClass.Settings is null || player is null || item is null)
            return false;

        if (TryBankCurrency(player, item, out var currencyDesc))
        {
            item.Destroy();
            player.SendMessage($"[Hunt] Hunt reward ({placeTag}): {currencyDesc} sent to your bank.");
            return true;
        }

        if (TryBankLedgerStack(player, item, out var label, out var stackCount))
        {
            item.Destroy();
            player.SendMessage($"[Hunt] Hunt reward ({placeTag}): banked +{stackCount:N0} {label}.");
            return true;
        }

        return false;
    }

    static bool TryBankCurrency(Player player, WorldObject item, out string description, bool commit = true)
    {
        description = "";
        if (PatchClass.Settings is null)
            return false;

        var s = PatchClass.Settings;

        if (PeaPyrealWcids.IsPea(item.WeenieClassId))
        {
            var total = PeaPyrealWcids.GetPyrealValue(item);
            if (total <= 0)
                return false;
            description = $"{total:N0} pyreals";
            if (commit)
                CreditPyrealsToBank(player, s, total);
            return true;
        }

        if (item.WeenieClassId == Player.coinStackWcid)
        {
            var per = item.Value ?? 0;
            if (per <= 0)
                return false;
            var total = (long)per * (item.StackSize ?? 1);
            if (total <= 0)
                return false;
            description = $"{total:N0} pyreals";
            if (commit)
                CreditPyrealsToBank(player, s, total);
            return true;
        }

        if (item.WeenieClassName?.StartsWith("tradenote", StringComparison.OrdinalIgnoreCase) == true
            || IsDenominationWcid(item.WeenieClassId, s))
        {
            var total = GetNonPeaStackPyrealValue(item, s);
            if (total <= 0)
                return false;
            description = $"{total:N0} pyreals";
            if (commit)
                CreditPyrealsToBank(player, s, total);
            return true;
        }

        return false;
    }

    // Trade notes / I–MMD etc.: Value may be unset on the weenie; use Currencies table (same as vendor denominations).
    static long GetNonPeaStackPyrealValue(WorldObject item, Settings s)
    {
        var stack = item.StackSize ?? 1;
        var per = item.Value ?? 0;
        if (per > 0)
            return (long)per * stack;

        var c = s.Currencies?.FirstOrDefault(x => x is not null && x.Id == item.WeenieClassId);
        if (c is not null)
            return (long)c.Value * stack;

        return 0;
    }

    static bool IsDenominationWcid(uint wcid, Settings s) =>
        s.Currencies != null && s.Currencies.Count > 0 && s.Currencies.Any(c => c != null && c.Id == wcid);

    static void CreditPyrealsToBank(Player player, Settings s, long totalValue)
    {
        var bankProp = s.CashProperty;
        var current = player.GetProperty((PropertyInt64)bankProp) ?? 0;
        player.SetProperty((PropertyInt64)bankProp, current + totalValue);
        player.UpdateCoinValue();
    }

    static bool TryBankLedgerStack(Player player, WorldObject item, out string label, out int stackCount, bool commit = true)
    {
        label = "";
        stackCount = 0;
        if (PatchClass.Settings.Items is not { Count: > 0 })
            return false;

        var wcid = item.WeenieClassId;
        foreach (var bi in PatchClass.Settings.Items)
        {
            if (bi == null || bi.Id == 0)
                continue;

            if (!MatchesBankItemWcid(wcid, bi))
                continue;

            stackCount = (int)(item.StackSize ?? 1);
            if (commit)
                player.IncBanked(bi.Prop, stackCount);
            label = string.IsNullOrWhiteSpace(bi.Name) ? $"WCID {bi.Id}" : bi.Name;
            return true;
        }

        return false;
    }

    static bool MatchesBankItemWcid(uint wcid, BankItem bi)
    {
        if (wcid == bi.Id)
            return true;
        if (bi.VariantWeenieClassIds is not { Count: > 0 })
            return false;
        foreach (var v in bi.VariantWeenieClassIds)
        {
            if (v == wcid)
                return true;
        }

        return false;
    }
}
