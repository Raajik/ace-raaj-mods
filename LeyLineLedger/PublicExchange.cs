namespace LeyLineLedger;

using System.Collections.Concurrent;
using System.Timers;

public class ExchangePoolEntry
{
    [JsonPropertyName("Wcid")]
    public uint Wcid { get; set; }

    [JsonPropertyName("Quantity")]
    public long Quantity { get; set; }

    [JsonPropertyName("TotalValueInvested")]
    public long TotalValueInvested { get; set; }

    [JsonPropertyName("LastTransaction")]
    public DateTime LastTransaction { get; set; }
}

internal static class PublicExchange
{
    private static System.Timers.Timer? _saveTimer;
    private static System.Timers.Timer? _varianceResetTimer;
    private static readonly object _poolLock = new();
    private static Dictionary<uint, ExchangePoolEntry> _pool = new();
    private static readonly ConcurrentDictionary<uint, double> _priceVariance = new();
    private static DateTime _lastWealthScan = DateTime.MinValue;
    private static long _cachedServerWealth = 1;

    public static Settings Settings => PatchClass.Settings;

    static string PoolPath => Path.Combine(
        Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location) ?? "",
        Settings.PublicExchange.PoolJsonPath);

    public static void TryApply()
    {
        if (!Settings.PublicExchange.Enabled)
            return;

        LoadPool();
        SeedMissingItems();

        _saveTimer?.Stop();
        _saveTimer?.Dispose();
        _saveTimer = new System.Timers.Timer(60000); // Save every 60s
        _saveTimer.Elapsed += (s, e) => SavePool();
        _saveTimer.Start();

        StartVarianceResetTimer();

        ModManager.Log("[LeyLineLedger] PublicExchange enabled.", ModManager.LogLevel.Info);
    }

    public static void Stop()
    {
        SavePool();
        _saveTimer?.Stop();
        _saveTimer?.Dispose();
        _saveTimer = null;
        _varianceResetTimer?.Stop();
        _varianceResetTimer?.Dispose();
        _varianceResetTimer = null;
    }

    static void StartVarianceResetTimer()
    {
        _varianceResetTimer?.Stop();
        _varianceResetTimer?.Dispose();

        var mode = Settings.PublicExchange.PriceVarianceResetMode;
        if (mode != PriceVarianceResetMode.Hourly && mode != PriceVarianceResetMode.Daily)
            return;

        var intervalMs = mode == PriceVarianceResetMode.Hourly
            ? 60 * 60 * 1000       // 1 hour
            : 24 * 60 * 60 * 1000; // 24 hours

        _varianceResetTimer = new System.Timers.Timer(intervalMs);
        _varianceResetTimer.Elapsed += (s, e) =>
        {
            ResetVariance();
            ModManager.Log($"[LeyLineLedger] Price variance reshuffled ({mode}).", ModManager.LogLevel.Info);
        };
        _varianceResetTimer.Start();
    }

    public static void ResetVariance()
    {
        _priceVariance.Clear();
    }

    static void LoadPool()
    {
        try
        {
            var path = PoolPath;
            if (File.Exists(path))
            {
                var json = File.ReadAllText(path);
                var entries = JsonSerializer.Deserialize<List<ExchangePoolEntry>>(json);
                if (entries != null)
                {
                    lock (_poolLock)
                        _pool = entries.ToDictionary(e => e.Wcid);
                }
            }
        }
        catch (Exception ex)
        {
            ModManager.Log($"[LeyLineLedger] Failed to load exchange pool: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    public static void SavePool()
    {
        try
        {
            var path = PoolPath;
            var dir = Path.GetDirectoryName(path);
            if (!string.IsNullOrEmpty(dir))
                Directory.CreateDirectory(dir);

            List<ExchangePoolEntry> snapshot;
            lock (_poolLock)
                snapshot = _pool.Values.ToList();

            var json = JsonSerializer.Serialize(snapshot, new JsonSerializerOptions { WriteIndented = true });
            File.WriteAllText(path, json);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[LeyLineLedger] Failed to save exchange pool: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    static void SeedMissingItems()
    {
        lock (_poolLock)
        {
            foreach (var item in Settings.Items)
            {
                if (!_pool.ContainsKey(item.Id))
                {
                    _pool[item.Id] = new ExchangePoolEntry
                    {
                        Wcid = item.Id,
                        Quantity = Settings.PublicExchange.SeedQuantity,
                        TotalValueInvested = Settings.PublicExchange.SeedQuantity * GetBasePrice(item.Id),
                        LastTransaction = DateTime.UtcNow
                    };
                }
            }

            // Seed exchangeable salvage bags
            var sb = Settings.SalvageBank;
            if (sb?.DepositRules != null)
            {
                for (int i = 0; i < sb.DepositRules.Count; i++)
                {
                    var rule = sb.DepositRules[i];
                    if (rule.ExchangeValue <= 0 || rule.OutputBagWeenieClassId == 0)
                        continue;

                    var wcid = rule.OutputBagWeenieClassId;
                    if (!_pool.ContainsKey(wcid))
                    {
                        _pool[wcid] = new ExchangePoolEntry
                        {
                            Wcid = wcid,
                            Quantity = Settings.PublicExchange.SeedQuantity,
                            TotalValueInvested = Settings.PublicExchange.SeedQuantity * rule.ExchangeValue,
                            LastTransaction = DateTime.UtcNow
                        };
                    }
                }
            }
        }
        SavePool();
    }

    public static long GetBasePrice(uint wcid)
    {
        // Pyreal-denominated currencies (incl. static denominations)
        var currency = Settings.Currencies.FirstOrDefault(c => c.Id == wcid);
        if (currency != null)
            return currency.GetPyrealValue();

        // Alt-currency items whose value is defined in Zefs
        if (Settings.AltCurrencyValues.TryGetValue(wcid, out var zefValue))
            return zefValue * Settings.PublicExchange.ZefPyrealValue;

        // Exchangeable salvage bags
        var salvage = GetSalvageBagRule(wcid);
        if (salvage != null)
            return salvage.Value.rule.ExchangeValue;

        return 1000; // Default fallback
    }

    /// <summary>
    /// Finds an exchangeable salvage bag rule by its OutputBagWeenieClassId.
    /// Returns the rule and its index in DepositRules.
    /// </summary>
    public static (SalvageDepositRule rule, int index)? GetSalvageBagRule(uint wcid)
    {
        var sb = Settings.SalvageBank?.DepositRules;
        if (sb == null)
            return null;

        for (int i = 0; i < sb.Count; i++)
        {
            var rule = sb[i];
            if (rule.OutputBagWeenieClassId == wcid && rule.ExchangeValue > 0)
                return (rule, i);
        }
        return null;
    }

    public static bool IsStaticPrice(uint wcid) => Settings.PublicExchange.StaticValueWcids.Contains(wcid);

    public static double GetPoolDepthMultiplier(uint wcid)
    {
        if (IsStaticPrice(wcid))
            return 1.0;

        var basePrice = GetBasePrice(wcid);
        var targetQty = Math.Max(100L, basePrice / 1000);

        long poolQty;
        lock (_poolLock)
        {
            if (!_pool.TryGetValue(wcid, out var entry))
                return 1.5; // Empty pool = 50% premium

            poolQty = entry.Quantity;
        }

        var depthRatio = (double)poolQty / targetQty;
        var multiplier = 1.0 + (1.0 - depthRatio) * Settings.PublicExchange.Elasticity;

        return Math.Max(0.1, Math.Min(3.0, multiplier));
    }

    static double GetPriceVariance(uint wcid)
    {
        var variance = Settings.PublicExchange.PriceVariancePercent;
        if (variance <= 0)
            return 1.0;

        return _priceVariance.GetOrAdd(wcid, _ =>
        {
            var min = (float)(1.0 - variance);
            var max = (float)(1.0 + variance);
            return ThreadSafeRandom.Next(min, max);
        });
    }

    public static long GetBuyPrice(uint wcid, bool applyVariance = true)
    {
        var basePrice = GetBasePrice(wcid);
        var multiplier = GetPoolDepthMultiplier(wcid);
        if (!applyVariance || Settings.PublicExchange.PriceVariancePercent <= 0)
            return (long)Math.Ceiling(basePrice * multiplier);

        var variance = GetPriceVariance(wcid);
        return (long)Math.Ceiling(basePrice * multiplier * variance);
    }

    public static long GetSellPrice(uint wcid, bool applyVariance = true)
    {
        var basePrice = GetBasePrice(wcid);
        var multiplier = GetPoolDepthMultiplier(wcid);
        if (!applyVariance || Settings.PublicExchange.PriceVariancePercent <= 0)
            return (long)Math.Floor(basePrice * multiplier);

        var variance = GetPriceVariance(wcid);
        return (long)Math.Floor(basePrice * multiplier * variance);
    }

    public static double ComputeTaxRate()
    {
        var exchangeValue = ComputeExchangeTotalValue();
        var serverWealth = ComputeServerTotalWealth();

        double wealthRatio = 0;
        if (serverWealth > 0)
            wealthRatio = (double)exchangeValue / serverWealth;

        var rate = Settings.PublicExchange.BaseTaxRate + Math.Min(
            Settings.PublicExchange.MaxTaxRate - Settings.PublicExchange.BaseTaxRate,
            wealthRatio * Settings.PublicExchange.TaxSensitivity);

        return Math.Min(Settings.PublicExchange.MaxTaxRate, rate);
    }

    static long ComputeExchangeTotalValue()
    {
        long total = 0;
        lock (_poolLock)
        {
            foreach (var entry in _pool.Values)
            {
                var price = GetBuyPrice(entry.Wcid, applyVariance: false);
                total += entry.Quantity * price;
            }
        }
        return total;
    }

    static long ComputeServerTotalWealth()
    {
        if (DateTime.UtcNow - _lastWealthScan < TimeSpan.FromMinutes(5))
            return _cachedServerWealth;

        long total = 0;
        try
        {
            using var context = new ShardDbContext();

            // Sum all banked pyreals
            var cashProp = Settings.CashProperty;
            var cashRows = context.BiotaPropertiesInt64
                .Where(p => p.Type == cashProp)
                .ToList();
            total += cashRows.Sum(r => r.Value);

            // Sum all banked items at current exchange value
            foreach (var item in Settings.Items)
            {
                var prop = item.Prop;
                var price = GetBasePrice(item.Id);
                var rows = context.BiotaPropertiesInt64
                    .Where(p => p.Type == prop)
                    .ToList();
                total += rows.Sum(r => r.Value * price);
            }

            // Sum all banked salvage at current exchange value
            var sb = Settings.SalvageBank;
            if (sb?.DepositRules != null)
            {
                for (int i = 0; i < sb.DepositRules.Count; i++)
                {
                    var rule = sb.DepositRules[i];
                    if (rule.ExchangeValue <= 0 || rule.OutputBagWeenieClassId == 0)
                        continue;

                    var bankProp = rule.BankProperty != 0 ? rule.BankProperty : sb.FirstMaterialBankPropertyId + i;
                    var pricePerBag = rule.ExchangeValue;
                    var unitsPerBag = sb.Redeem.UnitsPerBag;
                    var rows = context.BiotaPropertiesInt64
                        .Where(p => p.Type == bankProp)
                        .ToList();
                    total += rows.Sum(r => (r.Value / unitsPerBag) * pricePerBag);
                }
            }
        }
        catch (Exception ex)
        {
            ModManager.Log($"[LeyLineLedger] ComputeServerTotalWealth failed: {ex.Message}", ModManager.LogLevel.Warn);
        }

        _cachedServerWealth = Math.Max(1, total);
        _lastWealthScan = DateTime.UtcNow;
        return _cachedServerWealth;
    }

    public static void SellItem(Session session, BankItem item, long amount)
    {
        var player = session.Player;
        if (player == null) return;

        if (amount <= 0)
        {
            player.SendMessage("Amount must be positive.");
            return;
        }

        var banked = player.GetBanked(item.Prop);
        if (banked < amount)
        {
            player.SendMessage($"You only have {banked:N0} {item.Name} banked.");
            return;
        }

        var pricePerUnit = GetSellPrice(item.Id);
        var gross = amount * pricePerUnit;
        var taxRate = ComputeTaxRate();
        var tax = (long)Math.Floor(gross * taxRate);
        var net = gross - tax;

        // Add tax to lottery pool (with destruction)
        Lottery.AddTaxToPool(tax);

        // Credit player
        player.IncCash(net);

        // Debit banked
        player.IncBanked(item.Prop, -amount);

        // Credit pool
        lock (_poolLock)
        {
            if (!_pool.TryGetValue(item.Id, out var entry))
            {
                entry = new ExchangePoolEntry { Wcid = item.Id };
                _pool[item.Id] = entry;
            }
            entry.Quantity += amount;
            entry.TotalValueInvested += gross;
            entry.LastTransaction = DateTime.UtcNow;
        }

        player.SendMessage($"Sold {amount:N0} {item.Name} for {net:N0} pyreals ({taxRate:P1} tax = {tax:N0} pyreals).");
    }

    public static void BuyItem(Session session, BankItem item, long amount)
    {
        var player = session.Player;
        if (player == null) return;

        if (amount <= 0)
        {
            player.SendMessage("Amount must be positive.");
            return;
        }

        long poolQty;
        lock (_poolLock)
        {
            if (!_pool.TryGetValue(item.Id, out var entry) || entry.Quantity < amount)
            {
                player.SendMessage($"Exchange pool only has {entry?.Quantity ?? 0:N0} {item.Name} available.");
                return;
            }
            poolQty = entry.Quantity;
        }

        var pricePerUnit = GetBuyPrice(item.Id);
        var totalCost = amount * pricePerUnit;

        if (player.GetCash() < totalCost)
        {
            player.SendMessage($"You need {totalCost:N0} pyreals to buy {amount:N0} {item.Name}.");
            return;
        }

        // Check pack space via attempt
        var weenie = DatabaseManager.World.GetCachedWeenie(item.Id);
        int maxStack = weenie?.GetProperty(PropertyInt.MaxStackSize) ?? 1;
        if (maxStack <= 0) maxStack = 1;

        var createdItems = new List<WorldObject>();
        bool success = true;

        long remaining = amount;
        while (remaining > 0)
        {
            var stackSize = (int)Math.Min(remaining, maxStack);
            var wo = WorldObjectFactory.CreateNewWorldObject(item.Id);
            if (wo == null)
            {
                ModManager.Log($"[LeyLineLedger] Failed to create exchange item WCID {item.Id}. Item missing from world DB.");
                success = false;
                break;
            }

            wo.SetStackSize(stackSize);
            if (!player.TryCreateInInventoryWithNetworking(wo))
            {
                success = false;
                wo.Destroy();
                break;
            }

            createdItems.Add(wo);
            remaining -= stackSize;
        }

        if (!success)
        {
            // Rollback: remove and destroy all created items
            foreach (var wo in createdItems)
            {
                if (wo != null)
                {
                    player.TryRemoveFromInventoryWithNetworking(wo.Guid, out _, Player.RemoveFromInventoryAction.ConsumeItem);
                    wo.Destroy();
                }
            }
            player.SendMessage($"Not enough pack space to receive {amount:N0} {item.Name}. Purchase cancelled.");
            return;
        }

        // Debit player
        player.IncCash(-totalCost);

        // Debit pool
        lock (_poolLock)
        {
            if (_pool.TryGetValue(item.Id, out var entry))
            {
                entry.Quantity -= amount;
                if (entry.Quantity > 0 && entry.TotalValueInvested > 0)
                {
                    var avgCost = entry.TotalValueInvested / (entry.Quantity + amount);
                    entry.TotalValueInvested = Math.Max(0, entry.TotalValueInvested - amount * avgCost);
                }
                else
                {
                    entry.TotalValueInvested = 0;
                }
                entry.LastTransaction = DateTime.UtcNow;
            }
        }

        player.SendMessage($"Bought {amount:N0} {item.Name} for {totalCost:N0} pyreals.");
    }

    static int GetSalvageBankProp(SalvageDepositRule rule, int index)
    {
        if (rule.BankProperty != 0)
            return rule.BankProperty;
        return Settings.SalvageBank!.FirstMaterialBankPropertyId + index;
    }

    public static void SellSalvageBag(Session session, SalvageDepositRule rule, int ruleIndex, long bagAmount)
    {
        var player = session.Player;
        if (player == null) return;

        if (bagAmount <= 0)
        {
            player.SendMessage("Amount must be positive.");
            return;
        }

        var bankProp = GetSalvageBankProp(rule, ruleIndex);
        var unitsPerBag = Settings.SalvageBank!.Redeem.UnitsPerBag;
        var unitAmount = bagAmount * unitsPerBag;

        var banked = player.GetBanked(bankProp);
        if (banked < unitAmount)
        {
            var bagsAvailable = banked / unitsPerBag;
            player.SendMessage($"You only have {bagsAvailable:N0} {rule.Name} bag(s) worth of material banked ({banked:N0} units, need {unitAmount:N0}).");
            return;
        }

        var pricePerBag = GetSellPrice(rule.OutputBagWeenieClassId);
        var gross = bagAmount * pricePerBag;
        var taxRate = ComputeTaxRate();
        var tax = (long)Math.Floor(gross * taxRate);
        var net = gross - tax;

        Lottery.AddTaxToPool(tax);
        player.IncCash(net);
        player.IncBanked(bankProp, -unitAmount);

        lock (_poolLock)
        {
            if (!_pool.TryGetValue(rule.OutputBagWeenieClassId, out var entry))
            {
                entry = new ExchangePoolEntry { Wcid = rule.OutputBagWeenieClassId };
                _pool[rule.OutputBagWeenieClassId] = entry;
            }
            entry.Quantity += bagAmount;
            entry.TotalValueInvested += gross;
            entry.LastTransaction = DateTime.UtcNow;
        }

        player.SendMessage($"Sold {bagAmount:N0} {rule.Name} bag(s) for {net:N0} pyreals ({taxRate:P1} tax = {tax:N0} pyreals).");
    }

    public static void BuySalvageBag(Session session, SalvageDepositRule rule, int ruleIndex, long bagAmount)
    {
        var player = session.Player;
        if (player == null) return;

        if (bagAmount <= 0)
        {
            player.SendMessage("Amount must be positive.");
            return;
        }

        long poolQty;
        lock (_poolLock)
        {
            if (!_pool.TryGetValue(rule.OutputBagWeenieClassId, out var entry) || entry.Quantity < bagAmount)
            {
                player.SendMessage($"Exchange pool only has {entry?.Quantity ?? 0:N0} {rule.Name} bag(s) available.");
                return;
            }
            poolQty = entry.Quantity;
        }

        var pricePerBag = GetBuyPrice(rule.OutputBagWeenieClassId);
        var totalCost = bagAmount * pricePerBag;

        if (player.GetCash() < totalCost)
        {
            player.SendMessage($"You need {totalCost:N0} pyreals to buy {bagAmount:N0} {rule.Name} bag(s).");
            return;
        }

        var bankProp = GetSalvageBankProp(rule, ruleIndex);
        var unitsPerBag = Settings.SalvageBank!.Redeem.UnitsPerBag;
        var unitAmount = bagAmount * unitsPerBag;

        player.IncCash(-totalCost);
        player.IncBanked(bankProp, unitAmount);

        lock (_poolLock)
        {
            if (_pool.TryGetValue(rule.OutputBagWeenieClassId, out var entry))
            {
                entry.Quantity -= bagAmount;
                if (entry.Quantity > 0 && entry.TotalValueInvested > 0)
                {
                    var avgCost = entry.TotalValueInvested / (entry.Quantity + bagAmount);
                    entry.TotalValueInvested = Math.Max(0, entry.TotalValueInvested - bagAmount * avgCost);
                }
                else
                {
                    entry.TotalValueInvested = 0;
                }
                entry.LastTransaction = DateTime.UtcNow;
            }
        }

        player.SendMessage($"Bought {bagAmount:N0} {rule.Name} bag(s) for {totalCost:N0} pyreals. {unitAmount:N0} work units credited to your salvage bank.");
    }

    public static List<(string name, uint wcid, long buyPrice, long sellPrice, long poolQty, bool isStatic)> GetExchangeList()
    {
        var result = new List<(string, uint, long, long, long, bool)>();
        var supply = EconomyBalancer.LastBankedSupply;
        var hideZero = Settings.EconomyBalancer.HideZeroSupplyCurrencies;

        foreach (var item in Settings.Items)
        {
            long qty;
            lock (_poolLock)
            {
                if (!_pool.TryGetValue(item.Id, out var entry))
                    qty = 0;
                else
                    qty = entry.Quantity;
            }

            long bankedSupply = supply.GetValueOrDefault(item.Id, 0);
            if (hideZero && qty == 0 && bankedSupply == 0 && !IsStaticPrice(item.Id))
                continue;

            result.Add((item.Name, item.Id, GetBuyPrice(item.Id), GetSellPrice(item.Id), qty, IsStaticPrice(item.Id)));
        }

        // Add exchangeable salvage bags
        var sb = Settings.SalvageBank?.DepositRules;
        if (sb != null)
        {
            for (int i = 0; i < sb.Count; i++)
            {
                var rule = sb[i];
                if (rule.ExchangeValue <= 0 || rule.OutputBagWeenieClassId == 0)
                    continue;

                long qty;
                lock (_poolLock)
                {
                    if (!_pool.TryGetValue(rule.OutputBagWeenieClassId, out var entry))
                        qty = 0;
                    else
                        qty = entry.Quantity;
                }

                // Salvage bags are never "zero supply" in the same sense — they have work-unit backing.
                // Only hide if pool is empty AND no work units exist anywhere.
                long bankedSupply = supply.GetValueOrDefault(rule.OutputBagWeenieClassId, 0);
                if (hideZero && qty == 0 && bankedSupply == 0)
                {
                    var bankProp = rule.BankProperty != 0 ? rule.BankProperty : Settings.SalvageBank!.FirstMaterialBankPropertyId + i;
                    long workUnits = supply.GetValueOrDefault((uint)bankProp, 0);
                    if (workUnits <= 0)
                        continue;
                }

                result.Add(($"{rule.Name} Bag", rule.OutputBagWeenieClassId, GetBuyPrice(rule.OutputBagWeenieClassId), GetSellPrice(rule.OutputBagWeenieClassId), qty, IsStaticPrice(rule.OutputBagWeenieClassId)));
            }
        }

        return result;
    }

    public static void AdminSeed(uint wcid, long amount)
    {
        lock (_poolLock)
        {
            if (!_pool.TryGetValue(wcid, out var entry))
            {
                entry = new ExchangePoolEntry { Wcid = wcid };
                _pool[wcid] = entry;
            }
            entry.Quantity += amount;
            entry.LastTransaction = DateTime.UtcNow;
        }
        SavePool();
    }

    public static void AdminReset(uint wcid)
    {
        lock (_poolLock)
        {
            if (_pool.TryGetValue(wcid, out var entry))
            {
                entry.Quantity = 0;
                entry.TotalValueInvested = 0;
                entry.LastTransaction = DateTime.UtcNow;
            }
        }
        SavePool();
    }
}
