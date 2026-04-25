using ACE.Entity;
using ACE.Entity.Enum;
using ACE.Server.WorldObjects;

namespace BetterSupportSkills.Skills;

/// <summary>
/// Grants a permanent 1% XP boost to players who have unlocked the
/// "HOW DID YOU EVEN DO THAT?!" achievement from Overtinked.
/// </summary>
internal static class XpBoostPatch
{
    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), nameof(Player.GrantXP), new Type[] { typeof(long), typeof(XpType), typeof(ShareType) })]
    public static void PrefixGrantXP(ref long amount, XpType xpType, ShareType shareType, Player __instance)
    {
        if (amount <= 0)
            return;

        // Check if player has the HowDidYouEven achievement
        if (AchievementUnlockedApi.HasAchievement(__instance, "HowDidYouEven"))
        {
            amount = (long)(amount * 1.01);
        }
    }
}
