using System.Reflection;
using ACE.Server.WorldObjects;

namespace ChallengeModes;

// Calls QOL.XpTracker.SetAptitudeForcedAutoSpend without a project reference to QOL.
internal static class QolXpAptitudeInterop
{
    const string AssemblyShortName = "QOL";
    const string TrackerTypeName = "QOL.XpTracker";

    internal static void SetAptitudeForcedAutoSpend(Player player, bool forced)
    {
        if (player is null)
            return;

        try
        {
            foreach (var asm in AppDomain.CurrentDomain.GetAssemblies())
            {
                if (!string.Equals(asm.GetName().Name, AssemblyShortName, StringComparison.OrdinalIgnoreCase))
                    continue;

                var t = asm.GetType(TrackerTypeName, throwOnError: false);
                if (t is null)
                    return;

                var m = t.GetMethod(
                    "SetAptitudeForcedAutoSpend",
                    BindingFlags.Public | BindingFlags.Static,
                    binder: null,
                    types: new[] { typeof(Player), typeof(bool) },
                    modifiers: null);
                m?.Invoke(null, new object[] { player, forced });
                return;
            }
        }
        catch
        {
        }
    }
}
