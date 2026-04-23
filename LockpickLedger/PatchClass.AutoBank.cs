namespace LockpickLedger;

public partial class PatchClass
{
    // Flimsy(510), Crude(511), Good(512), Plain(513), Excellent(514),
    // Superb(515), Peerless(516), Reliable(545), Carved Gemstone Lockpicks(27672)
    static readonly HashSet<uint> RegularLockpickWcids = new()
        { 510, 511, 512, 513, 514, 515, 516, 545, 27672 };

    const uint LimitlessLockpickWcid = 30253;

    // Prefix for Player.TryCreateInInventoryWithNetworking(WorldObject, int, bool).
    // Intercepts lockpick items before they enter inventory and auto-banks their charges.
    public static bool PreTryCreateInInventory(Player __instance, WorldObject item, ref bool __result)
    {
        if (item == null || __instance == null) return true;

        var wcid = item.WeenieClassId;

        if (wcid == LimitlessLockpickWcid)
            return TryBankLimitlessLockpick(__instance, item, ref __result);

        if (RegularLockpickWcids.Contains(wcid) || item.WeenieType == WeenieType.Lockpick)
            return TryBankRegularLockpick(__instance, item, ref __result);

        return true;
    }

    static bool TryBankRegularLockpick(Player player, WorldObject item, ref bool __result)
    {
        if (!HasLockpickSkill(player))
            return true;

        // Structure = current charges remaining on the lockpick item
        var charges = (long)(item.Structure ?? item.MaxStructure ?? 1);
        if (charges <= 0) charges = 1;

        var current = player.GetProperty((PropertyInt64)LockpickProps.LockpickDurability) ?? 0;
        var newTotal = current + charges;
        player.SetProperty((PropertyInt64)LockpickProps.LockpickDurability, newTotal);

        player.SendMessage($"[Lockpick] {item.Name} ({charges:N0} charges) auto-banked. Durability: {newTotal:N0}.");

        // Item was already removed from the world before TryCreateInInventoryWithNetworking
        // fires (standard ACE pickup flow), so no explicit Destroy() is needed.
        __result = true;
        return false;
    }

    static bool TryBankLimitlessLockpick(Player player, WorldObject item, ref bool __result)
    {
        if (!HasLockpickSkill(player))
            return true;

        var settings = CurrentSettings ?? new Settings();

        // Increment the stacked count
        var prevCount = player.GetProperty((PropertyInt64)LockpickProps.LimitlessLockpickCount) ?? 0L;
        var newCount = prevCount + 1;
        player.SetProperty((PropertyInt64)LockpickProps.LimitlessLockpickCount, newCount);

        // Grant immediate charges equal to one interval's worth (at the new stacked rate)
        var initialCharges = (long)settings.LimitlessRegenChargesPerInterval * newCount;
        var current = player.GetProperty((PropertyInt64)LockpickProps.LockpickDurability) ?? 0L;
        var newTotal = current + initialCharges;
        player.SetProperty((PropertyInt64)LockpickProps.LockpickDurability, newTotal);
        player.SetProperty((PropertyInt64)LockpickProps.LimitlessLastGrantUnix, (long)Time.GetUnixTime());

        var hours = settings.LimitlessRegenIntervalSeconds / 3600.0;
        var ratePerInterval = (long)settings.LimitlessRegenChargesPerInterval * newCount;

        if (prevCount == 0)
        {
            player.SendMessage(
                $"[Lockpick] Limitless Lockpick activated! " +
                $"Passive regen: {ratePerInterval:N0} Lockpick Durability every {hours:0.#} hours. " +
                $"Initial grant: +{initialCharges:N0}. Total: {newTotal:N0}.");
        }
        else
        {
            player.SendMessage(
                $"[Lockpick] Limitless Lockpick stacked (x{newCount})! " +
                $"Regen now {ratePerInterval:N0} per {hours:0.#} hours. " +
                $"Immediate grant: +{initialCharges:N0}. Total: {newTotal:N0}.");
        }

        __result = true;
        return false;
    }
}
