namespace EmpyreanAlteration;

/// <summary>
/// Reflection bridge into Loremaster to check whether a quest completion would grant QB.
/// Used by the item-leveling system to award points only on "real" quest completions.
/// </summary>
internal static class LoremasterBridge
{
    static bool _cached;
    static Type? _loremasterExtensionsType;
    static System.Reflection.MethodInfo? _tryAwardRepeatQuestPointsMethod;

    static void EnsureCache()
    {
        if (_cached) return;
        _cached = true;

        foreach (var asm in AppDomain.CurrentDomain.GetAssemblies())
        {
            try
            {
                var t = asm.GetType("Loremaster.LoremasterExtensions", throwOnError: false);
                if (t != null)
                {
                    _loremasterExtensionsType = t;
                    _tryAwardRepeatQuestPointsMethod = t.GetMethod(
                        "TryAwardRepeatQuestPoints",
                        System.Reflection.BindingFlags.Public | System.Reflection.BindingFlags.Static,
                        null,
                        new[] { typeof(Player), typeof(string), typeof(float) },
                        null);
                    break;
                }
            }
            catch { /* ignore assembly load failures */ }
        }
    }

    /// <summary>
    /// Returns true if Loremaster is present and the quest completion would grant QB
    /// (not on cooldown, has QP value, etc.). Returns false if Loremaster is absent
    /// or the quest would not grant QB.
    /// </summary>
    internal static bool WouldGrantQuestPoints(Player player, string questName, float qpValue)
    {
        if (player == null || string.IsNullOrEmpty(questName) || qpValue <= 0)
            return false;

        EnsureCache();
        if (_loremasterExtensionsType == null || _tryAwardRepeatQuestPointsMethod == null)
            return false;

        try
        {
            var result = _tryAwardRepeatQuestPointsMethod.Invoke(null, new object[] { player, questName, qpValue });
            return result is true;
        }
        catch
        {
            return false;
        }
    }
}
