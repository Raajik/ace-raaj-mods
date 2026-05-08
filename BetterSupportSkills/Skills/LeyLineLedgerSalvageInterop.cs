using System.Collections;
using System.Reflection;
using ACE.Server.Mods;
using ACE.Server.WorldObjects;
using AceRaajMods.Shared;

namespace BetterSupportSkills.Skills;

/// <summary>
/// Bridge to LeyLineLedger's salvage bank system.
/// Uses AceRaajMods.Shared.LeyLineLedgerBankInterop for the actual bank write
/// (which resolves the extension method on the correct BankExtensions class),
/// and reflects LLL's in-memory Settings for WCID→property-ID mapping.
/// </summary>
public static class LeyLineLedgerSalvageInterop
{
    static Dictionary<uint, int>? _salvagePropByWcid;
    static bool _interopTried;

    public static void EnsureInterop()
    {
        if (_interopTried)
            return;
        _interopTried = true;

        try
        {
            ResolveSalvagePropertyMap();
            ModManager.Log($"[BSS→LLL Salvage] Cached {_salvagePropByWcid?.Count ?? 0} salvage WCIDs from LLL settings.", ModManager.LogLevel.Info);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BSS→LLL Salvage] Integration failed: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    /// <summary>
    /// Reads LLL's in-memory Settings to build a WCID → property ID map
    /// from SalvageBank.DepositRules.
    /// </summary>
    static void ResolveSalvagePropertyMap()
    {
        _salvagePropByWcid = new Dictionary<uint, int>();

        foreach (Assembly asm in AppDomain.CurrentDomain.GetAssemblies())
        {
            if (!string.Equals(asm.GetName().Name, "LeyLineLedger", StringComparison.Ordinal))
                continue;

            var pt = asm.GetType("LeyLineLedger.PatchClass");
            if (pt == null) { ModManager.Log("[BSS→LLL Salvage] DEBUG: LeyLineLedger.PatchClass type not found", ModManager.LogLevel.Warn); break; }

            // Settings is a static field on BasicPatch<T> — use FlattenHierarchy to find inherited static members.
            // BasicPatch<Settings> is the base, and Settings is on that base class, not on PatchClass itself.
            var sf = pt.GetField("Settings", BindingFlags.Public | BindingFlags.Static | BindingFlags.FlattenHierarchy);
            if (sf == null) { ModManager.Log("[BSS→LLL Salvage] DEBUG: static field 'Settings' not found", ModManager.LogLevel.Warn); break; }
            
            var settings = sf.GetValue(null);
            if (settings == null) { ModManager.Log("[BSS→LLL Salvage] DEBUG: Settings field value is null", ModManager.LogLevel.Warn); break; }

            var st = settings.GetType();
            var sbProp = st.GetProperty("SalvageBank");
            if (sbProp == null) { ModManager.Log("[BSS→LLL Salvage] DEBUG: SalvageBank property not found on Settings", ModManager.LogLevel.Warn); break; }

            var sb = sbProp.GetValue(settings);
            if (sb == null) { ModManager.Log("[BSS→LLL Salvage] DEBUG: SalvageBank value is null", ModManager.LogLevel.Warn); break; }

            var sbType = sb.GetType();
            var firstProp = (int?)(sbType.GetProperty("FirstMaterialBankPropertyId")?.GetValue(sb)) ?? 40201;
            var rules = (IList?)(sbType.GetProperty("DepositRules")?.GetValue(sb));
            if (rules == null) { ModManager.Log("[BSS→LLL Salvage] DEBUG: DepositRules is null", ModManager.LogLevel.Warn); break; }

            for (int i = 0; i < rules.Count; i++)
            {
                object? rule = rules[i];
                if (rule == null) continue;
                var t = rule.GetType();
                uint wcid = (uint?)(t.GetProperty("WeenieClassId")?.GetValue(rule)) ?? 0;
                if (wcid == 0) continue;

                int bankProp = (int?)(t.GetProperty("BankProperty")?.GetValue(rule)) ?? 0;
                if (bankProp == 0)
                    bankProp = firstProp + i;

                _salvagePropByWcid[wcid] = bankProp;
            }
            ModManager.Log($"[BSS→LLL Salvage] Resolved {_salvagePropByWcid.Count} salvage WCIDs from LLL settings (firstProp={firstProp}, rules.Count={rules.Count}).", ModManager.LogLevel.Info);
            return;
        }
    }

    /// <summary>
    /// Returns the LLL property ID for this salvage WCID, or -1 if LLL is unavailable
    /// or has no rule for this WCID.
    /// </summary>
    public static int GetSalvagePropertyId(uint salvageWcid)
    {
        EnsureInterop();
        if (_salvagePropByWcid != null && _salvagePropByWcid.TryGetValue(salvageWcid, out int id))
            return id;
        return -1;
    }

    /// <summary>
    /// Calls the Shared LeyLineLedgerBankInterop to credit salvage units.
    /// Returns true if the credit was applied.
    /// </summary>
    public static bool DirectIncBanked(Player player, int propertyId, long amount)
    {
        if (propertyId <= 0) return false;
        LeyLineLedgerBankInterop.IncBanked(player, propertyId, amount);
        return true;
    }

    /// <summary>
    /// Credit salvage units to LeyLineLedger's bank.
    /// Returns true if LLL integration is available and credit was applied.
    /// </summary>
    public static bool TryIncSalvage(Player player, uint salvageWcid, int units)
    {
        EnsureInterop();

        if (_salvagePropByWcid == null)
            return false;

        if (!_salvagePropByWcid.TryGetValue(salvageWcid, out int prop))
        {
            ModManager.Log($"[BSS→LLL Salvage] No LLL property mapped for WCID {salvageWcid} (not in DepositRules).", ModManager.LogLevel.Warn);
            return false;
        }

        LeyLineLedgerBankInterop.IncBanked(player, prop, units);
        ModManager.Log($"[BSS→LLL Salvage] Credited {units} units of WCID {salvageWcid} to property {prop}.", ModManager.LogLevel.Debug);
        return true;
    }
}
