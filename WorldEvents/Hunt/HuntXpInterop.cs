using System.Reflection;
using ACE.Server.Managers;

namespace WorldEvents;

// Calls Loremaster.ExternalXpGrants when present so hunt XP skips QuestBonus multiplier (same as parchment / completion bonus).
internal static class HuntXpInterop
{
    static MethodInfo? _grantQuestXpWithoutMultiplier;
    static bool _resolved;

    internal static void GrantQuestXpWithoutMultiplier(Player player, long amount)
    {
        if (amount <= 0)
            return;

        if (!_resolved)
            Resolve();

        if (_grantQuestXpWithoutMultiplier is not null)
        {
            try
            {
                _grantQuestXpWithoutMultiplier.Invoke(null, new object?[] { player, amount });
                return;
            }
            catch
            {
                // fall through to vanilla grant
            }
        }

        // Same as Loremaster.ExternalXpGrants: ACE applies shard xp_modifier after prefixes; must pre-scale when Loremaster is absent.
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
            _grantQuestXpWithoutMultiplier = t?.GetMethod(
                "GrantQuestXpWithoutMultiplier",
                BindingFlags.Public | BindingFlags.Static,
                null,
                new[] { typeof(Player), typeof(long) },
                null);
            return;
        }
    }
}
