using System.Reflection;
using ACE.Server.Mods;
using ACE.Server.WorldObjects;

namespace BetterSupportSkills.Skills;

/// <summary>
/// Bridge to LeyLineLedger's salvage bank system.
/// LLL uses rule-based property indexing via DepositRules, not WCID-based.
/// </summary>
public static class LeyLineLedgerSalvageInterop
{
    static Action<Player, int, long>? _lllIncBanked;
    static Func<uint, int>? _lllGetSalvagePropertyByWcid;
    static bool _interopTried;

    public static void EnsureInterop()
    {
        if (_interopTried)
            return;
        _interopTried = true;

        try
        {
            var asm = AppDomain.CurrentDomain.GetAssemblies()
                .FirstOrDefault(a => string.Equals(a.GetName().Name, "LeyLineLedger", StringComparison.Ordinal));
            if (asm == null)
            {
                ModManager.Log("[BSS→LLL Salvage] LeyLineLedger assembly not found", ModManager.LogLevel.Warn);
                return;
            }

            // Get IncBanked extension method (player, propertyId, amount)
            var patchClassType = asm.GetType("LeyLineLedger.PatchClass");
            var incBankedMethod = patchClassType?.GetMethod(
                "IncBanked",
                BindingFlags.Public | BindingFlags.Static,
                null,
                new[] { typeof(Player), typeof(int), typeof(long) },
                null);

            if (incBankedMethod != null)
            {
                _lllIncBanked = (Action<Player, int, long>)Delegate.CreateDelegate(
                    typeof(Action<Player, int, long>),
                    incBankedMethod);
            }

            // Get helper to map WCID → property ID
            var bankSalvageType = asm.GetType("LeyLineLedger.BankSalvage");
            var getPropertyMethod = bankSalvageType?.GetMethod(
                "GetSalvagePropertyByWcid",
                BindingFlags.Public | BindingFlags.Static | BindingFlags.NonPublic,
                null,
                new[] { typeof(uint) },
                null);

            if (getPropertyMethod != null)
            {
                _lllGetSalvagePropertyByWcid = (Func<uint, int>)Delegate.CreateDelegate(
                    typeof(Func<uint, int>),
                    getPropertyMethod);
            }

            if (_lllIncBanked != null)
            {
                ModManager.Log("[BSS→LLL Salvage] Integration enabled", ModManager.LogLevel.Info);
            }
            else
            {
                ModManager.Log("[BSS→LLL Salvage] IncBanked method not found", ModManager.LogLevel.Warn);
            }
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BSS→LLL Salvage] Integration failed: {ex.Message}", ModManager.LogLevel.Warn);
            _lllIncBanked = null;
            _lllGetSalvagePropertyByWcid = null;
        }
    }

    /// <summary>
    /// Credit salvage units to LeyLineLedger's bank.
    /// Returns true if LLL integration is available and credit was applied.
    /// </summary>
    public static bool TryIncSalvage(Player player, uint salvageWcid, int units)
    {
        EnsureInterop();

        if (_lllIncBanked == null)
            return false;

        // If LLL provides a WCID→property lookup, use it
        if (_lllGetSalvagePropertyByWcid != null)
        {
            int propertyId = _lllGetSalvagePropertyByWcid(salvageWcid);
            if (propertyId > 0)
            {
                _lllIncBanked(player, propertyId, units);
                ModManager.Log($"[BSS→LLL Salvage] Credited {units} units of WCID {salvageWcid} to property {propertyId}", ModManager.LogLevel.Debug);
                return true;
            }
        }

        // Fallback: manually lookup property from settings
        var settings = PatchClass.Settings;
        int prop = FindSalvagePropertyIdManual(salvageWcid, settings);
        if (prop > 0)
        {
            _lllIncBanked(player, prop, units);
            ModManager.Log($"[BSS→LLL Salvage] Credited {units} units of WCID {salvageWcid} to property {prop} (manual lookup)", ModManager.LogLevel.Debug);
            return true;
        }

        return false;
    }

    /// <summary>
    /// Manual fallback: read LLL Settings.json and find the rule index for this WCID.
    /// </summary>
    static int FindSalvagePropertyIdManual(uint wcid, Settings? bssSettings)
    {
        try
        {
            // Read LLL Settings.json
            var lllSettingsPath = Path.Combine(
                Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location) ?? "",
                "..", // BetterSupportSkills
                "LeyLineLedger",
                "Settings.json");

            if (!File.Exists(lllSettingsPath))
                return -1;

            var json = File.ReadAllText(lllSettingsPath);
            var lllSettings = System.Text.Json.JsonSerializer.Deserialize<LeyLineLedgerSettings>(json);
            if (lllSettings?.SalvageBank?.DepositRules == null)
                return -1;

            for (int i = 0; i < lllSettings.SalvageBank.DepositRules.Count; i++)
            {
                var rule = lllSettings.SalvageBank.DepositRules[i];
                if (rule.WeenieClassId == wcid)
                {
                    // Use rule's custom BankProperty if set, otherwise FirstMaterialBankPropertyId + index
                    return rule.BankProperty > 0
                        ? rule.BankProperty
                        : lllSettings.SalvageBank.FirstMaterialBankPropertyId + i;
                }
            }
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BSS→LLL Salvage] Manual lookup failed: {ex.Message}", ModManager.LogLevel.Debug);
        }

        return -1;
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
