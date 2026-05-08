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
    /// Reads LLL's Settings.json from disk to build a WCID → property ID map
    /// from SalvageBank.DepositRules. Reflection on BasicPatch<T> won't work
    /// because Settings is an instance property, not static.
    /// </summary>
    static void ResolveSalvagePropertyMap()
    {
        _salvagePropByWcid = new Dictionary<uint, int>();

        // Find LLL's Settings.json: walk up from BSS assembly dir, look for sibling "LeyLineLedger" mod dir
        string? assemblyDir = Path.GetDirectoryName(typeof(LeyLineLedgerSalvageInterop).Assembly.Location);
        if (string.IsNullOrEmpty(assemblyDir))
            return;

        // Try relative path first: BSS is at build/AutoLoot/BetterSupportSkills.dll,
        // but at runtime it's at Mods/BetterSupportSkills/BetterSupportSkills.dll
        string lllSettingsPath = Path.Combine(assemblyDir, "..", "LeyLineLedger", "Settings.json");
        if (!File.Exists(lllSettingsPath))
        {
            // Try ACE mods root sibling approach
            lllSettingsPath = Path.Combine(assemblyDir, "..", "..", "LeyLineLedger", "Settings.json");
        }
        if (!File.Exists(lllSettingsPath))
        {
            ModManager.Log($"[BSS→LLL Salvage] LLL Settings.json not found (tried: {lllSettingsPath})", ModManager.LogLevel.Warn);
            return;
        }

        try
        {
            var json = File.ReadAllText(lllSettingsPath);
            var lllSettings = System.Text.Json.JsonSerializer.Deserialize<LeyLineLedgerSettings>(json);
            if (lllSettings?.SalvageBank?.DepositRules == null || lllSettings.SalvageBank.DepositRules.Count == 0)
            {
                ModManager.Log("[BSS→LLL Salvage] LLL Settings.json has no DepositRules", ModManager.LogLevel.Warn);
                return;
            }

            int firstProp = lllSettings.SalvageBank.FirstMaterialBankPropertyId;
            for (int i = 0; i < lllSettings.SalvageBank.DepositRules.Count; i++)
            {
                var rule = lllSettings.SalvageBank.DepositRules[i];
                if (rule.WeenieClassId == 0) continue;
                int bankProp = rule.BankProperty > 0 ? rule.BankProperty : firstProp + i;
                _salvagePropByWcid[rule.WeenieClassId] = bankProp;
            }

            ModManager.Log($"[BSS→LLL Salvage] Resolved {_salvagePropByWcid.Count} salvage WCIDs from {lllSettingsPath}.", ModManager.LogLevel.Info);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BSS→LLL Salvage] Failed to parse LLL Settings.json: {ex.Message}", ModManager.LogLevel.Warn);
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

    // Minimal DTO for reading LLL Settings.json
    class LeyLineLedgerSettings
    {
        public SalvageBankDto? SalvageBank { get; set; }
    }

    class SalvageBankDto
    {
        public int FirstMaterialBankPropertyId { get; set; }
        public List<DepositRuleDto>? DepositRules { get; set; }
    }

    class DepositRuleDto
    {
        public uint WeenieClassId { get; set; }
        public int BankProperty { get; set; }
    }
}
