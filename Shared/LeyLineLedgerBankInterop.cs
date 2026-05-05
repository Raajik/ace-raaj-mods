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

    static Dictionary<uint, int>? _bankableProps;
    static bool _itemsResolved;

    public static long GetBanked(Player player, int prop)
    {
        if (!_resolved)
            Resolve();

        if (_getBanked is not null)
        {
            try
            {
                return (long)_getBanked.Invoke(null, new object[] { player, prop })!;
            }
            catch
            {
                // fall through
            }
        }

        return player.GetProperty((ACE.Entity.Enum.Properties.PropertyInt64)prop) ?? 0L;
    }

    public static void IncBanked(Player player, int prop, long delta)
    {
        if (!_resolved)
            Resolve();

        if (_incBanked is not null)
        {
            try
            {
                _incBanked.Invoke(null, new object[] { player, prop, delta });
                return;
            }
            catch
            {
                // fall through
            }
        }

        var next = (player.GetProperty((ACE.Entity.Enum.Properties.PropertyInt64)prop) ?? 0L) + delta;
        player.SetProperty((ACE.Entity.Enum.Properties.PropertyInt64)prop, next);
    }

    public static bool IsBankableWcid(uint wcid, out int prop)
    {
        prop = 0;
        if (!_itemsResolved)
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
        _resolved = true;
        foreach (Assembly asm in AppDomain.CurrentDomain.GetAssemblies())
        {
            if (!string.Equals(asm.GetName().Name, "LeyLineLedger", StringComparison.Ordinal))
                continue;

            // GetBanked/IncBanked are extension methods on LeyLineLedger.BankExtensions
            // (they used to live on PatchClass; check both for backward compat).
            // Extension methods are static; the (this Player, int) signature decays to (Player, int) at the IL level.
            Type? t = asm.GetType("LeyLineLedger.BankExtensions") ?? asm.GetType("LeyLineLedger.PatchClass");
            if (t is null)
                break;

            _getBanked = t.GetMethod("GetBanked",
                BindingFlags.Public | BindingFlags.Static, null,
                new[] { typeof(Player), typeof(int) }, null);

            _incBanked = t.GetMethod("IncBanked",
                BindingFlags.Public | BindingFlags.Static, null,
                new[] { typeof(Player), typeof(int), typeof(long) }, null);

            ModManager.Log(_getBanked != null && _incBanked != null
                ? $"[LeyLineLedgerBankInterop] Resolved bank methods on {t.FullName}."
                : $"[LeyLineLedgerBankInterop] WARNING: Could not resolve GetBanked/IncBanked on {t.FullName}; bank writes will fall back to biota PropertyInt64 (will be overwritten by AccountBankStore mirror).",
                ModManager.LogLevel.Info);
            break;
        }
    }

    static void ResolveBankableItems()
    {
        _itemsResolved = true;
        _bankableProps = new Dictionary<uint, int>();

        foreach (Assembly asm in AppDomain.CurrentDomain.GetAssemblies())
        {
            if (!string.Equals(asm.GetName().Name, "LeyLineLedger", StringComparison.Ordinal))
                continue;

            Type? settingsType = asm.GetType("LeyLineLedger.Settings");
            if (settingsType == null)
                break;

            PropertyInfo? itemsProp = settingsType.GetProperty("Items");
            if (itemsProp == null)
                break;

            Type? patchClassType = asm.GetType("LeyLineLedger.PatchClass");
            if (patchClassType == null)
                break;

            FieldInfo? settingsField = patchClassType.GetField("Settings", BindingFlags.Public | BindingFlags.Static);
            if (settingsField == null)
                break;

            object? settings = settingsField.GetValue(null);
            if (settings == null)
                break;

            IEnumerable? itemsList = itemsProp.GetValue(settings) as IEnumerable;
            if (itemsList == null)
                break;

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

            ModManager.Log($"[LeyLineLedgerBankInterop] Cached {_bankableProps.Count} bankable WCIDs from LeyLineLedger.", ModManager.LogLevel.Info);
            break;
        }
    }
}
