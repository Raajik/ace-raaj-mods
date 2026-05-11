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
    static MethodInfo? _grantLotteryQbOffline;
    static bool _fullyResolved;
    static bool _assemblyLogged;
    static bool _targetLogged;

    /// <summary>
    /// Donates QB from a player to the void (adds to their DonatedQuestPoints offset).
    /// Returns true on success, false on failure or if Loremaster is not loaded.
    /// </summary>
    internal static bool DonateQuestPoints(Player player, float amount)
    {
        if (amount <= 0 || player == null)
            return false;

        Resolve();

        if (_donateQb is null)
            return false;

        try
        {
            return (bool)(_donateQb.Invoke(null, new object?[] { player, amount }) ?? false);
        }
        catch (TargetInvocationException tie) when (tie.InnerException is not null)
        {
            ModManager.Log($"[LeyLineLedger→Loremaster] DonateQuestPoints threw {tie.InnerException.GetType().Name}: {tie.InnerException.Message}", ModManager.LogLevel.Warn);
            return false;
        }
        catch (Exception ex)
        {
            ModManager.Log($"[LeyLineLedger→Loremaster] DonateQuestPoints error: {ex.GetType().Name}: {ex.Message}", ModManager.LogLevel.Warn);
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

        Resolve();

        if (_grantLotteryQb is null)
            return;

        try
        {
            _grantLotteryQb.Invoke(null, new object?[] { player, amount });
        }
        catch (TargetInvocationException tie) when (tie.InnerException is not null)
        {
            ModManager.Log($"[LeyLineLedger→Loremaster] GrantLotteryQbPrize threw {tie.InnerException.GetType().Name}: {tie.InnerException.Message}", ModManager.LogLevel.Warn);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[LeyLineLedger→Loremaster] GrantLotteryQbPrize error: {ex.GetType().Name}: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    internal static void GrantLotteryQbPrizeOffline(uint characterBiotaId, float amount)
    {
        if (amount <= 0)
            return;

        Resolve();

        if (_grantLotteryQbOffline is null)
            return;

        try
        {
            _grantLotteryQbOffline.Invoke(null, new object?[] { characterBiotaId, amount });
        }
        catch (TargetInvocationException tie) when (tie.InnerException is not null)
        {
            ModManager.Log($"[LeyLineLedger→Loremaster] GrantLotteryQbPrizeOffline threw {tie.InnerException.GetType().Name}: {tie.InnerException.Message}", ModManager.LogLevel.Warn);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[LeyLineLedger→Loremaster] GrantLotteryQbPrizeOffline error: {ex.GetType().Name}: {ex.Message}", ModManager.LogLevel.Warn);
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
                ModManager.Log("[LeyLineLedger→Loremaster] Loremaster not loaded; bridge inactive.", ModManager.LogLevel.Info);
            }
            return;
        }

        var t = asm.GetType("Loremaster.CrossModBridge");
        if (t is null)
        {
            if (!_targetLogged)
            {
                _targetLogged = true;
                ModManager.Log("[LeyLineLedger→Loremaster] Loremaster loaded but CrossModBridge not found; bridge inactive.", ModManager.LogLevel.Warn);
            }
            _fullyResolved = true;
            return;
        }

        _donateQb = t.GetMethod(
            "DonateQuestPoints",
            BindingFlags.Public | BindingFlags.Static,
            null,
            new[] { typeof(Player), typeof(float) },
            null);
        _grantLotteryQb = t.GetMethod(
            "GrantLotteryQbPrize",
            BindingFlags.Public | BindingFlags.Static,
            null,
            new[] { typeof(Player), typeof(float) },
            null);
        _grantLotteryQbOffline = t.GetMethod(
            "GrantLotteryQbPrizeOffline",
            BindingFlags.Public | BindingFlags.Static,
            null,
            new[] { typeof(uint), typeof(float) },
            null);

        _fullyResolved = true;
        if (_donateQb is not null && _grantLotteryQb is not null && _grantLotteryQbOffline is not null)
            ModManager.Log($"[LeyLineLedger→Loremaster] Resolved QB methods (online + offline lottery) on {t.FullName}.", ModManager.LogLevel.Info);
        else
            ModManager.Log($"[LeyLineLedger→Loremaster] WARNING: Could not resolve all QB methods on {t.FullName}.", ModManager.LogLevel.Warn);
    }
}
