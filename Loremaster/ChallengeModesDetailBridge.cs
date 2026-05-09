using System.Reflection;
using System.Text;
using ACE.Server.WorldObjects;

namespace Loremaster;

internal static class ChallengeModesDetailBridge
{
    const string AssemblyShortName = "ChallengeModes";
    const string DetailTypeName = "ChallengeModes.Features.LoremasterXpDetail";

    internal static void AppendChallengeAchievementSection(StringBuilder sb, Player player)
    {
        try
        {
            foreach (var asm in AppDomain.CurrentDomain.GetAssemblies())
            {
                if (!string.Equals(asm.GetName().Name, AssemblyShortName, StringComparison.OrdinalIgnoreCase))
                    continue;

                var t = asm.GetType(DetailTypeName, throwOnError: false);
                if (t is null)
                    continue;

                var append = t.GetMethod(
                    "AppendChallengeAchievementSection",
                    BindingFlags.Public | BindingFlags.Static,
                    binder: null,
                    types: new[] { typeof(StringBuilder), typeof(Player) },
                    modifiers: null);
                if (append is null)
                    continue;

                append.Invoke(null, new object[] { sb, player });
                return;
            }
        }
        catch (Exception ex)
        {
            sb.AppendLine("--- ChallengeModes achievement ---");
            sb.AppendLine($"(Detail failed: {ex.Message})");
            return;
        }

        sb.AppendLine("--- ChallengeModes achievement ---");
        sb.AppendLine("ChallengeModes assembly not loaded; use Meta.json + ChallengeModes.dll for segment breakdown.");
    }

    internal static double GetAchievementBonusPercent(Player player)
    {
        try
        {
            foreach (var asm in AppDomain.CurrentDomain.GetAssemblies())
            {
                if (!string.Equals(asm.GetName().Name, AssemblyShortName, StringComparison.OrdinalIgnoreCase))
                    continue;

                var t = asm.GetType(DetailTypeName, throwOnError: false);
                if (t is null)
                    continue;

                var m = t.GetMethod(
                    "GetAchievementBonusPercent",
                    BindingFlags.Public | BindingFlags.Static,
                    binder: null,
                    types: new[] { typeof(Player) },
                    modifiers: null);
                if (m is null)
                    return 0;

                var o = m.Invoke(null, new object[] { player });
                return o switch
                {
                    double d => d,
                    float f => f,
                    null => 0,
                    _ => Convert.ToDouble(o)
                };
            }
        }
        catch
        {
        }

        return 0;
    }
}
