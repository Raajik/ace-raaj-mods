using System.Reflection;
using ACE.Server.WorldObjects;

namespace AceRaajMods.Shared;

// Calls LeyLineLedger.QuestSalvageAutoBank.TryProcessContainer when the assembly is loaded (no project reference).
public static class LeyLineLedgerQuestSalvageInterop
{
    static MethodInfo? _tryProcessContainer;
    static bool _resolved;
    static bool _assemblyLogged;
    static bool _targetLogged;

    public static void TryProcessContainer(Player player, Container container)
    {
        Resolve();

        if (_tryProcessContainer is null)
            return;

        try
        {
            _tryProcessContainer.Invoke(null, new object?[] { player, container });
        }
        catch (TargetInvocationException tie) when (tie.InnerException is not null)
        {
            ModManager.Log($"[LLLQuestSalvageInterop] TryProcessContainer threw {tie.InnerException.GetType().Name}: {tie.InnerException.Message}", ModManager.LogLevel.Warn);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[LLLQuestSalvageInterop] TryProcessContainer error: {ex.GetType().Name}: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    static void Resolve()
    {
        if (_resolved) return;
        _resolved = true;

        Assembly? asm = null;
        foreach (Assembly a in AppDomain.CurrentDomain.GetAssemblies())
        {
            if (string.Equals(a.GetName().Name, "LeyLineLedger", StringComparison.Ordinal))
            { asm = a; break; }
        }

        if (asm is null)
        {
            if (!_assemblyLogged)
            {
                _assemblyLogged = true;
                ModManager.Log("[LLLQuestSalvageInterop] LeyLineLedger not loaded; quest salvage auto-bank inactive.", ModManager.LogLevel.Info);
            }
            return;
        }

        Type? t = asm.GetType("LeyLineLedger.QuestSalvageAutoBank");
        if (t is null)
        {
            if (!_targetLogged)
            {
                _targetLogged = true;
                ModManager.Log("[LLLQuestSalvageInterop] LeyLineLedger loaded but QuestSalvageAutoBank not found; interop inactive.", ModManager.LogLevel.Warn);
            }
            return;
        }

        _tryProcessContainer = t.GetMethod(
            "TryProcessContainer",
            BindingFlags.Public | BindingFlags.Static,
            null,
            new[] { typeof(Player), typeof(Container) },
            null);

        if (_tryProcessContainer is not null)
            ModManager.Log($"[LLLQuestSalvageInterop] Resolved TryProcessContainer on {t.FullName}. Interop active.", ModManager.LogLevel.Info);
        else
            ModManager.Log("[LLLQuestSalvageInterop] WARNING: TryProcessContainer not found on QuestSalvageAutoBank; interop inactive.", ModManager.LogLevel.Warn);
    }
}
