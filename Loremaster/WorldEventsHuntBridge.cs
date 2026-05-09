using System.Reflection;
using ACE.Server.Managers;

namespace Loremaster;

internal static class WorldEventsHuntBridge
{
    const string AssemblyShortName = "WorldEvents";
    const string RuntimeTypeName = "WorldEvents.HuntRuntime";

    static MethodInfo? _getOrLoadPlayer;
    static bool _fullyResolved;
    static bool _assemblyLogged;
    static bool _targetLogged;

    static bool TryResolve()
    {
        if (_fullyResolved) return _getOrLoadPlayer is not null;

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
                    ModManager.Log("[Loremaster→WorldEvents] WorldEvents not loaded; hunt bridge inactive.", ModManager.LogLevel.Info);
                }
                return false;
            }

            var t = asm.GetType(RuntimeTypeName, throwOnError: false);
            if (t is null)
            {
                if (!_targetLogged)
                {
                    _targetLogged = true;
                    ModManager.Log("[Loremaster→WorldEvents] WorldEvents loaded but HuntRuntime not found.", ModManager.LogLevel.Warn);
                }
                _fullyResolved = true;
                return false;
            }

            _getOrLoadPlayer = t.GetMethod(
                "GetOrLoadPlayer",
                BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.Public,
                binder: null,
                types: new[] { typeof(uint) },
                modifiers: null);
            _fullyResolved = true;

            if (_getOrLoadPlayer is not null)
                ModManager.Log($"[Loremaster→WorldEvents] Resolved HuntRuntime.GetOrLoadPlayer on {t.FullName}.", ModManager.LogLevel.Info);
            else
                ModManager.Log($"[Loremaster→WorldEvents] WARNING: GetOrLoadPlayer not found on {t.FullName}.", ModManager.LogLevel.Warn);
        }
        catch (Exception ex)
        {
            _fullyResolved = true;
            ModManager.Log($"[Loremaster→WorldEvents] Resolve error: {ex.GetType().Name}: {ex.Message}", ModManager.LogLevel.Warn);
        }

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
