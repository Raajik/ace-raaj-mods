using System.Reflection;
using ACE.Server.WorldObjects;

namespace QOL;

// Routes bank reads/writes through LeyLineLedger's AccountBankStore when present,
// so the toll correctly updates the account-wide JSON balance rather than only
// writing to the player's biota property (which LeyLineLedger overwrites on mirror).
internal static class LeyLineLedgerBankInterop
{
    static MethodInfo? _getBanked;
    static MethodInfo? _incBanked;
    static bool _resolved;

    internal static long GetBanked(Player player, int prop)
    {
        if (!_resolved) Resolve();

        if (_getBanked is not null)
        {
            try { return (long)_getBanked.Invoke(null, new object[] { player, prop })!; }
            catch { }
        }

        return player.GetProperty((ACE.Entity.Enum.Properties.PropertyInt64)prop) ?? 0L;
    }

    internal static void IncBanked(Player player, int prop, long delta)
    {
        if (!_resolved) Resolve();

        if (_incBanked is not null)
        {
            try { _incBanked.Invoke(null, new object[] { player, prop, delta }); return; }
            catch { }
        }

        var next = (player.GetProperty((ACE.Entity.Enum.Properties.PropertyInt64)prop) ?? 0L) + delta;
        player.SetProperty((ACE.Entity.Enum.Properties.PropertyInt64)prop, next);
    }

    static void Resolve()
    {
        _resolved = true;
        foreach (var asm in AppDomain.CurrentDomain.GetAssemblies())
        {
            if (!string.Equals(asm.GetName().Name, "LeyLineLedger", StringComparison.Ordinal))
                continue;

            // Extension methods live on the PatchClass static class.
            var t = asm.GetType("LeyLineLedger.PatchClass");
            if (t is null) break;

            _getBanked = t.GetMethod("GetBanked",
                BindingFlags.Public | BindingFlags.Static, null,
                new[] { typeof(Player), typeof(int) }, null);

            _incBanked = t.GetMethod("IncBanked",
                BindingFlags.Public | BindingFlags.Static, null,
                new[] { typeof(Player), typeof(int), typeof(long) }, null);
            break;
        }
    }
}
