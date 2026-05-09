using System.Reflection;
using ACE.Server.Managers;

namespace WorldEvents;

/// <summary>
/// Reflection bridge into LeyLineLedger.Lottery. Other mods should not reference LeyLineLedger directly.
/// </summary>
internal static class LeyLineLedgerBridge
{
    static MethodInfo? _addToPool;
    static MethodInfo? _getNextDrawTime;
    static bool _fullyResolved;
    static bool _assemblyLogged;
    static bool _targetLogged;

    internal static void AddToLotteryPool(long amount)
    {
        if (amount <= 0) return;
        Resolve();
        if (_addToPool is null) return;

        try
        {
            _addToPool.Invoke(null, new object?[] { amount });
        }
        catch (TargetInvocationException tie) when (tie.InnerException is not null)
        {
            ModManager.Log($"[WorldEvents→LLL] AddToLotteryPool threw {tie.InnerException.GetType().Name}: {tie.InnerException.Message}", ModManager.LogLevel.Warn);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[WorldEvents→LLL] AddToLotteryPool error: {ex.GetType().Name}: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    internal static DateTime? GetNextLotteryDrawTime()
    {
        Resolve();
        if (_getNextDrawTime is null) return null;

        try
        {
            var r = _getNextDrawTime.Invoke(null, null);
            return r as DateTime?;
        }
        catch (TargetInvocationException tie) when (tie.InnerException is not null)
        {
            ModManager.Log($"[WorldEvents→LLL] GetNextLotteryDrawTime threw {tie.InnerException.GetType().Name}: {tie.InnerException.Message}", ModManager.LogLevel.Warn);
            return null;
        }
        catch { return null; }
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
                ModManager.Log("[WorldEvents→LLL] LeyLineLedger not loaded; lottery bridge inactive.", ModManager.LogLevel.Info);
            }
            return;
        }

        var t = asm.GetType("LeyLineLedger.Lottery");
        if (t is null)
        {
            if (!_targetLogged)
            {
                _targetLogged = true;
                ModManager.Log("[WorldEvents→LLL] LeyLineLedger loaded but Lottery type not found.", ModManager.LogLevel.Warn);
            }
            _fullyResolved = true;
            return;
        }

        _addToPool = t.GetMethod("AddToPool", BindingFlags.Public | BindingFlags.Static, null, new[] { typeof(long) }, null);
        _getNextDrawTime = t.GetMethod("GetNextDrawTime", BindingFlags.Public | BindingFlags.Static, null, Type.EmptyTypes, null);
        _fullyResolved = true;

        if (_addToPool is not null && _getNextDrawTime is not null)
            ModManager.Log($"[WorldEvents→LLL] Resolved lottery methods on {t.FullName}.", ModManager.LogLevel.Info);
        else
            ModManager.Log($"[WorldEvents→LLL] WARNING: Could not resolve all lottery methods on {t.FullName}.", ModManager.LogLevel.Warn);
    }
}
