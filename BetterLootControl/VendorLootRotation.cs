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
using System.Reflection;
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
        Bowyer,       // Sells Missile Weapons and Ammunition
        Tailor,       // Sells Clothing and Armor (robes, shirts, pants, etc.)
        Shopkeeper,   // General stores (weapons, armor, clothing, misc)
        General       // Sells everything (default behavior, no special treatment)
    }

    // WCIDs known to be jewelers (sell jewelry/gems)
    static readonly HashSet<uint> _jewelerWcids = new()
    {
        411,  // jeweler-gharundim
        655,  // easthamjeweler
        665,  // rithwicjeweler
        674,  // cragstonejeweler
        698,  // arwicjeweler
        716,  // holtburgjeweler
        736,  // glendenjeweler
        801,  // mayoijeweler
        817,  // yanshijeweler
        818,  // yanshijeweler2
        839,  // shoushijeweler (Ai Konaji)
        868,  // hebianjeweler
        980,  // samsurjeweler
        991,  // zaikhaljeweler
        1042, // yaraqjeweler (Tariqana)
        1055, // qalabarjeweler
        1081, // eastrithwicjeweler
        1151, // shoushijeweler2
        1152, // cragstonejeweler2
        1820, // tufajeweler
    };

    // WCIDs known to be armorers (sell armor/weapons)
    static readonly HashSet<uint> _armorerWcids = new()
    {
        // Blacksmiths, Weaponsmiths, Armorers (100+ vendors)
        12720, 1078, 31956, 32055, 11376, 4679, 4690, 28533, 1372, 1373, 1374, 695, 400,
        6855, 9205, 9212, 6862, 2251, 2261, 5833, 401, 402, 1375, 1376, 1377, 9020,
        11383, 11382, 24589, 24597, 678, 677, 2499, 9679, 2226, 649, 650, 30048, 2315,
        8496, 730, 739, 5426, 5428, 11389, 858, 862, 863, 871, 712, 27246, 4695, 4704,
        8433, 8440, 4540, 9415, 4546, 4437, 4438, 1146, 802, 4549, 5648, 22722, 1049,
        1059, 11394, 661, 668, 975, 976, 30040, 2293, 2294, 835, 30065, 1354, 11401,
        5436, 4562, 1815, 1816, 967, 972, 1825, 1835, 30052, 2541, 24220, 1393, 1394,
        1395, 8226, 812, 813, 5641, 1038, 987,
    };

    static readonly HashSet<uint> _tailorWcids = new()
    {
        // Tailors (28 vendors)
        4686, 703, 2260, 2233, 658, 1080, 738, 870, 719, 4703, 4445, 1145, 4556,
        2502, 1058, 11399, 667, 983, 30034, 2301, 843, 30069, 1823, 1834, 821,
        822, 1047, 994,
    };

    static readonly HashSet<uint> _shopkeeperWcids = new()
    {
        // Shopkeepers, Grocers, Barkeeps, Peddlers (115+ vendors)
        31224, 32054, 38688, 38692, 5835, 31295, 32299, 40521, 40946, 40952, 40958,
        40964, 40970, 40974, 40981, 40987, 42799, 42800, 42801, 42802, 42803, 42804,
        42805, 42806, 42807, 42808, 42809, 42810, 11377, 4678, 4681, 693, 694, 696,
        1079, 6856, 6858, 9206, 9208, 2252, 2253, 2255, 5832, 11384, 11385, 24590,
        24592, 669, 670, 672, 2221, 2222, 2228, 657, 648, 652, 1082, 8493, 731, 732,
        734, 11390, 404, 859, 860, 861, 865, 866, 710, 714, 4696, 4698, 8434, 4541,
        5877, 4436, 4440, 796, 797, 799, 4548, 4551, 5861, 22724, 405, 1390, 1391,
        1392, 1050, 1051, 1053, 11395, 659, 663, 973, 978, 30035, 30446, 30036, 2291,
        2292, 2296, 832, 834, 837, 11402, 5438, 1813, 1814, 1818, 968, 1826, 1827,
        1829, 24217, 8225, 8230, 810, 815, 5640, 1034, 1040, 985, 986, 989,
    };

    static readonly HashSet<uint> _bowyerWcids = new()
    {
        403,   // arwicbowyer
        651,   // easthambowyer
        662,   // rithwicbowyer
        671,   // cragstonebowyer
        713,   // holtburgbowyer
        733,   // glendenbowyer
        798,   // mayoibowyer
        814,   // yanshibowyer
        836,   // shoushibowyer
        864,   // hebianbowyer
        977,   // samsurbowyer
        988,   // zaikhalbowyer
        1039,  // yaraqbowyer
        1052,  // qalabarbowyer
        1378,  // bowyeraluvian
        1379,  // bowyergaron
        1380,  // bowyersho
        1817,  // tufabowyer
        1828,  // uzizbowyer
        2227,  // dryreachbowyer
        2254,  // baishibowyer
        2295,  // sawatobowyer
        2316,  // forttethanabowyer
        2533,  // stoneholdbowyer
        4439,  // lytelthorpebowyer
        4542,  // linbowyer
        4550,  // nantobowyer
        4563,  // toutoubowyer
        4680,  // alarqasbowyer
        4691,  // aljalimabowyer
        4697,  // khayyabanbowyer
        5423,  // glendeneastoutpostbowyer
        5649,  // neydisacastlebowyer
        6857,  // ayanbaqurbowyer
        8227,  // xarabowyer
        8435,  // krystbowyer
        8494,  // freeholdbowyer
        9023,  // bowyerwanderingtiofor
        9207,  // ayanbaqurvirindibowyer
        9416,  // linvaktukalbowyer
        9677,  // danbybowyer
        11378, // ahurengabowyer-xp
        11403, // timarubowyer-xp
        20924, // retreatbowyer
        22723, // oolutangabowyer
        24218, // waijhoubowyer
        24591, // candethkeepbowyer
        27247, // karabowyer
        30031, // sanamarfletcher
        30066, // silyunfletcher
        40949, // ace40949-bowyeraliibnmahir
        40961, // ace40961-bowyeraliibnmahir
        40973, // ace40973-bowyeraliibnmahir
        40984, // ace40984-bowyeraliibnmahir
    };

    // WCIDs known to be mages (sell casters, jewelry, spell components)
    // NOTE: If "Sage" vendor WCIDs exist and need to be explicitly classified,
    // add them to this list. Otherwise, they'll be classified via the MerchandiseItemTypes
    // fallback in ClassifyVendor() if they sell casters or (jewelry + gems).
    static readonly HashSet<uint> _mageWcids = new()
    {
        692,  // arwicarchmage
        795,  // mayoiarchmage
        809,  // yanshiarchmage
        831,  // shoushiarchmage
        856,  // hebianarchmage
        857,  // hebianarchmage2
        984,  // zaikhalarchmage
        1048, // qalabararchmage
        1369, // archmagealuvian
        1370, // archmagegaron
        1371, // archmagesho
        1812, // tufaarchmage
        1824, // uzizarchmage
        2220, // dryreacharchmage
        2246, // masteraluvianarchmage
        2247, // mastergharundimarchmage
        2248, // mastergharundimarchmage2
        2249, // mastershoarchmage
        2250, // baishiarchmage
        2290, // sawatoarchmage
        2302, // easthamarchmage
        2303, // glendenarchmage
        2304, // holtburgarchmage
        2305, // rithwicarchmage
        2306, // samsurarchmage
        2307, // yaraqarchmage
        2314, // forttethanaarchmage
        2498, // craterlakearchmage
        2537, // karaarchmage
        2540, // licharchmage
        4689, // aljalimaarchmage (Archmage Marnai ibn Ayyar - uses "Sage" template)
        4694, // khayyabanarchmage (Najmima the Archmage - uses "Sage" template)
    };

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
        
        // Base luxury tax
        double baseTax = 1.0 + (_settings.VendorLootLuxuryTaxPercent / 100.0);
        
        // Economy balancer integration (optional)
        if (_settings.UseLeyLineLedgerEconomyBalancer)
        {
            double economyMult = GetLeyLineLedgerEconomyMultiplier();
            return baseTax * economyMult;
        }
        
        return baseTax;
    }
    
    static double GetLeyLineLedgerEconomyMultiplier()
    {
        try
        {
            // Use reflection to access LeyLineLedger.EconomyBalancer.GetVendorBuyPriceMultiplier()
            var lllAssembly = AppDomain.CurrentDomain.GetAssemblies()
                .FirstOrDefault(a => a.GetName().Name == "LeyLineLedger");
            
            if (lllAssembly == null)
                return 1.0;
            
            var balancerType = lllAssembly.GetType("LeyLineLedger.EconomyBalancer");
            if (balancerType == null)
                return 1.0;
            
            var method = balancerType.GetMethod("GetVendorBuyPriceMultiplier", BindingFlags.Public | BindingFlags.Static);
            if (method == null)
                return 1.0;
            
            var result = method.Invoke(null, null);
            if (result is double mult)
                return mult;
            
            return 1.0;
        }
        catch
        {
            return 1.0; // Graceful fallback
        }
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
        if (_bowyerWcids.Contains(wcid))
            return VendorTypeClassification.Bowyer;
        if (_tailorWcids.Contains(wcid))
            return VendorTypeClassification.Tailor;
        if (_shopkeeperWcids.Contains(wcid))
            return VendorTypeClassification.Shopkeeper;

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
            VendorTypeClassification.Mage => ItemType.Caster | ItemType.Jewelry | ItemType.Gem | ItemType.Clothing | ItemType.Armor, // Include Armor for robes (robes are Armor type in ACE, not Clothing)
            VendorTypeClassification.Bowyer => ItemType.MissileWeapon,
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

        // Special handling for jewelers and mages - generate specific item types
        var vendorClass = ClassifyVendor(vendor);
        if (vendorClass == VendorTypeClassification.Jeweler)
        {
            // Generate jewelry
            int jewelryTarget = _rng.Next(perCatMin, perCatMax + 1);
            var jewelryBatch = GenerateJewelryBatch(vendor, vendorTier, jewelryTarget);
            foreach (var wo in jewelryBatch)
            {
                AddItemToVendor(vendor, wo, rotatedSet);
                itemCount++;
            }

            // Generate gems
            int gemTarget = _rng.Next(perCatMin, perCatMax + 1);
            var gemBatch = GenerateGemBatch(vendor, vendorTier, gemTarget);
            foreach (var wo in gemBatch)
            {
                AddItemToVendor(vendor, wo, rotatedSet);
                itemCount++;
            }
        }
        else if (vendorClass == VendorTypeClassification.Mage)
        {
            // Generate caster weapons (wands/orbs/staves)
            int casterTarget = _rng.Next(perCatMin, perCatMax + 1);
            var casterBatch = GenerateCasterBatch(vendor, vendorTier, casterTarget);
            foreach (var wo in casterBatch)
            {
                AddItemToVendor(vendor, wo, rotatedSet);
                itemCount++;
            }

            // Generate magical robes
            int robeTarget = _rng.Next(8, 21); // 8-20 robes
            var robeBatch = GenerateRobeBatch(vendor, vendorTier, robeTarget);
            foreach (var wo in robeBatch)
            {
                AddItemToVendor(vendor, wo, rotatedSet);
                itemCount++;
            }
        }
        else if (vendorClass == VendorTypeClassification.Bowyer)
        {
            // Generate missile weapons (bows, crossbows, thrown)
            int missileTarget = _rng.Next(perCatMin, perCatMax + 1);
            var missileBatch = GenerateMissileWeaponBatch(vendor, vendorTier, missileTarget);
            foreach (var wo in missileBatch)
            {
                AddItemToVendor(vendor, wo, rotatedSet);
                itemCount++;
            }

            // Generate ammunition
            int ammoTarget = _rng.Next(8, 21); // 8-20 ammo stacks
            var ammoBatch = GenerateAmmunitionBatch(vendor, vendorTier, ammoTarget);
            foreach (var wo in ammoBatch)
            {
                AddItemToVendor(vendor, wo, rotatedSet);
                itemCount++;
            }
        }
        else if (vendorClass == VendorTypeClassification.Armorer)
        {
            // Generate melee weapons
            int meleeTarget = _rng.Next(perCatMin, perCatMax + 1);
            var meleeBatch = GenerateMeleeWeaponBatch(vendor, vendorTier, meleeTarget);
            foreach (var wo in meleeBatch)
            {
                AddItemToVendor(vendor, wo, rotatedSet);
                itemCount++;
            }

            // Generate armor
            int armorTarget = _rng.Next(perCatMin, perCatMax + 1);
            var armorBatch = GenerateArmorBatch(vendor, vendorTier, armorTarget);
            foreach (var wo in armorBatch)
            {
                AddItemToVendor(vendor, wo, rotatedSet);
                itemCount++;
            }
        }
        else if (vendorClass == VendorTypeClassification.Tailor)
        {
            // Generate clothing
            int clothingTarget = _rng.Next(perCatMin, perCatMax + 1);
            var clothingBatch = GenerateClothingBatch(vendor, vendorTier, clothingTarget);
            foreach (var wo in clothingBatch)
            {
                AddItemToVendor(vendor, wo, rotatedSet);
                itemCount++;
            }

            // Generate robes (same as mages)
            int robeTarget = _rng.Next(8, 21); // 8-20 robes
            var robeBatch = GenerateRobeBatch(vendor, vendorTier, robeTarget);
            foreach (var wo in robeBatch)
            {
                AddItemToVendor(vendor, wo, rotatedSet);
                itemCount++;
            }
        }
        else if (vendorClass == VendorTypeClassification.Shopkeeper)
        {
            // Generate a mix of weapons, armor, and clothing
            int weaponTarget = _rng.Next(perCatMin, perCatMax + 1);
            var weaponBatch = GenerateMeleeWeaponBatch(vendor, vendorTier, weaponTarget);
            foreach (var wo in weaponBatch)
            {
                AddItemToVendor(vendor, wo, rotatedSet);
                itemCount++;
            }

            int armorTarget = _rng.Next(perCatMin, perCatMax + 1);
            var armorBatch = GenerateArmorBatch(vendor, vendorTier, armorTarget);
            foreach (var wo in armorBatch)
            {
                AddItemToVendor(vendor, wo, rotatedSet);
                itemCount++;
            }

            int clothingTarget = _rng.Next(8, 16); // 8-15 clothing items
            var clothingBatch = GenerateClothingBatch(vendor, vendorTier, clothingTarget);
            foreach (var wo in clothingBatch)
            {
                AddItemToVendor(vendor, wo, rotatedSet);
                itemCount++;
            }
        }
        else
        {
            // Normal item generation for other vendors
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

        // Add Spellsiphon and Mana Lattice to Jeweler vendors only (reuse vendorClass from earlier)
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

    static List<WorldObject> GenerateJewelryBatch(Vendor vendor, int vendorTier, int targetCount)
    {
        var batch = new List<WorldObject>();
        var profiles = GetTreasureProfiles();
        int attempts = 0;
        int maxAttempts = targetCount * 20; // Higher attempts for jewelry since it's rare

        while (batch.Count < targetCount && attempts < maxAttempts)
        {
            int itemTier = RollVendorItemTier(vendorTier);
            var profile = FindProfileForTier(profiles, itemTier);
            if (profile == null)
            {
                attempts++;
                continue;
            }

            try
            {
                // Try to generate a magic item (more likely to have jewelry)
                var item = LootGenerationFactory.CreateRandomLootObjects(profile, TreasureItemCategory.MagicItem);
                if (item != null && (item.ItemType & ItemType.Jewelry) != 0)
                {
                    int subScore = RollSubScore();
                    ApplyQuality(item, itemTier, subScore);
                    ApplyVendorUniqueTreatment(item, subScore);
                    ApplyWieldRequirementCap(item, vendorTier);
                    ClampItemValue(item, _settings?.VendorLootMinValue ?? 100, _settings?.VendorLootMaxValue ?? 10000);
                    _originalValues[item.Guid] = item.Value ?? 0;
                    batch.Add(item);
                }
                else
                {
                    item?.Destroy();
                }
            }
            catch { /* Skip failed generations */ }

            attempts++;
        }

        return batch;
    }

    static List<WorldObject> GenerateGemBatch(Vendor vendor, int vendorTier, int targetCount)
    {
        var batch = new List<WorldObject>();
        var profiles = GetTreasureProfiles();
        int attempts = 0;
        int maxAttempts = targetCount * 20; // Higher attempts for gems since it's rare

        while (batch.Count < targetCount && attempts < maxAttempts)
        {
            int itemTier = RollVendorItemTier(vendorTier);
            var profile = FindProfileForTier(profiles, itemTier);
            if (profile == null)
            {
                attempts++;
                continue;
            }

            try
            {
                // Try to generate a magic item (more likely to have gems)
                var item = LootGenerationFactory.CreateRandomLootObjects(profile, TreasureItemCategory.MagicItem);
                if (item != null && (item.ItemType & ItemType.Gem) != 0)
                {
                    int subScore = RollSubScore();
                    ApplyQuality(item, itemTier, subScore);
                    ApplyVendorUniqueTreatment(item, subScore);
                    ApplyWieldRequirementCap(item, vendorTier);
                    ClampItemValue(item, _settings?.VendorLootMinValue ?? 100, _settings?.VendorLootMaxValue ?? 10000);
                    _originalValues[item.Guid] = item.Value ?? 0;
                    batch.Add(item);
                }
                else
                {
                    item?.Destroy();
                }
            }
            catch { /* Skip failed generations */ }

            attempts++;
        }

        return batch;
    }

    static List<WorldObject> GenerateCasterBatch(Vendor vendor, int vendorTier, int targetCount)
    {
        var batch = new List<WorldObject>();
        var profiles = GetTreasureProfiles();
        int attempts = 0;
        int maxAttempts = targetCount * 20; // Higher attempts for casters since it's rare

        while (batch.Count < targetCount && attempts < maxAttempts)
        {
            int itemTier = RollVendorItemTier(vendorTier);
            var profile = FindProfileForTier(profiles, itemTier);
            if (profile == null)
            {
                attempts++;
                continue;
            }

            try
            {
                // Try to generate a magic item (more likely to have casters)
                var item = LootGenerationFactory.CreateRandomLootObjects(profile, TreasureItemCategory.MagicItem);
                if (item != null && (item.ItemType & ItemType.Caster) != 0)
                {
                    int subScore = RollSubScore();
                    ApplyQuality(item, itemTier, subScore);
                    ApplyVendorUniqueTreatment(item, subScore);
                    ApplyWieldRequirementCap(item, vendorTier);
                    ClampItemValue(item, _settings?.VendorLootMinValue ?? 100, _settings?.VendorLootMaxValue ?? 10000);
                    _originalValues[item.Guid] = item.Value ?? 0;
                    batch.Add(item);
                }
                else
                {
                    item?.Destroy();
                }
            }
            catch { /* Skip failed generations */ }

            attempts++;
        }

        return batch;
    }

    static List<WorldObject> GenerateRobeBatch(Vendor vendor, int vendorTier, int targetCount)
    {
        var batch = new List<WorldObject>();
        var profiles = GetTreasureProfiles();
        int attempts = 0;
        int maxAttempts = targetCount * 50; // Very high attempts - robes are rare in loot tables

        while (batch.Count < targetCount && attempts < maxAttempts)
        {
            int itemTier = RollVendorItemTier(vendorTier);
            var profile = FindProfileForTier(profiles, itemTier);
            if (profile == null)
            {
                attempts++;
                continue;
            }

            try
            {
                // Robes are ItemType.Armor in ACE, not Clothing
                var item = LootGenerationFactory.CreateRandomLootObjects(profile, TreasureItemCategory.MagicItem);
                if (item != null && (item.ItemType & ItemType.Armor) != 0)
                {
                    // Check if it's a robe/vestment/kaftan by name
                    var name = item.Name?.ToLowerInvariant() ?? "";
                    bool isRobe = name.Contains("robe") || name.Contains("vestment") || name.Contains("kaftan") || name.Contains("frock");
                    
                    if (isRobe)
                    {
                        int subScore = RollSubScore();
                        ApplyQuality(item, itemTier, subScore);
                        ApplyVendorUniqueTreatment(item, subScore);
                        ApplyWieldRequirementCap(item, vendorTier);
                        ClampItemValue(item, _settings?.VendorLootMinValue ?? 100, _settings?.VendorLootMaxValue ?? 10000);
                        _originalValues[item.Guid] = item.Value ?? 0;
                        batch.Add(item);
                    }
                    else
                    {
                        item.Destroy();
                    }
                }
                else
                {
                    item?.Destroy();
                }
            }
            catch { /* Skip failed generations */ }

            attempts++;
        }

        return batch;
    }

    static List<WorldObject> GenerateMissileWeaponBatch(Vendor vendor, int vendorTier, int targetCount)
    {
        var batch = new List<WorldObject>();
        var profiles = GetTreasureProfiles();
        int attempts = 0;
        int maxAttempts = targetCount * 20; // Higher attempts for missile weapons since it's rare

        while (batch.Count < targetCount && attempts < maxAttempts)
        {
            int itemTier = RollVendorItemTier(vendorTier);
            var profile = FindProfileForTier(profiles, itemTier);
            if (profile == null)
            {
                attempts++;
                continue;
            }

            try
            {
                // Try to generate a magic item (more likely to have missile weapons)
                var item = LootGenerationFactory.CreateRandomLootObjects(profile, TreasureItemCategory.MagicItem);
                if (item != null && (item.ItemType & ItemType.MissileWeapon) != 0)
                {
                    int subScore = RollSubScore();
                    ApplyQuality(item, itemTier, subScore);
                    ApplyVendorUniqueTreatment(item, subScore);
                    ApplyWieldRequirementCap(item, vendorTier);
                    ClampItemValue(item, _settings?.VendorLootMinValue ?? 100, _settings?.VendorLootMaxValue ?? 10000);
                    _originalValues[item.Guid] = item.Value ?? 0;
                    batch.Add(item);
                }
                else
                {
                    item?.Destroy();
                }
            }
            catch { /* Skip failed generations */ }

            attempts++;
        }

        return batch;
    }

    static List<WorldObject> GenerateAmmunitionBatch(Vendor vendor, int vendorTier, int targetCount)
    {
        var batch = new List<WorldObject>();
        var profiles = GetTreasureProfiles();
        int attempts = 0;
        int maxAttempts = targetCount * 25; // Higher attempts for ammo (arrows, bolts, atlatl darts)

        while (batch.Count < targetCount && attempts < maxAttempts)
        {
            int itemTier = RollVendorItemTier(vendorTier);
            var profile = FindProfileForTier(profiles, itemTier);
            if (profile == null)
            {
                attempts++;
                continue;
            }

            try
            {
                // Try to generate mundane items (ammo is typically mundane)
                var item = LootGenerationFactory.CreateRandomLootObjects(profile, TreasureItemCategory.MundaneItem);
                if (item != null && (item.ItemType & ItemType.MissileWeapon) != 0)
                {
                    // Check if it's actually ammunition (stackable, typically arrows/bolts/darts)
                    if (item.MaxStackSize.HasValue && item.MaxStackSize > 1)
                    {
                        // Set a good stack size for ammo
                        item.SetStackSize(_rng.Next(100, 251)); // 100-250 per stack
                        
                        int subScore = RollSubScore();
                        ApplyQuality(item, itemTier, subScore);
                        ApplyWieldRequirementCap(item, vendorTier);
                        ClampItemValue(item, _settings?.VendorLootMinValue ?? 100, _settings?.VendorLootMaxValue ?? 10000);
                        _originalValues[item.Guid] = item.Value ?? 0;
                        batch.Add(item);
                    }
                    else
                    {
                        item.Destroy();
                    }
                }
                else
                {
                    item?.Destroy();
                }
            }
            catch { /* Skip failed generations */ }

            attempts++;
        }

        return batch;
    }

    static List<WorldObject> GenerateMeleeWeaponBatch(Vendor vendor, int vendorTier, int targetCount)
    {
        var batch = new List<WorldObject>();
        var profiles = GetTreasureProfiles();
        int attempts = 0;
        int maxAttempts = targetCount * 20; // Higher attempts for melee weapons

        while (batch.Count < targetCount && attempts < maxAttempts)
        {
            int itemTier = RollVendorItemTier(vendorTier);
            var profile = FindProfileForTier(profiles, itemTier);
            if (profile == null)
            {
                attempts++;
                continue;
            }

            try
            {
                // Try to generate a magic item (more likely to have melee weapons)
                var item = LootGenerationFactory.CreateRandomLootObjects(profile, TreasureItemCategory.MagicItem);
                if (item != null && (item.ItemType & ItemType.MeleeWeapon) != 0)
                {
                    int subScore = RollSubScore();
                    ApplyQuality(item, itemTier, subScore);
                    ApplyVendorUniqueTreatment(item, subScore);
                    ApplyWieldRequirementCap(item, vendorTier);
                    ClampItemValue(item, _settings?.VendorLootMinValue ?? 100, _settings?.VendorLootMaxValue ?? 10000);
                    _originalValues[item.Guid] = item.Value ?? 0;
                    batch.Add(item);
                }
                else
                {
                    item?.Destroy();
                }
            }
            catch { /* Skip failed generations */ }

            attempts++;
        }

        return batch;
    }

    static List<WorldObject> GenerateArmorBatch(Vendor vendor, int vendorTier, int targetCount)
    {
        var batch = new List<WorldObject>();
        var profiles = GetTreasureProfiles();
        int attempts = 0;
        int maxAttempts = targetCount * 20; // Higher attempts for armor

        while (batch.Count < targetCount && attempts < maxAttempts)
        {
            int itemTier = RollVendorItemTier(vendorTier);
            var profile = FindProfileForTier(profiles, itemTier);
            if (profile == null)
            {
                attempts++;
                continue;
            }

            try
            {
                // Try to generate a magic item (more likely to have armor)
                var item = LootGenerationFactory.CreateRandomLootObjects(profile, TreasureItemCategory.MagicItem);
                if (item != null && (item.ItemType & ItemType.Armor) != 0)
                {
                    int subScore = RollSubScore();
                    ApplyQuality(item, itemTier, subScore);
                    ApplyVendorUniqueTreatment(item, subScore);
                    ApplyWieldRequirementCap(item, vendorTier);
                    ClampItemValue(item, _settings?.VendorLootMinValue ?? 100, _settings?.VendorLootMaxValue ?? 10000);
                    _originalValues[item.Guid] = item.Value ?? 0;
                    batch.Add(item);
                }
                else
                {
                    item?.Destroy();
                }
            }
            catch { /* Skip failed generations */ }

            attempts++;
        }

        return batch;
    }

    static List<WorldObject> GenerateClothingBatch(Vendor vendor, int vendorTier, int targetCount)
    {
        var batch = new List<WorldObject>();
        var profiles = GetTreasureProfiles();
        int attempts = 0;
        int maxAttempts = targetCount * 25; // Higher attempts for specific clothing

        while (batch.Count < targetCount && attempts < maxAttempts)
        {
            int itemTier = RollVendorItemTier(vendorTier);
            var profile = FindProfileForTier(profiles, itemTier);
            if (profile == null)
            {
                attempts++;
                continue;
            }

            try
            {
                // Generate clothing items (shirts, pants, boots, etc.)
                var item = LootGenerationFactory.CreateRandomLootObjects(profile, TreasureItemCategory.MagicItem);
                if (item != null && (item.ItemType & ItemType.Clothing) != 0)
                {
                    // Exclude robes (handled separately)
                    var name = item.Name?.ToLowerInvariant() ?? "";
                    bool isRobe = name.Contains("robe") || name.Contains("vestment") || name.Contains("kaftan") || name.Contains("frock");
                    
                    if (!isRobe)
                    {
                        int subScore = RollSubScore();
                        ApplyQuality(item, itemTier, subScore);
                        ApplyVendorUniqueTreatment(item, subScore);
                        ApplyWieldRequirementCap(item, vendorTier);
                        ClampItemValue(item, _settings?.VendorLootMinValue ?? 100, _settings?.VendorLootMaxValue ?? 10000);
                        _originalValues[item.Guid] = item.Value ?? 0;
                        batch.Add(item);
                    }
                    else
                    {
                        item.Destroy();
                    }
                }
                else
                {
                    item?.Destroy();
                }
            }
            catch { /* Skip failed generations */ }

            attempts++;
        }

        return batch;
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

    // Icon underlay mapping from RecipeManager (ACE vanilla)
    static readonly Dictionary<ImbuedEffectType, uint> IconUnderlayMap = new()
    {
        { ImbuedEffectType.ColdRending,     0x06003353 },
        { ImbuedEffectType.ElectricRending, 0x06003354 },
        { ImbuedEffectType.AcidRending,     0x06003355 },
        { ImbuedEffectType.ArmorRending,    0x06003356 },
        { ImbuedEffectType.CripplingBlow,   0x06003357 },
        { ImbuedEffectType.CriticalStrike,  0x06003358 },
        { ImbuedEffectType.FireRending,     0x06003359 },
        { ImbuedEffectType.BludgeonRending, 0x0600335a },
        { ImbuedEffectType.PierceRending,   0x0600335b },
        { ImbuedEffectType.SlashRending,    0x0600335c },
    };

    static void ApplyImbueVisualEffect(WorldObject item)
    {
        if (item?.ImbuedEffect == null || item.ImbuedEffect == 0)
            return;

        try
        {
            int currentEffects = (int)(item.UiEffects ?? 0);
            int visualEffect = 0;

            // Determine visual effect based on imbue type
            if (item.ImbuedEffect.HasFlag(ImbuedEffectType.AcidRending))
                visualEffect = 256; // Acid = green
            else if (item.ImbuedEffect.HasFlag(ImbuedEffectType.FireRending))
                visualEffect = 32;  // Fire = red
            else if (item.ImbuedEffect.HasFlag(ImbuedEffectType.ColdRending))
                visualEffect = 128; // Frost = white
            else if (item.ImbuedEffect.HasFlag(ImbuedEffectType.ElectricRending))
                visualEffect = 64;  // Lightning = purple
            else if (item.ImbuedEffect.HasFlag(ImbuedEffectType.PierceRending) ||
                     item.ImbuedEffect.HasFlag(ImbuedEffectType.SlashRending) ||
                     item.ImbuedEffect.HasFlag(ImbuedEffectType.BludgeonRending))
                visualEffect = 128; // Physical rendings = white
            else if (item.ImbuedEffect.HasFlag(ImbuedEffectType.ArmorRending) ||
                     item.ImbuedEffect.HasFlag(ImbuedEffectType.CriticalStrike) ||
                     item.ImbuedEffect.HasFlag(ImbuedEffectType.CripplingBlow))
                visualEffect = 256; // Generic weapon imbues = green
            else if (item.ImbuedEffect.HasFlag(ImbuedEffectType.MeleeDefense) ||
                     item.ImbuedEffect.HasFlag(ImbuedEffectType.MissileDefense) ||
                     item.ImbuedEffect.HasFlag(ImbuedEffectType.MagicDefense))
                visualEffect = 64;  // Defense imbues = purple

            if (visualEffect != 0)
                item.SetProperty(PropertyInt.UiEffects, currentEffects | visualEffect);

            // Apply icon underlay (background texture) based on imbue type
            foreach (var kvp in IconUnderlayMap)
            {
                if (item.ImbuedEffect.HasFlag(kvp.Key))
                {
                    item.IconUnderlayId = kvp.Value;
                    break; // Only apply first matching underlay
                }
            }
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BetterLoot] VendorLoot: ApplyImbueVisualEffect failed: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    /// <summary>
    /// Filters an imbue pool to only include imbues compatible with what's already on the item.
    /// Enforces tier rules: only one elemental rending, only one physical rending per item.
    /// </summary>
    static List<ImbuedEffectType> FilterCompatibleImbues(WorldObject item, ImbuedEffectType[] pool)
    {
        // Use the shared validator utility for consistency
        var allCompatible = ImbuedEffectValidator.GetCompatibleImbues(item);
        
        // Filter to only those in the requested pool
        return allCompatible.Where(i => pool.Contains(i)).ToList();
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
                
                // Filter pool to only include imbues compatible with existing ones
                var compatiblePool = FilterCompatibleImbues(item, rendPool);
                if (compatiblePool.Count == 0)
                {
                    ModManager.Log($"[BetterLoot] VendorLoot: No compatible weapon imbues for {item.Name} (existing: {item.ImbuedEffect})", ModManager.LogLevel.Debug);
                    return;
                }
                
                var chosen = compatiblePool[_rng.Next(compatiblePool.Count)];
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
                
                // Rare multi-imbue chance (compatible secondary imbues)
                TryApplyMultiImbue(item, chosen);
                
                // Small chance for custom Overtinked imbues on weapons
                TryApplyCustomImbue(item);
            }
            else if (IsArmorOrClothing(item))
            {
                var defensePool = new[]
                {
                    ImbuedEffectType.MeleeDefense,
                    ImbuedEffectType.MissileDefense,
                    ImbuedEffectType.MagicDefense,
                };
                
                // Filter pool to only include imbues compatible with existing ones
                var compatiblePool = FilterCompatibleImbues(item, defensePool);
                if (compatiblePool.Count == 0)
                {
                    ModManager.Log($"[BetterLoot] VendorLoot: No compatible armor imbues for {item.Name} (existing: {item.ImbuedEffect})", ModManager.LogLevel.Debug);
                    return;
                }
                
                var chosen = compatiblePool[_rng.Next(compatiblePool.Count)];
                item.ImbuedEffect |= chosen;
            }
            else if (IsJewelry(item))
            {
                // Jewelry: random weapon imbue (including elemental rendings) or defense
                var pool = new[]
                {
                    ImbuedEffectType.CriticalStrike,
                    ImbuedEffectType.CripplingBlow,
                    ImbuedEffectType.ArmorRending,
                    ImbuedEffectType.AcidRending,
                    ImbuedEffectType.FireRending,
                    ImbuedEffectType.ColdRending,
                    ImbuedEffectType.ElectricRending,
                    ImbuedEffectType.MeleeDefense,
                    ImbuedEffectType.MissileDefense,
                    ImbuedEffectType.MagicDefense,
                };
                
                // Filter pool to only include imbues compatible with existing ones
                var compatiblePool = FilterCompatibleImbues(item, pool);
                if (compatiblePool.Count == 0)
                {
                    ModManager.Log($"[BetterLoot] VendorLoot: No compatible jewelry imbues for {item.Name} (existing: {item.ImbuedEffect})", ModManager.LogLevel.Debug);
                    return;
                }
                
                var chosen = compatiblePool[_rng.Next(compatiblePool.Count)];
                item.ImbuedEffect |= chosen;
                
                // Rare multi-imbue chance (compatible secondary imbues)
                TryApplyMultiImbue(item, chosen);
                
                // Small chance for custom Overtinked imbues on jewelry
                TryApplyCustomImbue(item);
            }
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BetterLoot] VendorLoot: ApplyRandomVendorImbue failed: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    static void TryApplyMultiImbue(WorldObject item, ImbuedEffectType firstImbue)
    {
        try
        {
            if (_settings == null)
                return;

            // Roll for 2nd imbue
            if (_rng.NextDouble() > _settings.VendorLootMultiImbue2Chance)
                return;

            // Get compatible secondary imbues (no conflicts)
            var compatibleImbues = GetCompatibleSecondaryImbues(item, firstImbue);
            if (compatibleImbues.Count == 0)
                return;

            var secondImbue = compatibleImbues[_rng.Next(compatibleImbues.Count)];
            item.ImbuedEffect |= secondImbue;
            ModManager.Log($"[BetterLoot] VendorLoot: Applied 2nd imbue {secondImbue} to {item.Name}", ModManager.LogLevel.Debug);

            // Roll for 3rd imbue (even rarer!)
            if (_rng.NextDouble() > _settings.VendorLootMultiImbue3Chance)
                return;

            // Get compatible tertiary imbues (no conflicts with first two)
            var compatibleThirdImbues = GetCompatibleSecondaryImbues(item, firstImbue, secondImbue);
            if (compatibleThirdImbues.Count == 0)
                return;

            var thirdImbue = compatibleThirdImbues[_rng.Next(compatibleThirdImbues.Count)];
            item.ImbuedEffect |= thirdImbue;
            ModManager.Log($"[BetterLoot] VendorLoot: Applied 3rd imbue {thirdImbue} to {item.Name} (RARE!)", ModManager.LogLevel.Info);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BetterLoot] VendorLoot: TryApplyMultiImbue failed: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    static List<ImbuedEffectType> GetCompatibleSecondaryImbues(WorldObject item, ImbuedEffectType first, ImbuedEffectType? second = null)
    {
        // Use the shared validator utility - pass both first and second as "already applied"
        var additionalImbues = second.HasValue && second.Value != ImbuedEffectType.Undef
            ? new[] { first, second.Value }
            : new[] { first };
            
        return ImbuedEffectValidator.GetCompatibleImbues(item, additionalImbues);
    }

    static void TryApplyCustomImbue(WorldObject item)
    {
        try
        {
            // 25% chance for custom Overtinked imbue on weapons/jewelry
            if (_rng.NextDouble() > 0.25)
                return;

            // Use reflection to access Overtinked's OvertinkedImbueStore.Add method
            var overtinkedAssembly = AppDomain.CurrentDomain.GetAssemblies()
                .FirstOrDefault(a => a.GetName().Name == "Overtinked");
            
            if (overtinkedAssembly == null)
                return; // Overtinked not loaded

            var storeType = overtinkedAssembly.GetType("Overtinked.OvertinkedImbueStore");
            var flagsType = overtinkedAssembly.GetType("Overtinked.OvertinkedImbueFlags");
            
            if (storeType == null || flagsType == null)
                return;

            // Get the Add method: public static void Add(WorldObject target, OvertinkedImbueFlags flags)
            var addMethod = storeType.GetMethod("Add", BindingFlags.Public | BindingFlags.Static);
            if (addMethod == null)
                return;

            // Pick a random custom imbue
            var customImbues = new[]
            {
                Enum.Parse(flagsType, "Hemorrhage"),  // 8
                Enum.Parse(flagsType, "Cleaving"),     // 2
                Enum.Parse(flagsType, "NetherRending"), // 4
                Enum.Parse(flagsType, "Shatter"),       // 16
            };

            var chosenImbue = customImbues[_rng.Next(customImbues.Length)];
            string chosenName = chosenImbue.ToString();

            // Tier rule: custom tier is ONE from {Hemorrhage, Shatter, Cleaving}.
            if (chosenName == "Hemorrhage" || chosenName == "Cleaving" || chosenName == "Shatter")
            {
                const int customTierMask = 8 | 2 | 16;
                int raw = item.GetProperty((PropertyInt)40133) ?? 0;
                if ((raw & customTierMask) != 0)
                {
                    ModManager.Log($"[BetterLoot] VendorLoot: Skipped custom-tier imbue {chosenName} for {item.Name} (already has custom-tier bits)", ModManager.LogLevel.Debug);
                    return;
                }
            }

            // Nether Rending also needs ImbuedEffectType.NetherRending set.
            // Tier rule: NetherRending is part of the global rending tier (one total rending).
            if (chosenName == "NetherRending")
            {
                if (!ImbuedEffectValidator.TryAddImbue(item, ImbuedEffectType.NetherRending, out var reason))
                {
                    ModManager.Log($"[BetterLoot] VendorLoot: Skipped custom NetherRending for {item.Name} ({reason})", ModManager.LogLevel.Debug);
                    return;
                }
            }

            addMethod.Invoke(null, new object[] { item, chosenImbue });

            ModManager.Log($"[BetterLoot] VendorLoot: Applied custom imbue {chosenImbue} to {item.Name}", ModManager.LogLevel.Debug);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BetterLoot] VendorLoot: TryApplyCustomImbue failed: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    static int ApplyRandomTinkers(WorldObject item, int vendorTier, int minTinkers, int maxTinkers)
    {
        if (item == null || _settings == null)
            return 0;

        try
        {
            int tinkerCount = _rng.Next(minTinkers, maxTinkers + 1);
            
            // Get existing tinker count
            int? nullableTinkers = item.NumTimesTinkered;
            int existingTinkers = nullableTinkers ?? 0;
            int maxAllowed = Math.Min(10, existingTinkers + tinkerCount); // Cap at 10 total
            int tinkersToAdd = maxAllowed - existingTinkers;
            
            if (tinkersToAdd <= 0)
                return 0;

            // Set tinker count
            item.NumTimesTinkered = existingTinkers + tinkersToAdd;
            
            // Increase ItemMaxLevel based on tinker count (each tinker adds ~5-10 levels)
            int levelIncrease = tinkersToAdd * _rng.Next(5, 11);
            int currentMaxLevel = item.ItemMaxLevel ?? 1;
            item.ItemMaxLevel = currentMaxLevel + levelIncrease;

            // Update name to reflect tinkering
            string baseName = item.GetProperty((PropertyString)11033) ?? item.Name ?? "Item";
            if (item.NumTimesTinkered >= 8)
            {
                item.Name = "Masterwork " + baseName;
            }
            else if (item.NumTimesTinkered >= 5)
            {
                item.Name = "Superior " + baseName;
            }
            else if (item.NumTimesTinkered >= 3)
            {
                item.Name = "Fine " + baseName;
            }

            return tinkersToAdd;
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BetterLoot] VendorLoot: ApplyRandomTinkers failed: {ex.Message}", ModManager.LogLevel.Warn);
            return 0;
        }
    }

    // =====================================================================
    // Add Item to Vendor with Spell Loading and Enhanced Treatment
    // =====================================================================

    static void AddItemToVendor(Vendor vendor, WorldObject item, HashSet<ObjectGuid> rotatedSet)
    {
        // Note: Spells are already applied by LootGenerationFactory - no custom spell adding needed
        // The loot system handles appropriate spell loading based on treasure profiles

        // Apply enhanced item treatment (imbue + awakening + tinkering) - vendorClass passed from caller
        ApplyEnhancedItemTreatment(item, GetVendorTier(vendor), ClassifyVendor(vendor));

        item.ContainerId = vendor.Guid.Full;
        item.CalculateObjDesc();
        vendor.UniqueItemsForSale.Add(item.Guid, item);
        rotatedSet.Add(item.Guid);
    }

    static void ApplyEnhancedItemTreatment(WorldObject item, int vendorTier, VendorTypeClassification vendorClass)
    {
        if (item == null || _settings == null)
            return;

        double valueMult = 1.0;
        bool hasImbue = item.ImbuedEffect != 0;
        bool hasAwakened = item.GetProperty((PropertyBool)40130) == true;
        int workmanship = item.ItemWorkmanship ?? 0;
        bool hasHighWorkmanship = workmanship >= 8;
        bool isJeweler = vendorClass == VendorTypeClassification.Jeweler;
        bool isMage = vendorClass == VendorTypeClassification.Mage;
        bool isBowyer = vendorClass == VendorTypeClassification.Bowyer;
        bool isArmorer = vendorClass == VendorTypeClassification.Armorer;
        bool isTailor = vendorClass == VendorTypeClassification.Tailor;
        bool isShopkeeper = vendorClass == VendorTypeClassification.Shopkeeper;

        // Determine imbue chance (higher for specialized vendors)
        double imbueChance = _settings.VendorLootImbueChance;
        if (isJeweler)
            imbueChance = _settings.VendorLootJewelerImbueChance;
        else if (isMage)
            imbueChance = _settings.VendorLootMageImbueChance;
        else if (isBowyer)
            imbueChance = _settings.VendorLootBowyerImbueChance;
        else if (isArmorer)
            imbueChance = _settings.VendorLootArmorerImbueChance;
        else if (isTailor)
            imbueChance = _settings.VendorLootTailorImbueChance;
        else if (isShopkeeper)
            imbueChance = _settings.VendorLootShopkeeperImbueChance;
        
        // Roll for imbue
        if (!hasImbue && _rng.NextDouble() < imbueChance)
        {
            ApplyRandomVendorImbue(item);
            hasImbue = true;
            valueMult *= _settings.VendorLootImbueValueMultiplier;

            // Apply visual effect based on imbue type
            ApplyImbueVisualEffect(item);
        }

        // Determine awaken chance (higher for specialized vendors)
        double awakenChance = _settings.VendorLootAwakenChance;
        if (isJeweler)
            awakenChance = _settings.VendorLootJewelerAwakenChance;
        else if (isMage)
            awakenChance = _settings.VendorLootMageAwakenChance;
        else if (isBowyer)
            awakenChance = _settings.VendorLootBowyerAwakenChance;
        else if (isArmorer)
            awakenChance = _settings.VendorLootArmorerAwakenChance;
        else if (isTailor)
            awakenChance = _settings.VendorLootTailorAwakenChance;
        else if (isShopkeeper)
            awakenChance = _settings.VendorLootShopkeeperAwakenChance;
        
        // Roll for awakening on high-tier items (tier 6+)
        if (vendorTier >= 6 && !hasAwakened && _rng.NextDouble() < awakenChance)
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

        // Roll for tinkering (specialized vendors get higher chance)
        double tinkerChance = 0.0;
        int minTinkers = 1;
        int maxTinkers = 3;
        
        if (isJeweler)
        {
            tinkerChance = _settings.VendorLootJewelerTinkerChance;
            minTinkers = _settings.VendorLootJewelerMinTinkers;
            maxTinkers = _settings.VendorLootJewelerMaxTinkers;
        }
        else if (isMage)
        {
            tinkerChance = _settings.VendorLootMageTinkerChance;
            minTinkers = _settings.VendorLootMageMinTinkers;
            maxTinkers = _settings.VendorLootMageMaxTinkers;
        }
        else if (isBowyer)
        {
            tinkerChance = _settings.VendorLootBowyerTinkerChance;
            minTinkers = _settings.VendorLootBowyerMinTinkers;
            maxTinkers = _settings.VendorLootBowyerMaxTinkers;
        }
        else if (isArmorer)
        {
            tinkerChance = _settings.VendorLootArmorerTinkerChance;
            minTinkers = _settings.VendorLootArmorerMinTinkers;
            maxTinkers = _settings.VendorLootArmorerMaxTinkers;
        }
        else if (isTailor)
        {
            tinkerChance = _settings.VendorLootTailorTinkerChance;
            minTinkers = _settings.VendorLootTailorMinTinkers;
            maxTinkers = _settings.VendorLootTailorMaxTinkers;
        }
        else if (isShopkeeper)
        {
            tinkerChance = _settings.VendorLootShopkeeperTinkerChance;
            minTinkers = _settings.VendorLootShopkeeperMinTinkers;
            maxTinkers = _settings.VendorLootShopkeeperMaxTinkers;
        }

        if (tinkerChance > 0 && _rng.NextDouble() < tinkerChance)
        {
            int tinkerCount = ApplyRandomTinkers(item, vendorTier, minTinkers, maxTinkers);
            if (tinkerCount > 0)
            {
                // Each tinker increases value
                valueMult *= Math.Pow(_settings.VendorLootTinkerValueMultiplier, tinkerCount);
            }
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
                // Explicitly set UiEffects to Magical (blue glow)
                spellsiphon.UiEffects = (UiEffects?)((int)(spellsiphon.UiEffects ?? 0) | (int)UiEffects.Magical);
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
                // Explicitly set UiEffects to Magical (blue glow)
                manaLattice.UiEffects = (UiEffects?)((int)(manaLattice.UiEffects ?? 0) | (int)UiEffects.Magical);
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