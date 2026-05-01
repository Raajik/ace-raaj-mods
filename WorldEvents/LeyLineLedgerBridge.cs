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
    static bool _resolved;

    internal static void AddToLotteryPool(long amount)
    {
        if (amount <= 0) return;
        if (!_resolved) Resolve();
        if (_addToPool is null) return;

        try
        {
            _addToPool.Invoke(null, new object?[] { amount });
        }
        catch (Exception ex)
        {
            ModManager.Log($"[WorldEvents] LeyLineLedgerBridge.AddToLotteryPool failed: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    internal static DateTime? GetNextLotteryDrawTime()
    {
        if (!_resolved) Resolve();
        if (_getNextDrawTime is null) return null;

        try
        {
            return (DateTime?)(_getNextDrawTime.Invoke(null, null) ?? null);
        }
        catch
        {
            return null;
        }
    }

    static void Resolve()
    {
        _resolved = true;
        foreach (var asm in AppDomain.CurrentDomain.GetAssemblies())
        {
            if (!string.Equals(asm.GetName().Name, "LeyLineLedger", StringComparison.Ordinal))
                continue;

            var t = asm.GetType("LeyLineLedger.Lottery");
            _addToPool = t?.GetMethod("AddToPool", BindingFlags.Public | BindingFlags.Static, null, new[] { typeof(long) }, null);
            _getNextDrawTime = t?.GetMethod("GetNextDrawTime", BindingFlags.Public | BindingFlags.Static, null, Type.EmptyTypes, null);
            return;
        }
    }
}
