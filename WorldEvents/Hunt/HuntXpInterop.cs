using System.Reflection;
using ACE.Server.Managers;

namespace WorldEvents;

// Calls Loremaster.ExternalXpGrants when present so hunt XP skips QuestBonus multiplier (same as parchment / completion bonus).
internal static class HuntXpInterop
{
    static MethodInfo? _grantQuestXpWithoutMultiplier;
    static bool _fullyResolved;
    static bool _assemblyLogged;
    static bool _targetLogged;

    internal static void GrantQuestXpWithoutMultiplier(Player player, long amount)
    {
        if (amount <= 0)
            return;

        Resolve();

        if (_grantQuestXpWithoutMultiplier is not null)
        {
            try
            {
                _grantQuestXpWithoutMultiplier.Invoke(null, new object?[] { player, amount });
                return;
            }
            catch (TargetInvocationException tie) when (tie.InnerException is not null)
            {
                ModManager.Log($"[WorldEvents→Loremaster] GrantQuestXpWithoutMultiplier threw {tie.InnerException.GetType().Name}: {tie.InnerException.Message}", ModManager.LogLevel.Warn);
            }
            catch (Exception ex)
            {
                ModManager.Log($"[WorldEvents→Loremaster] GrantQuestXpWithoutMultiplier error: {ex.GetType().Name}: {ex.Message}", ModManager.LogLevel.Warn);
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
        if (_fullyResolved) return;

        Assembly? asm = null;
        foreach (var a in AppDomain.CurrentDomain.GetAssemblies())
        {
            if (string.Equals(a.GetName().Name, "Loremaster", StringComparison.Ordinal))
            { asm = a; break; }
        }

        if (asm is null)
        {
            if (!_assemblyLogged)
            {
                _assemblyLogged = true;
                ModManager.Log("[WorldEvents→Loremaster] Loremaster not loaded; hunt XP falls back to vanilla GrantXP.", ModManager.LogLevel.Info);
            }
            return;
        }

        var t = asm.GetType("Loremaster.ExternalXpGrants");
        if (t is null)
        {
            if (!_targetLogged)
            {
                _targetLogged = true;
                ModManager.Log("[WorldEvents→Loremaster] Loremaster loaded but ExternalXpGrants not found.", ModManager.LogLevel.Warn);
            }
            _fullyResolved = true;
            return;
        }

        _grantQuestXpWithoutMultiplier = t.GetMethod(
            "GrantQuestXpWithoutMultiplier",
            BindingFlags.Public | BindingFlags.Static,
            null,
            new[] { typeof(Player), typeof(long) },
            null);
        _fullyResolved = true;

        if (_grantQuestXpWithoutMultiplier is not null)
            ModManager.Log($"[WorldEvents→Loremaster] Resolved GrantQuestXpWithoutMultiplier on {t.FullName}.", ModManager.LogLevel.Info);
        else
            ModManager.Log($"[WorldEvents→Loremaster] WARNING: GrantQuestXpWithoutMultiplier not found on {t.FullName}.", ModManager.LogLevel.Warn);
    }
}
