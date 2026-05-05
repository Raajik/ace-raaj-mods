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

namespace BetterLootControl;

[HarmonyPatch]
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

    // WCIDs that must never be rotated and must keep their SQL create_list stock intact.
    // Pathwarden starter vendors and any other quest-critical vendors go here.
    static readonly HashSet<uint> _protectedVendorWcids = new() { 850300, 850301, 850302, 850303, 800039 };

    // Vendor type classification for strict type enforcement
    enum VendorTypeClassification
    {
        Unknown,
        Jeweler,      // Sells Jewelry and Gems
        Armorer,      // Sells Armor and Weapons
        Mage,         // Sells Casters, Jewelry, and spell components
        General       // Sells everything (default behavior)
    }

    // WCIDs known to be jewelers (sell jewelry/gems)
    static readonly HashSet<uint> _jewelerWcids = new() { 1042 }; // Tariqana bint Hin the Jeweler (Yaraq)

    // WCIDs known to be armorers (sell armor/weapons)
    static readonly HashSet<uint> _armorerWcids = new();

    // WCIDs known to be mages (sell casters, jewelry, spell components)
    static readonly HashSet<uint> _mageWcids = new();

    // Spellsiphon tool and Mana Lattice WCIDs
    const uint SpellsiphonToolWcid = 850200;
    const uint ManaLatticeWcid = 850201;

    public static void Initialize(Settings settings)
    {
        _settings = settings;
        if (!settings.EnableVendorLootRotation)
            return;

        StartBackgroundTimer();
        WarmProfileCache();
        var eff = EffectiveRotationIntervalMinutes(settings);
        ModManager.Log($"[BetterLoot] VendorLootRotation initialized: effective approach interval {eff} min (min of Rotation={settings.VendorLootRotationMinutes}, Cooldown={settings.VendorLootCooldownMinutes}).", ModManager.LogLevel.Info);
    }

    // RotationMinutes was documented but never applied; CooldownMinutes alone gated stock. Use the lesser so operators who set a short rotation interval actually see refreshes.
    static int EffectiveRotationIntervalMinutes(Settings s)
    {
        int rot = Math.Max(1, s.VendorLootRotationMinutes);
        int cool = Math.Max(1, s.VendorLootCooldownMinutes);
        return Math.Min(rot, cool);
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
                    ModManager.Log($"[BetterLoot] VendorLootRotation timer: {ex.Message}", ModManager.LogLevel.Warn);
                }
            }
        }, token);
    }

    private static void WarmProfileCache()
    {
        var profiles = GetTreasureProfiles();
        ModManager.Log($"[BetterLoot] VendorLootRotation: Cached {profiles.Count} TreasureDeath profiles.", ModManager.LogLevel.Info);
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
            ModManager.Log($"[BetterLoot] VendorLootRotation: Duplicate keys in treasure_death table, falling back to direct query. {ex.Message}", ModManager.LogLevel.Warn);
            return LoadTreasureDeathProfilesDirect();
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BetterLoot] VendorLootRotation: Failed to load TreasureDeath profiles: {ex.Message}", ModManager.LogLevel.Error);
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
            ModManager.Log($"[BetterLoot] VendorLootRotation: Direct query failed: {ex.Message}", ModManager.LogLevel.Error);
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

    static readonly ItemType[] RotationMerchBits =
    {
        ItemType.MeleeWeapon,
        ItemType.MissileWeapon,
        ItemType.Caster,
        ItemType.Armor,
        ItemType.Clothing,
        ItemType.Jewelry,
    };

    static ItemType GetVendorMerchMask(Vendor vendor)
    {
        var merch = vendor.MerchandiseItemTypes;
        if (!merch.HasValue)
            return ItemType.None;

        return (ItemType)merch.Value;
    }

    static ItemType GetMerchandiseEquipmentMask(Vendor vendor)
    {
        var full = GetVendorMerchMask(vendor);
        const ItemType equipmentMask = ItemType.Armor | ItemType.MeleeWeapon | ItemType.MissileWeapon | ItemType.Caster | ItemType.Clothing | ItemType.Jewelry;
        return full & equipmentMask;
    }

    static int CountRotationMerchBits(ItemType allowed)
    {
        int count = 0;
        foreach (ItemType bit in RotationMerchBits)
        {
            if ((allowed & bit) != 0)
                count++;
        }

        return Math.Max(1, count);
    }

    static ItemType? GetMundaneMerchFilterBit(ItemType fullMerchMask)
    {
        bool food = (fullMerchMask & ItemType.Food) != 0;
        bool misc = (fullMerchMask & ItemType.Misc) != 0;
        bool tink = (fullMerchMask & ItemType.TinkeringMaterial) != 0;
        int n = (food ? 1 : 0) + (misc ? 1 : 0) + (tink ? 1 : 0);
        if (n == 0)
            return null;
        if (n >= 2)
            return null;

        if (food)
            return ItemType.Food;
        if (misc)
            return ItemType.Misc;
        return ItemType.TinkeringMaterial;
    }

    static bool ItemMatchesMerchBit(WorldObject item, ItemType bit)
    {
        return (item.ItemType & bit) != 0;
    }

    static int RollVendorItemTier(int vendorTier)
    {
        vendorTier = Math.Clamp(vendorTier, 1, 8);
        double r = _rng.NextDouble();
        if (vendorTier <= 2)
        {
            if (r < 0.70)
                return vendorTier;
            if (r < 0.95)
                return Math.Min(vendorTier + 1, 8);
            return Math.Min(vendorTier + 2, 3);
        }

        if (vendorTier >= 4)
            return _rng.Next(vendorTier, Math.Min(vendorTier + 2, 9));
        if (r < 0.50)
            return 3;
        if (r < 0.85)
            return Math.Min(4, 8);
        return Math.Min(5, 8);
    }

    static double GetLuxuryTaxMultiplier()
    {
        if (_settings is null) return 1.10;
        return 1.0 + (_settings.VendorLootLuxuryTaxPercent / 100.0);
    }

    // =====================================================================
    // Vendor Type Classification
    // =====================================================================

    static VendorTypeClassification ClassifyVendor(Vendor vendor)
    {
        uint wcid = vendor.WeenieClassId;

        // Check explicit WCID mappings first
        if (_jewelerWcids.Contains(wcid))
            return VendorTypeClassification.Jeweler;
        if (_armorerWcids.Contains(wcid))
            return VendorTypeClassification.Armorer;
        if (_mageWcids.Contains(wcid))
            return VendorTypeClassification.Mage;

        // Fall back to MerchandiseItemTypes heuristic
        var merch = vendor.MerchandiseItemTypes;
        if (!merch.HasValue)
            return VendorTypeClassification.General;

        int merchMask = merch.Value;
        bool hasJewelry = (merchMask & (int)ItemType.Jewelry) != 0;
        bool hasGem = (merchMask & (int)ItemType.Gem) != 0;
        bool hasCaster = (merchMask & (int)ItemType.Caster) != 0;
        bool hasArmor = (merchMask & (int)ItemType.Armor) != 0;
        bool hasWeapon = (merchMask & ((int)ItemType.MeleeWeapon | (int)ItemType.MissileWeapon)) != 0;
        bool hasClothing = (merchMask & (int)ItemType.Clothing) != 0;

        // Armorer first: has armor OR weapons (even if also has other things like casters)
        // This catches blacksmiths who might also sell some casters but are primarily armorers
        if (hasArmor || hasWeapon)
            return VendorTypeClassification.Armorer;

        // Jeweler: primarily jewelry and/or gems (no armor/weapons)
        if (hasJewelry && !hasArmor && !hasWeapon && !hasCaster)
            return VendorTypeClassification.Jeweler;

        // Mage: casters and/or jewelry, often has spell components (no armor/weapons)
        if (hasCaster || (hasJewelry && hasGem))
            return VendorTypeClassification.Mage;

        return VendorTypeClassification.General;
    }

    static ItemType GetStrictMerchMask(Vendor vendor)
    {
        if (_settings?.VendorLootStrictTypeEnforcement != true)
            return GetMerchandiseEquipmentMask(vendor);

        var classification = ClassifyVendor(vendor);

        return classification switch
        {
            VendorTypeClassification.Jeweler => ItemType.Jewelry | ItemType.Gem,
            VendorTypeClassification.Armorer => ItemType.Armor | ItemType.MeleeWeapon | ItemType.MissileWeapon | ItemType.Clothing,
            VendorTypeClassification.Mage => ItemType.Caster | ItemType.Jewelry | ItemType.Gem,
            VendorTypeClassification.General => GetMerchandiseEquipmentMask(vendor),
            _ => GetMerchandiseEquipmentMask(vendor)
        };
    }

    // =====================================================================
    // Spell Pool for Adding Spells to Items
    // =====================================================================

    static readonly object _spellPoolLock = new();
    static bool _spellPoolBuilt = false;
    static List<int> _spellPool = new();

    static void EnsureSpellPoolBuilt()
    {
        if (_spellPoolBuilt)
            return;

        lock (_spellPoolLock)
        {
            if (_spellPoolBuilt)
                return;

            try
            {
                var spells = DatManager.PortalDat?.SpellTable?.Spells;
                if (spells == null || spells.Count == 0)
                {
                    _spellPoolBuilt = true;
                    return;
                }

                // Build pool from all spells but with very aggressive filtering
                // Only include standard player-accessible spells (no quest/PK/teleport/etc.)
                List<int> pool = new();

                foreach (var kvp in spells)
                {
                    uint spellId = kvp.Key;
                    var sb = kvp.Value;
                    if (sb == null)
                        continue;

                    string name = sb.Name ?? string.Empty;
                    if (string.IsNullOrWhiteSpace(name))
                        continue;

                    // Exclude all movement/travel spells
                    if (name.Contains("Portal", StringComparison.OrdinalIgnoreCase) ||
                        name.Contains("Recall", StringComparison.OrdinalIgnoreCase) ||
                        name.Contains("Summon", StringComparison.OrdinalIgnoreCase) ||
                        name.Contains("Teleport", StringComparison.OrdinalIgnoreCase) ||
                        name.Contains("Journey", StringComparison.OrdinalIgnoreCase) ||
                        name.Contains("Transport", StringComparison.OrdinalIgnoreCase) ||
                        name.Contains("Gate", StringComparison.OrdinalIgnoreCase) ||
                        name.Contains("Warp", StringComparison.OrdinalIgnoreCase))
                        continue;

                    // Exclude cantrips
                    if (name.StartsWith("Minor ", StringComparison.OrdinalIgnoreCase) ||
                        name.StartsWith("Moderate ", StringComparison.OrdinalIgnoreCase) ||
                        name.StartsWith("Major ", StringComparison.OrdinalIgnoreCase) ||
                        name.StartsWith("Epic ", StringComparison.OrdinalIgnoreCase) ||
                        name.StartsWith("Legendary ", StringComparison.OrdinalIgnoreCase))
                        continue;

                    // Exclude other inappropriate spells
                    if (name.Contains("Dispel", StringComparison.OrdinalIgnoreCase) ||
                        name.Contains("Undo", StringComparison.OrdinalIgnoreCase) ||
                        name.Contains("Remove", StringComparison.OrdinalIgnoreCase) ||
                        name.Contains("Duel", StringComparison.OrdinalIgnoreCase) ||
                        name.Contains("PK", StringComparison.OrdinalIgnoreCase) ||
                        name.Contains("Bounty", StringComparison.OrdinalIgnoreCase) ||
                        name.Contains("Wedding", StringComparison.OrdinalIgnoreCase) ||
                        name.Contains("Marry", StringComparison.OrdinalIgnoreCase) ||
                        name.Contains("Bind", StringComparison.OrdinalIgnoreCase) ||
                        name.Contains("Freeze", StringComparison.OrdinalIgnoreCase) ||
                        name.Contains("Stasis", StringComparison.OrdinalIgnoreCase) ||
                        name.Contains("Death", StringComparison.OrdinalIgnoreCase) ||
                        name.Contains("Kill", StringComparison.OrdinalIgnoreCase) ||
                        name.Contains("Destroy", StringComparison.OrdinalIgnoreCase) ||
                        name.Contains("Resurrection", StringComparison.OrdinalIgnoreCase) ||
                        name.Contains("Revival", StringComparison.OrdinalIgnoreCase) ||
                        name.Contains("Restore", StringComparison.OrdinalIgnoreCase) ||
                        name.Contains("Mana", StringComparison.OrdinalIgnoreCase) || // Exclude mana reduction
                        name.Contains("Vulnerability", StringComparison.OrdinalIgnoreCase))
                        continue;

                    // Only include basic spell categories that are safe for player loot
                    // These are: buffs, damage, healing, protection, armor, weapon buffs
                    bool isValidCategory = false;
                    string lowerName = name.ToLower();

                    // Buffs (attribute/ skill boosts)
                    if (lowerName.Contains("strength") || lowerName.Contains("endurance") ||
                        lowerName.Contains("coordination") || lowerName.Contains("quickness") ||
                        lowerName.Contains("focus") || lowerName.Contains("self") ||
                        lowerName.Contains("infusion") || lowerName.Contains("might") ||
                        lowerName.Contains("fury") || lowerName.Contains("spirit") ||
                        lowerName.Contains("protection") || lowerName.Contains("blessing") ||
                        lowerName.Contains("aura") || lowerName.Contains("ward") ||
                        lowerName.Contains("mantle") || lowerName.Contains("shield") ||
                        lowerName.Contains("bone") || lowerName.Contains("crushing") ||
                        lowerName.Contains("piercing") || lowerName.Contains("slashing") ||
                        lowerName.Contains("elemental") || lowerName.Contains("blades") ||
                        lowerName.Contains("maces") || lowerName.Contains("spears") ||
                        lowerName.Contains("axes") || lowerName.Contains("bows") ||
                        lowerName.Contains("crossbow"))
                    {
                        isValidCategory = true;
                    }

                    // Damage spells (fire, cold, lightning, acid, etc.)
                    if (lowerName.Contains("blast") || lowerName.Contains("bolt") ||
                        lowerName.Contains("ball") || lowerName.Contains("strike") ||
                        lowerName.Contains("shock") || lowerName.Contains("wave") ||
                        lowerName.Contains("fire") || lowerName.Contains("cold") ||
                        lowerName.Contains("lightning") || lowerName.Contains("acid") ||
                        lowerName.Contains("magic") || lowerName.Contains("arcane"))
                    {
                        isValidCategory = true;
                    }

                    // Healing
                    if (lowerName.Contains("heal") || lowerName.Contains("renew") ||
                        lowerName.Contains("mend") || lowerName.Contains("vigor") ||
                        lowerName.Contains("vitality") || lowerName.Contains("health") ||
                        lowerName.Contains("rejuvenate"))
                    {
                        isValidCategory = true;
                    }

                    // Other valid spells
                    if (lowerName.Contains("imperil") || lowerName.Contains("fester") ||
                        lowerName.Contains("bleed") || lowerName.Contains("drain") ||
                        lowerName.Contains("leech") || lowerName.Contains("harm") ||
                        lowerName.Contains("Frailty") || lowerName.Contains("Weakness"))
                    {
                        isValidCategory = true;
                    }

                    // If not in a valid category, exclude it
                    if (!isValidCategory)
                        continue;

                    pool.Add((int)spellId);
                }

                _spellPool = pool.Distinct().ToList();
                ModManager.Log($"[BetterLoot] VendorLoot spell pool built with {_spellPool.Count} spells.", ModManager.LogLevel.Info);
            }
            catch (Exception ex)
            {
                ModManager.Log($"[BetterLoot] VendorLoot spell pool build failed: {ex.Message}", ModManager.LogLevel.Error);
            }
            finally
            {
                _spellPoolBuilt = true;
            }
        }
    }

    static bool AddSpellToItem(WorldObject item, int spellId)
    {
        try
        {
            if (item.Biota is null)
                return false;

            item.Biota.PropertiesSpellBook ??= new Dictionary<int, float>();
            var book = item.Biota.PropertiesSpellBook;

            if (!book.ContainsKey(spellId))
            {
                book[spellId] = 1.0f;
                item.UiEffects |= UiEffects.Magical;
            }

            return true;
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BetterLoot] AddSpellToItem failed: {ex.Message}", ModManager.LogLevel.Warn);
            return false;
        }
    }

    static void AddRandomSpellsToItem(WorldObject item, int minSpells, int maxSpells)
    {
        EnsureSpellPoolBuilt();

        if (_spellPool.Count == 0)
            return;

        int count = _rng.Next(minSpells, maxSpells + 1);
        if (count <= 0)
            return;

        // Shuffle and pick
        var shuffled = _spellPool.OrderBy(_ => _rng.Next()).Take(count).ToList();

        foreach (int spellId in shuffled)
        {
            AddSpellToItem(item, spellId);
        }
    }

    // =====================================================================
    // Vendor Approach Hook
    // =====================================================================

    public static void OnVendorApproachPrefix(Player player, VendorType action, uint altCurrencySpent, Vendor __instance)
    {
        ModManager.Log($"[BetterLoot] VendorLoot: OnVendorApproachPrefix called for {__instance.Name} (WCID {__instance.WeenieClassId})", ModManager.LogLevel.Info);
        
        if (_settings is null || !_settings.EnableVendorLootRotation)
        {
            ModManager.Log($"[BetterLoot] VendorLoot: Settings null or rotation disabled (settings null: {_settings is null}, enabled: {_settings?.EnableVendorLootRotation})", ModManager.LogLevel.Info);
            return;
        }

        if (_protectedVendorWcids.Contains(__instance.WeenieClassId))
        {
            ModManager.Log($"[BetterLoot] VendorLoot: {__instance.Name} is protected, running awaken only", ModManager.LogLevel.Info);
            AwakenVendorItems(__instance);
            return;
        }

        if (!ShouldRotateVendor(__instance))
        {
            ModManager.Log($"[BetterLoot] VendorLoot: ShouldRotateVendor returned false for {__instance.Name}", ModManager.LogLevel.Info);
            return;
        }

        var vendorGuid = __instance.Guid.Full;
        var now = DateTime.UtcNow;
        var cooldown = TimeSpan.FromMinutes(EffectiveRotationIntervalMinutes(_settings));

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
            ModManager.Log($"[BetterLoot] VendorLoot: No treasure profiles available for vendor {__instance.Name} ({vendorGuid}), skipping.", ModManager.LogLevel.Warn);
            return;
        }

        if (!RotateVendorInventory(__instance))
            return;

        _vendorLastRotation[vendorGuid] = now;
    }

    // Batch-generate items; optional merch bit restricts to vendor tabs (MerchandiseItemTypes).
    static List<WorldObject> GenerateBatch(Vendor vendor, List<TreasureDeath> allProfiles, int vendorTier, TreasureItemCategory category, int targetCount, ItemType? merchFilterBit)
    {
        var batch = new List<WorldObject>();
        int attempts = 0;
        int maxAttempts = Math.Max(targetCount * 5, 25);

        while (batch.Count < targetCount && attempts < maxAttempts)
        {
            var item = GenerateItem(vendor, allProfiles, vendorTier, category, merchFilterBit);
            if (item != null)
            {
                ApplyWieldRequirementCap(item, vendorTier);
                if (!merchFilterBit.HasValue || ItemMatchesMerchBit(item, merchFilterBit.Value))
                    batch.Add(item);
                else
                    item.Destroy();
            }

            attempts++;
        }

        return batch;
    }

    static bool RotateVendorInventory(Vendor vendor)
    {
        if (_settings is null)
            return false;

        var vendorGuid = vendor.Guid.Full;
        var vendorTier = GetVendorTier(vendor);
        var profiles = GetTreasureProfiles();
        var equipmentAllowed = GetStrictMerchMask(vendor);
        var fullMerch = GetVendorMerchMask(vendor);

        if (equipmentAllowed == ItemType.None)
        {
            ModManager.Log($"[BetterLoot] VendorLoot: Vendor {vendor.Name} has no equipment MerchandiseItemTypes; skipping rotation.", ModManager.LogLevel.Warn);
            return false;
        }

        ModManager.Log($"[BetterLoot] VendorLoot: Rotating vendor {vendor.Name} ({vendor.WeenieClassId}) tier {vendorTier}, equipment merch mask {equipmentAllowed}...", ModManager.LogLevel.Info);

        var rotatedSet = new HashSet<ObjectGuid>();
        if (_vendorRotatedItems.TryGetValue(vendorGuid, out var oldRotated))
        {
            foreach (var guid in oldRotated)
            {
                ForgetOriginalValue(guid);
                vendor.DefaultItemsForSale.Remove(guid);
                vendor.UniqueItemsForSale.Remove(guid);
            }
        }

        _vendorRotatedItems[vendorGuid] = rotatedSet;

        // Strip only equipment types this vendor actually sells (MerchandiseItemTypes).
        var equipmentGuids = vendor.DefaultItemsForSale
            .Where(kvp => (kvp.Value.ItemType & equipmentAllowed) != 0)
            .Select(kvp => kvp.Key)
            .ToList();
        var uniqueEquipmentGuids = vendor.UniqueItemsForSale
            .Where(kvp => (kvp.Value.ItemType & equipmentAllowed) != 0)
            .Select(kvp => kvp.Key)
            .ToList();
        equipmentGuids.AddRange(uniqueEquipmentGuids);
        foreach (var guid in equipmentGuids.Distinct())
        {
            ForgetOriginalValue(guid);
            vendor.DefaultItemsForSale.Remove(guid);
            vendor.UniqueItemsForSale.Remove(guid);
        }

        int perCatMin = Math.Max(1, _settings.VendorLootItemsPerCategoryMin);
        int perCatMax = Math.Max(perCatMin, _settings.VendorLootItemsPerCategoryMax);
        int itemCount = 0, magicCount = 0, mundaneCount = 0, salvageCount = 0;

        foreach (ItemType bit in RotationMerchBits)
        {
            if ((equipmentAllowed & bit) == 0)
                continue;

            int target = _rng.Next(perCatMin, perCatMax + 1);
            var batch = GenerateBatch(vendor, profiles, vendorTier, TreasureItemCategory.Item, target, bit);
            foreach (var wo in batch)
            {
                AddItemToVendor(vendor, wo, rotatedSet);
                itemCount++;
            }
        }

        var mundaneBit = GetMundaneMerchFilterBit(fullMerch);
        if (mundaneBit.HasValue)
        {
            int refSize = _rng.Next(perCatMin, perCatMax + 1);
            int mundaneSlots = refSize * CountRotationMerchBits(equipmentAllowed) / 2;
            mundaneSlots = Math.Clamp(mundaneSlots, 0, 120);
            if (mundaneSlots > 0)
            {
                var mundaneItems = GenerateBatch(vendor, profiles, vendorTier, TreasureItemCategory.MundaneItem, mundaneSlots, mundaneBit.Value);
                foreach (var wo in mundaneItems)
                {
                    AddItemToVendor(vendor, wo, rotatedSet);
                    mundaneCount++;
                }
            }
        }

        if (_settings.VendorLootSalvageOnRotation && (VendorHasMiscTab(vendor) || VendorSellsContainers(vendor)))
        {
            int salvageToAdd = _rng.Next(5, 10);
            int salvageAttempts = 0;
            int salvageMaxAttempts = Math.Max(salvageToAdd * 5, 15);
            while (salvageCount < salvageToAdd && salvageAttempts < salvageMaxAttempts)
            {
                var salvage = GenerateSalvageBag();
                if (salvage != null)
                {
                    AddItemToVendor(vendor, salvage, rotatedSet);
                    salvageCount++;
                }

                salvageAttempts++;
            }
        }

        // Add Spellsiphon and Mana Lattice to Jeweler vendors only
        var vendorClass = ClassifyVendor(vendor);
        if (vendorClass == VendorTypeClassification.Jeweler && _settings?.VendorLootSpellsiphonSpawnChance > 0)
        {
            // 1. Plain Spellsiphon (blank) - infinite supply, goes to DefaultItemsForSale
            AddPlainSpellsiphonToVendor(vendor);

            // 2. Plain Mana Lattice (blank) - infinite supply, goes to DefaultItemsForSale
            AddPlainManaLatticeToVendor(vendor);

            // 3. Magical Spellsiphons (with spells) - limited supply (8-20), goes to UniqueItemsForSale
            // These get spells from the loot generation system (same as monster loot)
            int magicalSpellsiphonCount = _rng.Next(8, 21); // 8 to 20 inclusive
            for (int i = 0; i < magicalSpellsiphonCount; i++)
            {
                var magicalSpellsiphon = GenerateMagicalSpellsiphon(profiles, vendorTier);
                if (magicalSpellsiphon != null)
                {
                    AddItemToVendorAsUnique(vendor, magicalSpellsiphon, rotatedSet);
                }
            }

            // 4. Magical Mana Lattices (with spells) - limited supply (8-20), goes to UniqueItemsForSale
            int magicalLatticeCount = _rng.Next(8, 21); // 8 to 20 inclusive
            for (int i = 0; i < magicalLatticeCount; i++)
            {
                var magicalLattice = GenerateMagicalManaLattice(profiles, vendorTier);
                if (magicalLattice != null)
                {
                    AddItemToVendorAsUnique(vendor, magicalLattice, rotatedSet);
                }
            }

            ModManager.Log($"[BetterLoot] VendorLoot: Added to {vendor.Name}: 1 plain Spellsiphon, 1 plain Mana Lattice, {magicalSpellsiphonCount} magical Spellsiphons, {magicalLatticeCount} magical Mana Lattices", ModManager.LogLevel.Info);
        }

        var taxMult = GetLuxuryTaxMultiplier();
        foreach (var kvp in vendor.DefaultItemsForSale.Concat(vendor.UniqueItemsForSale))
        {
            if (TradeNoteWcids.Contains(kvp.Value.WeenieClassId))
                continue;

            if (_originalValues.TryGetValue(kvp.Key, out var originalValue))
            {
                var newValue = (int)(originalValue * taxMult);
                if (newValue < 1)
                    newValue = 1;
                kvp.Value.Value = newValue;
            }
        }

        ModManager.Log($"[BetterLoot] VendorLoot: Vendor {vendor.Name}: {itemCount} equipment + {mundaneCount} mundane + {salvageCount} salvage. Tier {vendorTier}, merch {equipmentAllowed}. Default={vendor.DefaultItemsForSale.Count}, Unique={vendor.UniqueItemsForSale.Count}", ModManager.LogLevel.Info);
        return true;
    }

    static void ForgetOriginalValue(ObjectGuid guid) => _originalValues.TryRemove(guid, out _);

    // =====================================================================
    // Tier & Quality Generation
    // =====================================================================

    static int GetVendorTier(Vendor vendor)
    {
        if (_settings == null) return 2;

        // WCID map takes precedence
        if (_settings.VendorTierWcidMap != null && _settings.VendorTierWcidMap.TryGetValue((int)vendor.WeenieClassId, out var wcidTier))
            return Math.Clamp(wcidTier, 1, 8);

        // Landblock map second
        try
        {
            var loc = vendor.Location;
            if (loc != null)
            {
                var landblock = loc.LandblockId.Raw;
                if (landblock > 0 && _settings.VendorTierLandblockMap != null && _settings.VendorTierLandblockMap.TryGetValue((int)landblock, out var lbTier))
                    return Math.Clamp(lbTier, 1, 8);
            }
        }
        catch { /* ignore landblock read errors */ }

        return Math.Clamp(_settings.DefaultVendorTier, 1, 8);
    }

    // Roll 0-100 with exponential decay (low scores much more common).
    static int RollSubScore()
    {
        double roll = _rng.NextDouble();
        double biased = 1.0 - (roll * roll);
        return (int)(biased * 100.0);
    }

    static WorldObject? GenerateItem(Vendor vendor, List<TreasureDeath> allProfiles, int vendorTier, TreasureItemCategory category, ItemType? merchFilterBit)
    {
        try
        {
            int itemTier = RollVendorItemTier(vendorTier);
            var profile = FindProfileForTier(allProfiles, itemTier);
            if (profile == null)
            {
                ModManager.Log($"[BetterLoot] VendorLoot: No TreasureDeath profile for tier {itemTier}", ModManager.LogLevel.Warn);
                return null;
            }

            WorldObject? item = LootGenerationFactory.CreateRandomLootObjects(profile, category);
            if (item == null)
                return null;

            if (merchFilterBit.HasValue && !ItemMatchesMerchBit(item, merchFilterBit.Value))
            {
                item.Destroy();
                return null;
            }

            int subScore = RollSubScore();
            ApplyQuality(item, itemTier, subScore);
            ApplyVendorUniqueTreatment(item, subScore);
            ClampItemValue(item, _settings?.VendorLootMinValue ?? 100, _settings?.VendorLootMaxValue ?? 10000);

            _originalValues[item.Guid] = item.Value ?? 0;

            return item;
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BetterLoot] VendorLoot: Error generating item: {ex.Message}", ModManager.LogLevel.Warn);
            return null;
        }
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
        if (_settings?.VendorLootLowStatMode == true)
        {
            item.ItemWorkmanship = _rng.Next(1, 4);
            return;
        }

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
        if (item == null || _settings == null)
            return;

        if (_settings.VendorLootLowStatMode)
            return;

        double valueMult = 1.0;

        // Check if item already has an imbue (from loot generation)
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

        // Note: Imbue application is now handled in ApplyEnhancedItemTreatment (in AddItemToVendor)
        // This method just handles value multiplier for existing imbues

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
            ModManager.Log($"[BetterLoot] VendorLoot: ApplyRandomVendorImbue failed: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    // =====================================================================
    // Add Item to Vendor with Spell Loading and Enhanced Treatment
    // =====================================================================

    static void AddItemToVendor(Vendor vendor, WorldObject item, HashSet<ObjectGuid> rotatedSet)
    {
        // Note: Spells are already applied by LootGenerationFactory - no custom spell adding needed
        // The loot system handles appropriate spell loading based on treasure profiles

        // Apply enhanced item treatment (imbue + awakening)
        ApplyEnhancedItemTreatment(item, GetVendorTier(vendor));

        item.ContainerId = vendor.Guid.Full;
        item.CalculateObjDesc();
        vendor.UniqueItemsForSale.Add(item.Guid, item);
        rotatedSet.Add(item.Guid);
    }

    static void ApplyEnhancedItemTreatment(WorldObject item, int vendorTier)
    {
        if (item == null || _settings == null)
            return;

        double valueMult = 1.0;
        bool hasImbue = item.ImbuedEffect != 0;
        bool hasAwakened = item.GetProperty((PropertyBool)40130) == true;
        int workmanship = item.ItemWorkmanship ?? 0;
        bool hasHighWorkmanship = workmanship >= 8;

        // Roll for imbue (significantly higher chance than before)
        if (!hasImbue && _rng.NextDouble() < _settings.VendorLootImbueChance)
        {
            ApplyRandomVendorImbue(item);
            hasImbue = true;
            valueMult *= _settings.VendorLootImbueValueMultiplier;

            // Give it a flashy visual - use SetProperty for proper persistence
            int currentEffects = (int)(item.UiEffects ?? 0);
            item.SetProperty(PropertyInt.UiEffects, currentEffects | 256); // Acid = green glow for imbued items
        }

        // Roll for awakening on high-tier items (tier 6+)
        if (vendorTier >= 6 && !hasAwakened && _rng.NextDouble() < _settings.VendorLootAwakenChance)
        {
            // Apply awakening
            string originalName = item.Name ?? "Item";
            item.SetProperty((PropertyString)11033, originalName);   // OriginalName
            item.SetProperty((PropertyString)11034, "Premium");     // ProfileName
            item.SetProperty(PropertyInt64.ItemBaseXp, 10000);
            item.SetProperty(PropertyInt.ItemMaxLevel, Math.Max(item.ItemMaxLevel ?? 1, vendorTier * 10));
            item.SetProperty(PropertyInt.ItemXpStyle, (int)ItemXpStyle.ScalesWithLevel);
            item.SetProperty(PropertyInt64.ItemTotalXp, 0);
            item.SetProperty((PropertyBool)40130, true);               // IsAwakened
            item.SetProperty((PropertyInt)40131, vendorTier >= 7 ? 2 : 1); // AwakenedTier: 1=Lesser, 2=Greater

            string newName = "Awakened " + originalName;
            item.SetProperty(PropertyString.Name, newName);
            item.SetProperty(PropertyInt.UiEffects, (int)(item.UiEffects ?? 0) | 20); // BoostHealth|BoostStamina = red outline
            item.CalculateObjDesc();

            hasAwakened = true;
            valueMult *= _settings.VendorLootAwakenValueMultiplier;
        }

        // High workmanship bonus
        if (hasHighWorkmanship)
        {
            valueMult *= _settings.VendorLootHighWorkmanshipValueMultiplier;
        }

        // Apply final value multiplier
        if (valueMult > 1.0 && item.Value.HasValue)
        {
            item.Value = (int)(item.Value.Value * valueMult);
        }
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
                ModManager.Log("[BetterLoot] VendorLoot: No valid salvage WCIDs found in MaterialSalvage map.", ModManager.LogLevel.Warn);
                return null;
            }

            uint wcid = validSalvage[_rng.Next(validSalvage.Count)];
            var bag = WorldObjectFactory.CreateNewWorldObject(wcid);
            if (bag == null)
            {
                ModManager.Log($"[BetterLoot] VendorLoot: Failed to create salvage bag WCID {wcid}", ModManager.LogLevel.Warn);
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
            ModManager.Log($"[BetterLoot] VendorLoot: Error generating salvage bag: {ex.Message}", ModManager.LogLevel.Warn);
            return null;
        }
    }

    static WorldObject? GenerateSpellsiphon()
    {
        try
        {
            // Create the Spellsiphon tool
            var spellsiphon = WorldObjectFactory.CreateNewWorldObject(SpellsiphonToolWcid);
            if (spellsiphon == null)
            {
                ModManager.Log($"[BetterLoot] VendorLoot: Failed to create Spellsiphon WCID {SpellsiphonToolWcid}", ModManager.LogLevel.Warn);
                return null;
            }

            // Set a premium price
            spellsiphon.Value = 15000;

            return spellsiphon;
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BetterLoot] VendorLoot: Error generating Spellsiphon: {ex.Message}", ModManager.LogLevel.Warn);
            return null;
        }
    }

    static WorldObject? GenerateManaLattice()
    {
        try
        {
            // Create the Mana Lattice (gem for reusable buffs)
            var manaLattice = WorldObjectFactory.CreateNewWorldObject(ManaLatticeWcid);
            if (manaLattice == null)
            {
                ModManager.Log($"[BetterLoot] VendorLoot: Failed to create Mana Lattice WCID {ManaLatticeWcid}", ModManager.LogLevel.Warn);
                return null;
            }

            // Plain version should NOT have magic glow (no spells)
            manaLattice.UiEffects = (UiEffects?)((int)(manaLattice.UiEffects ?? 0) & ~(int)UiEffects.Magical);

            // Set a premium price
            manaLattice.Value = 20000;

            return manaLattice;
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BetterLoot] VendorLoot: Error generating Mana Lattice: {ex.Message}", ModManager.LogLevel.Warn);
            return null;
        }
    }

    // =====================================================================
    // Plain versions (infinite supply) - added to DefaultItemsForSale
    // =====================================================================

    static void AddPlainSpellsiphonToVendor(Vendor vendor)
    {
        // Check if we already have a plain Spellsiphon
        foreach (var kvp in vendor.DefaultItemsForSale)
        {
            if (kvp.Value.WeenieClassId == SpellsiphonToolWcid && kvp.Value.Biota?.PropertiesSpellBook == null)
                return; // Already have plain Spellsiphon
        }

        var plainSpellsiphon = GenerateSpellsiphon();
        if (plainSpellsiphon != null)
        {
            plainSpellsiphon.ContainerId = vendor.Guid.Full;
            plainSpellsiphon.CalculateObjDesc();
            vendor.DefaultItemsForSale.Add(plainSpellsiphon.Guid, plainSpellsiphon);
        }
    }

    static void AddPlainManaLatticeToVendor(Vendor vendor)
    {
        // Check if we already have a plain Mana Lattice
        foreach (var kvp in vendor.DefaultItemsForSale)
        {
            if (kvp.Value.WeenieClassId == ManaLatticeWcid && kvp.Value.Biota?.PropertiesSpellBook == null)
                return; // Already have plain Mana Lattice
        }

        var plainLattice = GenerateManaLattice();
        if (plainLattice != null)
        {
            plainLattice.ContainerId = vendor.Guid.Full;
            plainLattice.CalculateObjDesc();
            vendor.DefaultItemsForSale.Add(plainLattice.Guid, plainLattice);
        }
    }

    // =====================================================================
    // Magical versions (limited supply, 8-20) - generated with spells via loot system
    // =====================================================================

    static WorldObject? GenerateMagicalSpellsiphon(List<TreasureDeath> profiles, int vendorTier)
    {
        try
        {
            // Generate a gem-type item with spells using the loot system
            var profile = FindProfileForTier(profiles, Math.Min(vendorTier + 2, 8));
            if (profile == null)
                return null;

            // Use MagicItem category to get items with spells
            var item = LootGenerationFactory.CreateRandomLootObjects(profile, TreasureItemCategory.MagicItem);
            if (item == null)
                return null;

            var spellsiphon = WorldObjectFactory.CreateNewWorldObject(SpellsiphonToolWcid);
            if (spellsiphon == null)
                return null;

            // Copy spells from the generated item
            if (item.Biota?.PropertiesSpellBook != null && item.Biota.PropertiesSpellBook.Count > 0)
            {
                spellsiphon.Biota.PropertiesSpellBook = new Dictionary<int, float>(item.Biota.PropertiesSpellBook);
                spellsiphon.UiEffects |= UiEffects.Magical; // Blue glow for items with spells
            }
            else
            {
                // No spells were generated, skip this one
                return null;
            }

            // Set premium price (higher for magical version)
            spellsiphon.Value = 25000;

            return spellsiphon;
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BetterLoot] VendorLoot: Error generating magical Spellsiphon: {ex.Message}", ModManager.LogLevel.Warn);
            return null;
        }
    }

    static WorldObject? GenerateMagicalManaLattice(List<TreasureDeath> profiles, int vendorTier)
    {
        try
        {
            // Generate a gem-type item with spells using the loot system
            var profile = FindProfileForTier(profiles, Math.Min(vendorTier + 2, 8));
            if (profile == null)
                return null;

            // Use MagicItem category to get items with spells
            var item = LootGenerationFactory.CreateRandomLootObjects(profile, TreasureItemCategory.MagicItem);
            if (item == null)
                return null;

            var manaLattice = WorldObjectFactory.CreateNewWorldObject(ManaLatticeWcid);
            if (manaLattice == null)
                return null;

            // Copy spells from the generated item
            if (item.Biota?.PropertiesSpellBook != null && item.Biota.PropertiesSpellBook.Count > 0)
            {
                manaLattice.Biota.PropertiesSpellBook = new Dictionary<int, float>(item.Biota.PropertiesSpellBook);
                manaLattice.UiEffects |= UiEffects.Magical; // Blue glow for items with spells
            }
            else
            {
                // No spells were generated, skip this one
                return null;
            }

            // Set premium price (higher for magical version)
            manaLattice.Value = 35000;

            return manaLattice;
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BetterLoot] VendorLoot: Error generating magical Mana Lattice: {ex.Message}", ModManager.LogLevel.Warn);
            return null;
        }
    }

    static void AddItemToVendorAsUnique(Vendor vendor, WorldObject item, HashSet<ObjectGuid> rotatedSet)
    {
        // Add to UniqueItemsForSale (limited supply, doesn't regenerate until sold)
        item.ContainerId = vendor.Guid.Full;
        item.SoldTimestamp = Time.GetUnixTime(); // Required for UniqueItemsForSale to prevent ACE warnings
        item.CalculateObjDesc();
        vendor.UniqueItemsForSale.Add(item.Guid, item);
        // Don't add to rotatedSet for magical versions - they should persist
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

        bool isInList = _settings.VendorLootWcids.Contains((int)vendor.WeenieClassId);
        return _settings.VendorLootMode.Equals("Whitelist", StringComparison.OrdinalIgnoreCase)
            ? isInList
            : !isInList;
    }

    // =====================================================================
    // Awakening for SQL-loaded Academy/Pathwarden gear on protected vendors
    // =====================================================================

    static readonly HashSet<uint> _awakenableVendorWcids = new()
    {
        12750, 12751, 12752, 12753, 12754, 12755, 12756, 12757, 12758, 12759, 12760,
        41514, 45531, 45532, 45535, 45536, 45539, 45540, 45543, 45544, 45547, 45548, 45551, 45552, 45555, 45556,
        33597, 33598, 33599, 33600, 33601, 33602, 33603, 33604, 33605, 33606, 33607,
        40439, 40440, 40441, 40442, 40443, 40444, 40445, 40446, 40447, 40448, 40449, 40450, 40451, 40452, 40453, 40454,
        40455, 40456,
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
            item.SetProperty(PropertyInt.UiEffects, 20);              // BoostHealth|BoostStamina = red outline
            item.CalculateObjDesc();
            awakened++;
        }
        if (awakened > 0)
            ModManager.Log($"[BetterLoot] VendorLoot: Awakened {awakened} Academy/Pathwarden items on {vendor.Name}", ModManager.LogLevel.Info);
    }

    // =====================================================================
    // Trade Notes
    // =====================================================================

    static readonly HashSet<uint> TradeNoteWcids = new()
    {
        2621, 2622, 2623, 2624, 2625, 2626, 2627, 2628,
        27378, 27379,
    };

    public static void ClearCooldowns()
    {
        _vendorLastRotation.Clear();
        ModManager.Log("[BetterLoot] VendorLootRotation cooldowns cleared by command.", ModManager.LogLevel.Info);
    }

    public static void ClearVendorCooldown(uint vendorGuid)
    {
        if (_vendorLastRotation.TryRemove(vendorGuid, out var _))
        {
            ModManager.Log($"[BetterLoot] VendorLootRotation: Cooldown cleared for vendor {vendorGuid}", ModManager.LogLevel.Info);
        }
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
}