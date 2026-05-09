using System.Reflection;
using ACE.Server.Managers;

namespace Loremaster;

/// <summary>
/// Reflection bridge to WorldEvents.BonusQuestRuntime.IsActiveBonusQuest.
/// Used to bypass account-wide repeat cooldown for active bonus quests
/// (one-off WorldEvents quests should not be blocked by cooldown).
/// </summary>
internal static class WorldEventsBonusQuestBridge
{
    const string AssemblyShortName = "WorldEvents";
    const string RuntimeTypeName = "WorldEvents.BonusQuestRuntime";
    const string MethodName = "IsActiveBonusQuest";

    static MethodInfo? _method;
    static bool _fullyResolved;
    static bool _assemblyLogged;
    static bool _targetLogged;

    static bool TryResolve()
    {
        if (_fullyResolved) return _method is not null;

        try
        {
            Assembly? asm = null;
            foreach (var a in AppDomain.CurrentDomain.GetAssemblies())
            {
                if (string.Equals(a.GetName().Name, AssemblyShortName, StringComparison.OrdinalIgnoreCase))
                { asm = a; break; }
            }

            if (asm is null)
            {
                if (!_assemblyLogged)
                {
                    _assemblyLogged = true;
                    ModManager.Log("[Loremaster→WorldEvents] WorldEvents not loaded; bonus quest bridge inactive.", ModManager.LogLevel.Info);
                }
                return false;
            }

            var t = asm.GetType(RuntimeTypeName, throwOnError: false);
            if (t is null)
            {
                if (!_targetLogged)
                {
                    _targetLogged = true;
                    ModManager.Log("[Loremaster→WorldEvents] WorldEvents loaded but BonusQuestRuntime not found.", ModManager.LogLevel.Warn);
                }
                _fullyResolved = true;
                return false;
            }

            _method = t.GetMethod(
                MethodName,
                BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.Public,
                binder: null,
                types: new[] { typeof(string) },
                modifiers: null);

            _fullyResolved = true;
            if (_method is not null)
                ModManager.Log($"[Loremaster→WorldEvents] Resolved IsActiveBonusQuest on {t.FullName}.", ModManager.LogLevel.Info);
            else
                ModManager.Log($"[Loremaster→WorldEvents] WARNING: IsActiveBonusQuest not found on {t.FullName}.", ModManager.LogLevel.Warn);
        }
        catch (Exception ex)
        {
            _fullyResolved = true;
            ModManager.Log($"[Loremaster→WorldEvents] Resolve error: {ex.GetType().Name}: {ex.Message}", ModManager.LogLevel.Warn);
        }

        return _method is not null;
    }

    public static bool IsActiveBonusQuest(string questName)
    {
        if (!TryResolve()) return false;
        try
        {
            var result = _method!.Invoke(null, new object[] { questName });
            return result is true;
        }
        catch (TargetInvocationException tie) when (tie.InnerException is not null)
        {
            ModManager.Log($"[Loremaster→WorldEvents] IsActiveBonusQuest threw {tie.InnerException.GetType().Name}: {tie.InnerException.Message}", ModManager.LogLevel.Warn);
            return false;
        }
        catch { return false; }
    }
}
