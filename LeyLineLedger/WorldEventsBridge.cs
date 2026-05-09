using ACE.Server.WorldObjects;
using System.Reflection;

namespace LeyLineLedger;

/// <summary>
/// Reflection bridge into WorldEvents.SalePurchaseBridge.
/// Called from Debit.PreFinalizeBuyTransaction to report sale purchases
/// without creating a hard project reference.
/// </summary>
internal static class WorldEventsBridge
{
    static MethodInfo? _recordPurchase;
    static bool _fullyResolved;
    static bool _assemblyLogged;
    static bool _targetLogged;

    internal static void RecordSalePurchase(Player player, Vendor vendor, uint totalCost)
    {
        Resolve();
        if (_recordPurchase is null) return;

        try
        {
            _recordPurchase.Invoke(null, new object?[] { player, vendor, totalCost });
        }
        catch (TargetInvocationException tie) when (tie.InnerException is not null)
        {
            ModManager.Log($"[LeyLineLedger→WorldEvents] RecordSalePurchase threw {tie.InnerException.GetType().Name}: {tie.InnerException.Message}", ModManager.LogLevel.Warn);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[LeyLineLedger→WorldEvents] RecordSalePurchase error: {ex.GetType().Name}: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    static void Resolve()
    {
        if (_fullyResolved) return;

        Assembly? asm = null;
        foreach (var a in AppDomain.CurrentDomain.GetAssemblies())
        {
            if (string.Equals(a.GetName().Name, "WorldEvents", StringComparison.Ordinal))
            { asm = a; break; }
        }

        if (asm is null)
        {
            if (!_assemblyLogged)
            {
                _assemblyLogged = true;
                ModManager.Log("[LeyLineLedger→WorldEvents] WorldEvents not loaded; sale purchase bridge inactive.", ModManager.LogLevel.Info);
            }
            return;
        }

        var t = asm.GetType("WorldEvents.SalePurchaseBridge");
        if (t is null)
        {
            if (!_targetLogged)
            {
                _targetLogged = true;
                ModManager.Log("[LeyLineLedger→WorldEvents] WorldEvents loaded but SalePurchaseBridge not found.", ModManager.LogLevel.Warn);
            }
            _fullyResolved = true;
            return;
        }

        _recordPurchase = t.GetMethod("RecordPurchase", BindingFlags.Public | BindingFlags.Static, null, new[] { typeof(Player), typeof(Vendor), typeof(uint) }, null);
        _fullyResolved = true;

        if (_recordPurchase is not null)
            ModManager.Log($"[LeyLineLedger→WorldEvents] Resolved RecordPurchase on {t.FullName}.", ModManager.LogLevel.Info);
        else
            ModManager.Log($"[LeyLineLedger→WorldEvents] WARNING: RecordPurchase not found on {t.FullName}.", ModManager.LogLevel.Warn);
    }
}
