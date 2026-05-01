using System.Reflection;
using ACE.Server.Managers;

namespace LeyLineLedger;

/// <summary>
/// Reflection bridge into Loremaster.CrossModBridge. LeyLineLedger does not reference Loremaster directly.
/// </summary>
internal static class LoremasterBridge
{
    static MethodInfo? _donateQb;
    static MethodInfo? _grantLotteryQb;
    static bool _resolved;

    /// <summary>
    /// Donates QB from a player to the void (adds to their DonatedQuestPoints offset).
    /// Returns true on success, false on failure or if Loremaster is not loaded.
    /// </summary>
    internal static bool DonateQuestPoints(Player player, float amount)
    {
        if (amount <= 0 || player == null)
            return false;

        if (!_resolved)
            Resolve();

        if (_donateQb is null)
            return false;

        try
        {
            return (bool)(_donateQb.Invoke(null, new object?[] { player, amount }) ?? false);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[LeyLineLedger] LoremasterBridge.DonateQuestPoints failed for {player.Name}: {ex.Message}", ModManager.LogLevel.Warn);
            return false;
        }
    }

    /// <summary>
    /// Grants QB as a lottery prize. Bypasses the 10% contribution tracking.
    /// </summary>
    internal static void GrantLotteryQbPrize(Player player, float amount)
    {
        if (amount <= 0 || player == null)
            return;

        if (!_resolved)
            Resolve();

        if (_grantLotteryQb is null)
            return;

        try
        {
            _grantLotteryQb.Invoke(null, new object?[] { player, amount });
        }
        catch (Exception ex)
        {
            ModManager.Log($"[LeyLineLedger] LoremasterBridge.GrantLotteryQbPrize failed for {player.Name}: {ex.Message}", ModManager.LogLevel.Warn);
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
            _donateQb = t?.GetMethod(
                "DonateQuestPoints",
                BindingFlags.Public | BindingFlags.Static,
                null,
                new[] { typeof(Player), typeof(float) },
                null);
            _grantLotteryQb = t?.GetMethod(
                "GrantLotteryQbPrize",
                BindingFlags.Public | BindingFlags.Static,
                null,
                new[] { typeof(Player), typeof(float) },
                null);
            return;
        }
    }
}
