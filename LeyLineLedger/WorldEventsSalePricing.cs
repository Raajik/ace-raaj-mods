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
    static bool _fullyResolved;
    static bool _assemblyLogged;
    static bool _targetLogged;

    internal static double GetSaleMultiplier(Vendor vendor)
    {
        if (!Resolve() || vendor == null)
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

    static bool Resolve()
    {
        if (_fullyResolved)
            return _currentSettingsField != null;

        Assembly? asm = null;
        foreach (var a in AppDomain.CurrentDomain.GetAssemblies())
        {
            if (string.Equals(a.GetName().Name, WorldEventsAssemblyName, StringComparison.OrdinalIgnoreCase))
            { asm = a; break; }
        }

        if (asm is null)
        {
            if (!_assemblyLogged)
            {
                _assemblyLogged = true;
                ModManager.Log("[LeyLineLedger→WorldEvents] WorldEvents not loaded; sale pricing multiplier stays 1.0.", ModManager.LogLevel.Info);
            }
            return false;
        }

        try
        {
            var patchType = asm.GetType(PatchClassTypeName);
            var settingsType = asm.GetType(SettingsTypeName);
            var saleRt = asm.GetType(SaleRuntimeTypeName);
            if (patchType == null || settingsType == null || saleRt == null)
            {
                if (!_targetLogged)
                {
                    _targetLogged = true;
                    ModManager.Log("[LeyLineLedger→WorldEvents] WorldEvents loaded but expected types not found; sale pricing inactive.", ModManager.LogLevel.Warn);
                }
                _fullyResolved = true;
                return false;
            }

            _currentSettingsField = patchType.GetField("CurrentSettings", BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.Public);
            _settingsType = settingsType;
            _saleEnabled = settingsType.GetProperty("SaleEnabled", BindingFlags.Instance | BindingFlags.Public);
            _saleVendorPriceMultiplier = settingsType.GetProperty("SaleVendorPriceMultiplier", BindingFlags.Instance | BindingFlags.Public);
            _saleVendorDiscountMultiplier = settingsType.GetProperty("SaleVendorDiscountMultiplier", BindingFlags.Instance | BindingFlags.Public);
            _isVendorOnSale = saleRt.GetMethod("IsVendorOnSale", BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.Public, null, new[] { typeof(int), typeof(string), typeof(uint) }, null);

            _fullyResolved = true;
            if (_currentSettingsField != null && _isVendorOnSale != null)
            {
                ModManager.Log("[LeyLineLedger→WorldEvents] Resolved sale pricing bridge.", ModManager.LogLevel.Info);
                return true;
            }

            ModManager.Log("[LeyLineLedger→WorldEvents] WARNING: WorldEvents loaded but sale pricing fields/methods not found.", ModManager.LogLevel.Warn);
            return false;
        }
        catch (Exception ex)
        {
            _fullyResolved = true;
            ModManager.Log($"[LeyLineLedger→WorldEvents] Resolve error: {ex.GetType().Name}: {ex.Message}", ModManager.LogLevel.Warn);
            return false;
        }
    }
}
