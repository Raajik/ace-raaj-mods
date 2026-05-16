using ACE.Server.Mods;
using ACE.Server.WorldObjects;
using AceRaajMods.Shared;

namespace BetterSupportSkills.Skills;

// Bridge to LeyLineLedger /bank salvage PropertyInt64 slots for stack salvage WCIDs 20980–21089.
// Property id must match LeyLineLedger.BankSalvage.ResolveMaterialBankProperty (DepositRules order + optional BankProperty),
// not WCID − 20981 row index — see Shared/LeyLineLedgerSalvageBankInterop.cs.
public static class LeyLineLedgerSalvageInterop
{
    public static int GetSalvagePropertyId(uint salvageWcid)
    {
        return LeyLineLedgerSalvageBankInterop.GetSalvageMaterialBankPropertyId(salvageWcid);
    }

    public static bool DirectIncBanked(Player player, int propertyId, long amount)
    {
        if (propertyId <= 0)
            return false;
        LeyLineLedgerBankInterop.IncBanked(player, propertyId, amount);
        return true;
    }

    public static bool TryIncSalvage(Player player, uint salvageWcid, int units)
    {
        if (!LeyLineLedgerSalvageBankInterop.IsValidSalvageWcid(salvageWcid))
        {
            ModManager.Log($"[BSS->LLL Salvage] WCID {salvageWcid} is not a valid salvage material; skipping {units} units.", ModManager.LogLevel.Debug);
            return false;
        }

        int prop = GetSalvagePropertyId(salvageWcid);
        if (prop <= 0)
        {
            ModManager.Log(
                $"[BSS->LLL Salvage] Could not resolve bank PropertyInt64 for salvage WCID {salvageWcid} (LeyLineLedger rule missing or interop failed). Skipping {units} units.",
                ModManager.LogLevel.Warn);
            return false;
        }

        LeyLineLedgerBankInterop.IncBanked(player, prop, units);

        // Info-level logging for suspect WCIDs (21072-21089, indices 53-71) to debug zero-balance issue
        if (salvageWcid >= 21072 && salvageWcid <= 21089)
        {
            ModManager.Log($"[BSS->LLL Salvage-DIAG] WCID {salvageWcid} -> DepositRules prop {prop}: credited {units} units (total after: {LeyLineLedgerBankInterop.GetBanked(player, prop)}).", ModManager.LogLevel.Info);
        }

        ModManager.Log($"[BSS->LLL Salvage] Credited {units} units of WCID {salvageWcid} to property {prop}.", ModManager.LogLevel.Debug);
        return true;
    }
}
