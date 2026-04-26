using ACE.Server.Managers;
using ACE.Server.WorldObjects;

namespace Loremaster;

// Intentional-amount quest XP: skips Loremaster retention/QuestBonus (RunWithoutQuestXpMultiplier) and
// pre-scales for PropertyManager "xp_modifier" so %-of-level, trophies, and parchments keep a real curve
// when the shard global rate is low; kill XP and normal quest grants still go through the server rate as usual.
public static class ExternalXpGrants
{
    public static void GrantQuestXpWithoutMultiplier(Player player, long amount)
    {
        if (player is null || amount <= 0)
            return;

        var raw = ToRawPassThroughForAceEngine(amount);
        PatchClass.RunWithoutQuestXpMultiplier(() =>
            player.GrantXP(raw, XpType.Quest, ShareType.None));
    }

    /// <summary>
    /// Grants quest XP but applies only the base retention multiplier (not the full QP/equipment/aug chain).
    /// Use this for completion bonuses and trophy turn-ins so they respect StandardBaseXpRetentionPercent
    /// without compounding the QP multiplier into an explosive feedback loop.
    /// </summary>
    public static void GrantQuestXpWithBaseRetention(Player player, long amount)
    {
        if (player is null || amount <= 0)
            return;

        var s = PatchClass.Settings;
        var baseRetention = s is null ? 1.0 : Math.Clamp(s.BonusXpBaseRetentionPercent / 100.0, 0.0, 100.0);
        var retained = (long)(amount * baseRetention);
        if (retained <= 0) return;

        var raw = ToRawPassThroughForAceEngine(retained);
        PatchClass.RunWithoutQuestXpMultiplier(() =>
            player.GrantXP(raw, XpType.Quest, ShareType.None));
    }

    // Player.GrantXP still applies PropertyManager "xp_modifier" in ACE after prefixes. Loremaster PreGrantXP
    // is skipped here, so we pre-scale the argument so the engine-applied result matches the intended "display" gain.
    public static long ToRawPassThroughForAceEngine(long intendedGainAfterEngineModifier)
    {
        if (intendedGainAfterEngineModifier <= 0)
            return 0;
        var mod = PropertyManager.GetDouble("xp_modifier", 1.0).Item;
        if (mod <= 0)
            mod = 1.0;
        return (long)(intendedGainAfterEngineModifier / mod + 0.5);
    }
}
