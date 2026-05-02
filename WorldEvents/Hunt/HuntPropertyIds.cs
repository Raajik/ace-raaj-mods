namespace WorldEvents;

// Reserved custom PropertyFloat band 4012x — align with shard policy if these collide.
internal static class HuntPropertyIds
{
    // Total Hunt XP (server-side progression scalar).
    internal const int TotalHuntXp = 40120;

    // Pending multiplier for the next GrantXP(XpType.Kill) only; cleared after apply.
    internal const int PendingKillXpMultiplier = 40121;

    // Bonus trophy-weight hint for GenerateTreasure postfix (fraction 0..1); cleared after roll.
    internal const int PendingTrophyChanceHint = 40124;

    // Estimated Hunt XP for this kill (PreDie); used so loot tier can align with post-kill TotalHuntXp. Cleared in PostDie.
    internal const int PendingHuntXpPreview = 40122;

    // Final character kill XP (after Loremaster GrantXP chain) for hunt window points; written by Loremaster PreGrantXP, read in PostDieHunt.
    internal const int PendingGrantedCharacterXp = 40126;
}
