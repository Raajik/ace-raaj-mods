using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using ACE.Database;
using ACE.Database.Models.World;
using ACE.Server.Entity;
using ACE.Server.Factories;
using ACE.Server.WorldObjects;
using HarmonyLib;

namespace QOL;

[HarmonyPatchCategory(nameof(Features.VendorLootRotation))]
public static class VendorLootRotation
{
    private static Settings? _settings;
    private static CancellationTokenSource? _timerCts;
    private static DateTime _lastRotationTime = DateTime.MinValue;
    private static List<WorldObject> _rotatedItems = new();
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

        _rotatedItems.ForEach(i => i.Destroy());
        _rotatedItems.Clear();

        var random = new Random();
        int baseTier = random.Next(1, 9);
        _currentBaseTier = baseTier;

        var tiersToGenerate = GetTiersForBaseTier(baseTier);

        for (int tier = tiersToGenerate.Min; tier <= tiersToGenerate.Max; tier++)
        {
            for (int i = 0; i < _settings.VendorLootItemsPerTier; i++)
            {
                var item = GenerateRandomItem(tier);
                if (item != null)
                {
                    var value = item.Value ?? 0;
                    if (value < _settings.VendorLootMinValue || value > _settings.VendorLootMaxValue)
                    {
                        item.Value = random.Next(_settings.VendorLootMinValue, _settings.VendorLootMaxValue);
                    }
                    _rotatedItems.Add(item);
                }
            }
        }

        ModManager.Log($"[QOL] VendorLootRotation: Generated {_rotatedItems.Count} items for tiers {tiersToGenerate.Min}-{tiersToGenerate.Max}", ModManager.LogLevel.Info);
    }

    private static (int Min, int Max) GetTiersForBaseTier(int baseTier)
    {
        if (baseTier == 1)
            return (1, 3);
        if (baseTier == 8)
            return (6, 8);
        return (baseTier - 1, baseTier + 1);
    }

    private static WorldObject? GenerateRandomItem(int tier)
    {
        try
        {
            var profile = new TreasureDeath
            {
                Tier = tier,
                LootQualityMod = 0
            };

            var items = LootGenerationFactory.CreateRandomLootObjects(profile);
            return items?.FirstOrDefault();
        }
        catch (Exception ex)
        {
            ModManager.Log($"[QOL] VendorLootRotation: Error generating item: {ex.Message}", ModManager.LogLevel.Warn);
            return null;
        }
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

    public static List<WorldObject> GetRotatedItems()
    {
        return _rotatedItems.ToList();
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Vendor), nameof(Vendor.LoadInventory))]
    public static void PostLoadInventory(Vendor __instance)
    {
        if (_settings is null || !_settings.EnableVendorLootRotation)
            return;

        if (!ShouldRotateVendor(__instance.WeenieClassId))
            return;

        if (_rotatedItems.Count == 0)
        {
            CheckRotation();
            if (_rotatedItems.Count == 0)
                return;
        }

        __instance.DefaultItemsForSale.Clear();

        foreach (var item in _rotatedItems)
        {
            var newItem = WorldObjectFactory.CreateNewWorldObject(item.WeenieClassId);
            if (newItem != null)
            {
                newItem.Value = item.Value;
                newItem.ContainerId = __instance.Guid.Full;
                newItem.CalculateObjDesc();
                __instance.DefaultItemsForSale.Add(newItem.Guid, newItem);
            }
        }

        ModManager.Log($"[QOL] VendorLootRotation: Rotated vendor {__instance.WeenieClassId} ({__instance.Name}) with {_rotatedItems.Count} items", ModManager.LogLevel.Info);
    }

    public static void Shutdown()
    {
        _timerCts?.Cancel();
        _timerCts?.Dispose();
        _rotatedItems.ForEach(i => i.Destroy());
        _rotatedItems.Clear();
    }
}
