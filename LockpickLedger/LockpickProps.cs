namespace LockpickLedger;

internal static class LockpickProps
{
    // PropertyInt64 — banked Lockpick Durability charges
    internal const int LockpickDurability = 40130;

    // PropertyInt64 — unix timestamp of last passive regen grant; 0 = player has not unlocked the Limitless perk
    internal const int LimitlessLastGrantUnix = 40131;

    // PropertyInt64 — number of Limitless Lockpick items banked (stacks the regen rate)
    internal const int LimitlessLockpickCount = 40132;

    // PropertyInt — 0 = key first (default), 1 = durability first
    internal const int KeyPriorityPref = 40133;
}
