using System.Reflection;
using ACE.Server.WorldObjects;

namespace AceRaajMods.Shared;

// Reflection bridge to ChallengeModes.PatchClass — avoids hard assembly references from QOL / AutoLoot.
public static class ChallengeModesPatchClassBridge
{
    const string AssemblyShortName = "ChallengeModes";
    const string PatchTypeName = "ChallengeModes.PatchClass";

    public static bool IsChaosEnabled(Player? player)
    {
        return InvokeBoolOnPlayer(nameof(IsChaosEnabled), player);
    }

    public static bool IsAptitudeEnabled(Player? player)
    {
        return InvokeBoolOnPlayer(nameof(IsAptitudeEnabled), player);
    }

    static bool InvokeBoolOnPlayer(string methodName, Player? player)
    {
        if (player is null)
            return false;

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
                    methodName,
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
