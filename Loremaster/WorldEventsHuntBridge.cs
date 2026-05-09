using System.Reflection;

namespace Loremaster;

internal static class WorldEventsHuntBridge
{
    const string AssemblyShortName = "WorldEvents";
    const string RuntimeTypeName = "WorldEvents.HuntRuntime";

    static MethodInfo? _getOrLoadPlayer;
    static bool _resolved;

    static bool TryResolve()
    {
        if (_resolved) return _getOrLoadPlayer is not null;
        _resolved = true;
        try
        {
            foreach (var asm in AppDomain.CurrentDomain.GetAssemblies())
            {
                if (!string.Equals(asm.GetName().Name, AssemblyShortName, StringComparison.OrdinalIgnoreCase))
                    continue;

                var t = asm.GetType(RuntimeTypeName, throwOnError: false);
                if (t is null) break;

                _getOrLoadPlayer = t.GetMethod(
                    "GetOrLoadPlayer",
                    BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.Public,
                    binder: null,
                    types: new[] { typeof(uint) },
                    modifiers: null);
                break;
            }
        }
        catch { }
        return _getOrLoadPlayer is not null;
    }

    internal static bool TryGetTotalLifetimeKills(Player player, out long kills)
    {
        kills = 0;
        if (!TryResolve()) return false;
        try
        {
            var data = _getOrLoadPlayer!.Invoke(null, new object[] { player.Guid.Full });
            if (data is null) return false;
            var prop = data.GetType().GetProperty("TotalLifetimeKills");
            if (prop is null) return false;
            kills = Convert.ToInt64(prop.GetValue(data));
            return true;
        }
        catch { return false; }
    }
}
