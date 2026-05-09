using System.Reflection;

namespace WorldEvents;

// Resolves LeyLineLedger.HuntRewardBanking at runtime so WorldEvents does not reference LeyLineLedger (separate mod output folders).
internal static class HuntBankInterop
{
    static MethodInfo? _tryAutoBank;
    static MethodInfo? _canAutoBank;
    static bool _resolved;

    internal static bool TryLeyLineLedgerAutoBank(Player player, WorldObject item, string placeTag)
    {
        if (!_resolved)
            Resolve();

        if (_tryAutoBank is null)
            return false;

        try
        {
            var r = _tryAutoBank.Invoke(null, new object?[] { player, item, placeTag });
            return r is true;
        }
        catch
        {
            return false;
        }
    }

    // Read-only: true if LeyLineLedger would bank this hunt loot without using pack slots or burden.
    internal static bool CanAutoBankHuntLoot(Player player, WorldObject item)
    {
        if (!_resolved)
            Resolve();

        if (_canAutoBank is null)
            return false;

        try
        {
            var r = _canAutoBank.Invoke(null, new object?[] { player, item });
            return r is true;
        }
        catch
        {
            return false;
        }
    }

    static void Resolve()
    {
        _resolved = true;
        foreach (var asm in AppDomain.CurrentDomain.GetAssemblies())
        {
            if (!string.Equals(asm.GetName().Name, "LeyLineLedger", StringComparison.Ordinal))
                continue;

            var t = asm.GetType("LeyLineLedger.HuntRewardBanking");
            if (t is null)
                continue;

            _tryAutoBank = t.GetMethod(
                "TryAutoBankHuntLoot",
                BindingFlags.Public | BindingFlags.Static,
                null,
                new[] { typeof(Player), typeof(WorldObject), typeof(string) },
                null);

            _canAutoBank = t.GetMethod(
                "CanAutoBankHuntLoot",
                BindingFlags.Public | BindingFlags.Static,
                null,
                new[] { typeof(Player), typeof(WorldObject) },
                null);
            return;
        }
    }
}
