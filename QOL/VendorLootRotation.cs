using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using ACE.Database;
using ACE.Database.Models.World;
using ACE.Entity.Enum;
using ACE.Server.Entity;
using ACE.Server.Factories;
using ACE.Server.Factories.Enum;
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

    public static void Initialize(Settings settings)
    {
        _settings = settings;
        if (!settings.EnableVendorLootRotation)
            return;

        StartBackgroundTimer();
        ModManager.Log($"[QOL] VendorLootRotation initialized: rotation every {settings.VendorLootRotationMinutes} minutes", ModManager.LogLevel.Info);
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

        // Align to server start time (like Xenology) for consistent cycles
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
            // Find a real profile for this tier (or nearest available)
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
        // Try exact tier match first
        var exact = allProfiles.FirstOrDefault(p => p.Tier == desiredTier);
        if (exact != null)
            return exact;

        // Fall back to nearest lower tier
        var nearest = allProfiles
            .Where(p => p.Tier <= desiredTier)
            .OrderByDescending(p => p.Tier)
            .FirstOrDefault();

        if (nearest != null)
            return nearest;

        // Absolute fallback: lowest tier available
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

    private static WorldObject? GenerateRandomItem(TreasureDeath profile, int minValue, int maxValue)
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
                item.Value = new Random().Next(minValue, maxValue);
            }

            return item;
        }
        catch (Exception ex)
        {
            ModManager.Log($"[QOL] VendorLootRotation: Error generating item: {ex.Message}", ModManager.LogLevel.Warn);
            return null;
        }
    }

    private static WorldObject? GenerateSalvageBag(int tier, int minValue, int maxValue)
    {
        try
        {
            // Load real TreasureDeath profile for salvage generation
            var allProfiles = LoadTreasureDeathProfiles();
            var profile = FindProfileForTier(allProfiles, tier);
            if (profile == null)
            {
                ModManager.Log($"[QOL] VendorLootRotation: No TreasureDeath profile for tier {tier}, cannot generate salvage.", ModManager.LogLevel.Warn);
                return null;
            }

            // Try up to 10 times to get a salvage-like item
            for (int attempt = 0; attempt < 10; attempt++)
            {
                var items = LootGenerationFactory.CreateRandomLootObjects(profile);
                var item = items?.FirstOrDefault(i =>
                    i.ItemType == ItemType.TinkeringMaterial ||
                    i.ItemType == ItemType.Misc);

                if (item != null)
                {
                    // Salvage bags are very expensive
                    var value = item.Value ?? 0;
                    if (value < minValue)
                        item.Value = minValue;
                    else if (value > maxValue)
                        item.Value = maxValue;

                    return item;
                }
            }

            return null;
        }
        catch (Exception ex)
        {
            ModManager.Log($"[QOL] VendorLootRotation: Error generating salvage: {ex.Message}", ModManager.LogLevel.Warn);
            return null;
        }
    }

    private static bool VendorAcceptsItemType(Vendor vendor, ItemType itemType)
    {
        var merchTypes = vendor.MerchandiseItemTypes;
        if (!merchTypes.HasValue)
            return true; // No restriction, accept all

        return (merchTypes.Value & (int)itemType) != 0;
    }

    private static bool VendorHasMiscTab(Vendor vendor)
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

    public static List<TreasureDeath> GetRotationProfiles()
    {
        return _rotationProfiles.ToList();
    }

    public static void PostLoadInventory(Vendor __instance)
    {
        if (_settings is null || !_settings.EnableVendorLootRotation)
            return;

        if (!ShouldRotateVendor(__instance.WeenieClassId))
            return;

        if (_rotationProfiles.Count == 0)
        {
            CheckRotation();
            if (_rotationProfiles.Count == 0)
                return;
        }

        __instance.DefaultItemsForSale.Clear();

        var random = new Random();
        int addedCount = 0;
        int salvageCount = 0;

        // ── Main loot: category-filtered items ──
        foreach (var profile in _rotationProfiles)
        {
            // Try up to 5 times to find an item matching this vendor's categories
            WorldObject? item = null;
            for (int attempt = 0; attempt < 5; attempt++)
            {
                item = GenerateRandomItem(profile, _settings.VendorLootMinValue, _settings.VendorLootMaxValue);
                if (item != null && VendorAcceptsItemType(__instance, item.ItemType))
                    break;
                item = null;
            }

            if (item != null)
            {
                item.ContainerId = __instance.Guid.Full;
                item.CalculateObjDesc();
                __instance.DefaultItemsForSale.Add(item.Guid, item);
                addedCount++;
            }
        }

        // ── Salvage bags for vendors with misc tabs ──
        if (VendorHasMiscTab(__instance))
        {
            int salvageToAdd = random.Next(5, 11); // 5-10 random bags
            for (int i = 0; i < salvageToAdd; i++)
            {
                var salvage = GenerateSalvageBag(
                    _currentBaseTier,
                    _settings.VendorLootMaxValue * 5,  // Very expensive: 5× max value
                    _settings.VendorLootMaxValue * 20); // Up to 20× max value

                if (salvage != null)
                {
                    salvage.ContainerId = __instance.Guid.Full;
                    salvage.CalculateObjDesc();
                    __instance.DefaultItemsForSale.Add(salvage.Guid, salvage);
                    salvageCount++;
                }
            }
        }

        ModManager.Log($"[QOL] VendorLootRotation: Rotated vendor {__instance.WeenieClassId} ({__instance.Name}) with {addedCount} category-filtered items + {salvageCount} salvage bags", ModManager.LogLevel.Info);
    }

    public static void Shutdown()
    {
        _timerCts?.Cancel();
        _timerCts?.Dispose();
        _rotationProfiles.Clear();
    }
}
