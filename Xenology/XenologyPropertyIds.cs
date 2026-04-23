namespace Xenology;

// Reserved custom PropertyFloat band 4012x — align with shard policy if these collide.
internal static class XenologyPropertyIds
{
    // Total Xenology XP (server-side progression scalar).
    internal const int TotalXenologyXp = 40120;

    // Pending multiplier for the next GrantXP(XpType.Kill) only; cleared after apply.
    internal const int PendingKillXpMultiplier = 40121;

    // Bonus trophy-weight hint for GenerateTreasure postfix (fraction 0..1); cleared after roll.
    internal const int PendingTrophyChanceHint = 40124;

    // Estimated xXP for this kill (PreDie); used so loot tier can align with post-kill TotalXenologyXp. Cleared in PostDie.
    internal const int PendingXenologyXpPreview = 40122;
}
