using System.Reflection;

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
    static bool _resolved;

    static bool TryResolve()
    {
        if (_resolved) return _method is not null;
        _resolved = true;
        try
        {
            foreach (var asm in AppDomain.CurrentDomain.GetAssemblies())
            {
                if (!string.Equals(asm.GetName().Name, AssemblyShortName, StringComparison.OrdinalIgnoreCase))
                    continue;

                var t = asm.GetType(RuntimeTypeName, throwOnError: false);
                if (t is null) break;

                _method = t.GetMethod(
                    MethodName,
                    BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.Public,
                    binder: null,
                    types: new[] { typeof(string) },
                    modifiers: null);
                break;
            }
        }
        catch { }
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
        catch { return false; }
    }
}
