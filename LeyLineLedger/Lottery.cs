namespace LeyLineLedger;

using System.Timers;

internal static class Lottery
{
    private static System.Timers.Timer? _drawTimer;
    private static long _pool = 0;
    private static readonly object _poolLock = new();

    public static Settings Settings => PatchClass.Settings;

    public static void TryApply()
    {
        if (!Settings.Lottery.Enabled)
            return;

        _drawTimer?.Stop();
        _drawTimer?.Dispose();
        _drawTimer = new System.Timers.Timer(Settings.Lottery.DrawIntervalMinutes * 60 * 1000);
        _drawTimer.Elapsed += (s, e) => TryAutoDraw();
        _drawTimer.Start();

        ModManager.Log($"[LeyLineLedger] Lottery enabled. Draw interval: {Settings.Lottery.DrawIntervalMinutes}min. Pool: {GetPool():N0}", ModManager.LogLevel.Info);
    }

    public static void Stop()
    {
        _drawTimer?.Stop();
        _drawTimer?.Dispose();
        _drawTimer = null;
    }

    public static long GetPool()
    {
        lock (_poolLock) return _pool;
    }

    public static long GetTicketPrice()
    {
        var pool = GetPool();
        var basePrice = Settings.Lottery.BaseTicketPrice;
        var extra = (long)(pool * Settings.Lottery.TicketPricePoolPercent);
        return basePrice + extra;
    }

    public static void AddTaxToPool(long taxAmount)
    {
        if (taxAmount <= 0) return;

        var pool = GetPool();
        var maxPool = Settings.Lottery.MaxPoolSize;

        double destructionRate;
        if (maxPool > 0 && pool >= maxPool)
            destructionRate = Settings.Lottery.MaxPoolDestructionRate;
        else if (taxAmount < Settings.Lottery.SmallTaxThreshold)
            destructionRate = Settings.Lottery.SmallTaxDestructionRate;
        else if (taxAmount < Settings.Lottery.LargeTaxThreshold)
            destructionRate = Settings.Lottery.MediumTaxDestructionRate;
        else
            destructionRate = Settings.Lottery.LargeTaxDestructionRate;

        var destroyed = (long)Math.Floor(taxAmount * destructionRate);
        var toPool = taxAmount - destroyed;

        lock (_poolLock)
            _pool += toPool;

        ModManager.Log($"[LeyLineLedger] Lottery: tax {taxAmount:N0} -> destroyed {destroyed:N0} ({destructionRate:P0}), pool +{toPool:N0} = {GetPool():N0}", ModManager.LogLevel.Info);
    }

    public static void BuyTickets(Session session, long count)
    {
        var player = session.Player;
        if (player == null) return;

        if (count <= 0)
        {
            player.SendMessage("Amount must be positive.");
            return;
        }

        var pricePerTicket = GetTicketPrice();
        var totalCost = count * pricePerTicket;

        if (player.GetCash() < totalCost)
        {
            player.SendMessage($"You need {totalCost:N0} pyreals to buy {count:N0} ticket(s).");
            return;
        }

        // Debit pyreals
        player.IncCash(-totalCost);

        // Add tickets to virtual counter
        var prop = (PropertyInt64)Settings.Lottery.TicketPropertyId;
        var current = player.GetProperty(prop) ?? 0;
        player.SetProperty(prop, current + count);

        player.SendMessage($"Bought {count:N0} lottery ticket(s) for {totalCost:N0} pyreals. You have {current + count:N0} entries.");
    }

    public static void TryAutoDraw()
    {
        if (!Settings.Lottery.Enabled)
            return;

        var pool = GetPool();
        if (pool < Settings.Lottery.MinPoolForDraw)
            return;

        DrawWinner();
    }

    public static void DrawWinner()
    {
        var pool = GetPool();
        if (pool < Settings.Lottery.MinPoolForDraw)
        {
            ModManager.Log("[LeyLineLedger] Lottery draw skipped: pool below minimum.", ModManager.LogLevel.Info);
            return;
        }

        try
        {
            // Gather all tickets from online and offline players
            var tickets = new List<(uint CharacterId, long Count)>();
            long totalTickets = 0;

            using var context = new ShardDbContext();

            var propId = Settings.Lottery.TicketPropertyId;
            var rows = context.BiotaPropertiesInt64
                .Where(p => p.Type == propId && p.Value > 0)
                .ToList();

            foreach (var row in rows)
            {
                tickets.Add((row.ObjectId, row.Value));
                totalTickets += row.Value;
            }

            if (totalTickets <= 0)
            {
                ModManager.Log("[LeyLineLedger] Lottery draw: no tickets sold.", ModManager.LogLevel.Info);
                return;
            }

            // Pick random winner
            var rnd = new Random();
            var winningNumber = rnd.NextInt64(0, totalTickets);
            long cumulative = 0;
            uint winnerId = 0;

            foreach (var (charId, count) in tickets)
            {
                cumulative += count;
                if (cumulative > winningNumber)
                {
                    winnerId = charId;
                    break;
                }
            }

            if (winnerId == 0)
            {
                ModManager.Log("[LeyLineLedger] Lottery draw: failed to select winner.", ModManager.LogLevel.Warn);
                return;
            }

            // Credit winner
            bool online = false;
            var winnerPlayer = PlayerManager.GetAllOnline().FirstOrDefault(p => p.Guid.Full == winnerId);
            if (winnerPlayer != null)
            {
                winnerPlayer.IncCash(pool);
                winnerPlayer.SendMessage($"🎉 You won the lottery! {pool:N0} pyreals have been credited to your bank!");
                online = true;
            }
            else
            {
                // Offline: add to their banked cash property directly
                var cashProp = Settings.CashProperty;
                var bankRow = context.BiotaPropertiesInt64
                    .FirstOrDefault(p => p.ObjectId == winnerId && p.Type == cashProp);

                if (bankRow != null)
                {
                    bankRow.Value += pool;
                }
                else
                {
                    context.BiotaPropertiesInt64.Add(new BiotaPropertiesInt64
                    {
                        ObjectId = winnerId,
                        Type = (ushort)cashProp,
                        Value = pool
                    });
                }
                context.SaveChanges();
            }

            // Clear all tickets
            foreach (var row in rows)
            {
                row.Value = 0;
            }
            context.SaveChanges();

            // Reset pool
            lock (_poolLock)
                _pool = 0;

            // Broadcast
            var charName = GetCharacterName(winnerId);
            var msg = $"🎉 Lottery winner: {charName} won {pool:N0} pyreals! Buy tickets with /lottery buy";
            foreach (var p in PlayerManager.GetAllOnline())
                p.SendMessage(msg);

            ModManager.Log($"[LeyLineLedger] Lottery draw complete. Winner: {charName} ({winnerId}), Prize: {pool:N0}, Tickets sold: {totalTickets:N0}, Online: {online}", ModManager.LogLevel.Info);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[LeyLineLedger] Lottery draw failed: {ex}", ModManager.LogLevel.Error);
        }
    }

    static string GetCharacterName(uint characterId)
    {
        try
        {
            using var context = new ShardDbContext();
            var c = context.Character.FirstOrDefault(x => x.Id == characterId);
            return c?.Name ?? $"Character {characterId}";
        }
        catch
        {
            return $"Character {characterId}";
        }
    }
}
