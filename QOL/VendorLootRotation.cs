using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using ACE.Database;
using ACE.Database.Models.World;
using ACE.Entity.Enum;
using ACE.Entity.Enum.Properties;
using ACE.Server.Entity;
using ACE.Server.Factories;
using ACE.Server.Factories.Enum;
using ACE.Server.Managers;
using ACE.Server.WorldObjects;
using HarmonyLib;

namespace QOL;

[HarmonyPatchCategory(nameof(Features.VendorLootRotation))]
public static class VendorLootRotation
{
    private static Settings? _settings;
    private static CancellationTokenSource? _timerCts;
    private static DateTime _lastRotationTime = DateTime.MinValue;
    private static List<TreasureDeath> _rotationProfiles = new();
    private static int _currentBaseTier = 0;
    private static int _currentCycle = -1;

    // -- Per-vendor cooldown tracking -------------------------------------
    static readonly Dictionary<uint, DateTime> _vendorLastRotation = new();
    // Track which items were added by rotation so we can clear them next cycle
    static readonly Dictionary<uint, HashSet<ObjectGuid>> _vendorRotatedItems = new();
    // Track original values for economy repricing
    static readonly Dictionary<ObjectGuid, int> _originalValues = new();

    // -- Economy tracking -------------------------------------------------
    static DateTime _lastEconomyScan = DateTime.MinValue;
    static long _totalPyrealsInEconomy = 0;
    static double _economyMultiplier = 1.0;
    static readonly Random _rng = new();

    public static void Initialize(Settings settings)
    {
        _settings = settings;
        if (!settings.EnableVendorLootRotation)
            return;

        StartBackgroundTimer();
        // Pre-warm rotation profiles so first vendor approach has stock
        CheckRotation();
        ModManager.Log($"[QOL] VendorLootRotation initialized: rotation every {settings.VendorLootRotationMinutes} minutes, cooldown {settings.VendorLootCooldownMinutes} min per vendor", ModManager.LogLevel.Info);
    }

    private static void StartBackgroundTimer()
    {
        _timerCts?.Cancel();
        _timerCts = new CancellationTokenSource();
        var token = _timerCts.Token;

        var intervalMs = 60_000; // Check every 60 seconds

        _ = Task.Run(async () =>
        {
            while (!token.IsCancellationRequested)
            {
                try
                {
                    await Task.Delay(intervalMs, token).ConfigureAwait(false);
                    CheckRotation();
                }
                catch (OperationCanceledException)
                {
                    break;
                }
                catch (Exception ex)
                {
                    ModManager.Log($"[QOL] VendorLootRotation timer: {ex.Message}", ModManager.LogLevel.Warn);
                }
            }
        }, token);
    }

    private static void CheckRotation()
    {
        if (_settings is null || !_settings.EnableVendorLootRotation)
            return;

        var now = DateTime.UtcNow;
        var rotationMinutes = _settings.VendorLootRotationMinutes;

        // Align to server start time for consistent cycles
        var serverStart = DateTime.UtcNow.AddSeconds(-Environment.TickCount / 1000.0);
        var minutesSinceServerStart = (now - serverStart).TotalMinutes;
        var currentCycle = (int)(minutesSinceServerStart / rotationMinutes);

        if (_lastRotationTime == DateTime.MinValue || currentCycle > _currentCycle)
        {
            GenerateNewRotation();
            _currentCycle = currentCycle;
            _lastRotationTime = now;
            ModManager.Log($"[QOL] VendorLootRotation: Generated new rotation (base tier {_currentBaseTier}, cycle {currentCycle})", ModManager.LogLevel.Info);
        }
    }

    private static void GenerateNewRotation()
    {
        if (_settings is null)
            return;

        _rotationProfiles.Clear();

        var random = new Random();
        int baseTier = random.Next(1, 9);
        _currentBaseTier = baseTier;

        var tiersToGenerate = GetTiersForBaseTier(baseTier);

        int itemsPerTier = random.Next(_settings.VendorLootItemsPerTierMin, _settings.VendorLootItemsPerTierMax + 1);

        // Load real TreasureDeath profiles from the database
        var allProfiles = LoadTreasureDeathProfiles();
        if (allProfiles.Count == 0)
        {
            ModManager.Log("[QOL] VendorLootRotation: No TreasureDeath profiles found in database!", ModManager.LogLevel.Error);
            return;
        }

        for (int tier = tiersToGenerate.Min; tier <= tiersToGenerate.Max; tier++)
        {
            var profile = FindProfileForTier(allProfiles, tier);
            if (profile == null)
            {
                ModManager.Log($"[QOL] VendorLootRotation: No TreasureDeath profile found for tier {tier}, skipping.", ModManager.LogLevel.Warn);
                continue;
            }

            for (int i = 0; i < itemsPerTier; i++)
            {
                _rotationProfiles.Add(profile);
            }
        }

        ModManager.Log($"[QOL] VendorLootRotation: Prepared {_rotationProfiles.Count} loot profiles for tiers {tiersToGenerate.Min}-{tiersToGenerate.Max}", ModManager.LogLevel.Info);
    }

    private static List<TreasureDeath> LoadTreasureDeathProfiles()
    {
        try
        {
            var dict = DatabaseManager.World.GetAllTreasureDeath();
            return dict.Values.Where(r => r != null).ToList();
        }
        catch (Exception ex)
        {
            ModManager.Log($"[QOL] VendorLootRotation: Failed to load TreasureDeath profiles: {ex.Message}", ModManager.LogLevel.Error);
            return new List<TreasureDeath>();
        }
    }

    private static TreasureDeath? FindProfileForTier(List<TreasureDeath> allProfiles, int desiredTier)
    {
        var exact = allProfiles.FirstOrDefault(p => p.Tier == desiredTier);
        if (exact != null)
            return exact;

        var nearest = allProfiles
            .Where(p => p.Tier <= desiredTier)
            .OrderByDescending(p => p.Tier)
            .FirstOrDefault();

        if (nearest != null)
            return nearest;

        return allProfiles.OrderBy(p => p.Tier).FirstOrDefault();
    }

    private static (int Min, int Max) GetTiersForBaseTier(int baseTier)
    {
        if (baseTier == 1)
            return (1, 3);
        if (baseTier == 8)
            return (6, 8);
        return (baseTier - 1, baseTier + 1);
    }

    // =====================================================================
    // Economy Scanning
    // =====================================================================

    static void EnsureEconomyScan()
    {
        if (_settings is null) return;

        var now = DateTime.UtcNow;
        var scanInterval = TimeSpan.FromMinutes(_settings.VendorLootEconomyScanMinutes);
        if (now - _lastEconomyScan < scanInterval)
            return;

        ScanEconomy();
    }

    static void ScanEconomy()
    {
        if (_settings is null) return;

        try
        {
            long total = 0;
            int count = 0;
            var cashPropId = _settings.VendorLootCashPropertyId;

            foreach (var player in PlayerManager.GetAllOnline())
            {
                var banked = player.GetProperty((PropertyInt64)cashPropId) ?? 0;
                total += banked;
                count++;
            }

            _totalPyrealsInEconomy = total;

            var divisor = _settings.VendorLootEconomyPyrealDivisor;
            if (divisor <= 0) divisor = 100_000_000L;

            _economyMultiplier = 1.0 + Math.Log10(1.0 + (double)total / divisor);

            _lastEconomyScan = DateTime.UtcNow;
            ModManager.Log($"[Economy] Total banked: {total:N0} pyreals across {count} players. Multiplier: {_economyMultiplier:F2}x", ModManager.LogLevel.Info);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Economy] Scan failed: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    static double GetLuxuryTaxMultiplier()
    {
        if (_settings is null) return 1.10;
        return 1.0 + (_settings.VendorLootLuxuryTaxPercent / 100.0);
    }

    // =====================================================================
    // Vendor Approach Hook (replaces LoadInventory postfix)
    // =====================================================================

    public static void OnVendorApproachPrefix(Player player, Vendor __instance)
    {
        if (_settings is null || !_settings.EnableVendorLootRotation)
            return;

        if (!ShouldRotateVendor(__instance.WeenieClassId))
            return;

        var vendorGuid = __instance.Guid.Full;
        var now = DateTime.UtcNow;
        var cooldown = TimeSpan.FromMinutes(_settings.VendorLootCooldownMinutes);

        // Check per-vendor cooldown
        if (_vendorLastRotation.TryGetValue(vendorGuid, out var lastRotation))
        {
            if (now - lastRotation < cooldown)
                return; // Still on cooldown
        }

        // Ensure economy is scanned
        EnsureEconomyScan();

        // Ensure rotation profiles exist
        if (_rotationProfiles.Count == 0)
        {
            CheckRotation();
            if (_rotationProfiles.Count == 0)
            {
                ModManager.Log($"[VendorLoot] No rotation profiles available for vendor {__instance.Name} ({vendorGuid}), skipping.", ModManager.LogLevel.Warn);
                return;
            }
        }

        RotateVendorInventory(__instance);
        _vendorLastRotation[vendorGuid] = now;
    }

    static void RotateVendorInventory(Vendor vendor)
    {
        if (_settings is null) return;

        var vendorGuid = vendor.Guid.Full;
        ModManager.Log($"[VendorLoot] Rotating vendor {vendor.Name} ({vendor.WeenieClassId})...", ModManager.LogLevel.Info);
        ModManager.Log($"[VendorLoot] Profiles available: {_rotationProfiles.Count}, Economy multiplier: {_economyMultiplier:F2}x", ModManager.LogLevel.Info);

        // -- Remove previously rotated items to avoid infinite accumulation --
        if (_vendorRotatedItems.TryGetValue(vendorGuid, out var oldItems))
        {
            foreach (var guid in oldItems)
            {
                vendor.DefaultItemsForSale.Remove(guid);
                _originalValues.Remove(guid);
            }
            oldItems.Clear();
        }
        else
        {
            _vendorRotatedItems[vendorGuid] = new HashSet<ObjectGuid>();
        }

        var rotatedSet = _vendorRotatedItems[vendorGuid];
        int generatedCount = 0;
        int acceptedCount = 0;

        // -- Capture original values of default inventory on first encounter --
        foreach (var kvp in vendor.DefaultItemsForSale)
        {
            if (!_originalValues.ContainsKey(kvp.Key))
                _originalValues[kvp.Key] = kvp.Value.Value ?? 0;
        }

        // -- Generate rotated loot (append mode) --
        foreach (var profile in _rotationProfiles)
        {
            WorldObject? item = null;
            for (int attempt = 0; attempt < 5; attempt++)
            {
                item = GenerateRandomItem(profile, _settings.VendorLootMinValue, _settings.VendorLootMaxValue);
                generatedCount++;
                if (item != null && VendorAcceptsItemType(vendor, item.ItemType))
                    break;
                item = null;
            }

            if (item != null)
            {
                item.ContainerId = vendor.Guid.Full;
                item.CalculateObjDesc();
                vendor.DefaultItemsForSale.Add(item.Guid, item);
                rotatedSet.Add(item.Guid);
                _originalValues[item.Guid] = item.Value ?? 0;
                acceptedCount++;
            }
        }

        ModManager.Log($"[VendorLoot] Generated {generatedCount} items, {acceptedCount} accepted by vendor categories", ModManager.LogLevel.Info);

        // -- Salvage bags for vendors with misc tabs --
        int salvageCount = 0;
        if (VendorHasMiscTab(vendor))
        {
            int salvageToAdd = _rng.Next(5, 11); // 5-10 random bags
            for (int i = 0; i < salvageToAdd; i++)
            {
                var salvage = GenerateSalvageBag();
                if (salvage != null)
                {
                    salvage.ContainerId = vendor.Guid.Full;
                    salvage.CalculateObjDesc();
                    vendor.DefaultItemsForSale.Add(salvage.Guid, salvage);
                    rotatedSet.Add(salvage.Guid);
                    _originalValues[salvage.Guid] = salvage.Value ?? 0;
                    salvageCount++;
                }
            }
        }

        ModManager.Log($"[VendorLoot] Added {salvageCount} salvage bags to {vendor.Name}", ModManager.LogLevel.Info);

        // -- Reprice ALL items with economy multiplier + luxury tax --
        var taxMult = GetLuxuryTaxMultiplier();
        foreach (var kvp in vendor.DefaultItemsForSale)
        {
            if (_originalValues.TryGetValue(kvp.Key, out var originalValue))
            {
                var newValue = (int)(originalValue * _economyMultiplier * taxMult);
                if (newValue < 1) newValue = 1;
                kvp.Value.Value = newValue;
            }
        }

        ModManager.Log($"[VendorLoot] Rotated vendor {vendor.Name} ({vendor.WeenieClassId}) with {acceptedCount} items + {salvageCount} salvage. Total stock: {vendor.DefaultItemsForSale.Count}", ModManager.LogLevel.Info);
    }

    static WorldObject? GenerateRandomItem(TreasureDeath profile, int minValue, int maxValue)
    {
        try
        {
            var items = LootGenerationFactory.CreateRandomLootObjects(profile);
            var item = items?.FirstOrDefault();
            if (item == null)
                return null;

            var value = item.Value ?? 0;
            if (value < minValue || value > maxValue)
            {
                item.Value = _rng.Next(minValue, maxValue + 1);
            }

            return item;
        }
        catch (Exception ex)
        {
            ModManager.Log($"[VendorLoot] Error generating item: {ex.Message}", ModManager.LogLevel.Warn);
            return null;
        }
    }

    static WorldObject? GenerateSalvageBag()
    {
        try
        {
            // Filter valid salvage WCIDs from Player.MaterialSalvage (exclude category headers with value 0)
            var validSalvage = Player.MaterialSalvage
                .Where(kvp => kvp.Value > 0)
                .Select(kvp => (uint)kvp.Value)
                .ToList();

            if (validSalvage.Count == 0)
            {
                ModManager.Log("[VendorLoot] No valid salvage WCIDs found in MaterialSalvage map.", ModManager.LogLevel.Warn);
                return null;
            }

            uint wcid = validSalvage[_rng.Next(validSalvage.Count)];
            var bag = WorldObjectFactory.CreateNewWorldObject(wcid);
            if (bag == null)
            {
                ModManager.Log($"[VendorLoot] Failed to create salvage bag WCID {wcid}", ModManager.LogLevel.Warn);
                return null;
            }

            // Weird random value: 113% to 917% of base
            int baseValue = bag.Value ?? 100;
            int multiplierPercent = _rng.Next(113, 918); // 113-917 inclusive
            int finalValue = (int)(baseValue * multiplierPercent / 100.0);
            if (finalValue < 1) finalValue = 1;
            bag.Value = finalValue;

            return bag;
        }
        catch (Exception ex)
        {
            ModManager.Log($"[VendorLoot] Error generating salvage bag: {ex.Message}", ModManager.LogLevel.Warn);
            return null;
        }
    }

    static bool VendorAcceptsItemType(Vendor vendor, ItemType itemType)
    {
        var merchTypes = vendor.MerchandiseItemTypes;
        if (!merchTypes.HasValue)
            return true;

        return (merchTypes.Value & (int)itemType) != 0;
    }

    static bool VendorHasMiscTab(Vendor vendor)
    {
        var merchTypes = vendor.MerchandiseItemTypes;
        if (!merchTypes.HasValue)
            return false;

        return ((merchTypes.Value & (int)ItemType.Misc) != 0) ||
               ((merchTypes.Value & (int)ItemType.TinkeringMaterial) != 0);
    }

    public static bool ShouldRotateVendor(uint vendorWcid)
    {
        if (_settings is null || !_settings.EnableVendorLootRotation)
            return false;

        if (_settings.VendorLootWcids == null || _settings.VendorLootWcids.Count == 0)
            return true;

        bool isInList = _settings.VendorLootWcids.Contains(vendorWcid);
        return _settings.VendorLootMode.Equals("Whitelist", StringComparison.OrdinalIgnoreCase)
            ? isInList
            : !isInList;
    }

    public static double GetEconomyMultiplier() => _economyMultiplier;

    public static List<TreasureDeath> GetRotationProfiles()
    {
        return _rotationProfiles.ToList();
    }

    public static void Shutdown()
    {
        _timerCts?.Cancel();
        _timerCts?.Dispose();
        _rotationProfiles.Clear();
        _vendorLastRotation.Clear();
        _vendorRotatedItems.Clear();
        _originalValues.Clear();
    }
}
