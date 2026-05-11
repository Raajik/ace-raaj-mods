namespace LeyLineLedger;

using System.Text.Json;
using System.Timers;
using ACE.Entity.Enum;
using ACE.Entity.Enum.Properties;
using ACE.Database.Models.Shard;

public static class Lottery
{
    private static System.Timers.Timer? _drawTimer;
    private static long _pool = 0;
    private static readonly object _poolLock = new();
    private static double _qbPool = 0;
    private static readonly object _qbPoolLock = new();
    private static DateTime _nextDrawUtc = DateTime.MinValue;
    private static string? _persistPath;
    private static string? _legacyPersistPath;

    public static Settings Settings => PatchClass.Settings;

    sealed class LotteryPersistDto
    {
        public long PyrealPool { get; set; }
        public double QbPool { get; set; }
        public DateTime NextDrawUtc { get; set; }
    }

    public static void InitializePersistence(string persistenceFilePath, string legacyPersistenceFilePath)
    {
        _persistPath = persistenceFilePath;
        _legacyPersistPath = legacyPersistenceFilePath;
    }

    static void LoadPersistedState()
    {
        var loadPath = ResolveLoadPath();
        if (string.IsNullOrWhiteSpace(loadPath) || !File.Exists(loadPath))
            return;

        try
        {
            var text = File.ReadAllText(loadPath);
            var dto = JsonSerializer.Deserialize<LotteryPersistDto>(text);
            if (dto is null)
                return;

            lock (_poolLock)
                _pool = Math.Max(0, dto.PyrealPool);
            lock (_qbPoolLock)
                _qbPool = Math.Max(0, dto.QbPool);
            if (dto.NextDrawUtc != DateTime.MinValue)
                _nextDrawUtc = dto.NextDrawUtc;

            if (!string.Equals(loadPath, _persistPath, StringComparison.OrdinalIgnoreCase))
                SavePersistedState();
        }
        catch (Exception ex)
        {
            ModManager.Log($"[LeyLineLedger] Lottery persistence load failed: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    static void SavePersistedState()
    {
        if (string.IsNullOrWhiteSpace(_persistPath))
            return;

        try
        {
            long pool;
            double qb;
            DateTime next;
            lock (_poolLock)
                pool = _pool;
            lock (_qbPoolLock)
                qb = _qbPool;
            next = _nextDrawUtc;

            var dto = new LotteryPersistDto
            {
                PyrealPool = pool,
                QbPool = qb,
                NextDrawUtc = next,
            };

            var dir = Path.GetDirectoryName(_persistPath);
            if (!string.IsNullOrEmpty(dir))
                Directory.CreateDirectory(dir);

            File.WriteAllText(_persistPath, JsonSerializer.Serialize(dto, new JsonSerializerOptions { WriteIndented = true }));
            TryDeleteLegacyPersistedState();
        }
        catch (Exception ex)
        {
            ModManager.Log($"[LeyLineLedger] Lottery persistence save failed: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    static string? ResolveLoadPath()
    {
        if (!string.IsNullOrWhiteSpace(_persistPath) && File.Exists(_persistPath))
            return _persistPath;

        if (!string.IsNullOrWhiteSpace(_legacyPersistPath) && File.Exists(_legacyPersistPath))
            return _legacyPersistPath;

        return _persistPath;
    }

    static void TryDeleteLegacyPersistedState()
    {
        if (string.IsNullOrWhiteSpace(_legacyPersistPath) || !File.Exists(_legacyPersistPath))
            return;

        try
        {
            File.Delete(_legacyPersistPath);
        }
        catch
        {
        }
    }

    public static void TryApply()
    {
        if (!Settings.Lottery.Enabled)
            return;

        LoadPersistedState();

        _drawTimer?.Stop();
        _drawTimer?.Dispose();

        if (_nextDrawUtc == DateTime.MinValue || _nextDrawUtc < DateTime.UtcNow)
            _nextDrawUtc = DateTime.UtcNow.AddMinutes(Settings.Lottery.DrawIntervalMinutes);

        _drawTimer = new System.Timers.Timer(Settings.Lottery.DrawIntervalMinutes * 60 * 1000);
        _drawTimer.Elapsed += (s, e) => TryAutoDraw();
        _drawTimer.Start();

        ModManager.Log($"[LeyLineLedger] Lottery enabled. Draw interval: {Settings.Lottery.DrawIntervalMinutes}min. Next draw (UTC): {_nextDrawUtc:O}. Pyreal pool: {GetPool():N0}, QB pool: {GetQbPool():0.#}", ModManager.LogLevel.Info);

        SavePersistedState();
    }

    public static void Stop()
    {
        SavePersistedState();
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
        SavePersistedState();
    }

    public static void AddToQbPool(double amount)
    {
        if (amount <= 0) return;
        lock (_qbPoolLock)
            _qbPool += amount;
        ModManager.Log($"[LeyLineLedger] Lottery QB pool +{amount:0.#} = {GetQbPool():0.#}", ModManager.LogLevel.Info);
        SavePersistedState();
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
        SavePersistedState();
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
                ModManager.Log(
                    $"[LeyLineLedger] Lottery draw: no tickets — pyreal pool {pool:N0}p + QB {qbPool:0.#} retained for next draw (entries required to win).",
                    ModManager.LogLevel.Info);
                BumpNextDrawUtc();
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
                ModManager.Log("[LeyLineLedger] Lottery draw: no winner selected — pools retained; scheduling next window.", ModManager.LogLevel.Warn);
                BumpNextDrawUtc();
                return;
            }

            // Credit winners (pyreals always to LeyLineLedger /bank balance; QB online + offline via shard biota)
            var s = Settings;
            foreach (var (charId, name, pyrealPrize, qbPrize, place) in winners)
            {
                var onlinePlayer = PlayerManager.GetAllOnline().FirstOrDefault(p => p.Guid.Full == charId);
                if (onlinePlayer != null)
                {
                    onlinePlayer.IncBanked(s.CashProperty, pyrealPrize);
                    onlinePlayer.UpdateCoinValue();
                    var qbMsg = qbPrize > 0 ? $" and {qbPrize:0.#} QB" : "";
                    onlinePlayer.SendMessage(
                        $"[Lottery] You won {LeyLineLedgerHelpers.Ordinal(place)} place! {pyrealPrize:N0} pyreals credited to your /bank balance{qbMsg}.");
                }
                else
                {
                    CreditOfflineLotteryPyreals(context, s, charId, pyrealPrize, name, place);
                }

                if (qbPrize > 0)
                {
                    if (onlinePlayer != null)
                        LoremasterBridge.GrantLotteryQbPrize(onlinePlayer, (float)qbPrize);
                    else
                        LoremasterBridge.GrantLotteryQbPrizeOffline(charId, (float)qbPrize);
                }

                // Bonus luminance prize
                if (s.Lottery.LuminancePrizeConversionRate > 0)
                {
                    var lumPrize = (long)(pyrealPrize / s.Lottery.LuminancePrizeConversionRate);
                    if (lumPrize > 0)
                    {
                        if (onlinePlayer != null)
                        {
                            onlinePlayer.GrantLuminance(lumPrize, XpType.Quest);
                            onlinePlayer.SendMessage($"[Lottery] You also received {lumPrize:N0} luminance!");
                        }
                        else
                        {
                            // For offline winners, store luminance in biota directly
                            try
                            {
                                using var lumCtx = new ShardDbContext();
                                var lumBiota = lumCtx.BiotaPropertiesInt64.FirstOrDefault(b => b.ObjectId == charId && b.Type == (ushort)PropertyInt64.AvailableLuminance);
                                if (lumBiota != null)
                                    lumBiota.Value = Math.Min(long.MaxValue, lumBiota.Value + lumPrize);
                                else
                                    lumCtx.BiotaPropertiesInt64.Add(new ACE.Database.Models.Shard.BiotaPropertiesInt64 { ObjectId = charId, Type = (ushort)PropertyInt64.AvailableLuminance, Value = lumPrize });
                                lumCtx.SaveChanges();
                            }
                            catch (Exception lumEx)
                            {
                                ModManager.Log($"[LeyLineLedger] Failed to credit offline luminance prize to {name}: {lumEx.Message}", ModManager.LogLevel.Warn);
                            }
                        }
                    }
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

            BumpNextDrawUtc();

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

    static void CreditOfflineLotteryPyreals(ShardDbContext ctx, Settings s, uint charId, long pyrealPrize, string name, int place)
    {
        if (pyrealPrize <= 0)
            return;

        var targetChar = ctx.Character.FirstOrDefault(c => c.Id == charId && !c.IsDeleted);
        if (targetChar is null)
        {
            ModManager.Log($"[LeyLineLedger] Lottery offline credit skipped: no character row for {name} ({charId}).", ModManager.LogLevel.Warn);
            return;
        }

        var cashU = (ushort)s.CashProperty;

        if (OfflineWinnerUsesCharacterBiotaBank(ctx, s, charId))
        {
            var bankRow = ctx.BiotaPropertiesInt64.FirstOrDefault(p => p.ObjectId == charId && p.Type == cashU);
            if (bankRow != null)
                bankRow.Value += pyrealPrize;
            else
            {
                ctx.BiotaPropertiesInt64.Add(new BiotaPropertiesInt64
                {
                    ObjectId = charId,
                    Type = cashU,
                    Value = pyrealPrize,
                });
            }

            ModManager.Log(
                $"[LeyLineLedger] Lottery offline {name} ({charId}) {LeyLineLedgerHelpers.Ordinal(place)}: +{pyrealPrize:N0}p to character bank biota (challenge / non–account-wide).",
                ModManager.LogLevel.Info);
            return;
        }

        AccountBankStore.AddToAccountByOfflineCharacter(targetChar, s.CashProperty, pyrealPrize);
        ModManager.Log(
            $"[LeyLineLedger] Lottery offline {name} ({charId}) {LeyLineLedgerHelpers.Ordinal(place)}: +{pyrealPrize:N0}p to account-wide bank file.",
            ModManager.LogLevel.Info);
    }

    static bool OfflineWinnerUsesCharacterBiotaBank(ShardDbContext ctx, Settings s, uint characterId)
    {
        if (!s.AccountWideBank)
            return true;

        if (TryChallengeModesOfflineActiveChallenge(characterId))
            return true;

        ushort iron = (ushort)FakeBool.Ironman;
        ushort hc = (ushort)FakeBool.Hardcore;

        return ctx.BiotaPropertiesBool.AsNoTracking().Any(b => b.ObjectId == characterId && b.Type == iron && b.Value)
            || ctx.BiotaPropertiesBool.AsNoTracking().Any(b => b.ObjectId == characterId && b.Type == hc && b.Value);
    }

    static bool TryChallengeModesOfflineActiveChallenge(uint characterId)
    {
        try
        {
            foreach (var asm in AppDomain.CurrentDomain.GetAssemblies())
            {
                if (!string.Equals(asm.GetName().Name, "ChallengeModes", StringComparison.Ordinal))
                    continue;

                var t = asm.GetType("ChallengeModes.PatchClass");
                var m = t?.GetMethod(
                    "OfflineBiotaHasActiveChallenge",
                    BindingFlags.Public | BindingFlags.Static,
                    binder: null,
                    new[] { typeof(uint) },
                    null);

                if (m is null)
                    return false;

                return (bool)(m.Invoke(null, new object[] { characterId }) ?? false);
            }
        }
        catch
        {
        }

        return false;
    }

    static void BumpNextDrawUtc()
    {
        _nextDrawUtc = DateTime.UtcNow.AddMinutes(Settings.Lottery.DrawIntervalMinutes);
        SavePersistedState();
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
