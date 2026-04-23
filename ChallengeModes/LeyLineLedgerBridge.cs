namespace ChallengeModes;

using System.Reflection;
using ACE.Server.WorldObjects;

// Avoids a project reference to LeyLineLedger (ACE.Shared version conflicts). Resolves LeyLineLedger.AccountBank after that assembly is loaded.
internal static class LeyLineLedgerBridge
{
    static Type? _accountBankType;
    static MethodInfo? _merge;
    static MethodInfo? _mirror;
    static PropertyInfo? _resolverProp;

    static void TryBind()
    {
        if (_accountBankType is not null)
            return;

        foreach (var asm in AppDomain.CurrentDomain.GetAssemblies())
        {
            if (!string.Equals(asm.GetName().Name, "LeyLineLedger", StringComparison.Ordinal))
                continue;

            var t = asm.GetType("LeyLineLedger.AccountBank");
            if (t is null)
                continue;

            _accountBankType = t;
            _merge = t.GetMethod("MergeChallengeBankIntoAccount", BindingFlags.Public | BindingFlags.Static);
            _mirror = t.GetMethod("MirrorAccountToPlayerAfterChallengeCleared", BindingFlags.Public | BindingFlags.Static);
            _resolverProp = t.GetProperty("ResolveChallengeMode", BindingFlags.Public | BindingFlags.Static);
            break;
        }
    }

    internal static void RegisterChallengeModeResolver(Func<Player, bool> resolver)
    {
        try
        {
            TryBind();
            if (_resolverProp?.PropertyType == typeof(Func<Player, bool>))
                _resolverProp.SetValue(null, resolver);
        }
        catch
        {
        }
    }

    internal static void MergeChallengeBankIntoAccount(Player player)
    {
        try
        {
            TryBind();
            _merge?.Invoke(null, new object?[] { player });
        }
        catch
        {
        }
    }

    internal static void MirrorAccountToPlayerAfterChallengeCleared(Player player)
    {
        try
        {
            TryBind();
            _mirror?.Invoke(null, new object?[] { player });
        }
        catch
        {
        }
    }
}
