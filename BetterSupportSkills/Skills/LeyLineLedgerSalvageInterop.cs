using ACE.Server.Mods;
using ACE.Server.WorldObjects;
using AceRaajMods.Shared;

namespace BetterSupportSkills.Skills;

/// <summary>
/// Bridge to LeyLineLedger's salvage bank system.
/// Uses AceRaajMods.Shared.LeyLineLedgerBankInterop for the actual bank write
/// (which resolves IncBanked on the correct BankExtensions class).
/// Property ID uses the standard formula: FirstMaterialBankPropertyId (40201) + (WCID - 20981).
/// This matches LLL's default DepositRules mapping when rules are in WCID order.
/// </summary>
public static class LeyLineLedgerSalvageInterop
{
    const int DefaultFirstPropertyId = 40201;
    const uint MinSalvageWcid = 20981;
    const uint MaxSalvageWcid = 21089;

    /// <summary>
    /// Returns the LLL property ID for this salvage WCID, or -1 if out of range.
    /// </summary>
    public static int GetSalvagePropertyId(uint salvageWcid)
    {
        if (salvageWcid >= MinSalvageWcid && salvageWcid <= MaxSalvageWcid)
            return DefaultFirstPropertyId + (int)(salvageWcid - MinSalvageWcid);
        return -1;
    }

    /// <summary>
    /// Calls the Shared LeyLineLedgerBankInterop to credit salvage units.
    /// </summary>
    public static bool DirectIncBanked(Player player, int propertyId, long amount)
    {
        if (propertyId <= 0) return false;
        LeyLineLedgerBankInterop.IncBanked(player, propertyId, amount);
        return true;
    }

    /// <summary>
    /// Credit salvage units to LeyLineLedger's bank using the standard formula.
    /// </summary>
    public static bool TryIncSalvage(Player player, uint salvageWcid, int units)
    {
        if (salvageWcid < MinSalvageWcid || salvageWcid > MaxSalvageWcid)
        {
            ModManager.Log($"[BSS->LLL Salvage] WCID {salvageWcid} out of salvage range ({MinSalvageWcid}-{MaxSalvageWcid})", ModManager.LogLevel.Warn);
            return false;
        }

        int prop = GetSalvagePropertyId(salvageWcid);
        LeyLineLedgerBankInterop.IncBanked(player, prop, units);
        ModManager.Log($"[BSS->LLL Salvage] Credited {units} units of WCID {salvageWcid} to property {prop}.", ModManager.LogLevel.Debug);
        return true;
    }
}
