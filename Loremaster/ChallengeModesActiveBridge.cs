using System.Reflection;
using ACE.Server.WorldObjects;

namespace Loremaster;

internal static class ChallengeModesActiveBridge
{
    const string AssemblyShortName = "ChallengeModes";
    const string PatchTypeName = "ChallengeModes.PatchClass";
    const string QuestPointsBridgeTypeName = "ChallengeModes.Features.LoremasterQuestPointsBridge";

    internal static bool TryGetQuestPointsMultiplierFromChallengeModes(Player player, out float mult)
    {
        mult = 1f;
        try
        {
            foreach (var asm in AppDomain.CurrentDomain.GetAssemblies())
            {
                if (!string.Equals(asm.GetName().Name, AssemblyShortName, StringComparison.OrdinalIgnoreCase))
                    continue;

                var t = asm.GetType(QuestPointsBridgeTypeName, throwOnError: false);
                if (t is null)
                    return false;

                var m = t.GetMethod(
                    "GetMultiplierWhileChallengeActive",
                    BindingFlags.Public | BindingFlags.Static,
                    binder: null,
                    types: new[] { typeof(Player) },
                    modifiers: null);
                if (m is null)
                    return false;

                var o = m.Invoke(null, new object[] { player });
                if (o is float f)
                {
                    mult = f;
                    return true;
                }

                if (o is double d)
                {
                    mult = (float)d;
                    return true;
                }

                mult = Convert.ToSingle(o);
                return true;
            }
        }
        catch
        {
        }

        return false;
    }

    internal static bool PlayerHasActiveChallenge(Player player)
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
                    nameof(PlayerHasActiveChallenge),
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
