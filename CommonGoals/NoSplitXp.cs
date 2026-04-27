namespace CommonGoals;

internal static class NoSplitXp
{
    /// <summary>
    /// Prefix on Fellowship.SplitXp — when EnableNoSplitXp is true, each fellowship member receives
    /// the full original XP amount instead of a divided share.
    /// </summary>
    [HarmonyPrefix]
    [HarmonyPatch(typeof(Fellowship), nameof(Fellowship.SplitXp))]
    public static bool PreSplitXp(Fellowship __instance, ulong amount, XpType xpType, ShareType shareType, Player player)
    {
        var cfg = PatchClass.Settings;
        if (cfg is null || !cfg.EnableNoSplitXp)
            return true; // run vanilla

        var members = __instance.GetFellowshipMembers();
        shareType &= ~ShareType.Fellowship;

        foreach (var member in members.Values)
        {
            var fellowXpType = player == member ? xpType : XpType.Fellowship;
            member.GrantXP((long)amount, fellowXpType, shareType);
        }

        return false; // skip vanilla split
    }

    /// <summary>
    /// Prefix on Fellowship.SplitLuminance — when EnableNoSplitLuminance is true, each fellowship member receives
    /// the full original luminance amount instead of a divided share.
    /// </summary>
    [HarmonyPrefix]
    [HarmonyPatch(typeof(Fellowship), nameof(Fellowship.SplitLuminance))]
    public static bool PreSplitLuminance(Fellowship __instance, ulong amount, XpType xpType, ShareType shareType, Player player)
    {
        var cfg = PatchClass.Settings;
        if (cfg is null || !cfg.EnableNoSplitLuminance)
            return true; // run vanilla

        var members = __instance.GetFellowshipMembers();
        shareType &= ~ShareType.Fellowship;

        foreach (var member in members.Values)
        {
            var fellowXpType = player == member ? xpType : XpType.Fellowship;
            member.GrantLuminance((long)amount, fellowXpType, shareType);
        }

        return false; // skip vanilla split
    }
}
