using System.Reflection;
using ACE.Server.WorldObjects;

namespace QOL;

// Lets QOL auto-spend call HandleActionRaiseSkill while Aptitude is active (ChallengeModes AlternateLeveling prefix).
internal static class ChallengeModesAptitudeAutoSpendInterop
{
    const string AssemblyShortName = "ChallengeModes";
    const string PatchClassTypeName = "ChallengeModes.PatchClass";

    internal static void Enter(Player player)
    {
        InvokeVoid("EnterAptitudeAutoSpendContext", player);
    }

    internal static void Exit(Player player)
    {
        InvokeVoid("ExitAptitudeAutoSpendContext", player);
    }

    static void InvokeVoid(string methodName, Player player)
    {
        try
        {
            foreach (var asm in AppDomain.CurrentDomain.GetAssemblies())
            {
                if (!string.Equals(asm.GetName().Name, AssemblyShortName, StringComparison.OrdinalIgnoreCase))
                    continue;

                var t = asm.GetType(PatchClassTypeName, throwOnError: false);
                var m = t?.GetMethod(
                    methodName,
                    BindingFlags.Public | BindingFlags.Static,
                    binder: null,
                    new[] { typeof(Player) },
                    modifiers: null);
                m?.Invoke(null, new object[] { player });
                return;
            }
        }
        catch
        {
        }
    }
}
