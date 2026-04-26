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
            var changes = ComputeValueAdjustments(bankedCurrency);

            if (changes.Count > 0)
            {
                ApplyChanges(changes);
                LogResults(bankedCurrency, changes);
            }

            ComputeAndApplyZefValueAdjustment(bankedCurrency);
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
                ModManager.Log($"  {currency?.Name ?? wcid.ToString()}: {oldVal:N0} -> {newVal:N0} pyreals (supply: {supply_:N0})", ModManager.LogLevel.Info);
            }
        }

        if (!Settings.EconomyBalancer.LogChangesOnly)
        {
            var staticWcids = StaticWcids;
            foreach (var currency in Settings.Currencies.Where(c => c.PyrealValue > 0 && !staticWcids.Contains(c.Id)))
            {
                var sup = supply.GetValueOrDefault(currency.Id, 0);
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
            ShowEconomyReport(session);
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

    internal static void ShowEconomyReport(Session session)
    {
        session.Player.SendMessage("=== Economy Balancer Report ===");
        session.Player.SendMessage($"Scan interval: {Settings.EconomyBalancer.ScanIntervalMinutes}min | Smoothing: {Settings.EconomyBalancer.ValueAdjustmentSmoothing:P0}");

        var staticWcids = StaticWcids;
        foreach (var currency in Settings.Currencies.Where(c => c.PyrealValue > 0 && !staticWcids.Contains(c.Id)))
        {
            var name = currency.Name;
            var pyrealVal = currency.PyrealValue;
            var weight = Settings.EconomyBalancer.MinSupplyWeight.GetValueOrDefault(currency.Id, 1.0);
            session.Player.SendMessage($"  {name}: {pyrealVal:N0} pyreals/unit | weight: {weight:F2}");
        }

        session.Player.SendMessage($"  Zef value: {Settings.PublicExchange.ZefPyrealValue:N0} pyreals/Zef (range: {Settings.EconomyBalancer.MinZefPyrealValue:N0}-{Settings.EconomyBalancer.MaxZefPyrealValue:N0})");
    }
}