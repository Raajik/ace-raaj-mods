namespace LockpickLedger;

public partial class PatchClass
{
    // Prefix for WorldObject.OnUse(Player).
    // When a player activates a locked object and has no valid key (or prefers durability first),
    // consumes banked Lockpick Durability equal to the lock's resist-lockpick difficulty.
    public static bool PreWorldObjectOnUse(Player player, WorldObject __instance)
    {
        if (__instance == null || player == null) return true;
        if (__instance.IsLocked != true) return true;

        if (!HasLockpickSkill(player)) return true;

        var difficulty = LockHelper.GetResistLockpick(__instance);
        if (difficulty == null) return true;

        var prefDurabilityFirst = (player.GetProperty((PropertyInt)LockpickProps.KeyPriorityPref) ?? 0) == 1;
        if (!prefDurabilityFirst && PlayerHasValidKey(player, __instance))
            return true;

        var durability = player.GetProperty((PropertyInt64)LockpickProps.LockpickDurability) ?? 0;
        var cost = (long)difficulty.Value;

        if (durability < cost)
        {
            if (cost > 0)
                player.SendMessage($"[Lockpick] Not enough Lockpick Durability to open {__instance.Name} (need {cost:N0}, have {durability:N0}).");
            return true;
        }

        var newDurability = durability - cost;
        player.SetProperty((PropertyInt64)LockpickProps.LockpickDurability, newDurability);
        __instance.IsLocked = false;

        player.SendMessage($"[Lockpick] Used {cost:N0} Lockpick Durability to unlock {__instance.Name}. Remaining: {newDurability:N0}.");

        // Object is now unlocked; let the original OnUse proceed to open it.
        return true;
    }

    static bool PlayerHasValidKey(Player player, WorldObject target)
    {
        var lockCode = LockHelper.GetLockCode(target) ?? "";

        foreach (var wo in player.AllItems())
        {
            if (wo is not Key key) continue;

            // Skeleton keys (Mana Forge Key, Legendary Key) open anything
            if (key.GetProperty(PropertyBool.OpensAnyLock) == true)
                return true;

            if (string.IsNullOrEmpty(lockCode))
                continue;

            var keyCode = key.GetProperty(PropertyString.KeyCode) ?? "";
            if (keyCode == lockCode)
                return true;
        }

        return false;
    }
}
