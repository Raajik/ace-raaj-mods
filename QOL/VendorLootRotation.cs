using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using ACE.Database;
using ACE.Database.Models.World;
using ACE.Entity.Enum;
using Microsoft.EntityFrameworkCore;
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
    private static List<TreasureDeath>? _cachedTreasureProfiles = null;
    private static DateTime _lastProfileCache = DateTime.MinValue;

    // -- Per-vendor cooldown tracking -------------------------------------
    static readonly ConcurrentDictionary<uint, DateTime> _vendorLastRotation = new();
    // Track which items were added by rotation so we can clear them next cycle
    static readonly ConcurrentDictionary<uint, HashSet<ObjectGuid>> _vendorRotatedItems = new();
    // Track original values for repricing
    static readonly ConcurrentDictionary<ObjectGuid, int> _originalValues = new();

    // -- Repricing tracking ---------------------------------------------
    static readonly Random _rng = new();

    /// <summary>
    /// WCIDs that must never be rotated and must keep their SQL create_list stock intact.
    /// Pathwarden starter vendors and any other quest-critical vendors go here.
    /// </summary>
    static readonly HashSet<uint> _protectedVendorWcids = new() { 850300, 850301, 850302, 850303 };

    public static void Initialize(Settings settings)
    {
        _settings = settings;
        if (!settings.EnableVendorLootRotation)
            return;

        StartBackgroundTimer();
        WarmProfileCache();
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
                    WarmProfileCache();
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

    private static void WarmProfileCache()
    {
        var profiles = GetTreasureProfiles();
        ModManager.Log($"[QOL] VendorLootRotation: Cached {profiles.Count} TreasureDeath profiles.", ModManager.LogLevel.Info);
    }

    static List<TreasureDeath> GetTreasureProfiles()
    {
        if (_cachedTreasureProfiles != null && DateTime.UtcNow - _lastProfileCache < TimeSpan.FromMinutes(5))
            return _cachedTreasureProfiles;

        _cachedTreasureProfiles = LoadTreasureDeathProfiles();
        _lastProfileCache = DateTime.UtcNow;
        return _cachedTreasureProfiles;
    }

    private static List<TreasureDeath> LoadTreasureDeathProfiles()
    {
        try
        {
            var dict = DatabaseManager.World.GetAllTreasureDeath();
            return dict.Values.Where(r => r != null).ToList();
        }
        catch (ArgumentException ex) when (ex.Message.Contains("same key"))
        {
            ModManager.Log($"[QOL] VendorLootRotation: Duplicate keys in treasure_death table, falling back to direct query. {ex.Message}", ModManager.LogLevel.Warn);
            return LoadTreasureDeathProfilesDirect();
        }
        catch (Exception ex)
        {
            ModManager.Log($"[QOL] VendorLootRotation: Failed to load TreasureDeath profiles: {ex.Message}", ModManager.LogLevel.Error);
            return new List<TreasureDeath>();
        }
    }

    private static List<TreasureDeath> LoadTreasureDeathProfilesDirect()
    {
        try
        {
            using var context = new WorldDbContext();
            context.ChangeTracker.QueryTrackingBehavior = QueryTrackingBehavior.NoTracking;
            return context.TreasureDeath
                .GroupBy(r => r.TreasureType)
                .Select(g => g.First())
                .ToList();
        }
        catch (Exception ex)
        {
            ModManager.Log($"[QOL] VendorLootRotation: Direct query failed: {ex.Message}", ModManager.LogLevel.Error);
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

    static double GetLuxuryTaxMultiplier()
    {
        if (_settings is null) return 1.10;
        return 1.0 + (_settings.VendorLootLuxuryTaxPercent / 100.0);
    }

    // =====================================================================
    // Vendor Approach Hook (replaces LoadInventory postfix)
    // =====================================================================

    public static void OnVendorApproachPrefix(Player player, VendorType action, uint altCurrencySpent, Vendor __instance)
    {
        if (_settings is null || !_settings.EnableVendorLootRotation)
            return;

        if (_protectedVendorWcids.Contains(__instance.WeenieClassId))
        {
            AwakenVendorItems(__instance);
            return;
        }

        if (!ShouldRotateVendor(__instance))
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

        // Ensure treasure profiles are cached
        var profiles = GetTreasureProfiles();
        if (profiles.Count == 0)
        {
            ModManager.Log($"[VendorLoot] No treasure profiles available for vendor {__instance.Name} ({vendorGuid}), skipping.", ModManager.LogLevel.Warn);
            return;
        }

        RotateVendorInventory(__instance);
        _vendorLastRotation[vendorGuid] = now;
    }

    // Batch-generate items: generate a large pool, filter by profile, take top N.
    // This avoids per-slot retry overhead when profile matching is restrictive.
    static List<WorldObject> GenerateBatch(Vendor vendor, List<TreasureDeath> allProfiles, int vendorTier, TreasureItemCategory category, int targetCount, VendorProfile vendorProfile)
    {
        var batch = new List<WorldObject>();
        int attempts = 0;
        int maxAttempts = targetCount * 5;

        while (batch.Count < targetCount * 2 && attempts < maxAttempts)
        {
            var item = GenerateItem(vendor, allProfiles, vendorTier, category);
            if (item != null)
            {
                ApplyWieldRequirementCap(item, vendorTier);
                if (vendorProfile == VendorProfile.General || ItemMatchesProfile(item, vendorProfile))
                    batch.Add(item);
                else
                    item.Destroy();
            }
            attempts++;
        }

        return batch.Take(targetCount).ToList();
    }

    static void RotateVendorInventory(Vendor vendor)
    {
        if (_settings is null) return;

        var vendorGuid = vendor.Guid.Full;
        var vendorTier = GetVendorTier(vendor);
        var vendorProfile = DetectVendorProfile(vendor);
        var profiles = GetTreasureProfiles();

        ModManager.Log($"[VendorLoot] Rotating vendor {vendor.Name} ({vendor.WeenieClassId}) at tier {vendorTier}, profile {vendorProfile}...", ModManager.LogLevel.Info);

        // -- Remove previously rotated items --
        var rotatedSet = new HashSet<ObjectGuid>();
        if (_vendorRotatedItems.TryGetValue(vendorGuid, out var oldRotated))
        {
            foreach (var guid in oldRotated)
            {
                vendor.DefaultItemsForSale.Remove(guid);
                vendor.UniqueItemsForSale.Remove(guid);
            }
        }
        _vendorRotatedItems[vendorGuid] = rotatedSet;

        // Strip all vanilla equipment so the vendor starts clean for profile-matched rotation
        var equipmentMask = ItemType.Armor | ItemType.MeleeWeapon | ItemType.MissileWeapon | ItemType.Caster | ItemType.Clothing | ItemType.Jewelry;
        var equipmentGuids = vendor.DefaultItemsForSale
            .Where(kvp => (kvp.Value.ItemType & equipmentMask) != 0)
            .Select(kvp => kvp.Key)
            .ToList();
        var uniqueEquipmentGuids = vendor.UniqueItemsForSale
            .Where(kvp => (kvp.Value.ItemType & equipmentMask) != 0)
            .Select(kvp => kvp.Key)
            .ToList();
        equipmentGuids.AddRange(uniqueEquipmentGuids);
        foreach (var guid in equipmentGuids.Distinct())
        {
            vendor.DefaultItemsForSale.Remove(guid);
            vendor.UniqueItemsForSale.Remove(guid);
        }

        _originalValues.Clear();

        int baseCount = _rng.Next(_settings.VendorLootItemsPerTierMin, _settings.VendorLootItemsPerTierMax + 1);
        int itemCount = 0, magicCount = 0, mundaneCount = 0, salvageCount = 0;

        // -- Generate base equipment (Item category), filtered by vendor profile --
        var baseItems = GenerateBatch(vendor, profiles, vendorTier, TreasureItemCategory.Item, baseCount, vendorProfile);
        foreach (var item in baseItems)
        {
            AddItemToVendor(vendor, item, rotatedSet);
            itemCount++;
        }

        // -- Generate magic items --
        int magicSlots = (int)(baseCount * _settings.VendorLootMagicItemPercent / 100.0);
        if (magicSlots > 0)
        {
            var magicItems = GenerateBatch(vendor, profiles, vendorTier, TreasureItemCategory.MagicItem, magicSlots, vendorProfile);
            foreach (var item in magicItems)
            {
                AddItemToVendor(vendor, item, rotatedSet);
                magicCount++;
            }
        }

        // -- Generate mundane items --
        int mundaneSlots = (int)(baseCount * _settings.VendorLootMundaneItemPercent / 100.0);
        if (mundaneSlots > 0)
        {
            var mundaneItems = GenerateBatch(vendor, profiles, vendorTier, TreasureItemCategory.MundaneItem, mundaneSlots, vendorProfile);
            foreach (var item in mundaneItems)
            {
                AddItemToVendor(vendor, item, rotatedSet);
                mundaneCount++;
            }
        }

        // -- Salvage bags --
        if (VendorHasMiscTab(vendor) || VendorSellsContainers(vendor))
        {
            int salvageToAdd = _rng.Next(5, 10);
            int salvageAttempts = 0;
            int salvageMaxAttempts = Math.Max(salvageToAdd * 5, 15);
            while (salvageCount < salvageToAdd && salvageAttempts < salvageMaxAttempts)
            {
                var salvage = GenerateSalvageBag();
                if (salvage != null) { AddItemToVendor(vendor, salvage, rotatedSet); salvageCount++; }
                salvageAttempts++;
            }
        }

        // -- Apply luxury tax pricing (LLL handles economy scaling via SellPrice patch) --
        var taxMult = GetLuxuryTaxMultiplier();
        foreach (var kvp in vendor.DefaultItemsForSale.Concat(vendor.UniqueItemsForSale))
        {
            if (TradeNoteWcids.Contains(kvp.Value.WeenieClassId))
                continue;

            if (_originalValues.TryGetValue(kvp.Key, out var originalValue))
            {
                var newValue = (int)(originalValue * taxMult);
                if (newValue < 1) newValue = 1;
                kvp.Value.Value = newValue;
            }
        }

        // -- Restore protected quest-critical items --
        if (ProtectedVendorItems.TryGetValue(vendor.WeenieClassId, out var protectedWcids))
        {
            foreach (uint wcid in protectedWcids)
            {
                var weenie = DatabaseManager.World.GetCachedWeenie(wcid);
                if (weenie == null) continue;
                var protectedItem = WorldObjectFactory.CreateNewWorldObject(weenie);
                if (protectedItem == null) continue;
                protectedItem.ContainerId = vendor.Guid.Full;
                protectedItem.CalculateObjDesc();
                vendor.DefaultItemsForSale[protectedItem.Guid] = protectedItem;
                ModManager.Log($"[VendorLoot] Restored protected item {protectedItem.Name} to {vendor.Name}", ModManager.LogLevel.Info);
            }
        }

        ModManager.Log($"[VendorLoot] Vendor {vendor.Name}: {itemCount} equip + {magicCount} magic + {mundaneCount} mundane + {salvageCount} salvage. Tier {vendorTier}, profile {vendorProfile}. Default={vendor.DefaultItemsForSale.Count}, Unique={vendor.UniqueItemsForSale.Count}", ModManager.LogLevel.Info);
    }

    // =====================================================================
    // Tier & Quality Generation
    // =====================================================================

    static int GetVendorTier(Vendor vendor)
    {
        if (_settings == null) return 2;

        // WCID map takes precedence
        if (_settings.VendorTierWcidMap.TryGetValue(vendor.WeenieClassId, out var wcidTier))
            return Math.Clamp(wcidTier, 1, 8);

        // Landblock map second
        try
        {
            var loc = vendor.Location;
            if (loc != null)
            {
                var landblock = loc.LandblockId.Raw;
                if (landblock > 0 && _settings.VendorTierLandblockMap.TryGetValue(landblock, out var lbTier))
                    return Math.Clamp(lbTier, 1, 8);
            }
        }
        catch { /* ignore landblock read errors */ }

        return Math.Clamp(_settings.DefaultVendorTier, 1, 8);
    }

    static int RollTier(int vendorTier)
    {
        return _rng.Next(vendorTier, Math.Min(vendorTier + 2, 9));
    }

    /// <summary>
    /// Roll 0-100 with exponential decay (low scores much more common).
    /// </summary>
    static int RollSubScore()
    {
        double roll = _rng.NextDouble();
        double biased = 1.0 - (roll * roll);
        return (int)(biased * 100.0);
    }

    static WorldObject? GenerateItem(Vendor vendor, List<TreasureDeath> allProfiles, int vendorTier, TreasureItemCategory category)
    {
        try
        {
            int itemTier = RollTier(vendorTier);
            var profile = FindProfileForTier(allProfiles, itemTier);
            if (profile == null)
            {
                ModManager.Log($"[VendorLoot] No TreasureDeath profile for tier {itemTier}", ModManager.LogLevel.Warn);
                return null;
            }

            WorldObject? item = LootGenerationFactory.CreateRandomLootObjects(profile, category);
            if (item == null)
                return null;

            int subScore = RollSubScore();
            ApplyQuality(item, itemTier, subScore);
            ApplyVendorUniqueTreatment(item, subScore);
            ClampItemValue(item, _settings?.VendorLootMinValue ?? 100, _settings?.VendorLootMaxValue ?? 10000);

            // Store pre-tax base price for repricing
            _originalValues[item.Guid] = item.Value ?? 0;

            return item;
        }
        catch (Exception ex)
        {
            ModManager.Log($"[VendorLoot] Error generating item: {ex.Message}", ModManager.LogLevel.Warn);
            return null;
        }
    }

    static WorldObject? GenerateItemForProfile(Vendor vendor, List<TreasureDeath> allProfiles, int vendorTier, VendorProfile vendorProfile, TreasureItemCategory category)
    {
        for (int retry = 0; retry < 25; retry++)
        {
            var item = GenerateItem(vendor, allProfiles, vendorTier, category);
            if (item == null) continue;

            if (!ItemMatchesProfile(item, vendorProfile))
            {
                item.Destroy();
                continue;
            }

            ApplyWieldRequirementCap(item, vendorTier);
            return item;
        }
        return null;
    }

    static void ApplyWieldRequirementCap(WorldObject item, int vendorTier)
    {
        int cap = vendorTier * 50;

        var wieldProps = new[] { PropertyInt.WieldDifficulty, PropertyInt.WieldDifficulty2, PropertyInt.WieldDifficulty3, PropertyInt.WieldDifficulty4 };
        foreach (var diffProp in wieldProps)
        {
            var diff = item.GetProperty(diffProp);
            if (diff.HasValue && diff.Value > cap)
                item.SetProperty(diffProp, cap);
        }
    }

    static bool IsWeapon(WorldObject item) =>
        (item.ItemType & (ItemType.MeleeWeapon | ItemType.MissileWeapon | ItemType.Caster)) != 0;

    static bool IsArmorOrClothing(WorldObject item) =>
        (item.ItemType & (ItemType.Armor | ItemType.Clothing)) != 0;

    static bool IsJewelry(WorldObject item) =>
        (item.ItemType & ItemType.Jewelry) != 0;

    static void ApplyQuality(WorldObject item, int tier, int subScore)
    {
        int workmanship = Math.Min(10, Math.Max(1, (subScore / 10) + _rng.Next(0, 2)));
        item.ItemWorkmanship = workmanship;

        ScaleStatsTowardMax(item, subScore);
    }

    static void ScaleStatsTowardMax(WorldObject item, int subScore)
    {
        double boost = subScore / 333.0; // 0% to 30%

        // Weapon damage
        var damage = item.GetProperty(PropertyInt.Damage);
        if (damage.HasValue && damage.Value > 0)
            item.SetProperty(PropertyInt.Damage, (int)(damage.Value * (1.0 + boost)));

        // Armor level
        var armor = item.GetProperty(PropertyInt.ArmorLevel);
        if (armor.HasValue && armor.Value > 0)
            item.SetProperty(PropertyInt.ArmorLevel, (int)(armor.Value * (1.0 + boost)));

        // Damage modifier
        var dmgMod = item.GetProperty(PropertyFloat.DamageMod);
        if (dmgMod.HasValue && dmgMod.Value > 0)
            item.SetProperty(PropertyFloat.DamageMod, dmgMod.Value * (1.0 + boost));

        // Weapon offense / defense
        var wOff = item.GetProperty(PropertyFloat.WeaponOffense);
        if (wOff.HasValue && wOff.Value > 0)
            item.SetProperty(PropertyFloat.WeaponOffense, wOff.Value * (1.0 + boost * 0.5));

        var wDef = item.GetProperty(PropertyFloat.WeaponDefense);
        if (wDef.HasValue && wDef.Value > 0)
            item.SetProperty(PropertyFloat.WeaponDefense, wDef.Value * (1.0 + boost * 0.5));
    }

    static void ApplyVendorUniqueTreatment(WorldObject item, int subScore)
    {
        if (item == null || _settings == null) return;

        double valueMult = 1.0;

        // Check if EmpyreanAlteration already applied an imbue
        bool hasImbue = item.ImbuedEffect != 0;
        bool hasHighWorkmanship = (item.ItemWorkmanship ?? 0) >= 8;

        if (hasImbue)
        {
            valueMult *= _settings.VendorLootImbueValueMultiplier;
        }

        if (hasHighWorkmanship)
        {
            valueMult *= _settings.VendorLootHighWorkmanshipValueMultiplier;
        }

        // Roll for vendor-specific unique treatment (extra imbue + value boost)
        if (!hasImbue && subScore >= 85)
        {
            double roll = _rng.NextDouble();
            if (roll < _settings.VendorLootUniqueItemChance)
            {
                // Apply a random imbue based on item type
                ApplyRandomVendorImbue(item);
                hasImbue = true;
                valueMult *= _settings.VendorLootImbueValueMultiplier;

                // Give it a flashy visual
                item.UiEffects = (UiEffects)((int)(item.UiEffects ?? 0) | 256); // Acid = green glow
            }
        }

        // Apply value multiplier if any
        if (valueMult > 1.0 && item.Value.HasValue)
        {
            item.Value = (int)(item.Value.Value * valueMult);
        }
    }

    static void ApplyRandomVendorImbue(WorldObject item)
    {
        try
        {
            if (IsWeapon(item))
            {
                var rendPool = new[]
                {
                    ImbuedEffectType.AcidRending,
                    ImbuedEffectType.FireRending,
                    ImbuedEffectType.ColdRending,
                    ImbuedEffectType.ElectricRending,
                    ImbuedEffectType.PierceRending,
                    ImbuedEffectType.SlashRending,
                    ImbuedEffectType.BludgeonRending,
                };
                var chosen = rendPool[_rng.Next(rendPool.Length)];
                item.ImbuedEffect |= chosen;

                // Match damage type to rend
                var damageType = chosen switch
                {
                    ImbuedEffectType.AcidRending => DamageType.Acid,
                    ImbuedEffectType.FireRending => DamageType.Fire,
                    ImbuedEffectType.ColdRending => DamageType.Cold,
                    ImbuedEffectType.ElectricRending => DamageType.Electric,
                    ImbuedEffectType.PierceRending => DamageType.Pierce,
                    ImbuedEffectType.SlashRending => DamageType.Slash,
                    ImbuedEffectType.BludgeonRending => DamageType.Bludgeon,
                    _ => (DamageType?)null
                };
                if (damageType.HasValue)
                    item.SetProperty(PropertyInt.DamageType, (int)damageType.Value);
            }
            else if (IsArmorOrClothing(item))
            {
                var defensePool = new[]
                {
                    ImbuedEffectType.MeleeDefense,
                    ImbuedEffectType.MissileDefense,
                    ImbuedEffectType.MagicDefense,
                };
                var chosen = defensePool[_rng.Next(defensePool.Length)];
                item.ImbuedEffect |= chosen;
            }
            else if (IsJewelry(item))
            {
                // Jewelry: random secondary weapon imbue or defense
                var pool = new[]
                {
                    ImbuedEffectType.CriticalStrike,
                    ImbuedEffectType.CripplingBlow,
                    ImbuedEffectType.ArmorRending,
                    ImbuedEffectType.MeleeDefense,
                    ImbuedEffectType.MissileDefense,
                    ImbuedEffectType.MagicDefense,
                };
                var chosen = pool[_rng.Next(pool.Length)];
                item.ImbuedEffect |= chosen;
            }
        }
        catch (Exception ex)
        {
            ModManager.Log($"[VendorLoot] ApplyRandomVendorImbue failed: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    static void AddItemToVendor(Vendor vendor, WorldObject item, HashSet<ObjectGuid> rotatedSet)
    {
        item.ContainerId = vendor.Guid.Full;
        item.CalculateObjDesc();
        vendor.UniqueItemsForSale.Add(item.Guid, item);
        rotatedSet.Add(item.Guid);
    }

    static void ClampItemValue(WorldObject item, int minValue, int maxValue)
    {
        var value = item.Value ?? 0;
        if (value < minValue || value > maxValue)
            item.Value = _rng.Next(minValue, maxValue + 1);
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

    static bool VendorSellsContainers(Vendor vendor)
    {
        var merchTypes = vendor.MerchandiseItemTypes;
        if (!merchTypes.HasValue)
            return false;

        return (merchTypes.Value & (int)ItemType.Container) != 0;
    }

    static bool IsEquipmentVendor(Vendor vendor)
    {
        var merchTypes = vendor.MerchandiseItemTypes;
        if (!merchTypes.HasValue)
            return false;

        var equipmentMask = (int)(ItemType.Armor | ItemType.MeleeWeapon | ItemType.MissileWeapon | ItemType.Clothing | ItemType.Jewelry | ItemType.Caster);
        return (merchTypes.Value & equipmentMask) != 0;
    }

    public static bool ShouldRotateVendor(Vendor vendor)
    {
        if (_settings is null || !_settings.EnableVendorLootRotation)
            return false;

        // Never rotate Pathwarden starter vendors or other protected vendors
        if (_protectedVendorWcids.Contains(vendor.WeenieClassId))
            return false;

        // Never rotate vendors that use alternate currency (MMDs, tokens, etc.)
        if (vendor.AlternateCurrency.HasValue)
            return false;

        if (!IsEquipmentVendor(vendor))
            return false;

        if (_settings.VendorLootWcids == null || _settings.VendorLootWcids.Count == 0)
            return true;

        bool isInList = _settings.VendorLootWcids.Contains(vendor.WeenieClassId);
        return _settings.VendorLootMode.Equals("Whitelist", StringComparison.OrdinalIgnoreCase)
            ? isInList
            : !isInList;
    }

    public static void ClearCooldowns()
    {
        _vendorLastRotation.Clear();
        ModManager.Log("[QOL] VendorLootRotation cooldowns cleared by command.", ModManager.LogLevel.Info);
    }

    public static List<TreasureDeath> GetRotationProfiles()
    {
        return _cachedTreasureProfiles?.ToList() ?? new List<TreasureDeath>();
    }

    public static void Shutdown()
    {
        _timerCts?.Cancel();
        _timerCts?.Dispose();
        _cachedTreasureProfiles = null;
        _vendorLastRotation.Clear();
        _vendorRotatedItems.Clear();
        _originalValues.Clear();
    }

    // -- Awakening for SQL-loaded Academy/Pathwarden gear on protected vendors ----
    static readonly HashSet<uint> _awakenableVendorWcids = new()
    {
        // Academy weapons
        12750, 12751, 12752, 12753, 12754, 12755, 12756, 12757, 12758, 12759, 12760,
        41514, 45531, 45532, 45535, 45536, 45539, 45540, 45543, 45544, 45547, 45548, 45551, 45552, 45555, 45556,
        // Pathwarden armor
        33597, 33598, 33599, 33600, 33601, 33602, 33603, 33604, 33605, 33606, 33607,
        40439, 40454, 40455, 40456,
        41513,
    };

    static void AwakenVendorItems(Vendor vendor)
    {
        int awakened = 0;
        foreach (var kvp in vendor.DefaultItemsForSale)
        {
            var item = kvp.Value;
            if (item == null || item.IsDestroyed) continue;
            if (!_awakenableVendorWcids.Contains(item.WeenieClassId)) continue;
            if (item.GetProperty((PropertyBool)40130) == true) continue; // Already awakened

            string originalName = item.Name ?? "Item";
            item.SetProperty((PropertyString)11033, originalName);   // OriginalName
            item.SetProperty((PropertyString)11034, "Casual");        // ProfileName
            item.SetProperty(PropertyInt64.ItemBaseXp, 5000);
            item.SetProperty(PropertyInt.ItemMaxLevel, 25);
            item.SetProperty(PropertyInt.ItemXpStyle, (int)ItemXpStyle.ScalesWithLevel);
            item.SetProperty(PropertyInt64.ItemTotalXp, 0);
            item.SetProperty((PropertyBool)40130, true);               // IsAwakened
            item.SetProperty((PropertyInt)40131, 1);                    // AwakenedTier = Lesser

            string newName = "Awakened " + originalName;
            item.SetProperty(PropertyString.Name, newName);
            item.SetProperty(PropertyInt.UiEffects, 20);              // BoostHealth|BoostStamina = red outline in AC client
            item.CalculateObjDesc();
            awakened++;
        }
        if (awakened > 0)
            ModManager.Log($"[VendorLoot] Awakened {awakened} Academy/Pathwarden items on {vendor.Name}", ModManager.LogLevel.Info);
    }

    // =====================================================================
    // Vendor Profile Categories
    // =====================================================================

    [Flags]
    enum VendorProfile
    {
        None = 0,
        Blacksmith = 1 << 0,   // Armor + MeleeWeapon
        Bowyer = 1 << 1,       // MissileWeapon
        Archmage = 1 << 2,     // Caster + scrolls
        Jeweler = 1 << 3,      // Jewelry
        Tailor = 1 << 4,       // Clothing
        General = 1 << 5,      // Everything else / mixed
    }

    static VendorProfile DetectVendorProfile(Vendor vendor)
    {
        var merch = vendor.MerchandiseItemTypes;
        if (merch == null) return VendorProfile.General;

        var types = merch.Value;
        bool sellsArmor = (types & (int)ItemType.Armor) != 0;
        bool sellsMelee = (types & (int)ItemType.MeleeWeapon) != 0;
        bool sellsMissile = (types & (int)ItemType.MissileWeapon) != 0;
        bool sellsCaster = (types & (int)ItemType.Caster) != 0;
        bool sellsJewelry = (types & (int)ItemType.Jewelry) != 0;
        bool sellsClothing = (types & (int)ItemType.Clothing) != 0;

        int categoryCount = (sellsArmor ? 1 : 0) + (sellsMelee ? 1 : 0) + (sellsMissile ? 1 : 0)
                          + (sellsCaster ? 1 : 0) + (sellsJewelry ? 1 : 0) + (sellsClothing ? 1 : 0);

        if (categoryCount >= 3)
            return VendorProfile.General;

        if (categoryCount <= 1)
        {
            if (sellsMelee || sellsArmor) return VendorProfile.Blacksmith;
            if (sellsMissile) return VendorProfile.Bowyer;
            if (sellsCaster) return VendorProfile.Archmage;
            if (sellsJewelry) return VendorProfile.Jeweler;
            if (sellsClothing) return VendorProfile.Tailor;
            return VendorProfile.General;
        }

        if (sellsMelee || sellsArmor) return VendorProfile.Blacksmith;
        if (sellsMissile) return VendorProfile.Bowyer;
        if (sellsCaster) return VendorProfile.Archmage;
        if (sellsJewelry) return VendorProfile.Jeweler;
        if (sellsClothing) return VendorProfile.Tailor;
        return VendorProfile.General;
    }

    static ItemType ProfileItemTypes(VendorProfile profile) => profile switch
    {
        VendorProfile.Blacksmith => ItemType.Armor | ItemType.MeleeWeapon,
        VendorProfile.Bowyer => ItemType.MissileWeapon,
        VendorProfile.Archmage => ItemType.Caster,
        VendorProfile.Jeweler => ItemType.Jewelry,
        VendorProfile.Tailor => ItemType.Clothing,
        _ => ItemType.Armor | ItemType.Clothing | ItemType.MeleeWeapon | ItemType.MissileWeapon | ItemType.Caster | ItemType.Jewelry,
    };

    static bool ItemMatchesProfile(WorldObject item, VendorProfile profile)
    {
        if (profile == VendorProfile.General) return true;
        var allowed = ProfileItemTypes(profile);
        return (item.ItemType & allowed) != 0;
    }

    static bool ItemMatchesProfileOrDefault(WorldObject item, VendorProfile profile)
    {
        if (ItemMatchesProfile(item, profile)) return true;
        // Fallback: if profile-specific match fails after retries, allow generic equipment anyway
        var genericMask = ItemType.Armor | ItemType.MeleeWeapon | ItemType.MissileWeapon | ItemType.Caster | ItemType.Jewelry | ItemType.Clothing;
        return (item.ItemType & genericMask) != 0;
    }

    // =====================================================================
    // Trade Notes & Protected Items
    // =====================================================================

    static readonly HashSet<uint> TradeNoteWcids = new()
    {
        2621, 2622, 2623, 2624, 2625, 2626, 2627, 2628,
        27378, 27379,
    };

    static readonly Dictionary<uint, uint[]> ProtectedVendorItems = new()
    {
        [30997] = new[] { 12711u }
    };

}
