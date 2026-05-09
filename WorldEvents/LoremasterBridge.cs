using System.Reflection;
using ACE.Server.Managers;

namespace WorldEvents;

/// <summary>
/// Reflection bridge into Loremaster.CrossModBridge. Other mods should not reference Loremaster directly.
/// </summary>
internal static class LoremasterBridge
{
    static MethodInfo? _grantQp;
    static bool _fullyResolved;
    static bool _assemblyLogged;
    static bool _targetLogged;

    internal static void GrantQuestPoints(Player player, float amount, string source)
    {
        if (amount <= 0 || player == null)
            return;

        Resolve();

        if (_grantQp is null)
            return;

        try
        {
            _grantQp.Invoke(null, new object?[] { player, amount, source });
        }
        catch (TargetInvocationException tie) when (tie.InnerException is not null)
        {
            ModManager.Log($"[WorldEvents→Loremaster] GrantQuestPoints threw {tie.InnerException.GetType().Name}: {tie.InnerException.Message}", ModManager.LogLevel.Warn);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[WorldEvents→Loremaster] GrantQuestPoints error: {ex.GetType().Name}: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    static void Resolve()
    {
        if (_fullyResolved) return;

        Assembly? asm = null;
        foreach (var a in AppDomain.CurrentDomain.GetAssemblies())
        {
            if (string.Equals(a.GetName().Name, "Loremaster", StringComparison.Ordinal))
            { asm = a; break; }
        }

        if (asm is null)
        {
            if (!_assemblyLogged)
            {
                _assemblyLogged = true;
                ModManager.Log("[WorldEvents→Loremaster] Loremaster not loaded; QP grant bridge inactive.", ModManager.LogLevel.Info);
            }
            return;
        }

        var t = asm.GetType("Loremaster.CrossModBridge");
        if (t is null)
        {
            if (!_targetLogged)
            {
                _targetLogged = true;
                ModManager.Log("[WorldEvents→Loremaster] Loremaster loaded but CrossModBridge not found.", ModManager.LogLevel.Warn);
            }
            _fullyResolved = true;
            return;
        }

        _grantQp = t.GetMethod(
            "GrantWorldEventsQuestPoints",
            BindingFlags.Public | BindingFlags.Static,
            null,
            new[] { typeof(Player), typeof(float), typeof(string) },
            null);
        _fullyResolved = true;

        if (_grantQp is not null)
            ModManager.Log($"[WorldEvents→Loremaster] Resolved GrantWorldEventsQuestPoints on {t.FullName}.", ModManager.LogLevel.Info);
        else
            ModManager.Log($"[WorldEvents→Loremaster] WARNING: GrantWorldEventsQuestPoints not found on {t.FullName}.", ModManager.LogLevel.Warn);
    }
}
