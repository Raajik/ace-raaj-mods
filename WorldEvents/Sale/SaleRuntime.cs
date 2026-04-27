using WorldEvents.Sale.Models;

namespace WorldEvents;

internal static class SaleRuntime
{
    static readonly object _lock = new();
    static ActiveSaleData? _activeSale;
    static DateTime _nextSaleUtc = DateTime.MaxValue;
    static DateTime _lastReminderUtc = DateTime.MinValue;
    static string? _lastTownName;

    internal static ActiveSaleData? ActiveSale => _activeSale;

    internal static void LoadFromDisk(Settings s)
    {
        lock (_lock)
        {
            SalePersistence.EnsureDirectories();
            var saved = SalePersistence.LoadActiveSale();
            if (saved != null && saved.EndsUtc > DateTime.UtcNow)
            {
                _activeSale = saved;
                _nextSaleUtc = saved.EndsUtc.AddMinutes(s.SaleIntervalMinutes);
            }
            else
            {
                SalePersistence.ClearActiveSale();
                _activeSale = null;
                _nextSaleUtc = DateTime.UtcNow.AddMinutes(s.SaleIntervalMinutes);
            }
        }
    }

    internal static void TickTimer(Settings s)
    {
        if (!s.SaleEnabled) return;

        lock (_lock)
        {
            var now = DateTime.UtcNow;

            if (_activeSale != null)
            {
                // Reminder (silenced when unified scheduler is managing messaging)
                if (!s.UseUnifiedScheduler && s.SaleReminderIntervalMinutes > 0
                    && (now - _lastReminderUtc).TotalMinutes >= s.SaleReminderIntervalMinutes)
                {
                    _lastReminderUtc = now;
                    SaleBroadcast.AnnounceReminder(_activeSale);
                }

                // Expiry (skip if scheduler is managing lifecycle)
                if (!s.UseUnifiedScheduler && now >= _activeSale.EndsUtc)
                {
                    var ended = _activeSale;
                    _activeSale = null;
                    _nextSaleUtc = now.AddMinutes(s.SaleIntervalMinutes);
                    SalePersistence.ClearActiveSale();
                    SaleBroadcast.AnnounceSaleEnd(ended);
                }
                return;
            }

            if (s.UseUnifiedScheduler) return;
            if (now < _nextSaleUtc) return;

            TryStartSale(s, now);
        }
    }

    static void TryStartSale(Settings s, DateTime now)
    {
        var all = s.SaleTowns.Where(t => t.Enabled && t.HasAnyLandblocks).ToList();
        // Exclude last town to prevent back-to-back repeats (unless it's the only option)
        var eligible = all.Count > 1 && _lastTownName != null
            ? all.Where(t => !t.TownName.Equals(_lastTownName, StringComparison.OrdinalIgnoreCase)).ToList()
            : all;

        bool masterMageOnly;
        SaleTownSettings? picked = null;

        if (eligible.Count == 0)
        {
            if (s.SaleMasterMageChance <= 0) return;
            masterMageOnly = true;
        }
        else
        {
            // Weight master-mage-only option by SaleMasterMageChance relative to town count
            float mmWeight = (float)(s.SaleMasterMageChance * eligible.Count);
            float total = eligible.Count + mmWeight;
            float roll = (float)ThreadSafeRandom.Next(0.0f, total);
            if (roll >= eligible.Count)
            {
                masterMageOnly = true;
            }
            else
            {
                masterMageOnly = false;
                picked = eligible[(int)roll];
            }
        }

        var sale = new ActiveSaleData
        {
            TownName = masterMageOnly ? "the Master Mages" : picked!.TownName,
            Landblocks = masterMageOnly ? new() : new List<int>(picked!.Landblocks),
            CenterLandblocks = masterMageOnly ? new() : new List<int>(picked!.CenterLandblocks),
            IncludesMasterMage = masterMageOnly || (picked?.HasMasterMage ?? false),
            MasterMageOnly = masterMageOnly,
            StartsUtc = now,
            EndsUtc = now.AddMinutes(s.SaleDurationMinutes),
        };

        _activeSale = sale;
        _lastReminderUtc = now;
        _lastTownName = sale.TownName;
        SalePersistence.SaveActiveSale(sale);
        SaleBroadcast.AnnounceSaleStart(s, sale);
    }

    internal static void ForceStart(Settings s, string? townName = null)
    {
        lock (_lock)
        {
            var now = DateTime.UtcNow;

            if (townName != null)
            {
                var town = s.SaleTowns.FirstOrDefault(t =>
                    t.TownName.Equals(townName, StringComparison.OrdinalIgnoreCase) && t.Enabled);

                if (town == null)
                {
                    ModManager.Log($"[Sale] ForceStart: town '{townName}' not found or not enabled.", ModManager.LogLevel.Warn);
                    return;
                }

                var sale = new ActiveSaleData
                {
                    TownName = town.TownName,
                    Landblocks = new List<int>(town.Landblocks),
                    CenterLandblocks = new List<int>(town.CenterLandblocks),
                    IncludesMasterMage = town.HasMasterMage,
                    MasterMageOnly = false,
                    StartsUtc = now,
                    EndsUtc = now.AddMinutes(s.SaleDurationMinutes),
                };
                _activeSale = sale;
                _lastReminderUtc = now;
                SalePersistence.SaveActiveSale(sale);
                SaleBroadcast.AnnounceSaleStart(s, sale);
            }
            else
            {
                TryStartSale(s, now);
            }
        }
    }

    internal static void ForceStop()
    {
        lock (_lock)
        {
            if (_activeSale == null) return;
            var ended = _activeSale;
            _activeSale = null;
            _nextSaleUtc = DateTime.UtcNow;
            SalePersistence.ClearActiveSale();
            SaleBroadcast.AnnounceSaleEnd(ended);
        }
    }

    /// <summary>
    /// Starts a sale immediately for the unified scheduler. Does not check cooldown.
    /// </summary>
    internal static ActiveSaleData? TryStartScheduledSale(Settings s)
    {
        lock (_lock)
        {
            if (_activeSale != null) return null;
            var now = DateTime.UtcNow;
            TryStartSale(s, now);
            return _activeSale;
        }
    }

    /// <summary>
    /// Ends the active sale for the unified scheduler. Does not set next cooldown.
    /// </summary>
    internal static void EndScheduledSale()
    {
        lock (_lock)
        {
            if (_activeSale == null) return;
            var ended = _activeSale;
            _activeSale = null;
            // Do NOT set _nextSaleUtc — scheduler handles timing
            SalePersistence.ClearActiveSale();
            SaleBroadcast.AnnounceSaleEnd(ended);
        }
    }

    internal static bool IsVendorOnSale(int landblock, string? vendorName, uint wcid = 0)
    {
        var sale = _activeSale;
        if (sale == null) return false;

        if (sale.MasterMageOnly)
            return IsMasterMageVendor(vendorName, wcid);

        if (sale.Landblocks.Contains(landblock) || sale.ContainsCenterLandblock(landblock)) return true;

        if (sale.IncludesMasterMage && IsMasterMageVendor(vendorName, wcid))
            return true;

        return false;
    }

    static bool IsMasterMageVendor(string? vendorName, uint wcid)
    {
        var s = PatchClass.CurrentSettings;
        if (s == null) return false;

        if (wcid != 0 && s.MasterMageVendorWcids?.Count > 0)
            return s.MasterMageVendorWcids.Contains(wcid);

        if (vendorName == null) return false;
        var substrings = s.MasterMageVendorNameSubstrings;
        if (substrings == null || substrings.Count == 0)
            return vendorName.Contains("Master Mage", StringComparison.OrdinalIgnoreCase);
        foreach (var sub in substrings)
            if (!string.IsNullOrEmpty(sub) && vendorName.Contains(sub, StringComparison.OrdinalIgnoreCase))
                return true;
        return false;
    }

    internal static bool IsLandblockOnSale(int landblock)
    {
        var sale = _activeSale;
        return sale != null && !sale.MasterMageOnly
            && (sale.Landblocks.Contains(landblock) || sale.ContainsCenterLandblock(landblock));
    }
}
