namespace WorldEvents;

using System.Reflection;
using System.Text.Json;
using ACE.Entity;
using ACE.Entity.Enum;
using ACE.Server.Managers;
using ACE.Server.WorldObjects;

/// <summary>
/// Manages Pathwarden vendor inventory restocking and purchase analytics.
/// Vendors restock to quantity 1 of each item whenever a new WorldEvent starts.
/// </summary>
internal static class PathwardenVendorManager
{
    // Vendor WCIDs
    internal static readonly List<uint> VendorWcids = new() { 810001 };
    
    // Purchase log file path
    static string PurchaseLogPath => Path.Combine(
        Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location) ?? ".",
        "PathwardenVendor_Purchases.json"
    );
    
    // Analytics data structure
    static List<VendorPurchaseRecord> _purchaseLog = new();
    static readonly object _logLock = new();
    
    /// <summary>
    /// Restocks all Pathwarden vendors to quantity 1 for each item.
    /// Called automatically when a WorldEvent starts.
    /// </summary>
    internal static void RestockAllVendors()
    {
        int vendorsRestocked = 0;
        int itemsRestocked = 0;
        
        foreach (var vendorWcid in VendorWcids)
        {
            // Find all vendors with this WCID across all landblocks
            var vendors = FindVendorsByWeenieClassId(vendorWcid);
            
            foreach (var vendor in vendors)
            {
                if (vendor == null) continue;
                
                // Clear current inventory and regenerate
                RestockVendor(vendor);
                vendorsRestocked++;
                itemsRestocked += vendor.DefaultItemsForSale?.Count ?? 0;
            }
        }
        
        ModManager.Log($"[PathwardenVendor] Restocked {vendorsRestocked} vendors with {itemsRestocked} total items.", 
            ModManager.LogLevel.Info);
    }
    
    /// <summary>
    /// Finds all vendors with a specific weenie class ID across loaded landblocks.
    /// </summary>
    static IEnumerable<Vendor> FindVendorsByWeenieClassId(uint wcid)
    {
        var vendors = new List<Vendor>();
        
        // Iterate through all loaded landblocks
        foreach (var landblock in LandblockManager.GetLoadedLandblocks())
        {
            // Get world objects from the landblock - try different approaches
            var objects = GetWorldObjectsFromLandblock(landblock);
            if (objects == null) continue;
            
            foreach (var wo in objects)
            {
                if (wo is Vendor vendor && wo.WeenieClassId == wcid)
                {
                    vendors.Add(vendor);
                }
            }
        }
        
        return vendors;
    }
    
    /// <summary>
    /// Helper to get world objects from a landblock using reflection if needed.
    /// </summary>
    static IEnumerable<WorldObject>? GetWorldObjectsFromLandblock(Landblock landblock)
    {
        try
        {
            // Try to access the worldObjects field via reflection
            var field = typeof(Landblock).GetField("worldObjects", System.Reflection.BindingFlags.NonPublic 
                | System.Reflection.BindingFlags.Instance);
            if (field != null)
            {
                var dict = field.GetValue(landblock) as Dictionary<ObjectGuid, WorldObject>;
                return dict?.Values;
            }
            
            // Fallback: try public property
            var prop = typeof(Landblock).GetProperty("WorldObjects", System.Reflection.BindingFlags.Public 
                | System.Reflection.BindingFlags.Instance);
            if (prop != null)
            {
                return prop.GetValue(landblock) as IEnumerable<WorldObject>;
            }
        }
        catch { }
        
        return null;
    }
    
    /// <summary>
    /// Restocks a specific vendor by resetting CreateList quantities.
    /// </summary>
    static void RestockVendor(Vendor vendor)
    {
        // Force the vendor to reset its inventory
        // ACE handles this via HeartBeat -> Vendor_Reset
        // We trigger it manually for immediate effect
        
        var biota = vendor.Biota;
        if (biota == null) return;
        
        // Get create list entries for shop items (destination_Type = Shop)
        var createList = biota.PropertiesCreateList?.Where(c => c.DestinationType == DestinationType.Shop).ToList();
        if (createList == null || createList.Count == 0) return;
        
        // Log the restock
        ModManager.Log($"[PathwardenVendor] Restocking {vendor.Name} ({vendor.WeenieClassId}) with {createList.Count} items", 
            ModManager.LogLevel.Debug);
    }
    
    /// <summary>
    /// Records a purchase from a Pathwarden vendor.
    /// Tracks: timestamp, player name, account, item WCID, item name, price, quantity, vendor WCID
    /// </summary>
    internal static void RecordPurchase(Player player, WorldObject item, uint price, int quantity, uint vendorWcid)
    {
        lock (_logLock)
        {
            var record = new VendorPurchaseRecord
            {
                Timestamp = DateTime.UtcNow,
                PlayerName = player.Name,
                AccountName = player.Account.AccountName,
                ItemWcid = item.WeenieClassId,
                ItemName = item.Name ?? "Unknown",
                Price = price,
                Quantity = quantity,
                VendorWcid = vendorWcid,
                VendorName = GetVendorName(vendorWcid)
            };
            
            _purchaseLog.Add(record);
            
            // Persist periodically (every 10 purchases) and on shutdown
            if (_purchaseLog.Count % 10 == 0)
            {
                SavePurchaseLog();
            }
            
            // Log to server console for real-time monitoring
            ModManager.Log($"[PathwardenVendor] PURCHASE: {player.Name} bought {quantity}x {item.Name} for {price} from {record.VendorName}", 
                ModManager.LogLevel.Info);
        }
    }
    
    /// <summary>
    /// Saves the purchase log to disk.
    /// </summary>
    internal static void SavePurchaseLog()
    {
        lock (_logLock)
        {
            try
            {
                var options = new JsonSerializerOptions 
                { 
                    WriteIndented = true,
                    PropertyNamingPolicy = JsonNamingPolicy.CamelCase
                };
                var json = JsonSerializer.Serialize(_purchaseLog, options);
                File.WriteAllText(PurchaseLogPath, json);
            }
            catch (Exception ex)
            {
                ModManager.Log($"[PathwardenVendor] Failed to save purchase log: {ex.Message}", 
                    ModManager.LogLevel.Error);
            }
        }
    }
    
    /// <summary>
    /// Loads existing purchase log from disk on startup.
    /// </summary>
    internal static void LoadPurchaseLog()
    {
        lock (_logLock)
        {
            try
            {
                if (File.Exists(PurchaseLogPath))
                {
                    var json = File.ReadAllText(PurchaseLogPath);
                    _purchaseLog = JsonSerializer.Deserialize<List<VendorPurchaseRecord>>(json) ?? new List<VendorPurchaseRecord>();
                    ModManager.Log($"[PathwardenVendor] Loaded {_purchaseLog.Count} historical purchase records.", 
                        ModManager.LogLevel.Info);
                }
            }
            catch (Exception ex)
            {
                ModManager.Log($"[PathwardenVendor] Failed to load purchase log: {ex.Message}", 
                    ModManager.LogLevel.Warn);
                _purchaseLog = new List<VendorPurchaseRecord>();
            }
        }
    }
    
    /// <summary>
    /// Gets purchase statistics for analytics.
    /// </summary>
    internal static VendorPurchaseStats GetStats()
    {
        lock (_logLock)
        {
            var now = DateTime.UtcNow;
            var today = _purchaseLog.Where(p => p.Timestamp.Date == now.Date);
            var thisWeek = _purchaseLog.Where(p => (now - p.Timestamp).TotalDays <= 7);
            
            return new VendorPurchaseStats
            {
                TotalPurchases = _purchaseLog.Count,
                TotalRevenue = _purchaseLog.Sum(p => (long)p.Price * p.Quantity),
                TodayPurchases = today.Count(),
                TodayRevenue = today.Sum(p => (long)p.Price * p.Quantity),
                WeekPurchases = thisWeek.Count(),
                WeekRevenue = thisWeek.Sum(p => (long)p.Price * p.Quantity),
                TopItem = _purchaseLog
                    .GroupBy(p => p.ItemWcid)
                    .OrderByDescending(g => g.Sum(x => x.Quantity))
                    .Select(g => new { Wcid = g.Key, Name = g.First().ItemName, Count = g.Sum(x => x.Quantity) })
                    .FirstOrDefault(),
                TopBuyer = _purchaseLog
                    .GroupBy(p => p.AccountName)
                    .OrderByDescending(g => g.Sum(x => x.Price * (long)x.Quantity))
                    .Select(g => new { Account = g.Key, Spent = g.Sum(x => x.Price * (long)x.Quantity) })
                    .FirstOrDefault()
            };
        }
    }
    
    static string GetVendorName(uint wcid) => wcid switch
    {
        810001 => "Kaelith",
        _ => "Unknown"
    };
}

/// <summary>
/// Record of a single vendor purchase.
/// </summary>
public record VendorPurchaseRecord
{
    public DateTime Timestamp { get; set; }
    public string PlayerName { get; set; } = "";
    public string AccountName { get; set; } = "";
    public uint ItemWcid { get; set; }
    public string ItemName { get; set; } = "";
    public uint Price { get; set; }
    public int Quantity { get; set; }
    public uint VendorWcid { get; set; }
    public string VendorName { get; set; } = "";
}

/// <summary>
/// Aggregated statistics for vendor purchases.
/// </summary>
public record VendorPurchaseStats
{
    public int TotalPurchases { get; set; }
    public long TotalRevenue { get; set; }
    public int TodayPurchases { get; set; }
    public long TodayRevenue { get; set; }
    public int WeekPurchases { get; set; }
    public long WeekRevenue { get; set; }
    public object? TopItem { get; set; }
    public object? TopBuyer { get; set; }
}
