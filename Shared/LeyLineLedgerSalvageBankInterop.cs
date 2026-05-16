using System.Collections;
using System.Linq;
using System.Reflection;
using ACE.Server.Mods;

namespace AceRaajMods.Shared;

// Resolves LeyLineLedger /bank salvage PropertyInt64 ids for stack salvage WCIDs 20981–21089.
// Must match LeyLineLedger.BankSalvage.ResolveMaterialBankProperty + deposit source WCIDs (weenie, output bag, additional ids).
// BetterSupportSkills credits this slot via LeyLineLedgerBankInterop.IncBanked — wrong id desyncs bag-fill messages from /bank salvage status.
public static class LeyLineLedgerSalvageBankInterop
{
    const uint MinSalvageWcid = 20980;
    const uint MaxSalvageWcid = 21089;
    // Legacy fallback base (kept at 20981 to preserve existing WCID-offset property mappings for 20981–21089).
    const uint LegacySalvageBaseWcid = 20981;
    const int LegacyFirstMaterialBankPropertyId = 40201;

    static bool _loggedResolveFailure;
    static bool _loggedAssemblyMissing;

    public static int GetSalvageMaterialBankPropertyId(uint salvageWcid)
    {
        if (salvageWcid < MinSalvageWcid || salvageWcid > MaxSalvageWcid)
            return -1;

        if (TryResolveFromLeyLineLedger(salvageWcid, out int prop, out bool lllPresent) && prop > 0)
            return prop;

        if (!lllPresent)
        {
            if (!_loggedAssemblyMissing)
            {
                _loggedAssemblyMissing = true;
                ModManager.Log(
                    "[LLLSalvageBankInterop] LeyLineLedger assembly not loaded; using legacy WCID-offset salvage bank property ids (40201 + WCID - 20981).",
                    ModManager.LogLevel.Info);
            }

            return LegacyFirstMaterialBankPropertyId + (int)(salvageWcid - LegacySalvageBaseWcid);
        }

        return -1;
    }

    public static bool TryGetSalvageMaterialBankPropertyId(uint salvageWcid, out int propertyId)
    {
        propertyId = -1;
        if (salvageWcid < MinSalvageWcid || salvageWcid > MaxSalvageWcid)
            return false;

        if (TryResolveFromLeyLineLedger(salvageWcid, out int prop, out _) && prop > 0)
        {
            propertyId = prop;
            return true;
        }

        return false;
    }

    static bool TryResolveFromLeyLineLedger(uint targetWcid, out int bankPropertyId, out bool leyLineLedgerAssemblyPresent)
    {
        bankPropertyId = -1;
        leyLineLedgerAssemblyPresent = false;

        Assembly? asm = AppDomain.CurrentDomain.GetAssemblies()
            .FirstOrDefault(a => string.Equals(a.GetName().Name, "LeyLineLedger", StringComparison.Ordinal));

        if (asm is null)
            return false;

        leyLineLedgerAssemblyPresent = true;

        Type? patchType = asm.GetType("LeyLineLedger.PatchClass");
        if (patchType is null)
            return false;

        PropertyInfo? settingsProp = patchType.GetProperty("Settings",
            BindingFlags.Public | BindingFlags.Static | BindingFlags.FlattenHierarchy);
        object? settings = settingsProp?.GetValue(null);
        if (settings is null)
            return false;

        object? salvageBank = settings.GetType().GetProperty("SalvageBank")?.GetValue(settings);
        if (salvageBank is null)
            return false;

        Type sbType = salvageBank.GetType();
        int firstId = CoerceInt32(sbType.GetProperty("FirstMaterialBankPropertyId")?.GetValue(salvageBank));
        if (firstId == 0)
            firstId = 40201;

        object? rulesObj = sbType.GetProperty("DepositRules")?.GetValue(salvageBank);
        if (rulesObj is not IList rules)
            return false;

        for (int i = 0; i < rules.Count; i++)
        {
            object? rule = rules[i];
            if (rule is null)
                continue;

            Type ruleType = rule.GetType();
            if (!RuleMatchesWcid(ruleType, rule, targetWcid))
                continue;

            int bankOverride = CoerceInt32(ruleType.GetProperty("BankProperty")?.GetValue(rule));
            bankPropertyId = bankOverride != 0 ? bankOverride : firstId + i;

            // Diagnostic: log suspect-range WCID resolutions (21072-21089, 20980) at Info level
            if ((targetWcid >= 21072 && targetWcid <= 21089) || targetWcid == 20980)
            {
                ModManager.Log(
                    $"[LLLSalvageBankInterop-DIAG] WCID {targetWcid} resolved to DepositRules index {i}, property {bankPropertyId} (BankProperty={bankOverride}, firstId={firstId}).",
                    ModManager.LogLevel.Info);
            }

            return true;
        }

        if (!_loggedResolveFailure)
        {
            _loggedResolveFailure = true;
            ModManager.Log(
                $"[LLLSalvageBankInterop] No LeyLineLedger SalvageBank.DepositRules row matches salvage WCID {targetWcid}. Auto-salvage credits to this WCID are blocked until DepositRules cover it.",
                ModManager.LogLevel.Warn);
        }

        return false;
    }

    static bool RuleMatchesWcid(Type ruleType, object rule, uint targetWcid)
    {
        foreach (uint id in EnumerateDepositSourceWcids(ruleType, rule))
        {
            if (id == targetWcid)
                return true;
        }

        return false;
    }

    static int CoerceInt32(object? value)
    {
        if (value is null)
            return 0;
        if (value is int i)
            return i;
        if (value is long l && l >= int.MinValue && l <= int.MaxValue)
            return (int)l;
        if (value is uint u && u <= int.MaxValue)
            return (int)u;
        if (value is short s)
            return s;
        if (value is ushort us)
            return us;
        return 0;
    }

    static uint CoerceUInt(object? value)
    {
        if (value is null)
            return 0;
        if (value is uint u)
            return u;
        if (value is int i && i >= 0)
            return (uint)i;
        if (value is long l && l >= 0 && l <= uint.MaxValue)
            return (uint)l;
        return 0;
    }

    static IEnumerable<uint> EnumerateDepositSourceWcids(Type ruleType, object rule)
    {
        uint primary = CoerceUInt(ruleType.GetProperty("WeenieClassId")?.GetValue(rule));
        if (primary != 0)
            yield return primary;

        uint ob = CoerceUInt(ruleType.GetProperty("OutputBagWeenieClassId")?.GetValue(rule));
        if (ob != 0 && ob != primary)
            yield return ob;

        object? addl = ruleType.GetProperty("AdditionalDepositWeenieClassIds")?.GetValue(rule);
        if (addl is IEnumerable addEnum)
        {
            foreach (object? v in addEnum)
            {
                uint u = CoerceUInt(v);
                if (u != 0)
                    yield return u;
            }
        }
    }
}
