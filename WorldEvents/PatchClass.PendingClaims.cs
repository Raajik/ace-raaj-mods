namespace WorldEvents;

public partial class PatchClass
{
    internal const int PendingClaimsReminderIntervalMinutes = 120;

    void StartPendingClaimsBackgroundTimer()
    {
        try { _pendingClaimsTimerCts?.Cancel(); } catch { }

        _pendingClaimsTimerCts = new CancellationTokenSource();
        var token = _pendingClaimsTimerCts.Token;
        _ = Task.Run(async () =>
        {
            while (!token.IsCancellationRequested)
            {
                try
                {
                    await Task.Delay(TimeSpan.FromMinutes(PendingClaimsReminderIntervalMinutes), token).ConfigureAwait(false);
                    TickPendingClaimsForAllOnline();
                }
                catch (OperationCanceledException)
                {
                    break;
                }
                catch (Exception ex)
                {
                    ModManager.Log($"[WorldEvents] Pending claims timer: {ex.Message}", ModManager.LogLevel.Warn);
                }
            }
        }, token);
    }

    internal static void TickPendingClaimsForAllOnline()
    {
        foreach (var player in PlayerManager.GetAllOnline())
        {
            try
            {
                TryAutoClaimPendingRewards(player);
            }
            catch (Exception ex)
            {
                ModManager.Log($"[WorldEvents] Pending claims tick for {player?.Name}: {ex.Message}", ModManager.LogLevel.Warn);
            }
        }
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Player), nameof(Player.PlayerEnterWorld))]
    public static void PostPlayerEnterWorldPendingClaims(Player __instance)
    {
        var player = __instance;
        if (player?.Guid == null)
            return;

        var chain = new ActionChain();
        chain.AddDelaySeconds(3.0f);
        chain.AddAction(player, () => SendPendingClaimsLoginReminder(player));
        chain.EnqueueChain();
    }

    static void SendPendingClaimsLoginReminder(Player player)
    {
        if (player?.Guid == null)
            return;

        var pending = PendingEventClaimsStore.PeekCount(player.Guid.Full);
        if (pending <= 0)
            return;

        player.SendMessage($"[WorldEvents] You have {pending} pending event reward(s). Type /claim to receive them.", ChatMessageType.System);
    }

    internal static void TryAutoClaimPendingRewards(Player player)
    {
        if (player?.Guid == null)
            return;

        if (PendingEventClaimsStore.PeekCount(player.Guid.Full) == 0)
            return;

        var n = PendingEventClaimsStore.ClaimAllForPlayer(player, out var failed);
        var remaining = PendingEventClaimsStore.PeekCount(player.Guid.Full);

        if (n > 0 || failed > 0)
        {
            if (failed > 0)
                player.SendMessage($"[WorldEvents] Claimed {n} reward(s); {failed} could not be created (see server log).", ChatMessageType.System);
            else
                player.SendMessage($"[WorldEvents] Claimed {n} pending event reward(s).", ChatMessageType.System);
        }

        if (remaining > 0)
            player.SendMessage($"[WorldEvents] You still have {remaining} pending event reward(s). Make pack space and type /claim (or check server log if items fail to create).", ChatMessageType.System);
    }
}
