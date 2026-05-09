using System.Collections;
using System.Reflection;
using ACE.Server.Mods;
using ACE.Server.WorldObjects;

namespace AceRaajMods.Shared;

// Routes bank reads/writes through LeyLineLedger's AccountBankStore when present,
// so callers update the account-wide JSON balance rather than only writing to the
// player's biota PropertyInt64 (which LeyLineLedger overwrites on mirror).
// Used by QOL (toll, NPC stack turn-in) and AutoLoot (currency, keys, lockpicks, etc.).
public static class LeyLineLedgerBankInterop
{
    static MethodInfo? _getBanked;
    static MethodInfo? _incBanked;
    static bool _resolved;
    static bool _assemblyLogged;
    static bool _targetLogged;

    static Dictionary<uint, int>? _bankableProps;
    static bool _itemsResolved;
    static bool _itemsAssemblyLogged;
    static bool _itemsTargetLogged;

    public static long GetBanked(Player player, int prop)
    {
        Resolve();

        if (_getBanked is not null)
        {
            try
            {
                return (long)_getBanked.Invoke(null, new object[] { player, prop })!;
            }
            catch (TargetInvocationException tie) when (tie.InnerException is not null)
            {
                ModManager.Log($"[LLLBankInterop] GetBanked threw {tie.InnerException.GetType().Name}: {tie.InnerException.Message}", ModManager.LogLevel.Warn);
            }
            catch (Exception ex)
            {
                ModManager.Log($"[LLLBankInterop] GetBanked error: {ex.GetType().Name}: {ex.Message}", ModManager.LogLevel.Warn);
            }
        }

        return player.GetProperty((ACE.Entity.Enum.Properties.PropertyInt64)prop) ?? 0L;
    }

    public static void IncBanked(Player player, int prop, long delta)
    {
        Resolve();

        if (_incBanked is not null)
        {
            try
            {
                _incBanked.Invoke(null, new object[] { player, prop, delta });
                return;
            }
            catch (TargetInvocationException tie) when (tie.InnerException is not null)
            {
                ModManager.Log($"[LLLBankInterop] IncBanked threw {tie.InnerException.GetType().Name}: {tie.InnerException.Message}", ModManager.LogLevel.Warn);
            }
            catch (Exception ex)
            {
                ModManager.Log($"[LLLBankInterop] IncBanked error: {ex.GetType().Name}: {ex.Message}", ModManager.LogLevel.Warn);
            }
        }

        var next = (player.GetProperty((ACE.Entity.Enum.Properties.PropertyInt64)prop) ?? 0L) + delta;
        player.SetProperty((ACE.Entity.Enum.Properties.PropertyInt64)prop, next);
    }

    public static bool IsBankableWcid(uint wcid, out int prop)
    {
        prop = 0;
        ResolveBankableItems();

        if (_bankableProps == null)
            return false;

        if (_bankableProps.TryGetValue(wcid, out int found))
        {
            prop = found;
            return true;
        }

        return false;
    }

    static void Resolve()
    {
        if (_resolved) return;
        _resolved = true;

        Assembly? asm = null;
        foreach (Assembly a in AppDomain.CurrentDomain.GetAssemblies())
        {
            if (string.Equals(a.GetName().Name, "LeyLineLedger", StringComparison.Ordinal))
            { asm = a; break; }
        }

        if (asm is null)
        {
            if (!_assemblyLogged)
            {
                _assemblyLogged = true;
                ModManager.Log("[LLLBankInterop] LeyLineLedger not loaded; bank writes will fall back to PropertyInt64 (mirrored by AccountBankStore if present).", ModManager.LogLevel.Info);
            }
            return;
        }

        Type? t = asm.GetType("LeyLineLedger.BankExtensions") ?? asm.GetType("LeyLineLedger.PatchClass");
        if (t is null)
        {
            if (!_targetLogged)
            {
                _targetLogged = true;
                ModManager.Log("[LLLBankInterop] LeyLineLedger loaded but BankExtensions/PatchClass not found; fallback active.", ModManager.LogLevel.Warn);
            }
            return;
        }

        _getBanked = t.GetMethod("GetBanked",
            BindingFlags.Public | BindingFlags.Static, null,
            new[] { typeof(Player), typeof(int) }, null);

        _incBanked = t.GetMethod("IncBanked",
            BindingFlags.Public | BindingFlags.Static, null,
            new[] { typeof(Player), typeof(int), typeof(long) }, null);

        if (_getBanked != null && _incBanked != null)
            ModManager.Log($"[LLLBankInterop] Resolved bank methods on {t.FullName}.", ModManager.LogLevel.Info);
        else
            ModManager.Log($"[LLLBankInterop] WARNING: Could not resolve GetBanked/IncBanked on {t.FullName}; bank writes will fall back to biota PropertyInt64 (will be overwritten by AccountBankStore mirror).", ModManager.LogLevel.Warn);
    }

    static void ResolveBankableItems()
    {
        if (_itemsResolved) return;
        _itemsResolved = true;
        _bankableProps = new Dictionary<uint, int>();

        Assembly? asm = null;
        foreach (Assembly a in AppDomain.CurrentDomain.GetAssemblies())
        {
            if (string.Equals(a.GetName().Name, "LeyLineLedger", StringComparison.Ordinal))
            { asm = a; break; }
        }

        if (asm is null)
        {
            if (!_itemsAssemblyLogged)
            {
                _itemsAssemblyLogged = true;
                ModManager.Log("[LLLBankInterop] LeyLineLedger not loaded for bankable items; IsBankableWcid will return false.", ModManager.LogLevel.Info);
            }
            return;
        }

        Type? settingsType = asm.GetType("LeyLineLedger.Settings");
        if (settingsType == null)
        {
            if (!_itemsTargetLogged)
            {
                _itemsTargetLogged = true;
                ModManager.Log("[LLLBankInterop] Settings type not found in LeyLineLedger; bankable items unavailable.", ModManager.LogLevel.Warn);
            }
            return;
        }

        PropertyInfo? itemsProp = settingsType.GetProperty("Items");
        if (itemsProp == null)
            return;

        Type? patchClassType = asm.GetType("LeyLineLedger.PatchClass");
        if (patchClassType == null)
            return;

        FieldInfo? settingsField = patchClassType.GetField("Settings", BindingFlags.Public | BindingFlags.Static);
        if (settingsField == null)
            return;

        object? settings = settingsField.GetValue(null);
        if (settings == null)
            return;

        IEnumerable? itemsList = itemsProp.GetValue(settings) as IEnumerable;
        if (itemsList == null)
            return;

        foreach (object? item in itemsList)
        {
            if (item == null)
                continue;

            Type itemType = item.GetType();
            PropertyInfo? idProp = itemType.GetProperty("Id");
            PropertyInfo? propProp = itemType.GetProperty("Prop");
            PropertyInfo? variantProp = itemType.GetProperty("VariantWeenieClassIds");

            uint? id = idProp?.GetValue(item) as uint?;
            int? bankProp = propProp?.GetValue(item) as int?;

            if (id.HasValue && bankProp.HasValue)
            {
                _bankableProps[id.Value] = bankProp.Value;

                if (variantProp?.GetValue(item) is IList variants)
                {
                    foreach (object? v in variants)
                    {
                        if (v is uint variantId)
                            _bankableProps[variantId] = bankProp.Value;
                    }
                }
            }
        }

        if (_bankableProps.Count > 0)
            ModManager.Log($"[LLLBankInterop] Cached {_bankableProps.Count} bankable WCIDs from LeyLineLedger.", ModManager.LogLevel.Info);
    }
}
