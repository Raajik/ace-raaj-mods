using System.Reflection;
using ACE.Server.Managers;
using ACE.Server.WorldObjects;

namespace QOL;

// Calls Loremaster.ExternalXpGrants when present so level-fraction quest XP (CollectorsAcceptAll) skips the GrantXP retention/QP chain.
internal static class LoremasterQuestXpInterop
{
    static MethodInfo? _grantQuestXpWithBaseRetention;
    static MethodInfo? _grantQuestXpWithoutMultiplier;
    static bool _fullyResolved;
    static bool _assemblyLogged;
    static bool _targetLogged;

    internal static void GrantLevelFractionQuestXp(Player player, long amount)
    {
        if (player is null || amount <= 0)
            return;

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
            catch (TargetInvocationException tie) when (tie.InnerException is not null)
            {
                ModManager.Log($"[QOL→Loremaster] GrantLevelFractionQuestXp threw {tie.InnerException.GetType().Name}: {tie.InnerException.Message}", ModManager.LogLevel.Warn);
            }
            catch (Exception ex)
            {
                ModManager.Log($"[QOL→Loremaster] GrantLevelFractionQuestXp error: {ex.GetType().Name}: {ex.Message}", ModManager.LogLevel.Warn);
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
                ModManager.Log("[QOL→Loremaster] Loremaster not loaded; XP grant falls back to vanilla GrantXP.", ModManager.LogLevel.Info);
            }
            return;
        }

        var t = asm.GetType("Loremaster.ExternalXpGrants");
        if (t is null)
        {
            if (!_targetLogged)
            {
                _targetLogged = true;
                ModManager.Log("[QOL→Loremaster] Loremaster loaded but ExternalXpGrants not found.", ModManager.LogLevel.Warn);
            }
            _fullyResolved = true;
            return;
        }

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

        _fullyResolved = true;
        if (_grantQuestXpWithoutMultiplier is not null)
            ModManager.Log($"[QOL→Loremaster] Resolved GrantQuestXpWithoutMultiplier on {t.FullName}.", ModManager.LogLevel.Info);
        else if (_grantQuestXpWithBaseRetention is not null)
            ModManager.Log($"[QOL→Loremaster] Resolved GrantQuestXpWithBaseRetention on {t.FullName} (without-multiplier not found).", ModManager.LogLevel.Info);
        else
            ModManager.Log($"[QOL→Loremaster] WARNING: No XP grant methods found on {t.FullName}.", ModManager.LogLevel.Warn);
    }
}
