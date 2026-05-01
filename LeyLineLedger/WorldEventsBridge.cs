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
    static bool _resolved;

    internal static void RecordSalePurchase(Player player, Vendor vendor, uint totalCost)
    {
        if (!_resolved) Resolve();
        if (_recordPurchase is null) return;

        try
        {
            _recordPurchase.Invoke(null, new object?[] { player, vendor, totalCost });
        }
        catch { /* Ignore reflection errors */ }
    }

    static void Resolve()
    {
        _resolved = true;
        foreach (var asm in AppDomain.CurrentDomain.GetAssemblies())
        {
            if (!string.Equals(asm.GetName().Name, "WorldEvents", StringComparison.Ordinal))
                continue;

            var t = asm.GetType("WorldEvents.SalePurchaseBridge");
            _recordPurchase = t?.GetMethod("RecordPurchase", BindingFlags.Public | BindingFlags.Static, null, new[] { typeof(Player), typeof(Vendor), typeof(uint) }, null);
            return;
        }
    }
}
