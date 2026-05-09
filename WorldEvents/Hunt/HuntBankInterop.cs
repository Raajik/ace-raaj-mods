using System.Reflection;
using ACE.Server.Managers;

namespace WorldEvents;

// Resolves LeyLineLedger.HuntRewardBanking at runtime so WorldEvents does not reference LeyLineLedger (separate mod output folders).
internal static class HuntBankInterop
{
    static MethodInfo? _tryAutoBank;
    static MethodInfo? _canAutoBank;
    static bool _fullyResolved;
    static bool _assemblyLogged;
    static bool _targetLogged;

    internal static bool TryLeyLineLedgerAutoBank(Player player, WorldObject item, string placeTag)
    {
        Resolve();

        if (_tryAutoBank is null)
            return false;

        try
        {
            var r = _tryAutoBank.Invoke(null, new object?[] { player, item, placeTag });
            return r is true;
        }
        catch (TargetInvocationException tie) when (tie.InnerException is not null)
        {
            ModManager.Log($"[WorldEvents→LLL] TryAutoBankHuntLoot threw {tie.InnerException.GetType().Name}: {tie.InnerException.Message}", ModManager.LogLevel.Warn);
            return false;
        }
        catch { return false; }
    }

    // Read-only: true if LeyLineLedger would bank this hunt loot without using pack slots or burden.
    internal static bool CanAutoBankHuntLoot(Player player, WorldObject item)
    {
        Resolve();

        if (_canAutoBank is null)
            return false;

        try
        {
            var r = _canAutoBank.Invoke(null, new object?[] { player, item });
            return r is true;
        }
        catch (TargetInvocationException tie) when (tie.InnerException is not null)
        {
            ModManager.Log($"[WorldEvents→LLL] CanAutoBankHuntLoot threw {tie.InnerException.GetType().Name}: {tie.InnerException.Message}", ModManager.LogLevel.Warn);
            return false;
        }
        catch { return false; }
    }

    static void Resolve()
    {
        if (_fullyResolved) return;

        Assembly? asm = null;
        foreach (var a in AppDomain.CurrentDomain.GetAssemblies())
        {
            if (string.Equals(a.GetName().Name, "LeyLineLedger", StringComparison.Ordinal))
            { asm = a; break; }
        }

        if (asm is null)
        {
            if (!_assemblyLogged)
            {
                _assemblyLogged = true;
                ModManager.Log("[WorldEvents→LLL] LeyLineLedger not loaded; hunt auto-bank bridge inactive.", ModManager.LogLevel.Info);
            }
            return;
        }

        var t = asm.GetType("LeyLineLedger.HuntRewardBanking");
        if (t is null)
        {
            if (!_targetLogged)
            {
                _targetLogged = true;
                ModManager.Log("[WorldEvents→LLL] LeyLineLedger loaded but HuntRewardBanking not found.", ModManager.LogLevel.Warn);
            }
            _fullyResolved = true;
            return;
        }

        _tryAutoBank = t.GetMethod(
            "TryAutoBankHuntLoot",
            BindingFlags.Public | BindingFlags.Static,
            null,
            new[] { typeof(Player), typeof(WorldObject), typeof(string) },
            null);

        _canAutoBank = t.GetMethod(
            "CanAutoBankHuntLoot",
            BindingFlags.Public | BindingFlags.Static,
            null,
            new[] { typeof(Player), typeof(WorldObject) },
            null);

        _fullyResolved = true;
        if (_tryAutoBank is not null && _canAutoBank is not null)
            ModManager.Log($"[WorldEvents→LLL] Resolved hunt bank methods on {t.FullName}.", ModManager.LogLevel.Info);
        else
            ModManager.Log($"[WorldEvents→LLL] WARNING: Could not resolve all hunt bank methods on {t.FullName}.", ModManager.LogLevel.Warn);
    }
}
