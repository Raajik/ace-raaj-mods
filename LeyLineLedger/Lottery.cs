namespace LeyLineLedger;

using System.Timers;

public static class Lottery
{
    private static System.Timers.Timer? _drawTimer;
    private static long _pool = 0;
    private static readonly object _poolLock = new();
    private static double _qbPool = 0;
    private static readonly object _qbPoolLock = new();
    private static DateTime _nextDrawUtc = DateTime.MinValue;

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
        _nextDrawUtc = DateTime.UtcNow.AddMinutes(Settings.Lottery.DrawIntervalMinutes);

        ModManager.Log($"[LeyLineLedger] Lottery enabled. Draw interval: {Settings.Lottery.DrawIntervalMinutes}min. Pyreal pool: {GetPool():N0}, QB pool: {GetQbPool():0.#}", ModManager.LogLevel.Info);
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

    public static double GetQbPool()
    {
        lock (_qbPoolLock) return _qbPool;
    }

    public static DateTime GetNextDrawTime()
    {
        return _nextDrawUtc;
    }

    public static void AddToPool(long amount)
    {
        if (amount <= 0) return;
        lock (_poolLock)
            _pool += amount;
        ModManager.Log($"[LeyLineLedger] Lottery pyreal pool +{amount:N0} = {GetPool():N0}", ModManager.LogLevel.Info);
    }

    public static void AddToQbPool(double amount)
    {
        if (amount <= 0) return;
        lock (_qbPoolLock)
            _qbPool += amount;
        ModManager.Log($"[LeyLineLedger] Lottery QB pool +{amount:0.#} = {GetQbPool():0.#}", ModManager.LogLevel.Info);
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

        ModManager.Log($"[LeyLineLedger] Lottery: tax {taxAmount:N0} -> destroyed {destroyed:N0} ({destructionRate:P0}), pyreal pool +{toPool:N0} = {GetPool():N0}", ModManager.LogLevel.Info);
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

        player.IncCash(-totalCost);

        var prop = (PropertyInt64)Settings.Lottery.TicketPropertyId;
        var current = player.GetProperty(prop) ?? 0;
        player.SetProperty(prop, current + count);

        player.SendMessage($"Bought {count:N0} lottery ticket(s) for {totalCost:N0} pyreals. You have {current + count:N0} entries.");
    }

    public static void TryAutoDraw()
    {
        if (!Settings.Lottery.Enabled)
            return;

        // Drain QP contributions from Loremaster before drawing
        if (Settings.Lottery.EnableQpPoolContributions)
            DrainQpContributions();

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

        var qbPool = GetQbPool();

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

            var winnerCount = Math.Max(1, Settings.Lottery.WinnerCount);
            var splits = Settings.Lottery.WinnerSplits;
            if (splits == null || splits.Count == 0)
                splits = new List<double> { 1.0 };

            // Normalize splits if they don't sum to ~1.0
            var splitSum = splits.Sum();
            if (splitSum <= 0) splitSum = 1;

            var rnd = new Random();
            var winners = new List<(uint CharacterId, string Name, long PyrealPrize, double QbPrize, int Place)>();
            var remainingTickets = new List<(uint CharacterId, long Count)>(tickets);
            long remainingPool = pool;
            double remainingQbPool = qbPool;

            for (var place = 0; place < winnerCount && remainingTickets.Count > 0; place++)
            {
                var splitFrac = place < splits.Count ? splits[place] / splitSum : 0;
                if (splitFrac <= 0) splitFrac = 1.0 / winnerCount;

                var pyrealPrize = (long)(pool * splitFrac);
                if (pyrealPrize <= 0) pyrealPrize = remainingPool;

                var qbPrize = Math.Round(qbPool * splitFrac, 1);
                if (qbPrize <= 0 && remainingQbPool > 0) qbPrize = Math.Round(remainingQbPool, 1);

                // Pick winner by ticket weight
                long ticketTotal = remainingTickets.Sum(t => t.Count);
                var winningNumber = rnd.NextInt64(0, ticketTotal);
                long cumulative = 0;
                uint winnerId = 0;
                int winnerIdx = -1;

                for (var i = 0; i < remainingTickets.Count; i++)
                {
                    cumulative += remainingTickets[i].Count;
                    if (cumulative > winningNumber)
                    {
                        winnerId = remainingTickets[i].CharacterId;
                        winnerIdx = i;
                        break;
                    }
                }

                if (winnerId == 0) break;

                var charName = GetCharacterName(winnerId);
                winners.Add((winnerId, charName, pyrealPrize, qbPrize, place + 1));
                remainingPool -= pyrealPrize;
                remainingQbPool -= qbPrize;

                // Remove winner from subsequent draws (no duplicate winners)
                if (winnerIdx >= 0)
                    remainingTickets.RemoveAt(winnerIdx);
            }

            if (winners.Count == 0)
            {
                ModManager.Log("[LeyLineLedger] Lottery draw: failed to select any winner.", ModManager.LogLevel.Warn);
                return;
            }

            // Credit winners
            foreach (var (charId, name, pyrealPrize, qbPrize, place) in winners)
            {
                var onlinePlayer = PlayerManager.GetAllOnline().FirstOrDefault(p => p.Guid.Full == charId);
                if (onlinePlayer != null)
                {
                    onlinePlayer.IncCash(pyrealPrize);
                    var qbMsg = qbPrize > 0 ? $" and {qbPrize:0.#} QB" : "";
                    onlinePlayer.SendMessage($"[Lottery] You won {LeyLineLedgerHelpers.Ordinal(place)} place in the lottery! {pyrealPrize:N0} pyreals{qbMsg} have been credited to you!");
                }
                else
                {
                    var cashProp = Settings.CashProperty;
                    var bankRow = context.BiotaPropertiesInt64
                        .FirstOrDefault(p => p.ObjectId == charId && p.Type == cashProp);

                    if (bankRow != null)
                        bankRow.Value += pyrealPrize;
                    else
                        context.BiotaPropertiesInt64.Add(new BiotaPropertiesInt64
                        {
                            ObjectId = charId,
                            Type = (ushort)cashProp,
                            Value = pyrealPrize
                        });
                }

                // Grant QB prize (online only for now)
                if (qbPrize > 0)
                {
                    var p = onlinePlayer ?? PlayerManager.GetOnlinePlayer(charId);
                    if (p != null)
                        LoremasterBridge.GrantLotteryQbPrize(p, (float)qbPrize);
                }
            }

            // Clear all tickets
            foreach (var row in rows)
                row.Value = 0;
            context.SaveChanges();

            // Reset pools
            lock (_poolLock)
                _pool = 0;
            lock (_qbPoolLock)
                _qbPool = 0;

            // Reset next draw time
            _nextDrawUtc = DateTime.UtcNow.AddMinutes(Settings.Lottery.DrawIntervalMinutes);

            // Broadcast
            var winnerLines = string.Join(", ", winners.Select(w =>
            {
                var qbPart = w.QbPrize > 0 ? $" + {w.QbPrize:0.#} QB" : "";
                return $"{w.Name} ({LeyLineLedgerHelpers.Ordinal(w.Place)}: {w.PyrealPrize:N0}p{qbPart})";
            }));
            var msg = $"🎉 Lottery winners: {winnerLines}! Total pool: {pool:N0}p + {qbPool:0.#} QB. Buy tickets with /lottery buy";
            foreach (var p in PlayerManager.GetAllOnline())
                p.SendMessage(msg);

            ModManager.Log($"[LeyLineLedger] Lottery draw complete. Pyreal pool: {pool:N0}, QB pool: {qbPool:0.#}, Winners: {winners.Count}, {winnerLines}, Tickets sold: {totalTickets:N0}", ModManager.LogLevel.Info);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[LeyLineLedger] Lottery draw failed: {ex}", ModManager.LogLevel.Error);
        }
    }

    static void DrainQpContributions()
    {
        try
        {
            foreach (var asm in AppDomain.CurrentDomain.GetAssemblies())
            {
                if (!string.Equals(asm.GetName().Name, "Loremaster", StringComparison.Ordinal))
                    continue;

                var t = asm.GetType("Loremaster.CrossModBridge");
                var method = t?.GetMethod("DrainPendingLotteryContributions",
                    System.Reflection.BindingFlags.Public | System.Reflection.BindingFlags.Static,
                    null, Type.EmptyTypes, null);

                if (method == null) return;

                var result = (long)(method.Invoke(null, null) ?? 0L);
                if (result > 0)
                {
                    AddToPool(result);
                    ModManager.Log($"[LeyLineLedger] Lottery: drained {result:N0} QP contributions from Loremaster.", ModManager.LogLevel.Info);
                }
                return;
            }
        }
        catch (Exception ex)
        {
            ModManager.Log($"[LeyLineLedger] Failed to drain QP contributions: {ex.Message}", ModManager.LogLevel.Warn);
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

internal static class LeyLineLedgerHelpers
{
    internal static string Ordinal(int n)
    {
        var lastTwo = n % 100;
        if (lastTwo is >= 11 and <= 13)
            return $"{n}th";
        return (n % 10) switch
        {
            1 => $"{n}st",
            2 => $"{n}nd",
            3 => $"{n}rd",
            _ => $"{n}th",
        };
    }
}
