using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using ACE.Common;
using ACE.Database.Models.World;
using ACE.Entity;
using ACE.Entity.Enum;
using ACE.Server.Entity;
using ACE.Server.Entity.Actions;
using ACE.Server.Factories;
using ACE.Server.Factories.Entity;
using ACE.Server.Factories.Enum;
using ACE.Server.Managers;
using ACE.Server.Network;
using ACE.Server.Network.GameEvent.Events;
using ACE.Server.WorldObjects;
using HarmonyLib;

using SharedLoot;

namespace BetterLootControl;

/// <summary>
/// The main patch class for the BetterLootControl mod.
/// </summary>
[HarmonyPatch]
public partial class PatchClass : BasicPatch<Settings>
{
    internal static Settings? CurrentSettings;

    // SelectAProfile runs once per generator profile; runed / multi-profile chests call it many times per fill. We add at most one batch (1..MaxGuaranteedItems) and clear on Chest.Reset so the next restock can add again.
    static readonly ConcurrentDictionary<uint, byte> s_bclAppliedThisFill = new();

    static FileSystemWatcher? _lootConfigWatcher;

    public PatchClass(BasicMod mod, string settingsName = "Settings.json") : base(mod, settingsName)
    {
    }

    public override void Start()
    {
        ModManager.Log("[BetterLoot] Start() called", ModManager.LogLevel.Info);
        base.Start();
        Settings = SettingsContainer.Settings ?? new Settings();
        CurrentSettings = Settings;

        // Manual Harmony.Patch on Vendor.LoadInventory — always runs from Start()
        // regardless of async void lifecycle in BasicPatch.Start().
        // Auto-discovery of new Harmony patches in this assembly silently fails
        // (BLC_VENDOR_DEBUG_DIARY.md), so we patch explicitly here.
        if (Settings?.EnableVendorLootRotation == true)
            VendorApproachPatches.Apply(ModC.Harmony);

        // Apply loot WCID substitution patches (mana stones → charges; Encapsulated Spirit removal)
        ApplyLootWcidSubstitutionPatches(ModC.Harmony);

        // Apply global rare drops (Mana Lattice, Glyph of Extraction)
        ApplyGlobalRareDropsPatch(ModC.Harmony);
    }

    public override async Task OnStartSuccess()
    {
        ModManager.Log("[BetterLoot] OnStartSuccess ENTERED", ModManager.LogLevel.Info);
        await base.OnStartSuccess();
        
        Settings = SettingsContainer.Settings ?? new Settings();
        CurrentSettings = Settings;
        
        LoadLootConfig();

        // Debug: check settings
        var vlrEnabled = Settings?.EnableVendorLootRotation ?? false;
        ModManager.Log($"[BetterLoot] OnStartSuccess: EnableVendorLootRotation = {vlrEnabled}", ModManager.LogLevel.Info);

        // Initialize LootEconomyControl (value/quantity adjustments on corpse loot)
        if (Settings?.EnableLootEconomyControl == true)
        {
            LootEconomyControl.Initialize(Settings);
            ModManager.Log("[BetterLootControl] LootEconomyControl initialized", ModManager.LogLevel.Info);
        }

        // Initialize VendorLootRotation
        if (vlrEnabled)
        {
            VendorLootRotation.Initialize(Settings);
            ModManager.Log("BetterLootControl: VendorLootRotation initialized", ModManager.LogLevel.Info);
        }
        else
        {
            ModManager.Log("[BetterLoot] VendorLootRotation is disabled in settings", ModManager.LogLevel.Info);
        }
    }

    // Remove Encapsulated Spirit (49485) from loot and replace mana stones with mana charges.
    private static void ApplyLootWcidSubstitutionPatches(Harmony harmony)
    {
        try
        {
            var rollWcidMethod = AccessTools.DeclaredMethod(typeof(LootGenerationFactory), "RollWcid", new[] { typeof(TreasureDeath), typeof(TreasureItemCategory), typeof(TreasureItemType) });
            if (rollWcidMethod != null)
            {
                var postfix = new HarmonyMethod(typeof(PatchClass), nameof(PostRollWcidSubstitution));
                harmony.Patch(rollWcidMethod, postfix: postfix);
                ModManager.Log("[BetterLootControl] Loot WCID substitution patch applied.", ModManager.LogLevel.Info);
            }
            else
            {
                ModManager.Log("[BetterLootControl] Could not find LootGenerationFactory.RollWcid for patching.", ModManager.LogLevel.Warn);
            }
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BetterLootControl] Failed to apply loot WCID substitution patch: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    // Manually apply GlobalRareDrops.PostGenerateTreasure postfix — PatchAllUncategorized
    // does not discover patches in separate classes without HarmonyPatchCategory.
    private static void ApplyGlobalRareDropsPatch(Harmony harmony)
    {
        try
        {
            var genTreasure = AccessTools.DeclaredMethod(typeof(Creature), "GenerateTreasure", new[] { typeof(DamageHistoryInfo), typeof(Corpse) });
            if (genTreasure != null)
            {
                var postfix = new HarmonyMethod(typeof(GlobalRareDrops), nameof(GlobalRareDrops.PostGenerateTreasure));
                harmony.Patch(genTreasure, postfix: postfix);
                ModManager.Log("[BetterLootControl] GlobalRareDrops patch applied.", ModManager.LogLevel.Info);
            }
            else
            {
                ModManager.Log("[BetterLootControl] Could not find Creature.GenerateTreasure(DamageHistoryInfo, Corpse) for patching.", ModManager.LogLevel.Warn);
            }
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BetterLootControl] Failed to apply GlobalRareDrops patch: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    public static void PostRollWcidSubstitution(TreasureDeath treasureDeath, TreasureItemCategory category, TreasureItemType treasureItemType, TreasureRoll __result)
    {
        if (__result == null)
            return;

        // 1) Remove Encapsulated Spirit (49485) from loot
        if (__result.Wcid == ACE.Server.Factories.Enum.WeenieClassName.ace49485_encapsulatedspirit)
        {
            __result.Wcid = ACE.Server.Factories.Enum.WeenieClassName.undef; // Causes CreateAndMutateWcid to return null (no item created)
            return;
        }

        // 2) Replace mana stones with mana charges
        if (ManaStoneToChargeMap.TryGetValue(__result.Wcid, out var chargeWcid))
        {
            __result.Wcid = chargeWcid;
        }
    }

    private static readonly Dictionary<ACE.Server.Factories.Enum.WeenieClassName, ACE.Server.Factories.Enum.WeenieClassName> ManaStoneToChargeMap = new()
    {
        [ACE.Server.Factories.Enum.WeenieClassName.manastoneminor] = ACE.Server.Factories.Enum.WeenieClassName.manastonetiny,       // 27331 → 4612
        [ACE.Server.Factories.Enum.WeenieClassName.manastonelesser] = ACE.Server.Factories.Enum.WeenieClassName.manastonesmall,      // 2434 → 4613
        [ACE.Server.Factories.Enum.WeenieClassName.manastone] = ACE.Server.Factories.Enum.WeenieClassName.manastonemoderate,         // 2435 → 4614
        [ACE.Server.Factories.Enum.WeenieClassName.manastonemedium] = ACE.Server.Factories.Enum.WeenieClassName.manastonehigh,       // 27330 → 4615
        [ACE.Server.Factories.Enum.WeenieClassName.manastonegreater] = ACE.Server.Factories.Enum.WeenieClassName.manastonegreat,     // 2436 → 4616
        [ACE.Server.Factories.Enum.WeenieClassName.manastonemajor] = ACE.Server.Factories.Enum.WeenieClassName.manachargetitan,      // 27328 → 9060
    };

    private void LoadLootConfig()
    {
        try
        {
            var path = LootConfigPaths.ResolveLootConfigPath(ModManager.ModPath, Settings.LootConfigPath);
            LootConfigStore.TryLoad(path, msg => ModManager.Log(msg, ModManager.LogLevel.Warn), out var cfg);
            if (cfg is not null)
            {
                ModManager.Log(
                    $"BetterLootControl: Loot table — {cfg.common.items.Count} common, {cfg.uncommon.items.Count} uncommon, {cfg.rare.items.Count} rare, {cfg.extremelyRare.items.Count} extremely rare items (from {LootConfigStore.LoadedPath})",
                    ModManager.LogLevel.Info);
            }

            EnsureLootConfigFileWatcher();
        }
        catch (Exception ex)
        {
            ModManager.Log($"BetterLootControl: Error loading LootConfig.json: {ex}", ModManager.LogLevel.Error);
            LootConfigStore.TryLoad("", msg => ModManager.Log(msg, ModManager.LogLevel.Warn), out _);
        }
    }

    static void EnsureLootConfigFileWatcher()
    {
        try
        {
            if (_lootConfigWatcher is not null)
                return;

            var resolved = LootConfigPaths.ResolveLootConfigPath(ModManager.ModPath, Settings.LootConfigPath);
            var dir = Path.GetDirectoryName(resolved);
            if (string.IsNullOrEmpty(dir) || !Directory.Exists(dir))
                return;

            _lootConfigWatcher = new FileSystemWatcher(dir)
            {
                Filter = "LootConfig.json",
                NotifyFilter = NotifyFilters.LastWrite | NotifyFilters.Size
            };
            _lootConfigWatcher.Changed += (_, _) =>
            {
                try
                {
                    var path = LootConfigPaths.ResolveLootConfigPath(ModManager.ModPath, Settings.LootConfigPath);
                    LootConfigStore.TryLoad(path, msg => ModManager.Log(msg, ModManager.LogLevel.Warn), out _);
                    ModManager.Log("[BetterLootControl] Reloaded LootConfig.json", ModManager.LogLevel.Info);
                }
                catch (Exception ex)
                {
                    ModManager.Log($"BetterLootControl: Shared loot reload failed: {ex.Message}", ModManager.LogLevel.Warn);
                }
            };
            _lootConfigWatcher.EnableRaisingEvents = true;
        }
        catch (Exception ex)
        {
            ModManager.Log($"BetterLootControl: Could not watch loot config folder: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    public override async Task OnWorldOpen()
    {
        await base.OnWorldOpen();
    }

    public override void Stop()
    {
        try
        {
            _lootConfigWatcher?.Dispose();
            _lootConfigWatcher = null;
        }
        catch
        {
        }

        base.Stop();
    }

    /// <summary>
    /// Hook into chest loot generation to add guaranteed items.
    /// This runs after the chest has generated its normal loot.
    /// </summary>
    [HarmonyPatch(typeof(ACE.Server.WorldObjects.WorldObject), nameof(ACE.Server.WorldObjects.WorldObject.SelectAProfile))]
    [HarmonyPostfix]
    public static void PostSelectAProfile(WorldObject __instance)
    {
        if (CurrentSettings?.Enabled != true)
            return;

        try
        {
            // Get the chest
            var chest = __instance as Chest;
            if (chest == null)
            {
                return;
            }

            // Check if this chest is in the allowed list
            if (Settings.AllowedChestWCIDs.Count > 0 && !Settings.AllowedChestWCIDs.Contains((int)chest.WeenieClassId))
            {
                return;
            }

            // Check if this chest has any treasure generation profiles
            bool hasTreasure = false;
            if (chest.GeneratorProfiles != null)
            {
                foreach (var profile in chest.GeneratorProfiles)
                {
                    if (profile.RegenLocationType.HasFlag(RegenLocationType.Treasure))
                    {
                        hasTreasure = true;
                        break;
                    }
                }
            }

            if (!hasTreasure)
                return;

            // Add guaranteed items to the chest's inventory
            AddGuaranteedItemsToChest(chest);
        }
        catch (Exception ex)
        {
            ModManager.Log($"BetterLootControl: Error in PostSelectAProfile: {ex}", ModManager.LogLevel.Error);
        }
    }

    /// <summary>
    /// Clear the "already added BetterLootControl this fill" flag when the chest resets for a new loot generation.
    /// </summary>
    [HarmonyPatch(typeof(Chest), nameof(Chest.Reset))]
    [HarmonyPrefix]
    public static void PrefixChestReset(double? resetTimestamp, Chest __instance)
    {
        if (__instance is null)
            return;
        s_bclAppliedThisFill.TryRemove(__instance.Guid.Full, out _);
    }

    /// <summary>
    /// After reset, optional interval tweak (first create only).
    /// </summary>
    [HarmonyPatch(typeof(Chest), nameof(Chest.Reset))]
    [HarmonyPostfix]
    public static void PostChestReset(double? resetTimestamp, Chest __instance)
    {
        if (CurrentSettings?.Enabled != true)
            return;

        try
        {
            // Check if this chest is in the allowed list
            if (Settings.AllowedChestWCIDs.Count > 0 && !Settings.AllowedChestWCIDs.Contains((int)__instance.WeenieClassId))
                return;

            // Check if this is a valid chest with treasure
            if (__instance.GeneratorProfiles == null)
                return;

            var treasureProfile = __instance.GeneratorProfiles.FirstOrDefault(p => p.RegenLocationType.HasFlag(RegenLocationType.Treasure));
            if (treasureProfile == null)
                return;

            // Only add items if this is the first generation after a reset
            if (treasureProfile.CurrentCreate > 0)
                return;

            // Set a random reset interval (default: 5-8 minutes for reasonable chest respawn)
            double newResetInterval = ThreadSafeRandom.Next(300, 480);
            __instance.ResetInterval = newResetInterval;
        }
        catch (Exception ex)
        {
            ModManager.Log($"BetterLootControl: Error in PostChestReset: {ex}", ModManager.LogLevel.Error);
        }
    }

    /// <summary>
    /// Hook into chest close to potentially modify reset behavior.
    /// Skip locked chests and quest chests.
    /// </summary>
    [HarmonyPatch(typeof(Chest), nameof(Chest.Close), new Type[] { typeof(Player) })]
    [HarmonyPostfix]
    public static void PostChestClose(Player player, Chest __instance)
    {
        if (CurrentSettings?.Enabled != true)
            return;

        try
        {
            // Check if this chest is in the allowed list
            if (Settings.AllowedChestWCIDs.Count > 0 && !Settings.AllowedChestWCIDs.Contains((int)__instance.WeenieClassId))
                return;

            // Check if chest has treasure
            if (__instance.GeneratorProfiles == null)
                return;

            var treasureProfile = __instance.GeneratorProfiles.FirstOrDefault(p => p.RegenLocationType.HasFlag(RegenLocationType.Treasure));
            if (treasureProfile == null)
                return;

            // On close, set a random next reset interval (default: 5-8 minutes)
            double newResetInterval = ThreadSafeRandom.Next(300, 480);
            __instance.ResetInterval = newResetInterval;
        }
        catch (Exception ex)
        {
            ModManager.Log($"BetterLootControl: Error in PostChestClose: {ex}", ModManager.LogLevel.Error);
        }
    }

    /// <summary>
    /// Adds guaranteed items to a chest based on configuration.
    /// Always adds 1 regular salvage bag. Then rolls 1-3 items from common+ pools.
    /// Then 25% imbue salvage bonus, 5% foolproof imbue salvage bonus, 25% gear bonus.
    /// </summary>
    private static void AddGuaranteedItemsToChest(Chest chest)
    {
        // One batch per loot fill, even when SelectAProfile runs per generator profile (runed chests).
        if (!s_bclAppliedThisFill.TryAdd(chest.Guid.Full, 0))
            return;

        var cfg = LootConfigStore.GetLoadedOrDefault();

        // 1. Guaranteed regular salvage bag (100%)
        WorldObject? salvageItem = LootRoller.TryCreateSalvageItem(cfg);
        if (salvageItem != null)
        {
            bool added = chest.TryAddToInventory(salvageItem);
            if (added && Settings.EnableDebugLogging)
                ModManager.Log($"BetterLootControl: Added salvage {salvageItem.Name} to chest {chest.Name}", ModManager.LogLevel.Info);
        }

        // 2. Random 1-3 items from common+ rarity pools
        int numItemsToAdd = GetRandomNumberOfItems();
        for (int i = 0; i < numItemsToAdd; i++)
        {
            WorldObject? itemToAdd = SelectRandomGuaranteedItem(chest);
            if (itemToAdd != null)
            {
                bool added = chest.TryAddToInventory(itemToAdd);
                if (added && Settings.EnableDebugLogging)
                    ModManager.Log($"BetterLootControl: Added {itemToAdd.Name} to chest {chest.Name}", ModManager.LogLevel.Info);
            }
        }

        // 3. Bonus imbue salvage roll (25% independent)
        WorldObject? imbueItem = LootRoller.TryCreateImbueSalvageItem(cfg);
        if (imbueItem != null)
        {
            bool added = chest.TryAddToInventory(imbueItem);
            if (added && Settings.EnableDebugLogging)
                ModManager.Log($"BetterLootControl: Added imbue salvage {imbueItem.Name} to chest {chest.Name}", ModManager.LogLevel.Info);
        }

        // 4. Bonus foolproof imbue salvage roll (5% independent)
        WorldObject? foolproofItem = LootRoller.TryCreateFoolproofImbueSalvageItem(cfg);
        if (foolproofItem != null)
        {
            bool added = chest.TryAddToInventory(foolproofItem);
            if (added && Settings.EnableDebugLogging)
                ModManager.Log($"BetterLootControl: Added foolproof {foolproofItem.Name} to chest {chest.Name}", ModManager.LogLevel.Info);
        }

        // 5. Bonus gear roll (~25% chance for extra equippable item)
        WorldObject? gearItem = LootRoller.TryCreateGearItem(cfg);
        if (gearItem != null)
        {
            bool added = chest.TryAddToInventory(gearItem);
            if (added && Settings.EnableDebugLogging)
                ModManager.Log($"BetterLootControl: Added bonus gear {gearItem.Name} to chest {chest.Name}", ModManager.LogLevel.Info);
        }
    }

    private static int GetRandomNumberOfItems()
    {
        var s = Settings;
        int count = 1;
        if (ThreadSafeRandom.Next(0.0f, 1.0f) < s.SecondItemChance)
            count++;
        if (ThreadSafeRandom.Next(0.0f, 1.0f) < s.ThirdItemChance)
            count++;
        return count;
    }

    private static WorldObject? SelectRandomGuaranteedItem(Chest _)
    {
        return LootRoller.TryCreateRandomItem(LootConfigStore.GetLoadedOrDefault());
    }
}

