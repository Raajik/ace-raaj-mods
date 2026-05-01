using System.Reflection;
using ACE.Server.Managers;

namespace WorldEvents;

/// <summary>
/// Reflection bridge into Loremaster.CrossModBridge. Other mods should not reference Loremaster directly.
/// </summary>
internal static class LoremasterBridge
{
    static MethodInfo? _grantQp;
    static bool _resolved;

    internal static void GrantQuestPoints(Player player, float amount, string source)
    {
        if (amount <= 0 || player == null)
            return;

        if (!_resolved)
            Resolve();

        if (_grantQp is null)
            return;

        try
        {
            _grantQp.Invoke(null, new object?[] { player, amount, source });
        }
        catch (Exception ex)
        {
            ModManager.Log($"[WorldEvents] LoremasterBridge.GrantQuestPoints failed for {player.Name}: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    static void Resolve()
    {
        _resolved = true;
        foreach (var asm in AppDomain.CurrentDomain.GetAssemblies())
        {
            if (!string.Equals(asm.GetName().Name, "Loremaster", StringComparison.Ordinal))
                continue;

            var t = asm.GetType("Loremaster.CrossModBridge");
            _grantQp = t?.GetMethod(
                "GrantWorldEventsQuestPoints",
                BindingFlags.Public | BindingFlags.Static,
                null,
                new[] { typeof(Player), typeof(float), typeof(string) },
                null);
            return;
        }
    }
}
