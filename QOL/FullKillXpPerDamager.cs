namespace QOL;

// ACE: Creature.OnDeath_GrantXP splits XpOverride and LuminanceAward by damage/totalHealth per damager.
// This patch optionally grants the full kill XP and luminance to each qualifying player in the history.
[HarmonyPatchCategory(nameof(Features.FullKillXpPerDamager))]
internal static class FullKillXpPerDamager
{
    [HarmonyPrefix]
    [HarmonyPatch(typeof(Creature), nameof(Creature.OnDeath_GrantXP))]
    public static bool Prefix(Creature __instance)
    {
        Settings? cfg = PatchClass.Settings;
        if (cfg is not { EnableFullKillXpPerDamager: true })
            return true;

        if (__instance is Player p && p.PlayerKillerStatus == PlayerKillerStatus.PKLite)
            return true;

        float totalHealth = __instance.DamageHistory.TotalHealth;
        if (totalHealth == 0)
            return true;

        long? xpOverride = __instance.XpOverride;
        long baseXp = xpOverride ?? 0;
        long? luminanceAward = __instance.LuminanceAward;

        foreach (var kvp in __instance.DamageHistory.TotalDamage)
        {
            if (kvp.Value.TotalDamage <= 0)
                continue;

            var damager = kvp.Value.TryGetAttacker();
            Player? playerDamager = damager as Player;
            if (playerDamager == null && kvp.Value.PetOwner != null)
                playerDamager = kvp.Value.TryGetPetOwner();

            if (playerDamager == null)
                continue;

            // Feature requires Achievement Tier 1. Under-tier players get vanilla proportional XP.
            if ((playerDamager.GetProperty((FakeInt)11050) ?? 0) < 1)
            {
                if (baseXp > 0)
                {
                    float frac = kvp.Value.TotalDamage / totalHealth;
                    playerDamager.EarnXP((long)Math.Round(frac * baseXp), XpType.Kill);
                    if (luminanceAward != null)
                        playerDamager.EarnLuminance((long)Math.Round(frac * luminanceAward.Value), XpType.Kill);
                }
                continue;
            }

            playerDamager.EarnXP((long)Math.Round((double)baseXp), XpType.Kill);

            if (luminanceAward != null)
                playerDamager.EarnLuminance(luminanceAward.Value, XpType.Kill);
        }

        return false;
    }
}
