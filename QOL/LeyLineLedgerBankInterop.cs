using System.Collections;
using System.Reflection;
using ACE.Server.WorldObjects;

namespace QOL;

// Routes bank reads/writes through LeyLineLedger's AccountBankStore when present,
// so the toll correctly updates the account-wide JSON balance rather than only
// writing to the player's biota property (which LeyLineLedger overwrites on mirror).
// Also exposes IsBankableWcid for NpcStackTurnIn reward auto-banking.
internal static class LeyLineLedgerBankInterop
{
    static MethodInfo? _getBanked;
    static MethodInfo? _incBanked;
    static bool _resolved;

    // Cached LLL settings.Items for fast WCID→Prop lookups
    static Dictionary<uint, int>? _bankableProps;
    static bool _itemsResolved;

    internal static long GetBanked(Player player, int prop)
    {
        if (!_resolved) Resolve();

        if (_getBanked is not null)
        {
            try { return (long)_getBanked.Invoke(null, new object[] { player, prop })!; }
            catch { }
        }

        return player.GetProperty((ACE.Entity.Enum.Properties.PropertyInt64)prop) ?? 0L;
    }

    internal static void IncBanked(Player player, int prop, long delta)
    {
        if (!_resolved) Resolve();

        if (_incBanked is not null)
        {
            try { _incBanked.Invoke(null, new object[] { player, prop, delta }); return; }
            catch { }
        }

        var next = (player.GetProperty((ACE.Entity.Enum.Properties.PropertyInt64)prop) ?? 0L) + delta;
        player.SetProperty((ACE.Entity.Enum.Properties.PropertyInt64)prop, next);
    }

    /// <summary>
    /// Returns true (and the Prop) if the WCID exists in LeyLineLedger Settings.Items
    /// (including VariantWeenieClassIds). Thread-safe after first resolve.
    /// </summary>
    internal static bool IsBankableWcid(uint wcid, out int prop)
    {
        prop = 0;
        if (!_itemsResolved) ResolveBankableItems();
        if (_bankableProps == null) return false;

        if (_bankableProps.TryGetValue(wcid, out int found))
        {
            prop = found;
            return true;
        }
        return false;
    }

    static void Resolve()
    {
        _resolved = true;
        foreach (var asm in AppDomain.CurrentDomain.GetAssemblies())
        {
            if (!string.Equals(asm.GetName().Name, "LeyLineLedger", StringComparison.Ordinal))
                continue;

            // Extension methods live on the PatchClass static class.
            var t = asm.GetType("LeyLineLedger.PatchClass");
            if (t is null) break;

            _getBanked = t.GetMethod("GetBanked",
                BindingFlags.Public | BindingFlags.Static, null,
                new[] { typeof(Player), typeof(int) }, null);

            _incBanked = t.GetMethod("IncBanked",
                BindingFlags.Public | BindingFlags.Static, null,
                new[] { typeof(Player), typeof(int), typeof(long) }, null);
            break;
        }
    }

    static void ResolveBankableItems()
    {
        _itemsResolved = true;
        _bankableProps = new Dictionary<uint, int>();

        foreach (var asm in AppDomain.CurrentDomain.GetAssemblies())
        {
            if (!string.Equals(asm.GetName().Name, "LeyLineLedger", StringComparison.Ordinal))
                continue;

            var settingsType = asm.GetType("LeyLineLedger.Settings");
            if (settingsType == null) break;

            var itemsProp = settingsType.GetProperty("Items");
            if (itemsProp == null) break;

            var patchClassType = asm.GetType("LeyLineLedger.PatchClass");
            if (patchClassType == null) break;

            var settingsField = patchClassType.GetField("Settings", BindingFlags.Public | BindingFlags.Static);
            if (settingsField == null) break;

            var settings = settingsField.GetValue(null);
            if (settings == null) break;

            var itemsList = itemsProp.GetValue(settings) as IEnumerable;
            if (itemsList == null) break;

            foreach (var item in itemsList)
            {
                if (item == null) continue;
                var itemType = item.GetType();
                var idProp = itemType.GetProperty("Id");
                var propProp = itemType.GetProperty("Prop");
                var variantProp = itemType.GetProperty("VariantWeenieClassIds");

                uint? id = idProp?.GetValue(item) as uint?;
                int? prop = propProp?.GetValue(item) as int?;

                if (id.HasValue && prop.HasValue)
                {
                    _bankableProps[id.Value] = prop.Value;

                    // Variants map to the same prop
                    if (variantProp?.GetValue(item) is IList variants)
                    {
                        foreach (var v in variants)
                        {
                            if (v is uint variantId)
                                _bankableProps[variantId] = prop.Value;
                        }
                    }
                }
            }

            ModManager.Log($"[QOL] LeyLineLedgerBankInterop: cached {_bankableProps.Count} bankable WCIDs.", ModManager.LogLevel.Info);
            break;
        }
    }
}
