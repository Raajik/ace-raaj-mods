using System.Reflection;
using ACE.Server.WorldObjects;

namespace Swarmed;

// Bridges to ChallengeModes to check chaos status without hard dependency.
internal static class ChallengeModesBridge
{
    const string AssemblyShortName = "ChallengeModes";
    const string PatchTypeName = "ChallengeModes.PatchClass";

    internal static bool IsChaosEnabled(Player player)
    {
        try
        {
            foreach (var asm in AppDomain.CurrentDomain.GetAssemblies())
            {
                if (!string.Equals(asm.GetName().Name, AssemblyShortName, StringComparison.OrdinalIgnoreCase))
                    continue;

                var t = asm.GetType(PatchTypeName, throwOnError: false);
                if (t is null)
                    continue;

                var m = t.GetMethod(
                    "IsChaosEnabled",
                    BindingFlags.Public | BindingFlags.Static,
                    binder: null,
                    types: new[] { typeof(Player) },
                    modifiers: null);
                if (m is null)
                    continue;

                var o = m.Invoke(null, new object[] { player });
                return o is bool b && b;
            }
        }
        catch
        {
        }

        return false;
    }
}
