using System.Reflection;
using ACE.Server.WorldObjects;

namespace AceRaajMods.Shared;

// Calls LeyLineLedger.QuestSalvageAutoBank.TryProcessContainer when the assembly is loaded (no project reference).
public static class LeyLineLedgerQuestSalvageInterop
{
    static MethodInfo? _tryProcessContainer;
    static bool _resolved;

    public static void TryProcessContainer(Player player, Container container)
    {
        if (!_resolved)
            Resolve();

        if (_tryProcessContainer is null)
            return;

        try
        {
            _tryProcessContainer.Invoke(null, new object?[] { player, container });
        }
        catch
        {
            // LeyLineLedger absent or API mismatch
        }
    }

    static void Resolve()
    {
        _resolved = true;

        foreach (Assembly asm in AppDomain.CurrentDomain.GetAssemblies())
        {
            if (!string.Equals(asm.GetName().Name, "LeyLineLedger", StringComparison.Ordinal))
                continue;

            Type? t = asm.GetType("LeyLineLedger.QuestSalvageAutoBank");
            if (t is null)
                break;

            _tryProcessContainer = t.GetMethod(
                "TryProcessContainer",
                BindingFlags.Public | BindingFlags.Static,
                null,
                new[] { typeof(Player), typeof(Container) },
                null);
            break;
        }
    }
}
