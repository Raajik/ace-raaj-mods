using ACE.Database;
using ACE.Database.Models.Shard;
using ACE.Server.Network;
using ACE.Server.WorldObjects;
using Microsoft.EntityFrameworkCore;
using System.Timers;

using ACE.Server.Mods;

namespace LeyLineLedger;

internal static class EconomyBalancer
{
    private static System.Timers.Timer? _scanTimer;

    public static Settings Settings => PatchClass.Settings;

    /// <summary>
    /// Most recent supply scan results (WCID → total server banked quantity).
    /// Updated after every successful scan. Used by other systems (e.g. PublicExchange)
    /// to filter zero-supply items without re-querying the database.
    /// </summary>
    internal static Dictionary<uint, long> LastBankedSupply { get; private set; } = new();

    public static void TryApply()
    {
        if (!Settings.EconomyBalancer.Enabled)
            return;

        ModManager.Log($"[LeyLineLedger] EconomyBalancer enabled, scan interval: {Settings.EconomyBalancer.ScanIntervalMinutes}min", ModManager.LogLevel.Info);

        _scanTimer?.Stop();
        _scanTimer?.Dispose();
        _scanTimer = new System.Timers.Timer(Settings.EconomyBalancer.ScanIntervalMinutes * 60 * 1000);
        _scanTimer.Elapsed += (s, e) => RunSupplyScan();
        _scanTimer.Start();

        Task.Run(() => RunSupplyScan());
    }

    public static void Stop()
    {
        _scanTimer?.Stop();
        _scanTimer?.Dispose();
        _scanTimer = null;
    }

    static bool IsAdminPlayer(Session session)
    {
        return session?.AccessLevel >= AccessLevel.Admin;
    }

    static bool ShouldExcludeCharacter(uint characterId)
    {
        if (Settings.EconomyBalancer.IncludeAdminBalances)
            return false;

        try
        {
            using var context = new ShardDbContext();
            var isAdmin = context.BiotaPropertiesBool
                .FirstOrDefault(p => p.ObjectId == characterId && p.Type == (ushort)PropertyBool.IsAdmin);
            if (isAdmin != null && isAdmin.Value)
                return true;
        }
        catch { }

        return false;
    }

    public static void RunSupplyScan()
    {
        if (Settings is not { EconomyBalancer.Enabled: true })
            return;

        try
        {
            var bankedCurrency = ScanAllBankedCurrency();
            LastBankedSupply = bankedCurrency;

            var changes = ComputeValueAdjustments(bankedCurrency);

            if (changes.Count > 0)
            {
                ApplyChanges(changes);
                LogResults(bankedCurrency, changes);
            }
            else if (!Settings.EconomyBalancer.LogChangesOnly)
            {
                LogResults(bankedCurrency, changes);
            }

            ComputeAndApplyZefValueAdjustment(bankedCurrency);
            ManageValheelCryptoEvents(bankedCurrency);

            if (Settings.PublicExchange.PriceVarianceResetMode == PriceVarianceResetMode.OnEconomyScan)
            {
                PublicExchange.ResetVariance();
                ModManager.Log("[LeyLineLedger] Price variance reshuffled (OnEconomyScan).", ModManager.LogLevel.Info);
            }
        }
        catch (Exception ex)
        {
            ModManager.Log($"[LeyLineLedger] EconomyBalancer scan failed: {ex}", ModManager.LogLevel.Error);
        }
    }

    static HashSet<uint> StaticWcids => new HashSet<uint>(Settings.PublicExchange.StaticValueWcids);

    static Dictionary<uint, long> ScanAllBankedCurrency()
    {
        var supply = new Dictionary<uint, long>();
        var staticWcids = StaticWcids;

        foreach (var item in Settings.Items)
        {
            if (!staticWcids.Contains(item.Id))
                supply[item.Id] = 0;
        }

        foreach (var currency in Settings.Currencies.Where(c => c.PyrealValue > 0 && !staticWcids.Contains(c.Id)))
        {
            if (!supply.ContainsKey(currency.Id))
                supply[currency.Id] = 0;
        }

        try
        {
            using var context = new ShardDbContext();

            if (Settings.EconomyBalancer.IncludeAdminBalances)
            {
                var rows = context.BiotaPropertiesInt64
                    .Where(p => supply.Keys.Contains((uint)p.Type))
                    .ToList();

                foreach (var row in rows)
                {
                    var wcid = (uint)row.Type;
                    if (supply.ContainsKey(wcid))
                        supply[wcid] += row.Value;
                }
            }
            else
            {
                var rows = context.BiotaPropertiesInt64
                    .Where(p => supply.Keys.Contains((uint)p.Type))
                    .ToList();

                var charIds = rows.Select(r => r.ObjectId).Distinct().ToList();
                var chars = context.Character
                    .Where(c => charIds.Contains(c.Id))
                    .Select(c => new { c.Id })
                    .ToDictionary(c => c.Id, c => c.Id);

                var excludedCharIds = new HashSet<uint>();
                foreach (var charId in chars.Keys)
                {
                    if (ShouldExcludeCharacter(charId))
                        excludedCharIds.Add(charId);
                }

                foreach (var row in rows)
                {
                    if (excludedCharIds.Contains(row.ObjectId))
                        continue;

                    var wcid = (uint)row.Type;
                    if (supply.ContainsKey(wcid))
                        supply[wcid] += row.Value;
                }
            }
        }
        catch (Exception ex)
        {
            ModManager.Log($"[LeyLineLedger] DB scan error: {ex}", ModManager.LogLevel.Error);
        }

        return supply;
    }

    static Dictionary<uint, double> ComputeValueAdjustments(Dictionary<uint, long> supply)
    {
        var changes = new Dictionary<uint, double>();
        var staticWcids = StaticWcids;

        foreach (var currency in Settings.Currencies.Where(c => c.GetPyrealValue() > 0 && !staticWcids.Contains(c.Id)))
        {
            var wcid = currency.Id;
            var currentValue = currency.GetPyrealValue();
            var baseWeight = Settings.EconomyBalancer.MinSupplyWeight.GetValueOrDefault(wcid, 1.0);

            if (baseWeight <= 0)
                baseWeight = 1.0;

            long totalSupply = 0;
            foreach (var (swcid, samount) in supply)
            {
                if (Settings.EconomyBalancer.MinSupplyWeight.TryGetValue(swcid, out var sw))
                {
                    if (sw > 0)
                        totalSupply += (long)(samount / sw);
                }
            }

            if (totalSupply <= 0)
                totalSupply = 1;

            double supplyRatio = (double)supply.GetValueOrDefault(wcid, 0) / totalSupply;
            if (supplyRatio < 0.001)
                supplyRatio = 0.001;

            double targetValue = baseWeight * (1.0 / supplyRatio) * Settings.EconomyBalancer.ValueAdjustmentSmoothing;
            targetValue = Math.Max(targetValue, Settings.EconomyBalancer.MinValueFloor);

            double smoothing = Settings.EconomyBalancer.ValueAdjustmentSmoothing;
            double newValue = currentValue + (targetValue - currentValue) * smoothing;
            newValue = Math.Max(newValue, Settings.EconomyBalancer.MinValueFloor);

            if (Math.Abs(newValue - currentValue) > currentValue * 0.001)
                changes[wcid] = newValue;
        }

        return changes;
    }

    static void ApplyChanges(Dictionary<uint, double> changes)
    {
        foreach (var currency in Settings.Currencies)
        {
            if (changes.TryGetValue(currency.Id, out var newValue))
            {
                currency.PyrealValue = (int)Math.Round(newValue);
            }
        }
    }

    static void LogResults(Dictionary<uint, long> supply, Dictionary<uint, double> changes)
    {
        var anyChanges = changes.Count > 0;

        if (Settings.EconomyBalancer.LogChangesOnly && !anyChanges)
            return;

        ModManager.Log($"[LeyLineLedger] === Economy Scan {DateTime.Now:yyyy-MM-dd HH:mm} ===", ModManager.LogLevel.Info);

        if (anyChanges)
        {
            foreach (var (wcid, newVal) in changes.OrderByDescending(c => Math.Abs(c.Value - (Settings.Currencies.FirstOrDefault(x => x.Id == c.Key)?.PyrealValue ?? 0))))
            {
                var currency = Settings.Currencies.FirstOrDefault(c => c.Id == wcid);
                var oldVal = currency?.PyrealValue ?? 0;
                var supply_ = supply.GetValueOrDefault(wcid, 0);
                if (Settings.EconomyBalancer.HideZeroSupplyCurrencies && supply_ == 0)
                    continue;
                ModManager.Log($"  {currency?.Name ?? wcid.ToString()}: {oldVal:N0} -> {newVal:N0} pyreals (supply: {supply_:N0})", ModManager.LogLevel.Info);
            }
        }

        if (!Settings.EconomyBalancer.LogChangesOnly)
        {
            var staticWcids = StaticWcids;
            foreach (var currency in Settings.Currencies.Where(c => c.PyrealValue > 0 && !staticWcids.Contains(c.Id)))
            {
                var sup = supply.GetValueOrDefault(currency.Id, 0);
                if (Settings.EconomyBalancer.HideZeroSupplyCurrencies && sup == 0)
                    continue;
                ModManager.Log($"  [SUPPLY] {currency.Name}: {sup:N0} total in banks, {currency.PyrealValue:N0} pyreals/unit", ModManager.LogLevel.Info);
            }
        }
    }

    [CommandHandler("economy", AccessLevel.Admin, CommandHandlerFlag.RequiresWorld)]
    public static void HandleEconomy(Session session, params string[] parameters)
    {
        if (!Settings.EconomyBalancer.Enabled)
        {
            session.Player.SendMessage("EconomyBalancer is disabled. Enable it in Settings.json to use /economy.");
            return;
        }

        var force = parameters.Length > 0 && parameters[0].Equals("force", StringComparison.OrdinalIgnoreCase);

        if (force)
        {
            if (Settings.EconomyBalancer.IncludeAdminBalances || !IsAdminPlayer(session))
            {
                RunSupplyScan();
                session.Player.SendMessage("Force economy scan complete. Check server logs.");
            }
            else
            {
                session.Player.SendMessage("Admins excluded by default. Set IncludeAdminBalances=true to include your balance, or use a non-admin character.");
            }
        }
        else
        {
            ShowEconomyReport(session, LastBankedSupply);
        }
    }

    static void ComputeAndApplyZefValueAdjustment(Dictionary<uint, long> supply)
    {
        if (Settings.AltCurrencyValues == null || Settings.AltCurrencyValues.Count == 0)
            return;

        long actualZefSupply = 0;
        foreach (var (wcid, zefValue) in Settings.AltCurrencyValues)
        {
            var banked = supply.GetValueOrDefault(wcid, 0);
            actualZefSupply += banked * zefValue;
        }

        var targetSupply = Settings.EconomyBalancer.TargetZefSupply;
        if (targetSupply <= 0)
            targetSupply = 1;

        var currentValue = Settings.PublicExchange.ZefPyrealValue;
        if (currentValue <= 0)
            currentValue = Settings.PublicExchange.ZefPyrealValue;

        double supplyRatio = (double)actualZefSupply / targetSupply;
        if (supplyRatio < 0.001)
            supplyRatio = 0.001;

        double targetValue = currentValue / supplyRatio;
        targetValue = Math.Max(targetValue, Settings.EconomyBalancer.MinZefPyrealValue);
        targetValue = Math.Min(targetValue, Settings.EconomyBalancer.MaxZefPyrealValue);

        double smoothing = Settings.EconomyBalancer.ValueAdjustmentSmoothing;
        double newValue = currentValue + (targetValue - currentValue) * smoothing;
        newValue = Math.Max(newValue, Settings.EconomyBalancer.MinZefPyrealValue);
        newValue = Math.Min(newValue, Settings.EconomyBalancer.MaxZefPyrealValue);

        var rounded = (long)Math.Round(newValue);
        if (Math.Abs(rounded - currentValue) > currentValue * 0.001)
        {
            Settings.PublicExchange.ZefPyrealValue = rounded;
            ModManager.Log($"[LeyLineLedger] ZefPyrealValue adjusted: {currentValue:N0} -> {rounded:N0} (supply: {actualZefSupply:N0} / target: {targetSupply:N0})", ModManager.LogLevel.Info);
        }
    }

    static void ManageValheelCryptoEvents(Dictionary<uint, long> supply)
    {
        if (Settings is not { ValheelCryptoIntegration.Enabled: true })
            return;

        var ashCoinWcid = Settings.ValheelCryptoIntegration.AshCoinWcid;
        var creditWcid = Settings.ValheelCryptoIntegration.CreditWcid;

        if (!supply.ContainsKey(ashCoinWcid) || !supply.ContainsKey(creditWcid))
            return;

        long ashCoinSupply = supply[ashCoinWcid];
        long creditSupply = supply[creditWcid];

        // If neither currency exists on the server, shut down all crypto events silently
        if (ashCoinSupply <= 0 && creditSupply <= 0)
        {
            for (int i = 1; i <= 5; i++)
            {
                string eventName = $"CryptoUp{i}";
                if (EventManager.IsEventStarted(eventName, null, null))
                    EventManager.StopEvent(eventName, null, null);
            }
            return;
        }

        if (ashCoinSupply <= 0)
            ashCoinSupply = 1;

        double ratio = (double)creditSupply / ashCoinSupply;
        var thresholds = Settings.ValheelCryptoIntegration.RatioThresholds;

        int targetLevel = 1;
        for (int i = 0; i < thresholds.Length; i++)
        {
            if (ratio >= thresholds[i])
                targetLevel = i + 1;
            else
                break;
        }
        targetLevel = Math.Clamp(targetLevel, 1, 5);

        // Start target event, stop all others
        for (int i = 1; i <= 5; i++)
        {
            string eventName = $"CryptoUp{i}";
            bool shouldBeRunning = i == targetLevel;
            bool isRunning = EventManager.IsEventStarted(eventName, null, null);

            if (shouldBeRunning && !isRunning)
            {
                EventManager.StartEvent(eventName, null, null);
                ModManager.Log($"[LeyLineLedger] Valheel Crypto: started {eventName} (Credit:AshCoin ratio = {ratio:F2})", ModManager.LogLevel.Info);
            }
            else if (!shouldBeRunning && isRunning)
            {
                EventManager.StopEvent(eventName, null, null);
            }
        }
    }

    internal static void ShowEconomyReport(Session session, Dictionary<uint, long>? supply = null)
    {
        supply ??= LastBankedSupply;

        session.Player.SendMessage("=== Economy Balancer Report ===");
        session.Player.SendMessage($"Scan interval: {Settings.EconomyBalancer.ScanIntervalMinutes}min | Smoothing: {Settings.EconomyBalancer.ValueAdjustmentSmoothing:P0}");

        var staticWcids = StaticWcids;
        int shown = 0;
        foreach (var currency in Settings.Currencies.Where(c => c.PyrealValue > 0 && !staticWcids.Contains(c.Id)))
        {
            var sup = supply.GetValueOrDefault(currency.Id, 0);
            if (Settings.EconomyBalancer.HideZeroSupplyCurrencies && sup == 0)
                continue;

            var name = currency.Name;
            var pyrealVal = currency.PyrealValue;
            var weight = Settings.EconomyBalancer.MinSupplyWeight.GetValueOrDefault(currency.Id, 1.0);
            session.Player.SendMessage($"  {name}: {pyrealVal:N0} pyreals/unit | supply: {sup:N0} | weight: {weight:F2}");
            shown++;
        }

        if (shown == 0)
            session.Player.SendMessage("  (no tracked currencies with non-zero supply)");

        session.Player.SendMessage($"  Zef value: {Settings.PublicExchange.ZefPyrealValue:N0} pyreals/Zef (range: {Settings.EconomyBalancer.MinZefPyrealValue:N0}-{Settings.EconomyBalancer.MaxZefPyrealValue:N0})");
    }

    /// <summary>
    /// Unified vendor buy price multiplier.
    /// Returns 1.0 for Vanilla, flat multiplier for SimpleMultiplier, or dynamic economy scaler.
    /// </summary>
    public static double GetVendorBuyPriceMultiplier()
    {
        if (Settings == null)
            return 1.0;

        // Backward compat: if old EnableDynamicVendorPricing is false and mode is EconomyBalancer, fall through to vanilla
        var mode = Settings.VendorPricingMode;
        if (mode == VendorPricingMode.EconomyBalancer && !Settings.EnableDynamicVendorPricing)
            mode = VendorPricingMode.Vanilla;

        switch (mode)
        {
            case VendorPricingMode.Vanilla:
                return 1.0;

            case VendorPricingMode.SimpleMultiplier:
                return Math.Max(0.01, Settings.VendorBuyPriceMultiplier);

            case VendorPricingMode.EconomyBalancer:
                // Calculate total banked pyreals from all tracked currencies
                double totalBankedPyreals = 0;
                foreach (var kvp in LastBankedSupply)
                {
                    var currency = Settings.Currencies.FirstOrDefault(c => c.Id == kvp.Key);
                    if (currency != null)
                        totalBankedPyreals += kvp.Value * currency.PyrealValue;
                }

                // Also add raw pyreals (WCID 273) - these are stored directly as PropertyInt64
                try
                {
                    using var context = new ShardDbContext();
                    var rawPyreals = context.BiotaPropertiesInt64
                        .Where(p => p.Type == 39999) // CashProperty
                        .Sum(p => p.Value);
                    totalBankedPyreals += rawPyreals;
                }
                catch { }

                var divisor = Settings.DynamicVendorPricingEconomyDivisor;
                var baseMult = Settings.DynamicVendorPricingBaseMultiplier;

                // Formula: baseMultiplier * (1 + log10(totalPyreals / divisor))
                var economyMult = 1.0 + Math.Log10(Math.Max(1, totalBankedPyreals / divisor));
                var finalMult = baseMult * economyMult;

                // Clamp to reasonable range (1x to 50x)
                return Math.Clamp(finalMult, 1.0, 50.0);

            default:
                return 1.0;
        }
    }
}