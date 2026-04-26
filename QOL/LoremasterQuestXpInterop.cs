using System.Reflection;
using ACE.Server.Managers;
using ACE.Server.WorldObjects;

namespace QOL;

// Calls Loremaster.ExternalXpGrants when present so level-fraction quest XP (CollectorsAcceptAll) skips the GrantXP retention/QP chain.
internal static class LoremasterQuestXpInterop
{
    static MethodInfo? _grantQuestXpWithBaseRetention;
    static MethodInfo? _grantQuestXpWithoutMultiplier;
    static bool _resolved;

    internal static void GrantLevelFractionQuestXp(Player player, long amount)
    {
        if (player is null || amount <= 0)
            return;

        if (!_resolved)
            Resolve();

        // Prefer without-multiplier grant so collector bonus XP is not silently halved by retention.
        var method = _grantQuestXpWithoutMultiplier ?? _grantQuestXpWithBaseRetention;
        if (method is not null)
        {
            try
            {
                method.Invoke(null, new object?[] { player, amount });
                return;
            }
            catch
            {
                // fall through
            }
        }

        var raw = ToRawPassThroughForAceEngine(amount);
        player.GrantXP(raw, XpType.Quest, ShareType.None);
    }

    static long ToRawPassThroughForAceEngine(long intendedGainAfterEngineModifier)
    {
        if (intendedGainAfterEngineModifier <= 0)
            return 0;
        var mod = PropertyManager.GetDouble("xp_modifier", 1.0).Item;
        if (mod <= 0)
            mod = 1.0;
        return (long)(intendedGainAfterEngineModifier / mod + 0.5);
    }

    static void Resolve()
    {
        _resolved = true;
        foreach (var asm in AppDomain.CurrentDomain.GetAssemblies())
        {
            if (!string.Equals(asm.GetName().Name, "Loremaster", StringComparison.Ordinal))
                continue;

            var t = asm.GetType("Loremaster.ExternalXpGrants");
            if (t == null) return;

            _grantQuestXpWithBaseRetention = t.GetMethod(
                "GrantQuestXpWithBaseRetention",
                BindingFlags.Public | BindingFlags.Static,
                null,
                new[] { typeof(Player), typeof(long) },
                null);

            _grantQuestXpWithoutMultiplier = t.GetMethod(
                "GrantQuestXpWithoutMultiplier",
                BindingFlags.Public | BindingFlags.Static,
                null,
                new[] { typeof(Player), typeof(long) },
                null);
            return;
        }
    }
}
