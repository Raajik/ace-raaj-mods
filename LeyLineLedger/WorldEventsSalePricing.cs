using ACE.Server.WorldObjects;
using System.Reflection;

namespace LeyLineLedger;

// Reflects WorldEvents sale settings + SaleRuntime when WorldEvents.dll is loaded (no project reference).
internal static class WorldEventsSalePricing
{
    const string WorldEventsAssemblyName = "WorldEvents";
    const string PatchClassTypeName = "WorldEvents.PatchClass";
    const string SettingsTypeName = "WorldEvents.Settings";
    const string SaleRuntimeTypeName = "WorldEvents.SaleRuntime";

    static FieldInfo? _currentSettingsField;
    static Type? _settingsType;
    static MethodInfo? _isVendorOnSale;
    static PropertyInfo? _saleEnabled;
    static PropertyInfo? _saleVendorPriceMultiplier;
    static PropertyInfo? _saleVendorDiscountMultiplier;
    static bool _resolveAttempted;
    static bool _resolved;

    internal static double GetSaleMultiplier(Vendor vendor)
    {
        if (!EnsureResolved() || vendor == null)
            return 1.0;

        var settings = _currentSettingsField?.GetValue(null);
        if (settings == null || _settingsType == null)
            return 1.0;

        double mult = 1.0;

        if (_saleVendorPriceMultiplier != null)
        {
            double global = Convert.ToDouble(_saleVendorPriceMultiplier.GetValue(settings) ?? 1.0);
            if (global > 0 && Math.Abs(global - 1.0) > 0.0001)
                mult *= global;
        }

        bool saleOn = _saleEnabled != null && Convert.ToBoolean(_saleEnabled.GetValue(settings) ?? false);
        if (!saleOn || _saleVendorDiscountMultiplier == null || _isVendorOnSale == null)
            return mult;

        double discount = Convert.ToDouble(_saleVendorDiscountMultiplier.GetValue(settings) ?? 1.0);
        if (discount <= 0 || Math.Abs(discount - 1.0) < 0.0001)
            return mult;

        int lb = (int)(vendor.Location?.LandblockId.Landblock ?? 0);
        string? name = vendor.Name;
        uint wcid = vendor.WeenieClassId;
        bool onSale = false;
        try
        {
            var r = _isVendorOnSale.Invoke(null, new object?[] { lb, name, wcid });
            onSale = r is bool b && b;
        }
        catch
        {
            return mult;
        }

        if (onSale)
            mult *= discount;

        return mult;
    }

    static bool EnsureResolved()
    {
        if (_resolved)
            return _currentSettingsField != null;
        if (_resolveAttempted)
            return false;
        _resolveAttempted = true;

        try
        {
            foreach (var asm in AppDomain.CurrentDomain.GetAssemblies())
            {
                if (!string.Equals(asm.GetName().Name, WorldEventsAssemblyName, StringComparison.OrdinalIgnoreCase))
                    continue;

                var patchType = asm.GetType(PatchClassTypeName);
                var settingsType = asm.GetType(SettingsTypeName);
                var saleRt = asm.GetType(SaleRuntimeTypeName);
                if (patchType == null || settingsType == null || saleRt == null)
                    continue;

                _currentSettingsField = patchType.GetField("CurrentSettings", BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.Public);
                _settingsType = settingsType;
                _saleEnabled = settingsType.GetProperty("SaleEnabled", BindingFlags.Instance | BindingFlags.Public);
                _saleVendorPriceMultiplier = settingsType.GetProperty("SaleVendorPriceMultiplier", BindingFlags.Instance | BindingFlags.Public);
                _saleVendorDiscountMultiplier = settingsType.GetProperty("SaleVendorDiscountMultiplier", BindingFlags.Instance | BindingFlags.Public);
                _isVendorOnSale = saleRt.GetMethod("IsVendorOnSale", BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.Public, null, new[] { typeof(int), typeof(string), typeof(uint) }, null);

                if (_currentSettingsField != null && _isVendorOnSale != null)
                {
                    _resolved = true;
                    return true;
                }
            }
        }
        catch
        {
            // WorldEvents absent or API drift — stay at 1.0
        }

        return false;
    }
}
